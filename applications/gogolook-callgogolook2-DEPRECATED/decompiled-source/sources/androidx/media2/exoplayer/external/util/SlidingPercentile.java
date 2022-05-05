package androidx.media2.exoplayer.external.util;

import androidx.annotation.RestrictTo;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/SlidingPercentile.class */
public class SlidingPercentile {
    public static final int MAX_RECYCLED_SAMPLES = 5;
    public static final int SORT_ORDER_BY_INDEX = 1;
    public static final int SORT_ORDER_BY_VALUE = 0;
    public static final int SORT_ORDER_NONE = -1;
    public final int maxWeight;
    public int nextSampleIndex;
    public int recycledSampleCount;
    public int totalWeight;
    public static final Comparator<Sample> INDEX_COMPARATOR = SlidingPercentile$$Lambda$0.$instance;
    public static final Comparator<Sample> VALUE_COMPARATOR = SlidingPercentile$$Lambda$1.$instance;
    public final Sample[] recycledSamples = new Sample[5];
    public final ArrayList<Sample> samples = new ArrayList<>();
    public int currentSortOrder = -1;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/SlidingPercentile$Sample.class */
    public static class Sample {
        public int index;
        public float value;
        public int weight;

        public Sample() {
        }
    }

    public SlidingPercentile(int i) {
        this.maxWeight = i;
    }

    private void ensureSortedByIndex() {
        if (this.currentSortOrder != 1) {
            Collections.sort(this.samples, INDEX_COMPARATOR);
            this.currentSortOrder = 1;
        }
    }

    private void ensureSortedByValue() {
        if (this.currentSortOrder != 0) {
            Collections.sort(this.samples, VALUE_COMPARATOR);
            this.currentSortOrder = 0;
        }
    }

    public static final /* synthetic */ int lambda$static$0$SlidingPercentile(Sample sample, Sample sample2) {
        return sample.index - sample2.index;
    }

    public void addSample(int i, float f) {
        Sample sample;
        ensureSortedByIndex();
        int i2 = this.recycledSampleCount;
        if (i2 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i3 = i2 - 1;
            this.recycledSampleCount = i3;
            sample = sampleArr[i3];
        } else {
            sample = new Sample();
        }
        int i4 = this.nextSampleIndex;
        this.nextSampleIndex = i4 + 1;
        sample.index = i4;
        sample.weight = i;
        sample.value = f;
        this.samples.add(sample);
        this.totalWeight += i;
        while (true) {
            int i5 = this.totalWeight;
            int i6 = this.maxWeight;
            if (i5 > i6) {
                int i7 = i5 - i6;
                Sample sample2 = this.samples.get(0);
                int i8 = sample2.weight;
                if (i8 <= i7) {
                    this.totalWeight -= i8;
                    this.samples.remove(0);
                    int i9 = this.recycledSampleCount;
                    if (i9 < 5) {
                        Sample[] sampleArr2 = this.recycledSamples;
                        this.recycledSampleCount = i9 + 1;
                        sampleArr2[i9] = sample2;
                    }
                } else {
                    sample2.weight = i8 - i7;
                    this.totalWeight -= i7;
                }
            } else {
                return;
            }
        }
    }

    public float getPercentile(float f) {
        float f2;
        ensureSortedByValue();
        float f3 = this.totalWeight;
        int i = 0;
        for (int i2 = 0; i2 < this.samples.size(); i2++) {
            Sample sample = this.samples.get(i2);
            i += sample.weight;
            if (i >= f * f3) {
                return sample.value;
            }
        }
        if (this.samples.isEmpty()) {
            f2 = Float.NaN;
        } else {
            ArrayList<Sample> arrayList = this.samples;
            f2 = arrayList.get(arrayList.size() - 1).value;
        }
        return f2;
    }

    public void reset() {
        this.samples.clear();
        this.currentSortOrder = -1;
        this.nextSampleIndex = 0;
        this.totalWeight = 0;
    }
}
