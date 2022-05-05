package gogolook.callgogolook2.messaging.datamodel.action;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;
import androidx.core.app.NotificationCompat;
import androidx.core.app.WhoscallJobIntentService;
import gogolook.callgogolook2.MyApplication;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p476w.C11576c;
import p459j.p460a.p474c0.p499h.C12156e0;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ActionServiceImpl.class */
public class ActionServiceImpl extends WhoscallJobIntentService {

    /* renamed from: a */
    public C11576c f11192a;

    /* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/ActionServiceImpl$PendingActionReceiver.class */
    public static class PendingActionReceiver extends BroadcastReceiver {
        /* renamed from: a */
        public static Intent m27728a(int i) {
            Intent intent = new Intent(AbstractC11516a.m9413n().mo9412a(), PendingActionReceiver.class);
            intent.setAction("gogolook.callgogolook2.messaging.datamodel.PENDING_ACTION");
            intent.putExtra("op", i);
            return intent;
        }

        /* renamed from: a */
        public static void m27727a(Intent intent, int i, long j) {
            Context a = AbstractC11516a.m9413n().mo9412a();
            PendingIntent broadcast = PendingIntent.getBroadcast(a, i, intent, 268435456);
            AlarmManager alarmManager = (AlarmManager) a.getSystemService(NotificationCompat.CATEGORY_ALARM);
            if (j < Long.MAX_VALUE) {
                alarmManager.set(2, SystemClock.elapsedRealtime() + j, broadcast);
            } else {
                alarmManager.cancel(broadcast);
            }
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            ActionServiceImpl.m27732b(intent);
        }
    }

    /* renamed from: a */
    public static PendingIntent m27739a(Context context, Action action, int i, boolean z) {
        Intent a = PendingActionReceiver.m27728a(200);
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundle_action", action);
        a.putExtra("datamodel_action_bundle", bundle);
        if (z) {
            a.addFlags(268435456);
        }
        a.setPackage(context.getPackageName());
        return PendingIntent.getBroadcast(context, i, a, 134217728);
    }

    /* renamed from: a */
    public static Intent m27740a(int i) {
        Intent intent = new Intent(AbstractC11516a.m9413n().mo9412a(), ActionServiceImpl.class);
        intent.putExtra("op", i);
        return intent;
    }

    /* renamed from: a */
    public static C12156e0 m27733a(Action action, String str) {
        return new C12156e0("MessagingAppDataModel", action.getClass().getSimpleName() + str, 1000L);
    }

    /* renamed from: a */
    public static void m27736a(Action action, int i, long j) {
        Intent a = PendingActionReceiver.m27728a(200);
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundle_action", action);
        a.putExtra("datamodel_action_bundle", bundle);
        PendingActionReceiver.m27727a(a, i, j);
    }

    /* renamed from: a */
    public static void m27734a(Action action, Exception exc) {
        Intent a = m27740a(202);
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundle_action", action);
        a.putExtra("datamodel_action_bundle", bundle);
        a.putExtra("worker_exception", exc);
        m27732b(a);
    }

    /* renamed from: b */
    public static void m27732b(Intent intent) {
        Context o = MyApplication.m29013o();
        intent.getIntExtra("op", 0);
        try {
            JobIntentService.enqueueWork(o, ActionServiceImpl.class, 1001, intent);
        } catch (SecurityException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: b */
    public static void m27730b(Action action, Bundle bundle) {
        Intent a = m27740a(201);
        Bundle bundle2 = new Bundle();
        bundle2.putParcelable("bundle_action", action);
        a.putExtra("datamodel_action_bundle", bundle2);
        a.putExtra("worker_response", bundle);
        m27732b(a);
    }

    /* renamed from: c */
    public static void m27729c(Action action) {
        Intent a = m27740a(200);
        Bundle bundle = new Bundle();
        bundle.putParcelable("bundle_action", action);
        a.putExtra("datamodel_action_bundle", bundle);
        action.m27745t();
        m27732b(a);
    }

    /* renamed from: a */
    public final void m27737a(Action action) {
        try {
            action.m27746s();
            C12156e0 a = m27733a(action, "#executeAction");
            a.m6960a();
            Object b = action.mo27648b();
            a.m6959b();
            action.m27752a(b);
        } catch (Exception e) {
            C13973d4.m2952a(e);
        }
    }

    /* renamed from: a */
    public final void m27735a(Action action, Bundle bundle) {
        C12156e0 a = m27733a(action, "#processBackgroundResponse");
        a.m6960a();
        action.m27750b(bundle);
        a.m6959b();
    }

    /* renamed from: b */
    public final void m27731b(Action action) {
        C12156e0 a = m27733a(action, "#processBackgroundFailure");
        a.m6960a();
        action.m27744v();
        a.m6959b();
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onCreate() {
        super.onCreate();
        this.f11192a = AbstractC11528g.m9259k().mo9246d();
        AbstractC11528g.m9259k().mo9245e().m26941a();
    }

    @Override // androidx.core.app.JobIntentService, android.app.Service
    public void onDestroy() {
        super.onDestroy();
        AbstractC11528g.m9259k().mo9245e().m26930c();
    }

    @Override // androidx.core.app.JobIntentService
    public void onHandleWork(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra("op", 0);
        Bundle bundleExtra = intent.getBundleExtra("datamodel_action_bundle");
        if (bundleExtra != null) {
            bundleExtra.setClassLoader(getClassLoader());
            Action action = (Action) bundleExtra.getParcelable("bundle_action");
            if (action != null) {
                switch (intExtra) {
                    case 200:
                        m27737a(action);
                        break;
                    case 201:
                        m27735a(action, intent.getBundleExtra("worker_response"));
                        break;
                    case 202:
                        m27731b(action);
                        break;
                    default:
                        throw new RuntimeException("Unrecognized opcode in ActionServiceImpl");
                }
                action.m27753a(this.f11192a);
            }
        }
    }
}
