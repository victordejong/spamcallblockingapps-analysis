package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes3-dex2jar.jar:com/mopub/nativeads/AdRendererRegistry.class */
public class AdRendererRegistry {

    /* renamed from: a */
    public final ArrayList<MoPubAdRenderer> f9030a = new ArrayList<>();

    public int getAdRendererCount() {
        return this.f9030a.size();
    }

    public MoPubAdRenderer getRendererForAd(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        Iterator<MoPubAdRenderer> it = this.f9030a.iterator();
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
            return this.f9030a.get(i - 1);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public Iterable<MoPubAdRenderer> getRendererIterable() {
        return this.f9030a;
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        Preconditions.checkNotNull(nativeAd);
        for (int i = 0; i < this.f9030a.size(); i++) {
            if (nativeAd.getMoPubAdRenderer() == this.f9030a.get(i)) {
                return i + 1;
            }
        }
        return 0;
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f9030a.add(moPubAdRenderer);
    }
}
