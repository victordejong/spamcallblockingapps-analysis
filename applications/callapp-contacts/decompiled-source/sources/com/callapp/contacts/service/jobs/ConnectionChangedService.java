package com.callapp.contacts.service.jobs;

import android.content.Intent;
import android.net.NetworkInfo;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.manager.messaging.FcmManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.sync.service.RealSyncService;
import com.callapp.contacts.util.CLog;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ConnectionChangedService.class */
public class ConnectionChangedService extends SafeJobIntentService {
    private static final List<ConnectionChangedListener> j = new CopyOnWriteArrayList();
    private static final Object k = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener.class */
    public interface ConnectionChangedListener {
        void a(boolean z);
    }

    public static void a(ConnectionChangedListener connectionChangedListener) {
        synchronized (k) {
            j.add(connectionChangedListener);
        }
    }

    public static void b(ConnectionChangedListener connectionChangedListener) {
        synchronized (k) {
            j.remove(connectionChangedListener);
        }
    }

    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        Prefs.gz.set(Boolean.FALSE);
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
        if (networkInfo == null) {
            CLog.a(ConnectionChangedService.class, "No EXTRA_NETWORK_INFO on CONNECTIVITY_ACTION intent");
            return;
        }
        boolean z = networkInfo.getState() == NetworkInfo.State.CONNECTED;
        if (z) {
            FcmManager.get().a();
            if (!Prefs.bn.get().booleanValue()) {
                RealSyncService.d();
            }
        }
        for (ConnectionChangedListener connectionChangedListener : j) {
            connectionChangedListener.a(z);
        }
    }
}
