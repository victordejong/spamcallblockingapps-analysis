package com.google.gson;

import com.google.gson.a.j;
import com.google.gson.c.c;
/* loaded from: classes-dex2jar.jar:com/google/gson/w.class */
public final class w<T> extends x<T> {

    /* renamed from: a  reason: collision with root package name */
    private final t<T> f4559a;

    /* renamed from: b  reason: collision with root package name */
    private final k<T> f4560b;
    private final f c;
    private final com.google.gson.b.a<T> d;
    private final y e;
    private x<T> f;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes-dex2jar.jar:com/google/gson/w$a.class */
    public static final class a implements y {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.gson.b.a<?> f4561a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f4562b;
        private final Class<?> c;
        private final t<?> d;
        private final k<?> e;

        private a(Object obj, com.google.gson.b.a<?> aVar, boolean z) {
            this.d = obj instanceof t ? (t) obj : null;
            this.e = obj instanceof k ? (k) obj : null;
            com.google.gson.a.a.a((this.d == null && this.e == null) ? false : true);
            this.f4561a = aVar;
            this.f4562b = z;
            this.c = null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public /* synthetic */ a(Object obj, com.google.gson.b.a aVar, boolean z, byte b2) {
            this(obj, aVar, z);
        }

        @Override // com.google.gson.y
        public final <T> x<T> a(f fVar, com.google.gson.b.a<T> aVar) {
            return this.f4561a != null ? this.f4561a.equals(aVar) || (this.f4562b && this.f4561a.f4532b == aVar.f4531a) : this.c.isAssignableFrom(aVar.f4531a) ? new w(this.d, this.e, fVar, aVar, this, (byte) 0) : null;
        }
    }

    private w(t<T> tVar, k<T> kVar, f fVar, com.google.gson.b.a<T> aVar, y yVar) {
        this.f4559a = tVar;
        this.f4560b = kVar;
        this.c = fVar;
        this.d = aVar;
        this.e = yVar;
    }

    /* synthetic */ w(t tVar, k kVar, f fVar, com.google.gson.b.a aVar, y yVar, byte b2) {
        this(tVar, kVar, fVar, aVar, yVar);
    }

    private x<T> a() {
        x<T> xVar = this.f;
        if (xVar == null) {
            xVar = this.c.a(this.e, this.d);
            this.f = xVar;
        }
        return xVar;
    }

    public static y a(com.google.gson.b.a<?> aVar, Object obj) {
        return new a(obj, aVar, false, (byte) 0);
    }

    @Override // com.google.gson.x
    public final T a(com.google.gson.c.a aVar) {
        T a2;
        if (this.f4560b == null) {
            a2 = a().a(aVar);
        } else {
            l a3 = j.a(aVar);
            a2 = a3 instanceof n ? null : this.f4560b.a(a3, this.d.f4532b);
        }
        return a2;
    }

    @Override // com.google.gson.x
    public final void a(c cVar, T t) {
        if (this.f4559a == null) {
            a().a(cVar, t);
        } else if (t == null) {
            cVar.e();
        } else {
            j.a(this.f4559a.a(t), cVar);
        }
    }
}
