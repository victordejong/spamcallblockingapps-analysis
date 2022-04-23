package androidx.core.app;

import android.os.Build;
import android.util.SparseIntArray;
import android.view.FrameMetrics;
import android.view.Window;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import com.google.firebase.appindexing.Indexable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:androidx/core/app/FrameMetricsAggregator.class */
public class FrameMetricsAggregator {

    @RequiresApi
    /* loaded from: classes-dex2jar.jar:androidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl.class */
    private static class FrameMetricsApi24Impl extends FrameMetricsBaseImpl {

        /* renamed from: a */
        int f2830a;

        /* renamed from: b */
        SparseIntArray[] f2831b = new SparseIntArray[9];

        /* renamed from: androidx.core.app.FrameMetricsAggregator$FrameMetricsApi24Impl$1 */
        /* loaded from: classes-dex2jar.jar:androidx/core/app/FrameMetricsAggregator$FrameMetricsApi24Impl$1.class */
        class Window$OnFrameMetricsAvailableListenerC01981 implements Window.OnFrameMetricsAvailableListener {

            /* renamed from: a */
            final /* synthetic */ FrameMetricsApi24Impl f2832a;

            @Override // android.view.Window.OnFrameMetricsAvailableListener
            public void onFrameMetricsAvailable(Window window, FrameMetrics frameMetrics, int i) {
                FrameMetricsApi24Impl frameMetricsApi24Impl = this.f2832a;
                if ((frameMetricsApi24Impl.f2830a & 1) != 0) {
                    frameMetricsApi24Impl.m19828a(frameMetricsApi24Impl.f2831b[0], frameMetrics.getMetric(8));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl2 = this.f2832a;
                if ((frameMetricsApi24Impl2.f2830a & 2) != 0) {
                    frameMetricsApi24Impl2.m19828a(frameMetricsApi24Impl2.f2831b[1], frameMetrics.getMetric(1));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl3 = this.f2832a;
                if ((frameMetricsApi24Impl3.f2830a & 4) != 0) {
                    frameMetricsApi24Impl3.m19828a(frameMetricsApi24Impl3.f2831b[2], frameMetrics.getMetric(3));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl4 = this.f2832a;
                if ((frameMetricsApi24Impl4.f2830a & 8) != 0) {
                    frameMetricsApi24Impl4.m19828a(frameMetricsApi24Impl4.f2831b[3], frameMetrics.getMetric(4));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl5 = this.f2832a;
                if ((frameMetricsApi24Impl5.f2830a & 16) != 0) {
                    frameMetricsApi24Impl5.m19828a(frameMetricsApi24Impl5.f2831b[4], frameMetrics.getMetric(5));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl6 = this.f2832a;
                if ((frameMetricsApi24Impl6.f2830a & 64) != 0) {
                    frameMetricsApi24Impl6.m19828a(frameMetricsApi24Impl6.f2831b[6], frameMetrics.getMetric(7));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl7 = this.f2832a;
                if ((frameMetricsApi24Impl7.f2830a & 32) != 0) {
                    frameMetricsApi24Impl7.m19828a(frameMetricsApi24Impl7.f2831b[5], frameMetrics.getMetric(6));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl8 = this.f2832a;
                if ((frameMetricsApi24Impl8.f2830a & 128) != 0) {
                    frameMetricsApi24Impl8.m19828a(frameMetricsApi24Impl8.f2831b[7], frameMetrics.getMetric(0));
                }
                FrameMetricsApi24Impl frameMetricsApi24Impl9 = this.f2832a;
                if ((frameMetricsApi24Impl9.f2830a & Indexable.MAX_URL_LENGTH) != 0) {
                    frameMetricsApi24Impl9.m19828a(frameMetricsApi24Impl9.f2831b[8], frameMetrics.getMetric(2));
                }
            }
        }

        FrameMetricsApi24Impl(int i) {
            new ArrayList();
            this.f2830a = i;
        }

        /* renamed from: a */
        void m19828a(SparseIntArray sparseIntArray, long j) {
            if (sparseIntArray != null) {
                int i = (int) ((500000 + j) / 1000000);
                if (j >= 0) {
                    sparseIntArray.put(i, sparseIntArray.get(i) + 1);
                }
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/core/app/FrameMetricsAggregator$FrameMetricsBaseImpl.class */
    private static class FrameMetricsBaseImpl {
        FrameMetricsBaseImpl() {
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes-dex2jar.jar:androidx/core/app/FrameMetricsAggregator$MetricType.class */
    public @interface MetricType {
    }

    public FrameMetricsAggregator() {
        this(1);
    }

    public FrameMetricsAggregator(int i) {
        if (Build.VERSION.SDK_INT >= 24) {
            new FrameMetricsApi24Impl(i);
        }
    }
}
