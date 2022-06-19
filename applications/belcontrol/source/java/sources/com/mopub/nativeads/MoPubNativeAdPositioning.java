package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning.class */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning.class */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        /* renamed from: a */
        public final ArrayList<Integer> f5191a = new ArrayList<>();

        /* renamed from: b */
        public int f5192b = Integer.MAX_VALUE;

        public MoPubClientPositioning addFixedPosition(int i) {
            if (!Preconditions.NoThrow.checkArgument(i >= 0)) {
                return this;
            }
            int binarySearch = Collections.binarySearch(this.f5191a, Integer.valueOf(i));
            if (binarySearch < 0) {
                this.f5191a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        /* renamed from: d */
        public List<Integer> m3313d() {
            return this.f5191a;
        }

        /* renamed from: e */
        public int m3312e() {
            return this.f5192b;
        }

        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.f5192b = Integer.MAX_VALUE;
                return this;
            }
            this.f5192b = i;
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning.class */
    public static class MoPubServerPositioning {
    }

    /* renamed from: a */
    public static MoPubClientPositioning m3317a(MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f5191a.addAll(moPubClientPositioning.f5191a);
        moPubClientPositioning2.f5192b = moPubClientPositioning.f5192b;
        return moPubClientPositioning2;
    }

    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
