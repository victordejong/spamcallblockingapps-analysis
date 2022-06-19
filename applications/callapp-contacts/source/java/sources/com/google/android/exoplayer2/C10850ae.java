package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.AbstractC11272ac;
import com.google.android.exoplayer2.util.C11599af;
import java.util.Collection;
import java.util.HashMap;
/* renamed from: com.google.android.exoplayer2.ae */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ae.class */
final class C10850ae extends AbstractC10834a {

    /* renamed from: a */
    final AbstractC10864al[] f34909a;

    /* renamed from: c */
    private final int f34910c;

    /* renamed from: d */
    private final int f34911d;

    /* renamed from: e */
    private final int[] f34912e;

    /* renamed from: f */
    private final int[] f34913f;

    /* renamed from: g */
    private final Object[] f34914g;

    /* renamed from: h */
    private final HashMap<Object, Integer> f34915h = new HashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10850ae(Collection<? extends AbstractC11666x> collection, AbstractC11272ac abstractC11272ac) {
        super(false, abstractC11272ac);
        int i = 0;
        int size = collection.size();
        this.f34912e = new int[size];
        this.f34913f = new int[size];
        this.f34909a = new AbstractC10864al[size];
        this.f34914g = new Object[size];
        int i2 = 0;
        int i3 = 0;
        for (AbstractC11666x abstractC11666x : collection) {
            this.f34909a[i3] = abstractC11666x.mo19592b();
            this.f34913f[i3] = i;
            this.f34912e[i3] = i2;
            i += this.f34909a[i3].mo20949a();
            i2 += this.f34909a[i3].mo20946b();
            this.f34914g[i3] = abstractC11666x.mo19594a();
            this.f34915h.put(this.f34914g[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f34910c = i;
        this.f34911d = i2;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: a */
    public final int mo20949a() {
        return this.f34910c;
    }

    @Override // com.google.android.exoplayer2.AbstractC10864al
    /* renamed from: b */
    public final int mo20946b() {
        return this.f34911d;
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: b */
    protected final int mo22231b(int i) {
        return C11599af.m19940b(this.f34912e, i + 1);
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: c */
    protected final int mo22230c(int i) {
        return C11599af.m19940b(this.f34913f, i + 1);
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: d */
    protected final int mo22228d(Object obj) {
        Integer num = this.f34915h.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: d */
    protected final AbstractC10864al mo22229d(int i) {
        return this.f34909a[i];
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: e */
    protected final int mo22227e(int i) {
        return this.f34912e[i];
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: f */
    protected final int mo22226f(int i) {
        return this.f34913f[i];
    }

    @Override // com.google.android.exoplayer2.AbstractC10834a
    /* renamed from: g */
    protected final Object mo22225g(int i) {
        return this.f34914g[i];
    }
}
