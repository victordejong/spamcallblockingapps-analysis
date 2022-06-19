package p1727n3.p1868v;

import android.support.p001v4.media.session.MediaSessionCompat;
import androidx.lifecycle.LiveData;
import com.razorpay.AnalyticsConstants;
import q3.a.x2.f;
import s1.w.d;
import s1.w.h;
import s1.z.c.l;
/* renamed from: n3.v.r */
/* loaded from: classes-dex2jar.jar:n3/v/r.class */
public final class C27020r {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r9v1 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* renamed from: a */
    public static LiveData m995a(f fVar, s1.w.f fVar2, long j, int i) {
        if ((i & 1) != 0) {
            fVar2 = h.a;
        }
        ?? r9 = j;
        if ((i & 2) != 0) {
            r9 = 5000;
        }
        l.f(fVar, "$this$asLiveData");
        l.f(fVar2, AnalyticsConstants.CONTEXT);
        q qVar = new q(fVar, (d) null);
        l.f(fVar2, AnalyticsConstants.CONTEXT);
        l.f(qVar, "block");
        return new h(fVar2, (long) r9, qVar);
    }

    /* renamed from: b */
    public static final AbstractC27034w m994b(AbstractC26992b0 abstractC26992b0) {
        l.e(abstractC26992b0, "$this$lifecycleScope");
        AbstractC27028u lifecycle = abstractC26992b0.getLifecycle();
        l.d(lifecycle, "lifecycle");
        return MediaSessionCompat.m43234h0(lifecycle);
    }
}
