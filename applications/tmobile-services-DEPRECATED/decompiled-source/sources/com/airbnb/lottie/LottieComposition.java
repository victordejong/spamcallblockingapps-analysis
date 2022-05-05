package com.airbnb.lottie;

import android.graphics.Rect;
import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.collection.LongSparseArray;
import androidx.collection.SparseArrayCompat;
import com.airbnb.lottie.model.Font;
import com.airbnb.lottie.model.FontCharacter;
import com.airbnb.lottie.model.Marker;
import com.airbnb.lottie.model.layer.Layer;
import com.airbnb.lottie.utils.Logger;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieComposition.class */
public class LottieComposition {

    /* renamed from: c */
    private Map<String, List<Layer>> f5713c;

    /* renamed from: d */
    private Map<String, LottieImageAsset> f5714d;

    /* renamed from: e */
    private Map<String, Font> f5715e;

    /* renamed from: f */
    private List<Marker> f5716f;

    /* renamed from: g */
    private SparseArrayCompat<FontCharacter> f5717g;

    /* renamed from: h */
    private LongSparseArray<Layer> f5718h;

    /* renamed from: i */
    private List<Layer> f5719i;

    /* renamed from: j */
    private Rect f5720j;

    /* renamed from: k */
    private float f5721k;

    /* renamed from: l */
    private float f5722l;

    /* renamed from: m */
    private float f5723m;

    /* renamed from: n */
    private boolean f5724n;

    /* renamed from: a */
    private final PerformanceTracker f5711a = new PerformanceTracker();

    /* renamed from: b */
    private final HashSet<String> f5712b = new HashSet<>();

    /* renamed from: o */
    private int f5725o = 0;

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieComposition$Factory.class */
    public static class Factory {

        /* loaded from: classes-dex2jar.jar:com/airbnb/lottie/LottieComposition$Factory$ListenerAdapter.class */
        private static final class ListenerAdapter implements LottieListener<LottieComposition>, Cancellable {

            /* renamed from: a */
            private final OnCompositionLoadedListener f5726a;

            /* renamed from: b */
            private boolean f5727b;

            /* renamed from: b */
            public void mo16218a(LottieComposition lottieComposition) {
                if (!this.f5727b) {
                    this.f5726a.m16202a(lottieComposition);
                }
            }
        }

        private Factory() {
        }
    }

    @RestrictTo
    /* renamed from: a */
    public void m16346a(String str) {
        Logger.m15736c(str);
        this.f5712b.add(str);
    }

    /* renamed from: b */
    public Rect m16345b() {
        return this.f5720j;
    }

    /* renamed from: c */
    public SparseArrayCompat<FontCharacter> m16344c() {
        return this.f5717g;
    }

    /* renamed from: d */
    public float m16343d() {
        return (m16342e() / this.f5723m) * 1000.0f;
    }

    /* renamed from: e */
    public float m16342e() {
        return this.f5722l - this.f5721k;
    }

    @RestrictTo
    /* renamed from: f */
    public float m16341f() {
        return this.f5722l;
    }

    /* renamed from: g */
    public Map<String, Font> m16340g() {
        return this.f5715e;
    }

    /* renamed from: h */
    public float m16339h() {
        return this.f5723m;
    }

    /* renamed from: i */
    public Map<String, LottieImageAsset> m16338i() {
        return this.f5714d;
    }

    /* renamed from: j */
    public List<Layer> m16337j() {
        return this.f5719i;
    }

    @Nullable
    /* renamed from: k */
    public Marker m16336k(String str) {
        this.f5716f.size();
        for (int i = 0; i < this.f5716f.size(); i++) {
            Marker marker = this.f5716f.get(i);
            if (marker.m16077a(str)) {
                return marker;
            }
        }
        return null;
    }

    @RestrictTo
    /* renamed from: l */
    public int m16335l() {
        return this.f5725o;
    }

    /* renamed from: m */
    public PerformanceTracker m16334m() {
        return this.f5711a;
    }

    @Nullable
    @RestrictTo
    /* renamed from: n */
    public List<Layer> m16333n(String str) {
        return this.f5713c.get(str);
    }

    @RestrictTo
    /* renamed from: o */
    public float m16332o() {
        return this.f5721k;
    }

    @RestrictTo
    /* renamed from: p */
    public boolean m16331p() {
        return this.f5724n;
    }

    @RestrictTo
    /* renamed from: q */
    public void m16330q(int i) {
        this.f5725o += i;
    }

    @RestrictTo
    /* renamed from: r */
    public void m16329r(Rect rect, float f, float f2, float f3, List<Layer> list, LongSparseArray<Layer> longSparseArray, Map<String, List<Layer>> map, Map<String, LottieImageAsset> map2, SparseArrayCompat<FontCharacter> sparseArrayCompat, Map<String, Font> map3, List<Marker> list2) {
        this.f5720j = rect;
        this.f5721k = f;
        this.f5722l = f2;
        this.f5723m = f3;
        this.f5719i = list;
        this.f5718h = longSparseArray;
        this.f5713c = map;
        this.f5714d = map2;
        this.f5717g = sparseArrayCompat;
        this.f5715e = map3;
        this.f5716f = list2;
    }

    @RestrictTo
    /* renamed from: s */
    public Layer m16328s(long j) {
        return this.f5718h.m21045g(j);
    }

    @RestrictTo
    /* renamed from: t */
    public void m16327t(boolean z) {
        this.f5724n = z;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("LottieComposition:\n");
        for (Layer layer : this.f5719i) {
            sb.append(layer.m15916w("\t"));
        }
        return sb.toString();
    }

    /* renamed from: u */
    public void m16326u(boolean z) {
        this.f5711a.m16200b(z);
    }
}
