package p193e.p194a.p1395y3;

import com.freshchat.consumer.sdk.Freshchat;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import s1.z.c.l;
/* renamed from: e.a.y3.e */
/* loaded from: classes9-dex2jar.jar:e/a/y3/e.class */
public final class C21788e<TResult> implements OnCompleteListener<String> {

    /* renamed from: a */
    public final /* synthetic */ C21786d f60629a;

    public C21788e(C21786d c21786d) {
        this.f60629a = c21786d;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    public final void onComplete(Task<String> task) {
        l.e(task, "task");
        if (!task.m38519s()) {
            return;
        }
        String m38523o = task.m38523o();
        Freshchat m9075f = this.f60629a.m9075f();
        if (m9075f == null) {
            return;
        }
        m9075f.setPushRegistrationToken(m38523o);
    }
}
