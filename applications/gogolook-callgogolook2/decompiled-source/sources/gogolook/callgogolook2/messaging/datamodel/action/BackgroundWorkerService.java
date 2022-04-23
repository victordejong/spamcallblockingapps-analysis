package gogolook.callgogolook2.messaging.datamodel.action;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.core.app.JobIntentService;
import androidx.core.app.WhoscallJobIntentService;
import java.util.List;
import p459j.p460a.p474c0.AbstractC11516a;
import p459j.p460a.p474c0.p475c.AbstractC11528g;
import p459j.p460a.p474c0.p475c.p476w.C11575b;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12153d0;
import p459j.p460a.p474c0.p499h.C12156e0;
import p459j.p460a.p582w0.C13973d4;
import p459j.p460a.p582w0.C14080m2;
/* loaded from: classes2-dex2jar.jar:gogolook/callgogolook2/messaging/datamodel/action/BackgroundWorkerService.class */
public class BackgroundWorkerService extends WhoscallJobIntentService {

    /* renamed from: a */
    public final C11575b f11193a = AbstractC11528g.m9259k().mo9247c();

    /* renamed from: a */
    public static void m27726a(int i, Intent intent) {
        Context a = AbstractC11516a.m9413n().mo9412a();
        intent.setClass(a, BackgroundWorkerService.class);
        intent.putExtra("op", i);
        try {
            JobIntentService.enqueueWork(a, BackgroundWorkerService.class, 1002, intent);
        } catch (SecurityException e) {
            C14080m2.m2612a((Throwable) e);
        }
    }

    /* renamed from: a */
    public static void m27724a(List<Action> list) {
        for (Action action : list) {
            m27723b(action, 0);
        }
    }

    /* renamed from: b */
    public static void m27723b(Action action, int i) {
        Intent intent = new Intent();
        intent.putExtra("action", action);
        intent.putExtra("retry_attempt", i);
        m27726a(400, intent);
    }

    /* renamed from: a */
    public final void m27725a(Action action, int i) {
        action.m27747r();
        try {
            C12156e0 e0Var = new C12156e0("MessagingAppDataModel", action.getClass().getSimpleName() + "#doBackgroundWork");
            e0Var.m6960a();
            Bundle a = action.mo27662a();
            e0Var.m6959b();
            action.m27748q();
            this.f11193a.m9082a(action, a);
        } catch (Exception e) {
            C12153d0.m6986b("MessagingAppDataModel", "Error in background worker", e);
            C12151d.m7005a("Unexpected error in background worker - abort");
            action.m27748q();
            this.f11193a.m9081a(action, e);
        }
    }

    @Override // androidx.core.app.JobIntentService
    public void onHandleWork(@NonNull Intent intent) {
        int intExtra = intent.getIntExtra("op", 0);
        if (intExtra != 400) {
            RuntimeException runtimeException = new RuntimeException("Unrecognized opcode in BackgroundWorkerService, opcode=" + intExtra);
            C13973d4.m2952a(runtimeException);
            C14080m2.m2614a("MessagingAppDataModel", (Throwable) runtimeException);
            return;
        }
        m27725a((Action) intent.getParcelableExtra("action"), intent.getIntExtra("retry_attempt", -1));
    }
}
