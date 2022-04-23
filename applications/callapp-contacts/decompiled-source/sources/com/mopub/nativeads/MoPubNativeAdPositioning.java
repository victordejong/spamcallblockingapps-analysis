package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Collections;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning.class */
public final class MoPubNativeAdPositioning {

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubClientPositioning.class */
    public static class MoPubClientPositioning {
        public static final int NO_REPEAT = Integer.MAX_VALUE;

        /* renamed from: a  reason: collision with root package name */
        final ArrayList<Integer> f34580a = new ArrayList<>();

        /* renamed from: b  reason: collision with root package name */
        int f34581b = Integer.MAX_VALUE;

        public MoPubClientPositioning addFixedPosition(int i) {
            if (!Preconditions.NoThrow.checkArgument(i >= 0)) {
                return this;
            }
            int binarySearch = Collections.binarySearch(this.f34580a, Integer.valueOf(i));
            if (binarySearch < 0) {
                this.f34580a.add(binarySearch ^ (-1), Integer.valueOf(i));
            }
            return this;
        }

        public MoPubClientPositioning enableRepeatingPositions(int i) {
            boolean z = true;
            if (i <= 1) {
                z = false;
            }
            if (!Preconditions.NoThrow.checkArgument(z, "Repeating interval must be greater than 1")) {
                this.f34581b = Integer.MAX_VALUE;
                return this;
            }
            this.f34581b = i;
            return this;
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/MoPubNativeAdPositioning$MoPubServerPositioning.class */
    public static class MoPubServerPositioning {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static MoPubClientPositioning a(MoPubClientPositioning moPubClientPositioning) {
        Preconditions.checkNotNull(moPubClientPositioning);
        MoPubClientPositioning moPubClientPositioning2 = new MoPubClientPositioning();
        moPubClientPositioning2.f34580a.addAll(moPubClientPositioning.f34580a);
        moPubClientPositioning2.f34581b = moPubClientPositioning.f34581b;
        return moPubClientPositioning2;
    }

    public static MoPubClientPositioning clientPositioning() {
        return new MoPubClientPositioning();
    }

    public static MoPubServerPositioning serverPositioning() {
        return new MoPubServerPositioning();
    }
}
