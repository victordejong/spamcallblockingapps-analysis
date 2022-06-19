package com.truecaller.scanner.barcode;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.Toast;
import com.amazon.device.ads.MraidCloseCommand;
import com.google.android.gms.vision.barcode.Barcode;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.scanner.NumberDetectorProcessor;
import com.truecaller.scanner.ScannerManagerImpl;
import java.util.Objects;
import javax.inject.Inject;
import kotlin.Metadata;
import n3.b.a.h;
import p1727n3.p1807k.p1808a.C26413b;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1273u4.AbstractC20631o;
import p193e.p194a.p1273u4.C20617d;
import p193e.p194a.p1273u4.p1274s.AbstractC20640a;
import p193e.p194a.p1273u4.p1274s.AbstractC20641b;
import p193e.p194a.p1273u4.p1274s.C20644d;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��l\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n��\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\f\u0018��2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u0004B\u0007¢\u0006\u0004\bD\u0010\u0016J\u0019\u0010\b\u001a\u00020\u00072\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0014¢\u0006\u0004\b\b\u0010\tJ%\u0010\u000f\u001a\u00020\u00072\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0017\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0015\u0010\u0016J\u000f\u0010\u0017\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0017\u0010\u0016J\u000f\u0010\u0018\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u0018\u0010\u0016J\u000f\u0010\u0019\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u0019\u0010\u0016J\u000f\u0010\u001a\u001a\u00020\u0007H\u0014¢\u0006\u0004\b\u001a\u0010\u0016J-\u0010\u001d\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u001c\u001a\u00020\u001bH\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0017\u0010 \u001a\u00020\u00072\u0006\u0010\u001f\u001a\u00020\u000bH\u0016¢\u0006\u0004\b \u0010!J\u000f\u0010\"\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\"\u0010\u0016J!\u0010&\u001a\u00020\u00072\b\u0010$\u001a\u0004\u0018\u00010#2\u0006\u0010%\u001a\u00020\rH\u0016¢\u0006\u0004\b&\u0010'J\u000f\u0010(\u001a\u00020\u0007H\u0016¢\u0006\u0004\b(\u0010\u0016J\u000f\u0010)\u001a\u00020\u0007H\u0016¢\u0006\u0004\b)\u0010\u0016J\u000f\u0010*\u001a\u00020\u0007H\u0016¢\u0006\u0004\b*\u0010\u0016J\u0017\u0010-\u001a\u00020\u00072\u0006\u0010,\u001a\u00020+H\u0016¢\u0006\u0004\b-\u0010.J\u0017\u00100\u001a\u00020\u00072\u0006\u0010/\u001a\u00020\u000bH\u0016¢\u0006\u0004\b0\u0010!R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b2\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b6\u00107R\"\u0010@\u001a\u0002098\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b:\u0010;\u001a\u0004\b<\u0010=\"\u0004\b>\u0010?R\u0016\u0010C\u001a\u00020\u00118\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\bA\u0010B¨\u0006E"}, d2 = {"Lcom/truecaller/scanner/barcode/BarcodeCaptureActivity;", "Ln3/b/a/h;", "Le/a/u4/s/b;", "Landroid/view/View$OnClickListener;", "Le/a/u4/s/d$a;", "Landroid/os/Bundle;", "savedInstanceState", "Ls1/s;", "onCreate", "(Landroid/os/Bundle;)V", "", "", "permissions", "", "requestCode", "g", "([Ljava/lang/String;I)V", "Landroid/view/View;", ViewAction.VIEW, "onClick", "(Landroid/view/View;)V", "onStart", "()V", "onResume", "W8", "onStop", "onDestroy", "", "grantResults", "onRequestPermissionsResult", "(I[Ljava/lang/String;[I)V", "message", "l", "(Ljava/lang/String;)V", "H0", "Landroid/content/Intent;", RemoteMessageConst.DATA, "resultCode", "Y0", "(Landroid/content/Intent;I)V", "B0", "L0", MraidCloseCommand.NAME, "Lcom/google/android/gms/vision/barcode/Barcode;", "barcode", "A9", "(Lcom/google/android/gms/vision/barcode/Barcode;)V", "actionType", "L2", "", AbstractC2405c.f7629a, "Z", "isScannerDestroyed", "Le/a/u4/o;", "a", "Le/a/u4/o;", "scannerManager", "Le/a/u4/s/a;", "d", "Le/a/u4/s/a;", "getPresenter", "()Le/a/u4/s/a;", "setPresenter", "(Le/a/u4/s/a;)V", "presenter", C22021b.f61237c, "Landroid/view/View;", "rootView", "<init>", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/barcode/BarcodeCaptureActivity.class */
public final class BarcodeCaptureActivity extends h implements AbstractC20641b, View.OnClickListener, C20644d.AbstractC20645a {

    /* renamed from: a */
    public AbstractC20631o f14505a;

    /* renamed from: b */
    public View f14506b;

    /* renamed from: c */
    public boolean f14507c;
    @Inject

    /* renamed from: d */
    public AbstractC20640a f14508d;

    @Override // p193e.p194a.p1273u4.p1274s.C20644d.AbstractC20645a
    /* renamed from: A9 */
    public void mo10886A9(Barcode barcode) {
        l.e(barcode, "barcode");
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a != null) {
            abstractC20640a.mo10892Ij(barcode);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: B0 */
    public void mo10901B0() {
        AbstractC20631o abstractC20631o = this.f14505a;
        if (abstractC20631o != null) {
            abstractC20631o.onStop();
        } else {
            l.l("scannerManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: H0 */
    public void mo10900H0() {
        View view = this.f14506b;
        if (view != null) {
            view.performHapticFeedback(3);
        } else {
            l.l("rootView");
            throw null;
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: L0 */
    public void mo10899L0() {
        this.f14507c = true;
        AbstractC20631o abstractC20631o = this.f14505a;
        if (abstractC20631o != null) {
            abstractC20631o.onDestroy();
        } else {
            l.l("scannerManager");
            throw null;
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: L2 */
    public void mo10898L2(String str) {
        l.e(str, "actionType");
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a != null) {
            abstractC20640a.mo10893Hj(str);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: W8 */
    public void mo10897W8() {
        AbstractC20631o abstractC20631o = this.f14505a;
        if (abstractC20631o != null) {
            abstractC20631o.onResume();
        } else {
            l.l("scannerManager");
            throw null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: Y0 */
    public void mo10896Y0(Intent intent, int i) {
        setResult(i, intent);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    public void close() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: g */
    public void mo10895g(String[] strArr, int i) {
        l.e(strArr, "permissions");
        C26413b.m1895g(this, strArr, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.p1274s.AbstractC20641b
    /* renamed from: l */
    public void mo10894l(String str) {
        l.e(str, "message");
        Toast.makeText((Context) this, (CharSequence) str, 0).show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        l.e(view, ViewAction.VIEW);
        if (view.getId() == 2131362828) {
            AbstractC20640a abstractC20640a = this.f14508d;
            if (abstractC20640a != null) {
                abstractC20640a.mo10890m();
            } else {
                l.l("presenter");
                throw null;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        BarcodeCaptureActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_barcode_capture);
        Application application = getApplication();
        Objects.requireNonNull(application, "null cannot be cast to non-null type com.truecaller.GraphHolder");
        AbstractC15539j2 mo10154s = ((AbstractC21187w1) application).mo10154s();
        l.d(mo10154s, "(application as GraphHolder).objectsGraph");
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f14508d = (AbstractC20640a) new C20617d(mo10154s, null).f58133i.get();
        View findViewById = findViewById((int) C2752R.C2754id.topLayout);
        l.d(findViewById, "findViewById(R.id.topLayout)");
        this.f14506b = findViewById;
        ((ImageButton) findViewById((int) C2752R.C2754id.close_camera)).setOnClickListener(this);
        View view = this.f14506b;
        if (view == null) {
            l.l("rootView");
            throw null;
        }
        NumberDetectorProcessor.ScanType scanType = NumberDetectorProcessor.ScanType.SCAN_PHONE;
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a == null) {
            l.l("presenter");
            throw null;
        }
        this.f14505a = new ScannerManagerImpl(this, view, scanType, null, abstractC20640a, mo10154s.mo12200t2(), ScannerManagerImpl.ScannerType.SCANNER_QR);
        AbstractC20640a abstractC20640a2 = this.f14508d;
        if (abstractC20640a2 != null) {
            abstractC20640a2.mo9029Y0(this);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onDestroy() {
        BarcodeCaptureActivity.super.onDestroy();
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a != null) {
            abstractC20640a.f57683a = null;
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        BarcodeCaptureActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a != null) {
            abstractC20640a.onRequestPermissionsResult(i, strArr, iArr);
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onResume() {
        BarcodeCaptureActivity.super.onResume();
        AbstractC20640a abstractC20640a = this.f14508d;
        if (abstractC20640a != null) {
            abstractC20640a.onResume();
        } else {
            l.l("presenter");
            throw null;
        }
    }

    public void onStart() {
        BarcodeCaptureActivity.super.onStart();
        AbstractC20631o abstractC20631o = this.f14505a;
        if (abstractC20631o != null) {
            abstractC20631o.onStart();
        } else {
            l.l("scannerManager");
            throw null;
        }
    }

    public void onStop() {
        BarcodeCaptureActivity.super.onStop();
        AbstractC20631o abstractC20631o = this.f14505a;
        if (abstractC20631o == null) {
            l.l("scannerManager");
            throw null;
        }
        abstractC20631o.onStop();
        if (this.f14507c) {
            return;
        }
        AbstractC20631o abstractC20631o2 = this.f14505a;
        if (abstractC20631o2 != null) {
            abstractC20631o2.onDestroy();
        } else {
            l.l("scannerManager");
            throw null;
        }
    }
}
