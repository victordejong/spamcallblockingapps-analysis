package com.google.android.exoplayer2.source.ads;

import android.net.Uri;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.util.Assertions;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdPlaybackState.class */
public final class AdPlaybackState {
    public static final int AD_STATE_AVAILABLE = 1;
    public static final int AD_STATE_ERROR = 4;
    public static final int AD_STATE_PLAYED = 3;
    public static final int AD_STATE_SKIPPED = 2;
    public static final int AD_STATE_UNAVAILABLE = 0;
    public static final AdPlaybackState NONE = new AdPlaybackState(new long[0]);
    public final int adGroupCount;
    public final long[] adGroupTimesUs;
    public final AdGroup[] adGroups;
    public final long adResumePositionUs;
    public final long contentDurationUs;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdPlaybackState$AdGroup.class */
    public static final class AdGroup {
        public final int count;
        public final long[] durationsUs;
        public final int[] states;
        public final Uri[] uris;

        public AdGroup() {
            this(-1, new int[0], new Uri[0], new long[0]);
        }

        private AdGroup(int i, int[] iArr, Uri[] uriArr, long[] jArr) {
            Assertions.checkArgument(iArr.length == uriArr.length);
            this.count = i;
            this.states = iArr;
            this.uris = uriArr;
            this.durationsUs = jArr;
        }

        private static long[] copyDurationsUsWithSpaceForAdCount(long[] jArr, int i) {
            int length = jArr.length;
            int max = Math.max(i, length);
            long[] copyOf = Arrays.copyOf(jArr, max);
            Arrays.fill(copyOf, length, max, (long) C0515C.TIME_UNSET);
            return copyOf;
        }

        private static int[] copyStatesWithSpaceForAdCount(int[] iArr, int i) {
            int length = iArr.length;
            int max = Math.max(i, length);
            int[] copyOf = Arrays.copyOf(iArr, max);
            Arrays.fill(copyOf, length, max, 0);
            return copyOf;
        }

        public int getFirstAdIndexToPlay() {
            return getNextAdIndexToPlay(-1);
        }

        public int getNextAdIndexToPlay(int i) {
            while (true) {
                i++;
                int[] iArr = this.states;
                if (i >= iArr.length || iArr[i] == 0 || iArr[i] == 1) {
                    break;
                }
            }
            return i;
        }

        public boolean hasUnplayedAds() {
            return this.count == -1 || getFirstAdIndexToPlay() < this.count;
        }

        public AdGroup withAdCount(int i) {
            Assertions.checkArgument(this.count == -1 && this.states.length <= i);
            return new AdGroup(i, copyStatesWithSpaceForAdCount(this.states, i), (Uri[]) Arrays.copyOf(this.uris, i), copyDurationsUsWithSpaceForAdCount(this.durationsUs, i));
        }

