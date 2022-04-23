package com.google.android.gms.internal.ads;

import android.graphics.Color;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzadl.class */
public final class zzadl extends zzadv {

    /* renamed from: i */
    public static final int f24021i = Color.rgb(12, 174, 206);

    /* renamed from: j */
    public static final int f24022j = Color.rgb(204, 204, 204);

    /* renamed from: k */
    public static final int f24023k = f24021i;

    /* renamed from: a */
    public final String f24024a;

    /* renamed from: b */
    public final List<zzadq> f24025b = new ArrayList();

    /* renamed from: c */
    public final List<zzaee> f24026c = new ArrayList();

    /* renamed from: d */
    public final int f24027d;

    /* renamed from: e */
    public final int f24028e;

    /* renamed from: f */
    public final int f24029f;

    /* renamed from: g */
    public final int f24030g;

    /* renamed from: h */
    public final int f24031h;

    public zzadl(String str, List<zzadq> list, Integer num, Integer num2, Integer num3, int i, int i2, boolean z) {
        this.f24024a = str;
        if (list != null) {
            for (int i3 = 0; i3 < list.size(); i3++) {
                zzadq zzadqVar = list.get(i3);
                this.f24025b.add(zzadqVar);
                this.f24026c.add(zzadqVar);
            }
        }
        this.f24027d = num != null ? num.intValue() : f24022j;
        this.f24028e = num2 != null ? num2.intValue() : f24023k;
        this.f24029f = num3 != null ? num3.intValue() : 12;
        this.f24030g = i;
        this.f24031h = i2;
    }

    @Override // com.google.android.gms.internal.ads.zzadw
    /* renamed from: A0 */
    public final String mo16841A0() {
        return this.f24024a;
    }

    /* renamed from: Q1 */
    public final int m16853Q1() {
        return this.f24027d;
    }

    /* renamed from: T1 */
    public final int m16852T1() {
        return this.f24028e;
    }

    @Override // com.google.android.gms.internal.ads.zzadw
    /* renamed from: W0 */
    public final List<zzaee> mo16840W0() {
        return this.f24026c;
    }

    /* renamed from: a2 */
    public final int m16851a2() {
        return this.f24029f;
    }

    /* renamed from: d2 */
    public final List<zzadq> m16850d2() {
        return this.f24025b;
    }

    /* renamed from: e2 */
    public final int m16849e2() {
        return this.f24030g;
    }

    /* renamed from: g2 */
    public final int m16848g2() {
        return this.f24031h;
    }
}
