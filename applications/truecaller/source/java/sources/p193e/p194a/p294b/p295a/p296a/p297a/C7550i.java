package p193e.p194a.p294b.p295a.p296a.p297a;

import android.content.Context;
import android.widget.ProgressBar;
import android.widget.Toast;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import p193e.p194a.p294b.p355m.C8091n0;
import s1.a.l;
/* renamed from: e.a.b.a.a.a.i */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/i.class */
public final class C7550i<T> implements AbstractC27012l0<T> {

    /* renamed from: a */
    public final /* synthetic */ C7520d f23859a;

    public C7550i(C7520d c7520d) {
        this.f23859a = c7520d;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public final void onChanged(T t) {
        AbstractC8042q abstractC8042q = (AbstractC8042q) ((C8036l) t).f24764b;
        C7520d c7520d = this.f23859a;
        l[] lVarArr = C7520d.f23813m;
        C8091n0 m29539OA = c7520d.m29539OA();
        if (abstractC8042q instanceof AbstractC8042q.C8045c) {
            ProgressBar progressBar = m29539OA.f25044f;
            s1.z.c.l.d(progressBar, "pbLoading");
            C19286f.m13689O(progressBar);
        } else if (abstractC8042q instanceof AbstractC8042q.C8044b) {
            ProgressBar progressBar2 = m29539OA.f25044f;
            s1.z.c.l.d(progressBar2, "pbLoading");
            C19286f.m13684T(progressBar2);
        } else if (!(abstractC8042q instanceof AbstractC8042q.C8043a)) {
        } else {
            ProgressBar progressBar3 = m29539OA.f25044f;
            s1.z.c.l.d(progressBar3, "pbLoading");
            C19286f.m13689O(progressBar3);
            n3.r.a.l requireActivity = this.f23859a.requireActivity();
            StringBuilder m8728C = C22128a.m8728C("Error: ");
            String str = abstractC8042q.f24774b;
            if (str == null) {
                Integer num = ((AbstractC8042q.C8043a) abstractC8042q).f24775c;
                if (num != null) {
                    str = this.f23859a.getString(num.intValue());
                } else {
                    str = null;
                }
            }
            m8728C.append(str);
            Toast.makeText((Context) requireActivity, (CharSequence) m8728C.toString(), 0).show();
        }
    }
}
