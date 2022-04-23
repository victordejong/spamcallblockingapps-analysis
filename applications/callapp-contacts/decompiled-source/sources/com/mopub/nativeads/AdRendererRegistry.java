package com.mopub.nativeads;

import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/AdRendererRegistry.class */
public class AdRendererRegistry {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayList<MoPubAdRenderer> f34450a = new ArrayList<>();

    public int getAdRendererCount() {
        return this.f34450a.size();
    }

    public MoPubAdRenderer getRendererForAd(BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        Iterator<MoPubAdRenderer> it2 = this.f34450a.iterator();
        while (it2.hasNext()) {
            MoPubAdRenderer next = it2.next();
            if (next.supports(baseNativeAd)) {
                return next;
            }
        }
        return null;
    }

    public MoPubAdRenderer getRendererForViewType(int i) {
        try {
            return this.f34450a.get(i - 1);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    public Iterable<MoPubAdRenderer> getRendererIterable() {
        return this.f34450a;
    }

    public int getViewTypeForAd(NativeAd nativeAd) {
        Preconditions.checkNotNull(nativeAd);
        for (int i = 0; i < this.f34450a.size(); i++) {
            if (nativeAd.getMoPubAdRenderer() == this.f34450a.get(i)) {
                return i + 1;
            }
        }
        return 0;
    }

    public void registerAdRenderer(MoPubAdRenderer moPubAdRenderer) {
        this.f34450a.add(moPubAdRenderer);
    }
}
