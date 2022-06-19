package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
/* renamed from: com.google.android.gms.internal.ads.r6 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r6.class */
public final class C6912r6 extends AbstractC6723m2 {

    /* renamed from: e */
    private final int f28786e;

    /* renamed from: f */
    private final int f28787f;

    /* renamed from: g */
    private final int[] f28788g;

    /* renamed from: h */
    private final int[] f28789h;

    /* renamed from: i */
    private final AbstractC6839p7[] f28790i;

    /* renamed from: j */
    private final Object[] f28791j;

    /* renamed from: k */
    private final HashMap<Object, Integer> f28792k = new HashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public C6912r6(Collection collection, Collection<? extends AbstractC6948s5> collection2, em3 em3Var) {
        super(false, collection2, null);
        int i = 0;
        int size = collection.size();
        this.f28788g = new int[size];
        this.f28789h = new int[size];
        this.f28790i = new AbstractC6839p7[size];
        this.f28791j = new Object[size];
        Iterator it = collection.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            AbstractC6948s5 abstractC6948s5 = (AbstractC6948s5) it.next();
            this.f28790i[i3] = abstractC6948s5.mo9780c();
            this.f28789h[i3] = i;
            this.f28788g[i3] = i2;
            i += this.f28790i[i3].mo11687a();
            i2 += this.f28790i[i3].mo11686g();
            this.f28791j[i3] = abstractC6948s5.mo9781b();
            this.f28792k.put(this.f28791j[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f28786e = i;
        this.f28787f = i2;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: a */
    public final int mo11687a() {
        return this.f28786e;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6839p7
    /* renamed from: g */
    public final int mo11686g() {
        return this.f28787f;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: p */
    protected final int mo11685p(int i) {
        return C7101wa.m9697c(this.f28788g, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: q */
    protected final int mo11684q(int i) {
        return C7101wa.m9697c(this.f28789h, i + 1, false, false);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: r */
    protected final int mo11683r(Object obj) {
        Integer num = this.f28792k.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: s */
    protected final AbstractC6839p7 mo11682s(int i) {
        return this.f28790i[i];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: t */
    protected final int mo11681t(int i) {
        return this.f28788g[i];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: u */
    protected final int mo11680u(int i) {
        return this.f28789h[i];
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6723m2
    /* renamed from: v */
    protected final Object mo11679v(int i) {
        return this.f28791j[i];
    }

    /* renamed from: y */
    public final List<AbstractC6839p7> m11678y() {
        return Arrays.asList(this.f28790i);
    }
}
