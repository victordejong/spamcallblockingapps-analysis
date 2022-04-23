package p012b.p042i.p043h;

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
/* renamed from: b.i.h.e */
/* loaded from: classes-dex2jar.jar:b/i/h/e.class */
public class C0851e {

    /* renamed from: a */
    public C0854b f3976a;

    /* renamed from: b.i.h.e$a */
    /* loaded from: classes-dex2jar.jar:b/i/h/e$a.class */
    public static class C0852a extends C0854b {

        /* renamed from: e */
        public static HandlerThread f3977e;

        /* renamed from: f */
        public static Handler f3978f;

        /* renamed from: a */
        public int f3979a;

        /* renamed from: b */
        public SparseIntArray[] f3980b = new SparseIntArray[9];

        /* renamed from: c */
        public ArrayList<WeakReference<Activity>> f3981c = new ArrayList<>();

        /* renamed from: d */
        public Window.OnFrameMetricsAvailableListener f3982d = new Window$OnFrameMetricsAvailableListenerC0853a();

        /* renamed from: b.i.h.e$a$a */
        /* loaded from: classes-dex2jar.jar:b/i/h/e$a$a.class */
        public class Window$OnFrameMetricsAvailableListenerC0853a implements Window.OnFrameMetricsAvailableListener {
            public Window$OnFrameMetricsAvailableListenerC0853a() {
            }

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                C0852a aVar = C0852a.this;
                if ((aVar.f3979a & 1) != 0) {
                    aVar.m35777a(aVar.f3980b[0], frameMetrics.getMetric(8));
                }
                C0852a aVar2 = C0852a.this;
                if ((aVar2.f3979a & 2) != 0) {
                    aVar2.m35777a(aVar2.f3980b[1], frameMetrics.getMetric(1));
                }
                C0852a aVar3 = C0852a.this;
                if ((aVar3.f3979a & 4) != 0) {
                    aVar3.m35777a(aVar3.f3980b[2], frameMetrics.getMetric(3));
                }
                C0852a aVar4 = C0852a.this;
                if ((aVar4.f3979a & 8) != 0) {
                    aVar4.m35777a(aVar4.f3980b[3], frameMetrics.getMetric(4));
                }
                C0852a aVar5 = C0852a.this;
                if ((aVar5.f3979a & 16) != 0) {
                    aVar5.m35777a(aVar5.f3980b[4], frameMetrics.getMetric(5));
                }
                C0852a aVar6 = C0852a.this;
                if ((aVar6.f3979a & 64) != 0) {
                    aVar6.m35777a(aVar6.f3980b[6], frameMetrics.getMetric(7));
                }
                C0852a aVar7 = C0852a.this;
                if ((aVar7.f3979a & 32) != 0) {
                    aVar7.m35777a(aVar7.f3980b[5], frameMetrics.getMetric(6));
                }
                C0852a aVar8 = C0852a.this;
                if ((aVar8.f3979a & 128) != 0) {
                    aVar8.m35777a(aVar8.f3980b[7], frameMetrics.getMetric(0));
                }
                C0852a aVar9 = C0852a.this;
                if ((aVar9.f3979a & 256) != 0) {
                    aVar9.m35777a(aVar9.f3980b[8], frameMetrics.getMetric(2));
                }
            }
        }

        public C0852a(int i) {
            this.f3979a = i;
        }

        @Override // p012b.p042i.p043h.C0851e.C0854b
        /* renamed from: a */
        public void mo35776a(Activity activity) {
            if (f3977e == null) {
                HandlerThread handlerThread = new HandlerThread("FrameMetricsAggregator");
                f3977e = handlerThread;
                handlerThread.start();
                f3978f = new Handler(f3977e.getLooper());
            }
            for (int i = 0; i <= 8; i++) {
                SparseIntArray[] sparseIntArrayArr = this.f3980b;
                if (sparseIntArrayArr[i] == null && (this.f3979a & (1 << i)) != 0) {
                    sparseIntArrayArr[i] = new SparseIntArray();
                }
            }
            activity.getWindow().addOnFrameMetricsAvailableListener(this.f3982d, f3978f);
            this.f3981c.add(new WeakReference<>(activity));
        }

        /* renamed from: a */
        public void m35777a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }

        @Override // p012b.p042i.p043h.C0851e.C0854b
        /* renamed from: b */
        public SparseIntArray[] mo35775b(Activity activity) {
            Iterator<WeakReference<Activity>> it = this.f3981c.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                WeakReference<Activity> next = it.next();
                if (next.get() == activity) {
                    this.f3981c.remove(next);
                    break;
                }
            }
            activity.getWindow().removeOnFrameMetricsAvailableListener(this.f3982d);
            return this.f3980b;
        }
    }

    /* renamed from: b.i.h.e$b */
    /* loaded from: classes-dex2jar.jar:b/i/h/e$b.class */
    public static class C0854b {
        /* renamed from: a */
        public void mo35776a(Activity activity) {
        }

        /* renamed from: b */
        public SparseIntArray[] mo35775b(Activity activity) {
            return null;
        }
    }

    public C0851e() {
        this(1);
    }

    public C0851e(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            this.f3976a = new C0852a(i);
        } else {
            this.f3976a = new C0854b();
        }
    }

    /* renamed from: a */
    public void m35779a(Activity activity) {
        this.f3976a.mo35776a(activity);
    }

    /* renamed from: b */
    public SparseIntArray[] m35778b(Activity activity) {
        return this.f3976a.mo35775b(activity);
    }
}
