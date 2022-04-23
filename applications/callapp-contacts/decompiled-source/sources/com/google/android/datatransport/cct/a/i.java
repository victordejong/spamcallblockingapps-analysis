package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/i.class */
final class i extends o {

    /* renamed from: a  reason: collision with root package name */
    private final o.c f20369a;

    /* renamed from: b  reason: collision with root package name */
    private final o.b f20370b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/i$a.class */
    static final class a extends o.a {

        /* renamed from: a  reason: collision with root package name */
        private o.c f20371a;

        /* renamed from: b  reason: collision with root package name */
        private o.b f20372b;

        @Override // com.google.android.datatransport.cct.a.o.a
        public final o.a a(o.b bVar) {
            this.f20372b = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.o.a
        public final o.a a(o.c cVar) {
            this.f20371a = cVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.o.a
        public final o a() {
            return new i(this.f20371a, this.f20372b);
        }
    }

    private i(o.c cVar, o.b bVar) {
        this.f20369a = cVar;
        this.f20370b = bVar;
    }

    @Override // com.google.android.datatransport.cct.a.o
    public final o.c a() {
        return this.f20369a;
    }

    @Override // com.google.android.datatransport.cct.a.o
    public final o.b b() {
        return this.f20370b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        o.c cVar = this.f20369a;
        if (cVar == null) {
            if (oVar.a() != null) {
                return false;
            }
        } else if (!cVar.equals(oVar.a())) {
            return false;
        }
        o.b bVar = this.f20370b;
        return bVar == null ? oVar.b() == null : bVar.equals(oVar.b());
    }

    public final int hashCode() {
        o.c cVar = this.f20369a;
        int i = 0;
        int hashCode = cVar == null ? 0 : cVar.hashCode();
        o.b bVar = this.f20370b;
        if (bVar != null) {
            i = bVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        return "NetworkConnectionInfo{networkType=" + this.f20369a + ", mobileSubtype=" + this.f20370b + "}";
    }
}