        public AdGroup withAdDurationsUs(long[] jArr) {
            Assertions.checkArgument(this.count == -1 || jArr.length <= this.uris.length);
            int length = jArr.length;
            Uri[] uriArr = this.uris;
            long[] jArr2 = jArr;
            if (length < uriArr.length) {
                jArr2 = copyDurationsUsWithSpaceForAdCount(jArr, uriArr.length);
            }
            return new AdGroup(this.count, this.states, this.uris, jArr2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:13:0x0047, code lost:
            if (r0[r9] == r8) goto L14;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup withAdState(int r8, int r9) {
            /*
                r7 = this;
                r0 = r7
                int r0 = r0.count
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r10
                r1 = -1
                if (r0 == r1) goto L1b
                r0 = r9
                r1 = r10
                if (r0 >= r1) goto L15
                goto L1b
            L15:
                r0 = 0
                r12 = r0
                goto L1e
            L1b:
                r0 = 1
                r12 = r0
            L1e:
                r0 = r12
                com.google.android.exoplayer2.util.Assertions.checkArgument(r0)
                r0 = r7
                int[] r0 = r0.states
                r1 = r9
                r2 = 1
                int r1 = r1 + r2
                int[] r0 = copyStatesWithSpaceForAdCount(r0, r1)
                r13 = r0
                r0 = r13
                r1 = r9
                r0 = r0[r1]
                if (r0 == 0) goto L4a
                r0 = r13
                r1 = r9
                r0 = r0[r1]
                r1 = 1
                if (r0 == r1) goto L4a
                r0 = r11
                r12 = r0
                r0 = r13
                r1 = r9
                r0 = r0[r1]
                r1 = r8
                if (r0 != r1) goto L4d
            L4a:
                r0 = 1
                r12 = r0
            L4d:
                r0 = r12
                com.google.android.exoplayer2.util.Assertions.checkArgument(r0)
                r0 = r7
                long[] r0 = r0.durationsUs
                r14 = r0
                r0 = r14
                int r0 = r0.length
                r1 = r13
                int r1 = r1.length
                if (r0 != r1) goto L64
                goto L6e
            L64:
                r0 = r14
                r1 = r13
                int r1 = r1.length
                long[] r0 = copyDurationsUsWithSpaceForAdCount(r0, r1)
                r14 = r0
            L6e:
                r0 = r7
                android.net.Uri[] r0 = r0.uris
                r15 = r0
                r0 = r15
                int r0 = r0.length
                r1 = r13
                int r1 = r1.length
                if (r0 != r1) goto L80
                goto L8d
            L80:
                r0 = r15
                r1 = r13
                int r1 = r1.length
                java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
                android.net.Uri[] r0 = (android.net.Uri[]) r0
                r15 = r0
            L8d:
                r0 = r13
                r1 = r9
                r2 = r8
                r0[r1] = r2
                com.google.android.exoplayer2.source.ads.AdPlaybackState$AdGroup r0 = new com.google.android.exoplayer2.source.ads.AdPlaybackState$AdGroup
                r1 = r0
                r2 = r7
                int r2 = r2.count
                r3 = r13
                r4 = r15
                r5 = r14
                r1.<init>(r2, r3, r4, r5)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.source.ads.AdPlaybackState.AdGroup.withAdState(int, int):com.google.android.exoplayer2.source.ads.AdPlaybackState$AdGroup");
        }

        public AdGroup withAdUri(Uri uri, int i) {
            int i2 = this.count;
            Assertions.checkArgument(i2 == -1 || i < i2);
            int[] copyStatesWithSpaceForAdCount = copyStatesWithSpaceForAdCount(this.states, i + 1);
            boolean z = false;
            if (copyStatesWithSpaceForAdCount[i] == 0) {
                z = true;
            }
            Assertions.checkArgument(z);
            long[] jArr = this.durationsUs;
            if (jArr.length != copyStatesWithSpaceForAdCount.length) {
                jArr = copyDurationsUsWithSpaceForAdCount(jArr, copyStatesWithSpaceForAdCount.length);
            }
            Uri[] uriArr = (Uri[]) Arrays.copyOf(this.uris, copyStatesWithSpaceForAdCount.length);
            uriArr[i] = uri;
            copyStatesWithSpaceForAdCount[i] = 1;
            return new AdGroup(this.count, copyStatesWithSpaceForAdCount, uriArr, jArr);
        }

        public AdGroup withAllAdsSkipped() {
            if (this.count == -1) {
                return new AdGroup(0, new int[0], new Uri[0], new long[0]);
            }
            int[] iArr = this.states;
            int length = iArr.length;
            int[] copyOf = Arrays.copyOf(iArr, length);
            for (int i = 0; i < length; i++) {
                if (copyOf[i] == 1 || copyOf[i] == 0) {
                    copyOf[i] = 2;
                }
            }
            return new AdGroup(length, copyOf, this.uris, this.durationsUs);
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/source/ads/AdPlaybackState$AdState.class */
    public @interface AdState {
    }

    public AdPlaybackState(long... jArr) {
        int length = jArr.length;
        this.adGroupCount = length;
        this.adGroupTimesUs = Arrays.copyOf(jArr, length);
        this.adGroups = new AdGroup[length];
        for (int i = 0; i < length; i++) {
            this.adGroups[i] = new AdGroup();
        }
        this.adResumePositionUs = 0L;
        this.contentDurationUs = C0515C.TIME_UNSET;
    }

    private AdPlaybackState(long[] jArr, AdGroup[] adGroupArr, long j, long j2) {
        this.adGroupCount = adGroupArr.length;
        this.adGroupTimesUs = jArr;
        this.adGroups = adGroupArr;
        this.adResumePositionUs = j;
        this.contentDurationUs = j2;
    }

    public int getAdGroupIndexAfterPositionUs(long j) {
        int i = 0;
        while (true) {
            long[] jArr = this.adGroupTimesUs;
            if (i >= jArr.length || jArr[i] == Long.MIN_VALUE || (j < jArr[i] && this.adGroups[i].hasUnplayedAds())) {
                break;
            }
            i++;
        }
        if (i >= this.adGroupTimesUs.length) {
            i = -1;
        }
        return i;
    }

    public int getAdGroupIndexForPositionUs(long j) {
        int length = this.adGroupTimesUs.length - 1;
        while (length >= 0) {
            long[] jArr = this.adGroupTimesUs;
            if (jArr[length] != Long.MIN_VALUE && jArr[length] <= j) {
                break;
            }
            length--;
        }
        if (length < 0 || !this.adGroups[length].hasUnplayedAds()) {
            length = -1;
        }
        return length;
    }

    public AdPlaybackState withAdCount(int i, int i2) {
        Assertions.checkArgument(i2 > 0);
        AdGroup[] adGroupArr = this.adGroups;
        if (adGroupArr[i].count == i2) {
            return this;
        }
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = this.adGroups[i].withAdCount(i2);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withAdDurationsUs(long[][] jArr) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        for (int i = 0; i < this.adGroupCount; i++) {
            adGroupArr2[i] = adGroupArr2[i].withAdDurationsUs(jArr[i]);
        }
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withAdLoadError(int i, int i2) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = adGroupArr2[i].withAdState(4, i2);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withAdResumePositionUs(long j) {
        return this.adResumePositionUs == j ? this : new AdPlaybackState(this.adGroupTimesUs, this.adGroups, j, this.contentDurationUs);
    }

    public AdPlaybackState withAdUri(int i, int i2, Uri uri) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = adGroupArr2[i].withAdUri(uri, i2);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withContentDurationUs(long j) {
        return this.contentDurationUs == j ? this : new AdPlaybackState(this.adGroupTimesUs, this.adGroups, this.adResumePositionUs, j);
    }

    public AdPlaybackState withPlayedAd(int i, int i2) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = adGroupArr2[i].withAdState(3, i2);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withSkippedAd(int i, int i2) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = adGroupArr2[i].withAdState(2, i2);
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }

    public AdPlaybackState withSkippedAdGroup(int i) {
        AdGroup[] adGroupArr = this.adGroups;
        AdGroup[] adGroupArr2 = (AdGroup[]) Arrays.copyOf(adGroupArr, adGroupArr.length);
        adGroupArr2[i] = adGroupArr2[i].withAllAdsSkipped();
        return new AdPlaybackState(this.adGroupTimesUs, adGroupArr2, this.adResumePositionUs, this.contentDurationUs);
    }
}
