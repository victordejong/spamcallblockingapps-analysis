package com.callapp.contacts.sync.service;

import android.content.Intent;
import androidx.core.app.SafeJobIntentService;
import com.callapp.contacts.CallAppApplication;
import com.callapp.contacts.manager.permission.PermissionManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.receiver.ScreenOffReceiver;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.PowerUtils;
import com.callapp.contacts.workers.RescheduleSyncWorker;
import kotlinx.coroutines.AbstractC20205bk;
import p091b.C3170a;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/sync/service/RealSyncService.class */
public class RealSyncService extends SafeJobIntentService {

    /* renamed from: j */
    private static final Object f27607j = new Object();

    /* renamed from: l */
    private static boolean f27608l;

    /* renamed from: k */
    private SyncAdapterProxy f27609k;

    /* renamed from: b */
    public static void m27754b(boolean z) {
        if (!Prefs.f26316bn.get().booleanValue() || (PowerUtils.isConnectedToPower() && !PowerUtils.isScreenOn())) {
            if (z) {
                ScreenOffReceiver.m27889b(CallAppApplication.get());
            }
            m27752d();
        }
    }

    /* renamed from: d */
    public static void m27752d() {
        if (!isSyncEnabled() || Prefs.f26543gB.get().booleanValue()) {
            return;
        }
        Prefs.f26543gB.set(Boolean.TRUE);
        m44627a(CallAppApplication.get(), RealSyncService.class, 100, new Intent());
    }

    public static boolean isSyncEnabled() {
        PermissionManager.get();
        return PermissionManager.m28256a();
    }

    @Override // androidx.core.app.JobIntentService
    /* renamed from: a */
    public final void mo27756a(Intent intent) {
        AbstractC20205bk abstractC20205bk;
        Prefs.f26543gB.set(Boolean.FALSE);
        C3170a.C3171a c3171a = C3170a.f11528a;
        abstractC20205bk = C3170a.f11530c;
        new Task(abstractC20205bk) { // from class: com.callapp.contacts.sync.service.RealSyncService.1
            @Override // com.callapp.contacts.manager.task.Task
            public void doTask() {
                RescheduleSyncWorker.Companion companion = RescheduleSyncWorker.f29635a;
                RescheduleSyncWorker.Companion.m26121a();
                synchronized (RealSyncService.f27607j) {
                    if (RealSyncService.f27608l) {
                        CLog.m27611a(RealSyncService.class, "Sync is already running");
                        return;
                    }
                    boolean unused = RealSyncService.f27608l = true;
                    RealSyncService.this.f27609k.m27749a();
                    synchronized (RealSyncService.f27607j) {
                        boolean unused2 = RealSyncService.f27608l = false;
                    }
                    if (!Prefs.f26316bn.get().booleanValue()) {
                        return;
                    }
                    CLog.m27611a(RealSyncService.class, "stopSelf() called");
                    RealSyncService.this.stopSelf();
                }
            }
        }.execute();
    }

    @Override // androidx.core.app.SafeJobIntentService, androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        synchronized (f27607j) {
            if (this.f27609k == null) {
                this.f27609k = new SyncAdapterProxy(this);
            }
        }
    }
}
