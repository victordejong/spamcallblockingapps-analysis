package androidx.core.app;

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
/* renamed from: androidx.core.app.e */
/* loaded from: classes-dex2jar.jar:androidx/core/app/e.class */
public class C0439e {

    /* renamed from: a */
    private C0442b f1600a;

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.e$a */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/e$a.class */
    public static class C0440a extends C0442b {

        /* renamed from: e */
        private static HandlerThread f1601e;

        /* renamed from: f */
        private static Handler f1602f;

        /* renamed from: a */
        int f1603a;

        /* renamed from: b */
        SparseIntArray[] f1604b = new SparseIntArray[9];

        /* renamed from: d */
        private ArrayList<WeakReference<Activity>> f1606d = new ArrayList<>();

        /* renamed from: c */
        Window.OnFrameMetricsAvailableListener f1605c = new Window.OnFrameMetricsAvailableListener() { // from class: androidx.core.app.e.a.1
            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                if ((C0440a.this.f1603a & 1) != 0) {
                    C0440a c0440a = C0440a.this;
                    c0440a.m6657a(c0440a.f1604b[0], frameMetrics.getMetric(8));
                }
                if ((C0440a.this.f1603a & 2) != 0) {
                    C0440a c0440a2 = C0440a.this;
                    c0440a2.m6657a(c0440a2.f1604b[1], frameMetrics.getMetric(1));
                }
                if ((C0440a.this.f1603a & 4) != 0) {
                    C0440a c0440a3 = C0440a.this;
                    c0440a3.m6657a(c0440a3.f1604b[2], frameMetrics.getMetric(3));
                }
                if ((C0440a.this.f1603a & 8) != 0) {
                    C0440a c0440a4 = C0440a.this;
                    c0440a4.m6657a(c0440a4.f1604b[3], frameMetrics.getMetric(4));
                }
                if ((C0440a.this.f1603a & 16) != 0) {
                    C0440a c0440a5 = C0440a.this;
                    c0440a5.m6657a(c0440a5.f1604b[4], frameMetrics.getMetric(5));
                }
                if ((C0440a.this.f1603a & 64) != 0) {
                    C0440a c0440a6 = C0440a.this;
                    c0440a6.m6657a(c0440a6.f1604b[6], frameMetrics.getMetric(7));
                }
                if ((C0440a.this.f1603a & 32) != 0) {
                    C0440a c0440a7 = C0440a.this;
                    c0440a7.m6657a(c0440a7.f1604b[5], frameMetrics.getMetric(6));
                }
                if ((C0440a.this.f1603a & 128) != 0) {
                    C0440a c0440a8 = C0440a.this;
                    c0440a8.m6657a(c0440a8.f1604b[7], frameMetrics.getMetric(0));
                }
                if ((C0440a.this.f1603a & 256) != 0) {
                    C0440a c0440a9 = C0440a.this;
                    c0440a9.m6657a(c0440a9.f1604b[8], frameMetrics.getMetric(2));
                }
            }
        };

        C0440a(int i) {
            this.f1603a = i;
        }

        @Override // androidx.core.app.C0439e.C0442b
        /* renamed from: a */
        public void mo6656a(Activity activity) {
            if (f1601e == null) {
                f1601e = new HandlerThread("FrameMetricsAggregator");
                f1601e.start();
                f1602f = new Handler(f1601e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f1604b;
                if (sparseIntArrayArr[i] == null && (this.f1603a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f1605c, f1602f);
            this.f1606d.add(new WeakReference<>(activity));
        }

        /* renamed from: a */
        void m6657a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j < 0) {
                    return;
                }
                sparseIntArray.put(i, sparseIntArray.get(i) + 1);
            }
        }

        @Override // androidx.core.app.C0439e.C0442b
        /* renamed from: b */
        public SparseIntArray[] mo6655b(Activity activity) {
            Iterator<WeakReference<Activity>> it = this.f1606d.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it.next();
                if (next.get() == activity) {
                    this.f1606d.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f1605c);
            return this.f1604b;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: androidx.core.app.e$b */
    /* loaded from: classes-dex2jar.jar:androidx/core/app/e$b.class */
    public static class C0442b {
        C0442b() {
        }

        /* renamed from: a */
        public void mo6656a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo6655b(Activity activity) {
            return null;
        }
    }

    public C0439e() {
        this(1);
    }

    public C0439e(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f1600a = new C0440a(i);
        } else {
            this.f1600a = new C0442b();
        }
    }

    /* renamed from: a */
    public void m6659a(Activity activity) {
        this.f1600a.mo6656a(activity);
    }

    /* renamed from: b */
    public SparseIntArray[] m6658b(Activity activity) {
        return this.f1600a.mo6655b(activity);
    }
}
