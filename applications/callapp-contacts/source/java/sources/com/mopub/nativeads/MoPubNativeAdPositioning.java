package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning.class */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning.class */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        /* renamed from: a */
        final ArrayList<Integer> f60006a = new ArrayList<>();

        /* renamed from: b */
        int f60007b = Integer.MAX_VALUE;

        public MoPubClientPositioning addFixedPosition(int i) {
            if (!Preconditions.NoThrow.checkArgument(i >= 0)) {
                return this;
            }
            int binarySearch = Collections.binarySearch(this.f60006a, Integer.valueOf(i));
            if (binarySearch < 0) {
                this.f60006a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.f60007b = Integer.MAX_VALUE;
                return this;
            }
            this.f60007b = i;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning.class */
    public static class MoPubServerPositioning {
    }

    /* renamed from: a */
    public static MoPubClientPositioning m6172a(MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f60006a.addAll(moPubClientPositioning.f60006a);
        moPubClientPositioning2.f60007b = moPubClientPositioning.f60007b;
        return moPubClientPositioning2;
    }

    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
