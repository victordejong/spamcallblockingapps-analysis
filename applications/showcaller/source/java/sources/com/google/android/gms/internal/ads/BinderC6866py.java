package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.py */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/py.class */
public final class BinderC6866py extends AbstractBinderC7162xy {

    /* renamed from: d */
    private static final int f28231d;

    /* renamed from: e */
    private static final int f28232e;

    /* renamed from: f */
    static final int f28233f;

    /* renamed from: g */
    static final int f28234g;

    /* renamed from: h */
    private final String f28235h;

    /* renamed from: i */
    private final List<BinderC6940ry> f28236i = new ArrayList();

    /* renamed from: j */
    private final List<AbstractC6533gz> f28237j = new ArrayList();

    /* renamed from: k */
    private final int f28238k;

    /* renamed from: l */
    private final int f28239l;

    /* renamed from: m */
    private final int f28240m;

    /* renamed from: n */
    private final int f28241n;

    /* renamed from: o */
    private final int f28242o;

    static {
        int rgb = Color.rgb(12, 174, 206);
        f28231d = rgb;
        int rgb2 = Color.rgb(204, 204, 204);
        f28232e = rgb2;
        f28233f = rgb2;
        f28234g = rgb;
    }

    public BinderC6866py(String str, List<BinderC6940ry> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.f28235h = str;
        for (int i3 = 0; i3 < list.size(); i3++) {
            BinderC6940ry binderC6940ry = list.get(i3);
            this.f28236i.add(binderC6940ry);
            this.f28237j.add(binderC6940ry);
        }
        this.f28238k = num != null ? num.intValue() : f28233f;
        this.f28239l = num2 != null ? num2.intValue() : f28234g;
        this.f28240m = num3 != null ? num3.intValue() : 12;
        this.f28241n = i;
        this.f28242o = i2;
    }

    /* renamed from: F6 */
    public final int m12093F6() {
        return this.f28240m;
    }

    /* renamed from: G6 */
    public final int m12092G6() {
        return this.f28241n;
    }

    /* renamed from: a */
    public final int m12091a() {
        return this.f28238k;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7199yy
    /* renamed from: b */
    public final String mo8662b() {
        return this.f28235h;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC7199yy
    /* renamed from: c */
    public final List<AbstractC6533gz> mo8661c() {
        return this.f28237j;
    }

    /* renamed from: d */
    public final int m12090d() {
        return this.f28239l;
    }

    /* renamed from: e */
    public final List<BinderC6940ry> m12089e() {
        return this.f28236i;
    }

    public final int zzi() {
        return this.f28242o;
    }
}
