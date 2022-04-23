package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning.class */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning.class */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        /* renamed from: a */
        public final ArrayList<Integer> f34774a = new ArrayList<>();

        /* renamed from: b */
        public int f34775b = NO_REPEAT;

        /* renamed from: a */
        public List<Integer> m3942a() {
            return this.f34774a;
        }

        public MoPubClientPositioning addFixedPosition(int i) {
            if (!Preconditions.NoThrow.checkArgument(i >= 0)) {
                return this;
            }
            int binarySearch = Collections.binarySearch(this.f34774a, Integer.valueOf(i));
            if (binarySearch < 0) {
                this.f34774a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        /* renamed from: b */
        public int m3939b() {
            return this.f34775b;
        }

        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.f34775b = NO_REPEAT;
                return this;
            }
            this.f34775b = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning.class */
    public static class MoPubServerPositioning {
    }

    /* renamed from: a */
    public static MoPubClientPositioning m3943a(MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f34774a.addAll(moPubClientPositioning.f34774a);
        moPubClientPositioning2.f34775b = moPubClientPositioning.f34775b;
        return moPubClientPositioning2;
    }

    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
