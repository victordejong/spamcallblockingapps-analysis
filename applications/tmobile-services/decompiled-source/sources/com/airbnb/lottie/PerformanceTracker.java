package com.airbnb.lottie;

import androidx.collection.ArraySet;
import androidx.core.util.Pair;
import com.airbnb.lottie.utils.MeanCalculator;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/PerformanceTracker.class */
public class PerformanceTracker {

    /* renamed from: a */
    private boolean f5857a = false;

    /* renamed from: b */
    private final Set<FrameListener> f5858b = new ArraySet();

    /* renamed from: c */
    private final Map<String, MeanCalculator> f5859c = new HashMap();

    /* renamed from: com.airbnb.lottie.PerformanceTracker$1 */
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/PerformanceTracker$1.class */
    class C06501 implements Comparator<Pair<String, Float>> {
        /* renamed from: a */
        public int compare(Pair<String, Float> pair, Pair<String, Float> pair2) {
            float floatValue = pair.f3207b.floatValue();
            float floatValue2 = pair2.f3207b.floatValue();
            if (floatValue2 > floatValue) {
                return 1;
            }
            return floatValue > floatValue2 ? -1 : 0;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/PerformanceTracker$FrameListener.class */
    public interface FrameListener {
        /* renamed from: a */
        void m16198a(float f);
    }

    /* renamed from: a */
    public void m16201a(String str, float f) {
        if (this.f5857a) {
            MeanCalculator meanCalculator = this.f5859c.get(str);
            MeanCalculator meanCalculator2 = meanCalculator;
            if (meanCalculator == null) {
                meanCalculator2 = new MeanCalculator();
                this.f5859c.put(str, meanCalculator2);
            }
            meanCalculator2.m15711a(f);
            if (str.equals("__container")) {
                for (FrameListener frameListener : this.f5858b) {
                    frameListener.m16198a(f);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m16200b(boolean z) {
        this.f5857a = z;
    }
}
