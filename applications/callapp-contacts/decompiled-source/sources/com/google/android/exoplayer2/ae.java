package com.google.android.exoplayer2;

import com.google.android.exoplayer2.source.ac;
import com.google.android.exoplayer2.util.af;
import java.util.Collection;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ae.class */
final class ae extends a {

    /* renamed from: a  reason: collision with root package name */
    final al[] f20654a;

    /* renamed from: c  reason: collision with root package name */
    private final int f20655c;

    /* renamed from: d  reason: collision with root package name */
    private final int f20656d;
    private final int[] e;
    private final int[] f;
    private final Object[] g;
    private final HashMap<Object, Integer> h = new HashMap<>();

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ae(Collection<? extends x> collection, ac acVar) {
        super(false, acVar);
        int i = 0;
        int size = collection.size();
        this.e = new int[size];
        this.f = new int[size];
        this.f20654a = new al[size];
        this.g = new Object[size];
        int i2 = 0;
        int i3 = 0;
        for (x xVar : collection) {
            this.f20654a[i3] = xVar.b();
            this.f[i3] = i;
            this.e[i3] = i2;
            i += this.f20654a[i3].a();
            i2 += this.f20654a[i3].b();
            this.g[i3] = xVar.a();
            this.h.put(this.g[i3], Integer.valueOf(i3));
            i3++;
        }
        this.f20655c = i;
        this.f20656d = i2;
    }

    @Override // com.google.android.exoplayer2.al
    public final int a() {
        return this.f20655c;
    }

    @Override // com.google.android.exoplayer2.al
    public final int b() {
        return this.f20656d;
    }

    @Override // com.google.android.exoplayer2.a
    protected final int b(int i) {
        return af.b(this.e, i + 1);
    }

    @Override // com.google.android.exoplayer2.a
    protected final int c(int i) {
        return af.b(this.f, i + 1);
    }

    @Override // com.google.android.exoplayer2.a
    protected final int d(Object obj) {
        Integer num = this.h.get(obj);
        if (num == null) {
            return -1;
        }
        return num.intValue();
    }

    @Override // com.google.android.exoplayer2.a
    protected final al d(int i) {
        return this.f20654a[i];
    }

    @Override // com.google.android.exoplayer2.a
    protected final int e(int i) {
        return this.e[i];
    }

    @Override // com.google.android.exoplayer2.a
    protected final int f(int i) {
        return this.f[i];
    }

    @Override // com.google.android.exoplayer2.a
    protected final Object g(int i) {
        return this.g[i];
    }
}
