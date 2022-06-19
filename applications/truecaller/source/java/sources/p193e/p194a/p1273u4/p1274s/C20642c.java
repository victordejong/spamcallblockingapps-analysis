package p193e.p194a.p1273u4.p1274s;

import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.google.android.gms.vision.barcode.Barcode;
import com.truecaller.C2752R;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import javax.inject.Inject;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1146q2.AbstractC19502g;
import p193e.p194a.p1273u4.AbstractC20629m;
import s1.z.c.l;
/* renamed from: e.a.u4.s.c */
/* loaded from: classes12-dex2jar.jar:e/a/u4/s/c.class */
public final class C20642c extends AbstractC20640a {

    /* renamed from: b */
    public final Handler f58161b = new Handler(Looper.getMainLooper());

    /* renamed from: c */
    public final AbstractC19223c0 f58162c;

    /* renamed from: d */
    public final AbstractC20629m f58163d;

    /* renamed from: e */
    public final AbstractC19219a0 f58164e;

    /* renamed from: f */
    public final AbstractC19462a f58165f;

    /* renamed from: e.a.u4.s.c$a */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/s/c$a.class */
    public static final class RunnableC20643a implements Runnable {

        /* renamed from: a */
        public final WeakReference<AbstractC20641b> f58166a;

        /* renamed from: b */
        public final AbstractC20629m f58167b;

        /* renamed from: c */
        public final AbstractC19223c0 f58168c;

        /* renamed from: d */
        public final String f58169d;

        public RunnableC20643a(AbstractC20641b abstractC20641b, AbstractC20629m abstractC20629m, AbstractC19223c0 abstractC19223c0, String str) {
            l.e(abstractC20641b, "barcodeCaptureView");
            l.e(abstractC20629m, "scannerHelper");
            l.e(abstractC19223c0, "resourceProvider");
            l.e(str, "barcodeDisplayValue");
            this.f58167b = abstractC20629m;
            this.f58168c = abstractC19223c0;
            this.f58169d = str;
            this.f58166a = new WeakReference<>(abstractC20641b);
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC20641b abstractC20641b = this.f58166a.get();
            if (abstractC20641b != null) {
                if (!this.f58167b.mo10904b(this.f58169d)) {
                    abstractC20641b.mo10898L2("InvalidQR");
                    String mo13768b = this.f58168c.mo13768b(C2752R.string.scanner_invalid_qr, new Object[0]);
                    l.d(mo13768b, "resourceProvider.getStri…tring.scanner_invalid_qr)");
                    abstractC20641b.mo10894l(mo13768b);
                    return;
                }
                abstractC20641b.mo10900H0();
                if (this.f58169d.length() > 0) {
                    Bundle bundle = new Bundle();
                    bundle.putString("extra_barcode_value", this.f58169d);
                    abstractC20641b.mo10896Y0(new Intent().putExtras(bundle), -1);
                } else {
                    abstractC20641b.mo10896Y0(null, 0);
                }
                abstractC20641b.mo10898L2("ValidQR");
                abstractC20641b.mo10901B0();
                abstractC20641b.mo10899L0();
            }
        }
    }

    @Inject
    public C20642c(AbstractC19223c0 abstractC19223c0, AbstractC20629m abstractC20629m, AbstractC19219a0 abstractC19219a0, AbstractC19462a abstractC19462a) {
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC20629m, "scannerHelper");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f58162c = abstractC19223c0;
        this.f58163d = abstractC20629m;
        this.f58164e = abstractC19219a0;
        this.f58165f = abstractC19462a;
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20640a
    /* renamed from: Hj */
    public void mo10893Hj(String str) {
        l.e(str, "actionType");
        AbstractC19462a abstractC19462a = this.f58165f;
        HashMap hashMap = new HashMap();
        hashMap.put("Action", str);
        hashMap.put("View", "Fullscreen");
        AbstractC19502g.C19504b.C19505a c19505a = new AbstractC19502g.C19504b.C19505a("SdkScanner", null, hashMap, null);
        l.d(c19505a, "AnalyticsEvent.Builder(S…\n                .build()");
        abstractC19462a.mo13271e(c19505a);
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20640a
    /* renamed from: Ij */
    public void mo10892Ij(Barcode barcode) {
        l.e(barcode, "barcode");
        AbstractC20641b abstractC20641b = (AbstractC20641b) this.f57683a;
        if (abstractC20641b != null) {
            AbstractC20629m abstractC20629m = this.f58163d;
            AbstractC19223c0 abstractC19223c0 = this.f58162c;
            String str = barcode.c;
            l.d(str, "barcode.displayValue");
            this.f58161b.post(new RunnableC20643a(abstractC20641b, abstractC20629m, abstractC19223c0, str));
        }
    }

    /* renamed from: Jj */
    public final void m10891Jj() {
        AbstractC20641b abstractC20641b = (AbstractC20641b) this.f57683a;
        if (abstractC20641b != null) {
            String mo13768b = this.f58162c.mo13768b(C2752R.string.scanner_CameraRequiredQR, new Object[0]);
            l.d(mo13768b, "resourceProvider.getStri…scanner_CameraRequiredQR)");
            abstractC20641b.mo10894l(mo13768b);
            abstractC20641b.close();
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.u4.s.b] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC20641b) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        if (!this.f58164e.mo13825h("android.permission.CAMERA")) {
            r0.mo10895g(new String[]{"android.permission.CAMERA"}, 2);
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20640a
    /* renamed from: m */
    public void mo10890m() {
        mo10893Hj("CloseCamera");
        AbstractC20641b abstractC20641b = (AbstractC20641b) this.f57683a;
        if (abstractC20641b != null) {
            abstractC20641b.close();
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20640a
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        AbstractC20641b abstractC20641b = (AbstractC20641b) this.f57683a;
        if (abstractC20641b == null || i != 2) {
            return;
        }
        if (((iArr.length == 0) ^ true) && iArr[0] == 0) {
            abstractC20641b.mo10897W8();
        } else {
            m10891Jj();
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20640a
    public void onResume() {
        AbstractC20641b abstractC20641b;
        if (!this.f58164e.mo13825h("android.permission.CAMERA") || (abstractC20641b = (AbstractC20641b) this.f57683a) == null) {
            return;
        }
        abstractC20641b.mo10897W8();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o.AbstractC20633b
    /* renamed from: r3 */
    public void mo10889r3() {
        m10891Jj();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o.AbstractC20633b
    /* renamed from: sd */
    public void mo10888sd() {
        AbstractC20641b abstractC20641b = (AbstractC20641b) this.f57683a;
        if (abstractC20641b != null) {
            abstractC20641b.mo10895g(new String[]{"android.permission.CAMERA"}, 2);
        }
    }
}
