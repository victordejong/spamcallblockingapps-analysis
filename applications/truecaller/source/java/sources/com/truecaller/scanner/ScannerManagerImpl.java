package com.truecaller.scanner;

import android.app.Activity;
import android.content.Context;
import android.content.IntentFilter;
import android.os.AsyncTask;
import android.view.View;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.internal.vision.zzai;
import com.google.android.gms.internal.vision.zzh;
import com.google.android.gms.vision.CameraSource;
import com.google.android.gms.vision.MultiProcessor$Builder;
import com.google.android.gms.vision.barcode.BarcodeDetector;
import com.google.android.gms.vision.barcode.BarcodeDetector$Builder;
import com.google.android.gms.vision.text.TextRecognizer;
import com.google.android.gms.vision.text.TextRecognizer$Builder;
import com.truecaller.C2752R;
import com.truecaller.log.AssertionUtil;
import com.truecaller.scanner.NumberDetectorProcessor;
import com.truecaller.scanner.ScannerView;
import p193e.p1577m.p1578a.p1642f.p1671r.p1672a.C25147a;
import p193e.p1577m.p1578a.p1642f.p1671r.p1674c.C25149a;
import p193e.p194a.p1273u4.AbstractC20631o;
import p193e.p194a.p1273u4.C20616c;
import p193e.p194a.p1273u4.C20634p;
import p193e.p194a.p1273u4.p1274s.C20644d;
import p193e.p194a.p1273u4.p1274s.C20646e;
/* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/ScannerManagerImpl.class */
public class ScannerManagerImpl implements AbstractC20631o, NumberDetectorProcessor.AbstractC4405a, ScannerView.AbstractC4407b {

    /* renamed from: a */
    public final Context f14490a;

    /* renamed from: b */
    public final ScannerView f14491b;

    /* renamed from: c */
    public final AbstractC20631o.AbstractC20632a f14492c;

    /* renamed from: d */
    public final AbstractC20631o.AbstractC20633b f14493d;

    /* renamed from: e */
    public final NumberDetectorProcessor f14494e;

    /* renamed from: f */
    public final BarcodeDetector f14495f;

    /* renamed from: g */
    public final ScannerType f14496g;

    /* renamed from: h */
    public CameraSource f14497h;

    /* renamed from: i */
    public final C20634p f14498i;

    /* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/ScannerManagerImpl$ScannerType.class */
    public enum ScannerType {
        SCANNER_TEXT,
        SCANNER_QR
    }

    public ScannerManagerImpl(Context context, View view, NumberDetectorProcessor.ScanType scanType, AbstractC20631o.AbstractC20632a abstractC20632a, AbstractC20631o.AbstractC20633b abstractC20633b, C20634p c20634p, ScannerType scannerType) {
        this.f14490a = context;
        this.f14491b = (ScannerView) view.findViewById(C2752R.C2754id.camera_preview);
        this.f14492c = abstractC20632a;
        this.f14493d = abstractC20633b;
        this.f14494e = new NumberDetectorProcessor(this, scanType);
        this.f14498i = c20634p;
        this.f14495f = new BarcodeDetector(new zzh(context, new BarcodeDetector$Builder(context).f6539b), (C25147a) null);
        this.f14496g = scannerType;
    }

    /* renamed from: a */
    public final void m34786a() {
        int ordinal = this.f14496g.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                return;
            }
            this.f14495f.m38493e(new MultiProcessor$Builder(new C20646e((C20644d.AbstractC20645a) this.f14490a)).f6535a);
            if (!this.f14495f.b()) {
                if (this.f14490a.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) != null) {
                    AssertionUtil.reportWithSummary("ScannerManager", "Low storage");
                    m34785b();
                    return;
                }
            }
            CameraSource.Builder builder = new CameraSource.Builder(this.f14490a, this.f14495f);
            builder.m38500a(0);
            builder.m38499b(30.0f);
            builder.m38498c(1280, 1024);
            CameraSource cameraSource = builder.f6511b;
            cameraSource.f6505j = true;
            cameraSource.f6508m = new CameraSource.RunnableC2070b(builder.f6510a);
            this.f14497h = builder.f6511b;
            return;
        }
        Context context = this.f14490a;
        TextRecognizer textRecognizer = new TextRecognizer(new zzai(context, new TextRecognizer$Builder(context).f6545b), (C25149a) null);
        textRecognizer.m38493e(this.f14494e);
        if (!textRecognizer.b()) {
            if (this.f14490a.registerReceiver(null, new IntentFilter("android.intent.action.DEVICE_STORAGE_LOW")) != null) {
                AssertionUtil.reportWithSummary("ScannerManager", "Low storage");
                m34785b();
                return;
            }
        }
        CameraSource.Builder builder2 = new CameraSource.Builder(this.f14490a, textRecognizer);
        builder2.m38500a(0);
        builder2.m38499b(30.0f);
        builder2.m38498c(1280, 1024);
        CameraSource cameraSource2 = builder2.f6511b;
        cameraSource2.f6505j = true;
        cameraSource2.f6508m = new CameraSource.RunnableC2070b(builder2.f6510a);
        this.f14497h = builder2.f6511b;
    }

    /* renamed from: b */
    public final void m34785b() {
        AbstractC20631o.AbstractC20633b abstractC20633b = this.f14493d;
        if (abstractC20633b != null) {
            abstractC20633b.mo10889r3();
        }
    }

    /* renamed from: c */
    public final void m34784c() throws SecurityException {
        this.f14498i.f58149a = false;
        GoogleApiAvailability googleApiAvailability = GoogleApiAvailability.f5673d;
        int mo39063d = googleApiAvailability.mo39063d(this.f14490a);
        if (mo39063d != 0) {
            googleApiAvailability.m39072f((Activity) this.f14490a, mo39063d, 9001, null).show();
        }
        CameraSource cameraSource = this.f14497h;
        if (cameraSource == null) {
            AssertionUtil.reportWithSummary("ScannerManager", "Camera source null");
            m34785b();
            return;
        }
        try {
            ScannerView scannerView = this.f14491b;
            if (scannerView.getChildCount() == 0) {
                scannerView.addView(scannerView.f14499a);
            }
            scannerView.f14503e = this;
            scannerView.f14502d = cameraSource;
            scannerView.f14500b = true;
            scannerView.m34783a();
        } catch (SecurityException e) {
            AssertionUtil.reportThrowableButNeverCrash(e);
            m34785b();
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o
    public void onDestroy() {
        if (this.f14491b != null) {
            new C20634p.AsyncTaskC20636b(this.f14498i, this.f14494e, this.f14491b).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o
    public void onResume() {
        if (this.f14498i.f58149a) {
            m34784c();
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o
    public void onStart() {
        C20634p c20634p = this.f14498i;
        if (c20634p.f58149a) {
            m34786a();
        } else {
            c20634p.f58150b = new C20616c(this);
        }
    }

    @Override // p193e.p194a.p1273u4.AbstractC20631o
    public void onStop() {
        ScannerView scannerView = this.f14491b;
        if (scannerView != null) {
            scannerView.f14501c = false;
        }
        this.f14498i.f58150b = null;
    }
}
