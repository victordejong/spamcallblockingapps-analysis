package com.mopub.nativeads;

import androidx.annotation.NonNull;
import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning.class */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning.class */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;
        @NonNull

        /* renamed from: a */
        public final ArrayList<Integer> f9154a = new ArrayList<>();

        /* renamed from: b */
        public int f9155b = Integer.MAX_VALUE;

        @NonNull
        /* renamed from: a */
        public List<Integer> m30131a() {
            return this.f9154a;
        }

        @NonNull
        public MoPubClientPositioning addFixedPosition(int i) {
            if (!Preconditions.NoThrow.checkArgument(i >= 0)) {
                return this;
            }
            int binarySearch = Collections.binarySearch(this.f9154a, Integer.valueOf(i));
            if (binarySearch < 0) {
                this.f9154a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        /* renamed from: b */
        public int m30128b() {
            return this.f9155b;
        }

        @NonNull
        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.f9155b = Integer.MAX_VALUE;
                return this;
            }
            this.f9155b = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning.class */
    public static class MoPubServerPositioning {
    }

    @NonNull
    /* renamed from: a */
    public static MoPubClientPositioning m30132a(@NonNull MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f9154a.addAll(moPubClientPositioning.f9154a);
        moPubClientPositioning2.f9155b = moPubClientPositioning.f9155b;
        return moPubClientPositioning2;
    }

    @NonNull
    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    @NonNull
    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
