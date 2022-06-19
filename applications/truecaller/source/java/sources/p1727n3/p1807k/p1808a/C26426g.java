package p1727n3.p1807k.p1808a;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
/* renamed from: n3.k.a.g */
/* loaded from: classes-dex2jar.jar:n3/k/a/g.class */
public class C26426g {

    /* renamed from: a */
    public C26429b f74053a;

    /* renamed from: n3.k.a.g$a */
    /* loaded from: classes-dex2jar.jar:n3/k/a/g$a.class */
    public static class C26427a extends C26429b {

        /* renamed from: e */
        public static HandlerThread f74054e;

        /* renamed from: f */
        public static Handler f74055f;

        /* renamed from: a */
        public int f74056a;

        /* renamed from: b */
        public SparseIntArray[] f74057b = new SparseIntArray[9];

        /* renamed from: c */
        public ArrayList<WeakReference<Activity>> f74058c = new ArrayList<>();

        /* renamed from: d */
        public Window.OnFrameMetricsAvailableListener f74059d = new Window$OnFrameMetricsAvailableListenerC26428a();

        /* renamed from: n3.k.a.g$a$a */
        /* loaded from: classes-dex2jar.jar:n3/k/a/g$a$a.class */
        public class Window$OnFrameMetricsAvailableListenerC26428a implements Window.OnFrameMetricsAvailableListener {
            public Window$OnFrameMetricsAvailableListenerC26428a() {
                C26427a.this = r4;
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                C26427a c26427a = C26427a.this;
                if ((c26427a.f74056a & 1) != 0) {
                    c26427a.m1886c(c26427a.f74057b[0], frameMetrics.getMetric(8));
                }
                C26427a c26427a2 = C26427a.this;
                if ((c26427a2.f74056a & 2) != 0) {
                    c26427a2.m1886c(c26427a2.f74057b[1], frameMetrics.getMetric(1));
                }
                C26427a c26427a3 = C26427a.this;
                if ((c26427a3.f74056a & 4) != 0) {
                    c26427a3.m1886c(c26427a3.f74057b[2], frameMetrics.getMetric(3));
                }
                C26427a c26427a4 = C26427a.this;
                if ((c26427a4.f74056a & 8) != 0) {
                    c26427a4.m1886c(c26427a4.f74057b[3], frameMetrics.getMetric(4));
                }
                C26427a c26427a5 = C26427a.this;
                if ((c26427a5.f74056a & 16) != 0) {
                    c26427a5.m1886c(c26427a5.f74057b[4], frameMetrics.getMetric(5));
                }
                C26427a c26427a6 = C26427a.this;
                if ((c26427a6.f74056a & 64) != 0) {
                    c26427a6.m1886c(c26427a6.f74057b[6], frameMetrics.getMetric(7));
                }
                C26427a c26427a7 = C26427a.this;
                if ((c26427a7.f74056a & 32) != 0) {
                    c26427a7.m1886c(c26427a7.f74057b[5], frameMetrics.getMetric(6));
                }
                C26427a c26427a8 = C26427a.this;
                if ((c26427a8.f74056a & 128) != 0) {
                    c26427a8.m1886c(c26427a8.f74057b[7], frameMetrics.getMetric(0));
                }
                C26427a c26427a9 = C26427a.this;
                if ((c26427a9.f74056a & 256) != 0) {
                    c26427a9.m1886c(c26427a9.f74057b[8], frameMetrics.getMetric(2));
                }
            }
        }

        public C26427a(int i) {
            this.f74056a = i;
        }

        @Override // p1727n3.p1807k.p1808a.C26426g.C26429b
        /* renamed from: a */
        public void mo1885a(Activity activity) {
            if (f74054e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f74054e = handlerThread;
                handlerThread.start();
                f74055f = new Handler(f74054e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f74057b;
                if (sparseIntArrayArr[i] == null && (this.f74056a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f74059d, f74055f);
            this.f74058c.add(new WeakReference<>(activity));
        }

        @Override // p1727n3.p1807k.p1808a.C26426g.C26429b
        /* renamed from: b */
        public SparseIntArray[] mo1884b() {
            SparseIntArray[] sparseIntArrayArr = this.f74057b;
            this.f74057b = new SparseIntArray[9];
            return sparseIntArrayArr;
        }

        /* renamed from: c */
        public void m1886c(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j < 0) {
                    return;
                }
                sparseIntArray.put(i, sparseIntArray.get(i) + 1);
            }
        }
    }

    /* renamed from: n3.k.a.g$b */
    /* loaded from: classes-dex2jar.jar:n3/k/a/g$b.class */
    public static class C26429b {
        /* renamed from: a */
        public void mo1885a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo1884b() {
            return null;
        }
    }

    public C26426g() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f74053a = new C26427a(1);
        } else {
            this.f74053a = new C26429b();
        }
    }
}
