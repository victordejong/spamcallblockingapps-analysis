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

    /* renamed from: j */
    private static final List<ConnectionChangedListener> f27581j = new CopyOnWriteArrayList();

    /* renamed from: k */
    private static final Object f27582k = new Object();

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/service/jobs/ConnectionChangedService$ConnectionChangedListener.class */
    public interface ConnectionChangedListener {
        /* renamed from: a */
        void mo27781a(boolean z);
    }

    /* renamed from: a */
    public static void m27783a(ConnectionChangedListener connectionChangedListener) {
        synchronized (f27582k) {
            f27581j.add(connectionChangedListener);
        }
    }

    /* renamed from: b */
    public static void m27782b(ConnectionChangedListener connectionChangedListener) {
        synchronized (f27582k) {
            f27581j.remove(connectionChangedListener);
        }
    }

    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        Prefs.f26593gz.set(Boolean.FALSE);
        NetworkInfo networkInfo = (NetworkInfo) intent.getParcelableExtra("networkInfo");
        if (networkInfo == null) {
            CLog.m27611a(ConnectionChangedService.class, "No EXTRA_NETWORK_INFO on CONNECTIVITY_ACTION intent");
            return;
        }
        boolean z = networkInfo.getState() == NetworkInfo.State.CONNECTED;
        if (z) {
            FcmManager.get().m28265a();
            if (!Prefs.f26316bn.get().booleanValue()) {
                RealSyncService.m27752d();
            }
        }
        for (ConnectionChangedListener connectionChangedListener : f27581j) {
            connectionChangedListener.mo27781a(z);
        }
    }
}
