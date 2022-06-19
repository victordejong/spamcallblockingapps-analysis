package com.google.android.exoplayer2.util;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/SlidingPercentile.class */
public class SlidingPercentile {
    private static final int MAX_RECYCLED_SAMPLES = 5;
    private static final int SORT_ORDER_BY_INDEX = 1;
    private static final int SORT_ORDER_BY_VALUE = 0;
    private static final int SORT_ORDER_NONE = -1;
    private final int maxWeight;
    private int nextSampleIndex;
    private int recycledSampleCount;
    private int totalWeight;
    private static final Comparator<Sample> INDEX_COMPARATOR = new Comparator<Sample>() { // from class: com.google.android.exoplayer2.util.SlidingPercentile.1
        public int compare(Sample sample, Sample sample2) {
            return sample.index - sample2.index;
        }
    };
    private static final Comparator<Sample> VALUE_COMPARATOR = new Comparator<Sample>() { // from class: com.google.android.exoplayer2.util.SlidingPercentile.2
        public int compare(Sample sample, Sample sample2) {
            float f = sample.value;
            float f2 = sample2.value;
            return f < f2 ? -1 : f2 < f ? 1 : 0;
        }
    };
    private final Sample[] recycledSamples = new Sample[5];
    private final ArrayList<Sample> samples = new ArrayList<>();
    private int currentSortOrder = -1;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/SlidingPercentile$Sample.class */
    public static class Sample {
        public int index;
        public float value;
        public int weight;

        private Sample() {
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

    public void addSample(int i, float f) {
        Sample sample;
        int i2;
        Sample sample2;
        int i3;
        ensureSortedByIndex();
        int i4 = this.recycledSampleCount;
        if (i4 > 0) {
            Sample[] sampleArr = this.recycledSamples;
            int i5 = i4 - 1;
            this.recycledSampleCount = i5;
            sample = sampleArr[i5];
        } else {
            sample = new Sample();
        }
        int i6 = this.nextSampleIndex;
        this.nextSampleIndex = i6 + 1;
        sample.index = i6;
        sample.weight = i;
        sample.value = f;
        this.samples.add(sample);
        int i7 = this.totalWeight + i;
        while (true) {
            this.totalWeight = i7;
            while (true) {
                int i8 = this.totalWeight;
                int i9 = this.maxWeight;
                if (i8 <= i9) {
                    return;
                }
                i2 = i8 - i9;
                sample2 = this.samples.get(0);
                i3 = sample2.weight;
                if (i3 <= i2) {
                    this.totalWeight -= i3;
                    this.samples.remove(0);
                    int i10 = this.recycledSampleCount;
                    if (i10 < 5) {
                        Sample[] sampleArr2 = this.recycledSamples;
                        this.recycledSampleCount = i10 + 1;
                        sampleArr2[i10] = sample2;
                    }
                }
            }
            sample2.weight = i3 - i2;
            i7 = this.totalWeight - i2;
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
}
