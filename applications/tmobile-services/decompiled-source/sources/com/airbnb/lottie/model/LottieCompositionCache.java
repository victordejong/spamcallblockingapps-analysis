package com.airbnb.lottie.model;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.annotation.VisibleForTesting;
import androidx.collection.LruCache;
import com.airbnb.lottie.LottieComposition;
@RestrictTo
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/model/LottieCompositionCache.class */
public class LottieCompositionCache {

    /* renamed from: b */
    private static final LottieCompositionCache f6081b = new LottieCompositionCache();

    /* renamed from: a */
    private final LruCache<String, LottieComposition> f6082a = new LruCache<>(20);

    @VisibleForTesting
    LottieCompositionCache() {
    }

    /* renamed from: b */
    public static LottieCompositionCache m16079b() {
        return f6081b;
    }

    @Nullable
    /* renamed from: a */
    public LottieComposition m16080a(@Nullable String str) {
        if (str == null) {
            return null;
        }
        return this.f6082a.get(str);
    }

    /* renamed from: c */
    public void m16078c(@Nullable String str, LottieComposition lottieComposition) {
        if (str != null) {
            this.f6082a.put(str, lottieComposition);
        }
    }
}
