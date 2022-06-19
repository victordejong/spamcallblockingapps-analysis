package p193e.p194a.p1273u4;

import android.os.AsyncTask;
import com.google.android.gms.vision.CameraSource;
import com.truecaller.scanner.NumberDetectorProcessor;
import com.truecaller.scanner.ScannerManagerImpl;
import com.truecaller.scanner.ScannerView;
import java.lang.ref.WeakReference;
import s1.z.c.l;
/* renamed from: e.a.u4.p */
/* loaded from: classes12-dex2jar.jar:e/a/u4/p.class */
public final class C20634p {

    /* renamed from: a */
    public boolean f58149a = true;

    /* renamed from: b */
    public AbstractC20635a f58150b;

    /* renamed from: e.a.u4.p$a */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/p$a.class */
    public interface AbstractC20635a {
    }

    /* renamed from: e.a.u4.p$b */
    /* loaded from: classes12-dex2jar.jar:e/a/u4/p$b.class */
    public static final class AsyncTaskC20636b extends AsyncTask<Void, Void, Void> {

        /* renamed from: a */
        public final WeakReference<NumberDetectorProcessor> f58151a;

        /* renamed from: b */
        public final WeakReference<ScannerView> f58152b;

        /* renamed from: c */
        public final C20634p f58153c;

        public AsyncTaskC20636b(C20634p c20634p, NumberDetectorProcessor numberDetectorProcessor, ScannerView scannerView) {
            l.e(c20634p, "scannerSourceManager");
            l.e(numberDetectorProcessor, "detectorProcessor");
            l.e(scannerView, "scannerView");
            this.f58153c = c20634p;
            this.f58151a = new WeakReference<>(numberDetectorProcessor);
            this.f58152b = new WeakReference<>(scannerView);
        }

        @Override // android.os.AsyncTask
        public Void doInBackground(Void[] voidArr) {
            l.e(voidArr, "voids");
            NumberDetectorProcessor numberDetectorProcessor = this.f58151a.get();
            if (numberDetectorProcessor != null) {
                numberDetectorProcessor.release();
            }
            final ScannerView scannerView = this.f58152b.get();
            if (scannerView != null) {
                scannerView.f14501c = false;
                scannerView.f14500b = false;
                CameraSource cameraSource = scannerView.f14502d;
                if (cameraSource == null) {
                    return null;
                }
                try {
                    synchronized (cameraSource.f6497b) {
                        cameraSource.m38503b();
                        CameraSource.RunnableC2070b runnableC2070b = cameraSource.f6508m;
                        runnableC2070b.f6513a.m38494d();
                        runnableC2070b.f6513a = null;
                    }
                } catch (RuntimeException e) {
                }
                scannerView.post(new Runnable() { // from class: e.a.u4.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        ScannerView.this.removeAllViews();
                    }
                });
                scannerView.f14502d = null;
                return null;
            }
            return null;
        }

        @Override // android.os.AsyncTask
        public void onPostExecute(Void r4) {
            C20634p c20634p = this.f58153c;
            c20634p.f58149a = true;
            AbstractC20635a abstractC20635a = c20634p.f58150b;
            if (abstractC20635a != null) {
                ScannerManagerImpl scannerManagerImpl = ((C20616c) abstractC20635a).f58124a;
                scannerManagerImpl.m34786a();
                scannerManagerImpl.m34784c();
                scannerManagerImpl.f14498i.f58150b = null;
            }
        }
    }
}
