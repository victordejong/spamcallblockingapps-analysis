package com.callapp.contacts.sync.service;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import b.a;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.workers.RescheduleSyncWorker;
import kotlinx.coroutines.bk;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/RealSyncService.class */
public class RealSyncService extends SafeJobIntentService {
    private static final Object j = new Object();
    private static boolean l;
    private SyncAdapterProxy k;

    public static void b(boolean z) {
        if (!Prefs.bn.get().booleanValue() || (PowerUtils.isConnectedToPower() && !PowerUtils.isScreenOn())) {
            if (z) {
                ScreenOffReceiver.b(CallAppApplication.get());
            }
            d();
        }
    }

    public static void d() {
        if (isSyncEnabled() && !Prefs.gB.get().booleanValue()) {
            Prefs.gB.set(Boolean.TRUE);
            a(CallAppApplication.get(), RealSyncService.class, 100, new Intent());
        }
    }

    public static boolean isSyncEnabled() {
        PermissionManager.get();
        return PermissionManager.a();
    }

    @Override // androidx.core.app.JobIntentService
    public final void a(Intent intent) {
        bk bkVar;
        Prefs.gB.set(Boolean.FALSE);
        a.C0124a aVar = a.f6247a;
        bkVar = a.f6249c;
        new Task(bkVar) { // from class: com.callapp.contacts.sync.service.RealSyncService.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RescheduleSyncWorker.Companion companion = RescheduleSyncWorker.f17078a;
                RescheduleSyncWorker.Companion.a();
                synchronized (RealSyncService.j) {
                    if (RealSyncService.l) {
                        CLog.a(RealSyncService.class, "Sync is already running");
                        return;
                    }
                    boolean unused = RealSyncService.l = true;
                    RealSyncService.this.k.a();
                    synchronized (RealSyncService.j) {
                        boolean unused2 = RealSyncService.l = false;
                    }
                    if (Prefs.bn.get().booleanValue()) {
                        CLog.a(RealSyncService.class, "stopSelf() called");
                        RealSyncService.this.stopSelf();
                    }
                }
            }
        }.execute();
    }

    @Override // androidx.core.app.SafeJobIntentService, androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        synchronized (j) {
            if (this.k == null) {
                this.k = new SyncAdapterProxy(this);
            }
        }
    }
}
