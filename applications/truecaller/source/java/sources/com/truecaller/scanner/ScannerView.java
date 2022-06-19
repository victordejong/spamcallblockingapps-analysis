package com.truecaller.scanner;

import android.content.Context;
import android.util.AttributeSet;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.ViewGroup;
import com.google.android.gms.common.images.Size;
import com.google.android.gms.vision.CameraSource;
/* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/ScannerView.class */
public class ScannerView extends ViewGroup {

    /* renamed from: a */
    public SurfaceView f14499a;

    /* renamed from: b */
    public boolean f14500b = false;

    /* renamed from: c */
    public boolean f14501c = false;

    /* renamed from: d */
    public CameraSource f14502d;

    /* renamed from: e */
    public AbstractC4407b f14503e;

    /* renamed from: com.truecaller.scanner.ScannerView$b */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/ScannerView$b.class */
    public interface AbstractC4407b {
    }

    /* renamed from: com.truecaller.scanner.ScannerView$c */
    /* loaded from: classes12-dex2jar.jar:com/truecaller/scanner/ScannerView$c.class */
    public class SurfaceHolder$CallbackC4408c implements SurfaceHolder.Callback {
        public SurfaceHolder$CallbackC4408c(C4406a c4406a) {
            ScannerView.this = r4;
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceCreated(SurfaceHolder surfaceHolder) {
            ScannerView scannerView = ScannerView.this;
            scannerView.f14501c = true;
            scannerView.m34783a();
        }

        @Override // android.view.SurfaceHolder.Callback
        public void surfaceDestroyed(SurfaceHolder surfaceHolder) {
            ScannerView.this.f14501c = false;
        }
    }

    public ScannerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        SurfaceView surfaceView = new SurfaceView(context);
        this.f14499a = surfaceView;
        surfaceView.getHolder().addCallback(new SurfaceHolder$CallbackC4408c(null));
        addView(this.f14499a);
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0039  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m34783a() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f14500b     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            if (r0 == 0) goto L67
            r0 = r3
            boolean r0 = r0.f14501c     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            if (r0 == 0) goto L67
            r0 = r3
            com.google.android.gms.vision.CameraSource r0 = r0.f14502d     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L67
            r0 = r4
            r1 = r3
            android.view.SurfaceView r1 = r1.f14499a     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            android.view.SurfaceHolder r1 = r1.getHolder()     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            com.google.android.gms.vision.CameraSource r0 = r0.m38504a(r1)     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            r0 = r3
            r1 = 0
            r0.f14500b = r1     // Catch: java.lang.RuntimeException -> L2b java.io.IOException -> L2f java.lang.SecurityException -> L47
            goto L67
        L2b:
            r4 = move-exception
            goto L30
        L2f:
            r4 = move-exception
        L30:
            r0 = r3
            com.truecaller.scanner.ScannerView$b r0 = r0.f14503e
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L40
            r0 = r5
            com.truecaller.scanner.ScannerManagerImpl r0 = (com.truecaller.scanner.ScannerManagerImpl) r0
            r0.m34785b()
        L40:
            r0 = r4
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
            goto L67
        L47:
            r4 = move-exception
            r0 = r3
            com.truecaller.scanner.ScannerView$b r0 = r0.f14503e
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L63
            r0 = r5
            com.truecaller.scanner.ScannerManagerImpl r0 = (com.truecaller.scanner.ScannerManagerImpl) r0
            e.a.u4.o$b r0 = r0.f14493d
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L63
            r0 = r5
            r0.mo10888sd()
        L63:
            r0 = r4
            com.truecaller.log.AssertionUtil.reportThrowableButNeverCrash(r0)
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.scanner.ScannerView.m34783a():void");
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int i5;
        int i6;
        int i7;
        int i8;
        Size size;
        CameraSource cameraSource = this.f14502d;
        if (cameraSource == null || (size = cameraSource.f6501f) == null) {
            i6 = 320;
            i5 = 240;
        } else {
            i6 = size.f5931a;
            i5 = size.f5932b;
        }
        int i9 = i3 - i;
        int i10 = i4 - i2;
        float f = i5;
        float f2 = i9 / f;
        float f3 = i6;
        float f4 = i10 / f3;
        if (f2 > f4) {
            int i11 = (int) (f3 * f2);
            i7 = (i11 - i10) / 2;
            i10 = i11;
            i8 = 0;
        } else {
            int i12 = (int) (f * f4);
            i8 = (i12 - i9) / 2;
            i9 = i12;
            i7 = 0;
        }
        for (int i13 = 0; i13 < getChildCount(); i13++) {
            getChildAt(i13).layout(i8 * (-1), i7 * (-1), i9 - i8, i10 - i7);
        }
        if (this.f14499a != null) {
            m34783a();
        }
    }
}
