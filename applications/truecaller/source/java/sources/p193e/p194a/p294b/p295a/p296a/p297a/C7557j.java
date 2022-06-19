package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.ProgressBar;
import com.truecaller.bizmon.newBusiness.profile.p151vm.ImageUploadStatus;
import java.util.Map;
import n3.r.a.l;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
/* renamed from: e.a.b.a.a.a.j */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/j.class */
public final class C7557j<T> implements AbstractC27012l0<T> {

    /* renamed from: a */
    public final /* synthetic */ C7520d f23869a;

    public C7557j(C7520d c7520d) {
        this.f23869a = c7520d;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public final void onChanged(T t) {
        if (((Map) t).values().contains(ImageUploadStatus.IN_PROGRESS)) {
            l requireActivity = this.f23869a.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            C18334g0.m15201u(requireActivity);
            C7520d c7520d = this.f23869a;
            s1.a.l[] lVarArr = C7520d.f23813m;
            ProgressBar progressBar = c7520d.m29539OA().f25044f;
            s1.z.c.l.d(progressBar, "binding.pbLoading");
            C19286f.m13684T(progressBar);
            return;
        }
        l requireActivity2 = this.f23869a.requireActivity();
        s1.z.c.l.d(requireActivity2, "requireActivity()");
        C18334g0.m15197w(requireActivity2);
        C7520d c7520d2 = this.f23869a;
        s1.a.l[] lVarArr2 = C7520d.f23813m;
        ProgressBar progressBar2 = c7520d2.m29539OA().f25044f;
        s1.z.c.l.d(progressBar2, "binding.pbLoading");
        C19286f.m13689O(progressBar2);
    }
}
