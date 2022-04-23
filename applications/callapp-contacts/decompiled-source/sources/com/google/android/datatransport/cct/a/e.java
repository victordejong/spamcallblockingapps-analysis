package com.google.android.datatransport.cct.a;

import com.google.android.datatransport.cct.a.k;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/e.class */
final class e extends k {

    /* renamed from: a  reason: collision with root package name */
    private final k.b f20348a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.datatransport.cct.a.a f20349b;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/cct/a/e$a.class */
    static final class a extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private k.b f20350a;

        /* renamed from: b  reason: collision with root package name */
        private com.google.android.datatransport.cct.a.a f20351b;

        @Override // com.google.android.datatransport.cct.a.k.a
        public final k.a a(com.google.android.datatransport.cct.a.a aVar) {
            this.f20351b = aVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.k.a
        public final k.a a(k.b bVar) {
            this.f20350a = bVar;
            return this;
        }

        @Override // com.google.android.datatransport.cct.a.k.a
        public final k a() {
            return new e(this.f20350a, this.f20351b);
        }
    }

    private e(k.b bVar, com.google.android.datatransport.cct.a.a aVar) {
        this.f20348a = bVar;
        this.f20349b = aVar;
    }

    @Override // com.google.android.datatransport.cct.a.k
    public final k.b a() {
        return this.f20348a;
    }

    @Override // com.google.android.datatransport.cct.a.k
    public final com.google.android.datatransport.cct.a.a b() {
        return this.f20349b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        k.b bVar = this.f20348a;
        if (bVar == null) {
            if (kVar.a() != null) {
                return false;
            }
        } else if (!bVar.equals(kVar.a())) {
            return false;
        }
        com.google.android.datatransport.cct.a.a aVar = this.f20349b;
        return aVar == null ? kVar.b() == null : aVar.equals(kVar.b());
    }

    public final int hashCode() {
        k.b bVar = this.f20348a;
        int i = 0;
        int hashCode = bVar == null ? 0 : bVar.hashCode();
        com.google.android.datatransport.cct.a.a aVar = this.f20349b;
        if (aVar != null) {
            i = aVar.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        return "ClientInfo{clientType=" + this.f20348a + ", androidClientInfo=" + this.f20349b + "}";
    }
}
