package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/AdRendererRegistry.class */
public class AdRendererRegistry {

    /* renamed from: a */
    public final ArrayList<MoPubAdRenderer> f5090a = new ArrayList<>();

    public int getAdRendererCount() {
        return this.f5090a.size();
    }

    public MoPubAdRenderer getRendererForAd(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        Iterator<MoPubAdRenderer> it = this.f5090a.iterator();
        while (it.hasNext()) {
            MoPubAdRenderer next = it.next();
            if (next.supports(baseNativeAd)) {
                return next;
            }
        }
        return null;
    }

    public MoPubAdRenderer getRendererForViewType(int i) {
        try {
            return this.f5090a.get(i - 1);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public Iterable<MoPubAdRenderer> getRendererIterable() {
        return this.f5090a;
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        Preconditions.checkNotNull(nativeAd);
        int i = 0;
        while (i < this.f5090a.size()) {
            MoPubAdRenderer moPubAdRenderer = nativeAd.getMoPubAdRenderer();
            MoPubAdRenderer moPubAdRenderer2 = this.f5090a.get(i);
            int i2 = i + 1;
            i = i2;
            if (moPubAdRenderer == moPubAdRenderer2) {
                return i2;
            }
        }
        return 0;
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f5090a.add(moPubAdRenderer);
    }
}
