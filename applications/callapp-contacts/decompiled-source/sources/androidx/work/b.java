package androidx.work;

import android.os.Build;
/* loaded from: classes-dex2jar.jar:androidx/work/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f5965a = new a().a();

    /* renamed from: b  reason: collision with root package name */
    public l f5966b;

    /* renamed from: c  reason: collision with root package name */
    public boolean f5967c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f5968d;
    public boolean e;
    public boolean f;
    public long g;
    public long h;
    public c i;

    /* loaded from: classes-dex2jar.jar:androidx/work/b$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public boolean f5969a = false;

        /* renamed from: b  reason: collision with root package name */
        boolean f5970b = false;

        /* renamed from: c  reason: collision with root package name */
        public l f5971c = l.NOT_REQUIRED;

        /* renamed from: d  reason: collision with root package name */
        boolean f5972d = false;
        boolean e = false;
        long f = -1;
        long g = -1;
        c h = new c();

        public final a a(l lVar) {
            this.f5971c = lVar;
            return this;
        }

        public final b a() {
            return new b(this);
        }
    }

    public b() {
        this.f5966b = l.NOT_REQUIRED;
        this.g = -1L;
        this.h = -1L;
        this.i = new c();
    }

    b(a aVar) {
        this.f5966b = l.NOT_REQUIRED;
        this.g = -1L;
        this.h = -1L;
        this.i = new c();
        this.f5967c = aVar.f5969a;
        this.f5968d = Build.VERSION.SDK_INT >= 23 && aVar.f5970b;
        this.f5966b = aVar.f5971c;
        this.e = aVar.f5972d;
        this.f = aVar.e;
        if (Build.VERSION.SDK_INT >= 24) {
            this.i = aVar.h;
            this.g = aVar.f;
            this.h = aVar.g;
        }
    }

    public b(b bVar) {
        this.f5966b = l.NOT_REQUIRED;
        this.g = -1L;
        this.h = -1L;
        this.i = new c();
        this.f5967c = bVar.f5967c;
        this.f5968d = bVar.f5968d;
        this.f5966b = bVar.f5966b;
        this.e = bVar.e;
        this.f = bVar.f;
        this.i = bVar.i;
    }

    public final boolean a() {
        return this.i.a() > 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f5967c == bVar.f5967c && this.f5968d == bVar.f5968d && this.e == bVar.e && this.f == bVar.f && this.g == bVar.g && this.h == bVar.h && this.f5966b == bVar.f5966b) {
            return this.i.equals(bVar.i);
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = this.f5966b.hashCode();
        boolean z = this.f5967c;
        boolean z2 = this.f5968d;
        boolean z3 = this.e;
        boolean z4 = this.f;
        long j = this.g;
        int i = (int) (j ^ (j >>> 32));
        long j2 = this.h;
        return (((((((((((((hashCode * 31) + (z ? 1 : 0)) * 31) + (z2 ? 1 : 0)) * 31) + (z3 ? 1 : 0)) * 31) + (z4 ? 1 : 0)) * 31) + i) * 31) + ((int) (j2 ^ (j2 >>> 32)))) * 31) + this.i.hashCode();
    }
}
