package p193e.p194a.p294b.p295a.p296a.p297a;

import android.widget.ProgressBar;
import com.truecaller.bizmon.newBusiness.profile.p151vm.ImageUploadStatus;
import java.util.Map;
import java.util.UUID;
import n3.r.a.l;
import p1727n3.p1868v.AbstractC27012l0;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p355m.AbstractC8063f0;
/* renamed from: e.a.b.a.a.a.s */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/s.class */
public final class C7575s<T> implements AbstractC27012l0<Map<UUID, ? extends ImageUploadStatus>> {

    /* renamed from: a */
    public final /* synthetic */ C7559k f23892a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC8063f0 f23893b;

    public C7575s(C7559k c7559k, AbstractC8063f0 abstractC8063f0) {
        this.f23892a = c7559k;
        this.f23893b = abstractC8063f0;
    }

    @Override // p1727n3.p1868v.AbstractC27012l0
    public void onChanged(Map<UUID, ? extends ImageUploadStatus> map) {
        if (map.values().contains(ImageUploadStatus.IN_PROGRESS)) {
            l requireActivity = this.f23892a.requireActivity();
            s1.z.c.l.d(requireActivity, "requireActivity()");
            C18334g0.m15201u(requireActivity);
            ProgressBar progressBar = this.f23893b.f24876n;
            s1.z.c.l.d(progressBar, "binding.pbImageUploading");
            C19286f.m13684T(progressBar);
            return;
        }
        l requireActivity2 = this.f23892a.requireActivity();
        s1.z.c.l.d(requireActivity2, "requireActivity()");
        C18334g0.m15197w(requireActivity2);
        ProgressBar progressBar2 = this.f23893b.f24876n;
        s1.z.c.l.d(progressBar2, "binding.pbImageUploading");
        C19286f.m13689O(progressBar2);
    }
}
