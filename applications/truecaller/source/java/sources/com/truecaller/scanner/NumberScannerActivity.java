package com.truecaller.scanner;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.ImageButton;
import android.widget.TextView;
import android.widget.Toast;
import com.truecaller.C2752R;
import com.truecaller.TrueApp;
import com.truecaller.scanner.NumberDetectorProcessor;
import com.truecaller.scanner.ScannerManagerImpl;
import java.util.Objects;
import javax.inject.Inject;
import n3.b.a.h;
import p1727n3.p1807k.p1808a.C26413b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC15539j2;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1273u4.AbstractC20620e;
import p193e.p194a.p1273u4.AbstractC20623g;
import p193e.p194a.p1273u4.AbstractC20631o;
import p193e.p194a.p1273u4.C20617d;
/* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/NumberScannerActivity.class */
public class NumberScannerActivity extends h implements AbstractC20623g, AbstractC20631o.AbstractC20632a, View.OnClickListener, AbstractC20631o.AbstractC20633b {

    /* renamed from: f */
    public static final /* synthetic */ int f14484f = 0;

    /* renamed from: a */
    public AbstractC20631o f14485a;

    /* renamed from: b */
    public View f14486b;

    /* renamed from: c */
    public boolean f14487c = false;

    /* renamed from: d */
    public boolean f14488d = false;
    @Inject

    /* renamed from: e */
    public AbstractC20620e f14489e;

    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: B0 */
    public void mo10917B0() {
        this.f14485a.onStop();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: H0 */
    public void mo10916H0() {
        this.f14486b.performHapticFeedback(3);
    }

    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: H8 */
    public void mo10915H8() {
        this.f14487c = true;
        this.f14485a.onResume();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: L0 */
    public void mo10914L0() {
        this.f14488d = true;
        this.f14485a.onDestroy();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: Y0 */
    public void mo10913Y0(Intent intent, int i) {
        setResult(i, intent);
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.AbstractC20623g
    public void close() {
        finish();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: g */
    public void mo10912g(String[] strArr, int i) {
        C26413b.m1895g(this, strArr, i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p193e.p194a.p1273u4.AbstractC20623g
    /* renamed from: l */
    public void mo10911l(String str) {
        Toast.makeText((Context) this, (CharSequence) str, 0).show();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == 2131362828) {
            this.f14489e.mo10919m();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        NumberScannerActivity.super.onCreate(bundle);
        setContentView((int) C2752R.layout.activity_number_scanner);
        AbstractC15539j2 mo10154s = TrueApp.m36032b0().mo10154s();
        Objects.requireNonNull(mo10154s);
        C25225a.m3846s(mo10154s, AbstractC15539j2.class);
        this.f14489e = (AbstractC20620e) new C20617d(mo10154s, null).f58128d.get();
        AbstractC15539j2 mo10154s2 = ((AbstractC21187w1) getApplication()).mo10154s();
        NumberDetectorProcessor.ScanType scanType = NumberDetectorProcessor.ScanType.SCAN_PHONE;
        NumberDetectorProcessor.ScanType scanType2 = getIntent().hasExtra("scan_type") ? (NumberDetectorProcessor.ScanType) getIntent().getSerializableExtra("scan_type") : scanType;
        if (scanType2 == scanType) {
            ((TextView) findViewById((int) C2752R.C2754id.camera_footnote)).setText(C2752R.string.scanner_Tooltip);
        } else {
            ((TextView) findViewById((int) C2752R.C2754id.camera_footnote)).setText(C2752R.string.scanner_camera_footnote_pay);
        }
        this.f14486b = findViewById((int) C2752R.C2754id.topLayout);
        ((ImageButton) findViewById((int) C2752R.C2754id.close_camera)).setOnClickListener(this);
        this.f14485a = new ScannerManagerImpl(this, this.f14486b, scanType2, this, this, mo10154s2.mo12200t2(), ScannerManagerImpl.ScannerType.SCANNER_TEXT);
        this.f14489e.f57683a = this;
        boolean mo13825h = mo10154s2.mo11647c().mo13825h("android.permission.CAMERA");
        this.f14487c = mo13825h;
        this.f14489e.mo10920Ij(mo13825h);
    }

    public void onDestroy() {
        NumberScannerActivity.super.onDestroy();
        this.f14489e.mo9806c();
    }

    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        NumberScannerActivity.super.onRequestPermissionsResult(i, strArr, iArr);
        this.f14489e.onRequestPermissionsResult(i, strArr, iArr);
    }

    public void onResume() {
        NumberScannerActivity.super.onResume();
        if (this.f14487c) {
            this.f14485a.onResume();
        }
    }

    public void onStart() {
        NumberScannerActivity.super.onStart();
        this.f14485a.onStart();
    }

    public void onStop() {
        NumberScannerActivity.super.onStop();
        this.f14485a.onStop();
        if (!this.f14488d) {
            this.f14485a.onDestroy();
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o.AbstractC20633b
    /* renamed from: r3 */
    public void mo10889r3() {
        this.f14489e.mo10918r3();
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o.AbstractC20633b
    /* renamed from: sd */
    public void mo10888sd() {
        this.f14489e.mo10920Ij(false);
    }
}
