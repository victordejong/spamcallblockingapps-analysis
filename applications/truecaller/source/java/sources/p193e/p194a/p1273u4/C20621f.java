package p193e.p194a.p1273u4;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.truecaller.C2752R;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19223c0;
/* renamed from: e.a.u4.f */
/* loaded from: classes12-dex2jar.jar:e/a/u4/f.class */
public class C20621f extends AbstractC20620e {

    /* renamed from: b */
    public final AbstractC19223c0 f58136b;

    /* renamed from: c */
    public final Handler f58137c = new Handler(Looper.myLooper());

    /* renamed from: d */
    public RunnableC20622a f58138d;

    /* renamed from: e.a.u4.f$a */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/f$a.class */
    public static final class RunnableC20622a implements Runnable {

        /* renamed from: a */
        public final WeakReference<AbstractC20623g> f58139a;

        /* renamed from: b */
        public final List<String> f58140b;

        public RunnableC20622a(AbstractC20623g abstractC20623g, List<String> list) {
            this.f58139a = new WeakReference<>(abstractC20623g);
            this.f58140b = list;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC20623g abstractC20623g = this.f58139a.get();
            if (abstractC20623g != null) {
                abstractC20623g.mo10916H0();
                if (this.f58140b.size() > 0) {
                    Bundle bundle = new Bundle();
                    bundle.putStringArrayList("extra_results", (ArrayList) this.f58140b);
                    abstractC20623g.mo10913Y0(new Intent().putExtras(bundle), -1);
                } else {
                    abstractC20623g.mo10913Y0(null, 0);
                }
                abstractC20623g.mo10917B0();
            }
        }
    }

    @Inject
    public C20621f(AbstractC19223c0 abstractC19223c0) {
        this.f58136b = abstractC19223c0;
    }

    @Override // p193e.p194a.p1273u4.AbstractC20620e
    /* renamed from: Hj */
    public void mo10921Hj(List<String> list) {
        PV pv = this.f57683a;
        if (pv != 0) {
            RunnableC20622a runnableC20622a = new RunnableC20622a((AbstractC20623g) pv, list);
            this.f58138d = runnableC20622a;
            this.f58137c.post(runnableC20622a);
            ((AbstractC20623g) this.f57683a).mo10914L0();
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20620e
    /* renamed from: Ij */
    public void mo10920Ij(boolean z) {
        PV pv = this.f57683a;
        if (pv == 0 || z) {
            return;
        }
        ((AbstractC20623g) pv).mo10912g(new String[]{"android.permission.CAMERA"}, 2);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        RunnableC20622a runnableC20622a = this.f58138d;
        if (runnableC20622a != null) {
            this.f58137c.removeCallbacks(runnableC20622a);
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20620e
    /* renamed from: m */
    public void mo10919m() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC20623g) pv).close();
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20620e
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        PV pv;
        if (i != 2 || (pv = this.f57683a) == 0) {
            return;
        }
        if (iArr.length != 0 && iArr[0] == 0) {
            ((AbstractC20623g) pv).mo10915H8();
            return;
        }
        ((AbstractC20623g) pv).mo10911l(this.f58136b.mo13768b(C2752R.string.scanner_CameraRequired, new Object[0]));
        ((AbstractC20623g) this.f57683a).close();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20620e
    /* renamed from: r3 */
    public void mo10918r3() {
        PV pv = this.f57683a;
        if (pv != 0) {
            ((AbstractC20623g) pv).mo10911l(this.f58136b.mo13768b(C2752R.string.scanner_FailedToOpenCamera, new Object[0]));
            ((AbstractC20623g) this.f57683a).close();
        }
    }
}
