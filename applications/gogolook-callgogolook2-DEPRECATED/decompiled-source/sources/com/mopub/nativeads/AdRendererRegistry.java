package com.mopub.nativeads;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.Preconditions;
import java.util.ArrayList;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/AdRendererRegistry.class */
public class AdRendererRegistry {
    @NonNull

    /* renamed from: a */
    public final ArrayList<MoPubAdRenderer> f8960a = new ArrayList<>();

    public int getAdRendererCount() {
        return this.f8960a.size();
    }

    @Nullable
    public MoPubAdRenderer getRendererForAd(@NonNull BaseNativeAd baseNativeAd) {
        Preconditions.checkNotNull(baseNativeAd);
        Iterator<MoPubAdRenderer> it = this.f8960a.iterator();
        while (it.hasNext()) {
            MoPubAdRenderer next = it.next();
            if (next.supports(baseNativeAd)) {
                return next;
            }
        }
        return null;
    }

    @Nullable
    public MoPubAdRenderer getRendererForViewType(int i) {
        try {
            return this.f8960a.get(i - 1);
        } catch (IndexOutOfBoundsException e) {
            return null;
        }
    }

    @NonNull
    public Iterable<MoPubAdRenderer> getRendererIterable() {
        return this.f8960a;
    }

    public int getViewTypeForAd(@NonNull NativeAd nativeAd) {
        Preconditions.checkNotNull(nativeAd);
        for (int i = 0; i < this.f8960a.size(); i++) {
            if (nativeAd.getMoPubAdRenderer() == this.f8960a.get(i)) {
                return i + 1;
            }
        }
        return 0;
    }

    public void registerAdRenderer(@NonNull MoPubAdRenderer moPubAdRenderer) {
        this.f8960a.add(moPubAdRenderer);
    }
}
