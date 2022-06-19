package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.bg */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bg.class */
public final class BinderC2830bg extends AbstractBinderC2840bq {

    /* renamed from: b */
    private static final int f11169b;

    /* renamed from: c */
    private static final int f11170c;

    /* renamed from: e */
    private final String f11172e;

    /* renamed from: f */
    private final List<BinderC2831bh> f11173f = new ArrayList();

    /* renamed from: g */
    private final List<AbstractC2844bu> f11174g = new ArrayList();

    /* renamed from: h */
    private final int f11175h;

    /* renamed from: i */
    private final int f11176i;

    /* renamed from: j */
    private final int f11177j;

    /* renamed from: k */
    private final int f11178k;

    /* renamed from: l */
    private final int f11179l;

    /* renamed from: m */
    private final boolean f11180m;

    /* renamed from: a */
    private static final int f11168a = Color.rgb(12, 174, 206);

    /* renamed from: d */
    private static final int f11171d = f11168a;

    static {
        int rgb = Color.rgb(204, 204, 204);
        f11169b = rgb;
        f11170c = rgb;
    }

    public BinderC2830bg(String str, List<BinderC2831bh> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.f11172e = str;
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                BinderC2831bh binderC2831bh = list.get(i3);
                this.f11173f.add(binderC2831bh);
                this.f11174g.add(binderC2831bh);
            }
        }
        this.f11175h = num != null ? num.intValue() : f11170c;
        this.f11176i = num2 != null ? num2.intValue() : f11171d;
        this.f11177j = num3 != null ? num3.intValue() : 12;
        this.f11178k = i;
        this.f11179l = i2;
        this.f11180m = z;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2837bn
    /* renamed from: a */
    public final String mo11738a() {
        return this.f11172e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC2837bn
    /* renamed from: b */
    public final List<AbstractC2844bu> mo11737b() {
        return this.f11174g;
    }

    /* renamed from: c */
    public final List<BinderC2831bh> m11985c() {
        return this.f11173f;
    }

    /* renamed from: d */
    public final int m11984d() {
        return this.f11175h;
    }

    /* renamed from: e */
    public final int m11983e() {
        return this.f11176i;
    }

    /* renamed from: f */
    public final int m11982f() {
        return this.f11177j;
    }

    /* renamed from: g */
    public final int m11981g() {
        return this.f11178k;
    }

    /* renamed from: h */
    public final int m11980h() {
        return this.f11179l;
    }
}
