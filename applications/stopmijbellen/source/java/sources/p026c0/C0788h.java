package p026c0;

import android.app.Activity;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
/* renamed from: c0.h */
/* loaded from: classes-dex2jar.jar:c0/h.class */
public class C0788h {

    /* renamed from: a */
    public C0791b f2918a;

    /* renamed from: c0.h$a */
    /* loaded from: classes-dex2jar.jar:c0/h$a.class */
    public static class C0789a extends C0791b {

        /* renamed from: e */
        public static HandlerThread f2919e;

        /* renamed from: f */
        public static Handler f2920f;

        /* renamed from: a */
        public int f2921a;

        /* renamed from: b */
        public SparseIntArray[] f2922b = new SparseIntArray[9];

        /* renamed from: c */
        public ArrayList<WeakReference<Activity>> f2923c = new ArrayList<>();

        /* renamed from: d */
        public Window.OnFrameMetricsAvailableListener f2924d = new Window$OnFrameMetricsAvailableListenerC0790a();

        /* renamed from: c0.h$a$a */
        /* loaded from: classes-dex2jar.jar:c0/h$a$a.class */
        public class Window$OnFrameMetricsAvailableListenerC0790a implements Window.OnFrameMetricsAvailableListener {
            public Window$OnFrameMetricsAvailableListenerC0790a() {
                C0789a.this = r4;
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                C0789a c0789a = C0789a.this;
                if ((c0789a.f2921a & 1) != 0) {
                    c0789a.m7375c(c0789a.f2922b[0], frameMetrics.getMetric(8));
                }
                C0789a c0789a2 = C0789a.this;
                if ((c0789a2.f2921a & 2) != 0) {
                    c0789a2.m7375c(c0789a2.f2922b[1], frameMetrics.getMetric(1));
                }
                C0789a c0789a3 = C0789a.this;
                if ((c0789a3.f2921a & 4) != 0) {
                    c0789a3.m7375c(c0789a3.f2922b[2], frameMetrics.getMetric(3));
                }
                C0789a c0789a4 = C0789a.this;
                if ((c0789a4.f2921a & 8) != 0) {
                    c0789a4.m7375c(c0789a4.f2922b[3], frameMetrics.getMetric(4));
                }
                C0789a c0789a5 = C0789a.this;
                if ((c0789a5.f2921a & 16) != 0) {
                    c0789a5.m7375c(c0789a5.f2922b[4], frameMetrics.getMetric(5));
                }
                C0789a c0789a6 = C0789a.this;
                if ((c0789a6.f2921a & 64) != 0) {
                    c0789a6.m7375c(c0789a6.f2922b[6], frameMetrics.getMetric(7));
                }
                C0789a c0789a7 = C0789a.this;
                if ((c0789a7.f2921a & 32) != 0) {
                    c0789a7.m7375c(c0789a7.f2922b[5], frameMetrics.getMetric(6));
                }
                C0789a c0789a8 = C0789a.this;
                if ((c0789a8.f2921a & 128) != 0) {
                    c0789a8.m7375c(c0789a8.f2922b[7], frameMetrics.getMetric(0));
                }
                C0789a c0789a9 = C0789a.this;
                if ((c0789a9.f2921a & 256) != 0) {
                    c0789a9.m7375c(c0789a9.f2922b[8], frameMetrics.getMetric(2));
                }
            }
        }

        public C0789a(int i) {
            this.f2921a = i;
        }

        @Override // p026c0.C0788h.C0791b
        /* renamed from: a */
        public void mo7374a(Activity activity) {
            if (f2919e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f2919e = handlerThread;
                handlerThread.start();
                f2920f = new Handler(f2919e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f2922b;
                if (sparseIntArrayArr[i] == null && (this.f2921a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f2924d, f2920f);
            this.f2923c.add(new WeakReference<>(activity));
        }

        @Override // p026c0.C0788h.C0791b
        /* renamed from: b */
        public SparseIntArray[] mo7373b(Activity activity) {
            Iterator<WeakReference<Activity>> it2 = this.f2923c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it2.next();
                if (next.get() == activity) {
                    this.f2923c.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f2924d);
            return this.f2922b;
        }

        /* renamed from: c */
        public void m7375c(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j < 0) {
                    return;
                }
                sparseIntArray.put(i, sparseIntArray.get(i) + 1);
            }
        }
    }

    /* renamed from: c0.h$b */
    /* loaded from: classes-dex2jar.jar:c0/h$b.class */
    public static class C0791b {
        /* renamed from: a */
        public void mo7374a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo7373b(Activity activity) {
            return null;
        }
    }

    public C0788h() {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f2918a = new C0789a(1);
        } else {
            this.f2918a = new C0791b();
        }
    }
}
