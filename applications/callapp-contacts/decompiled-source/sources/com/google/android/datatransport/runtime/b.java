package com.google.android.datatransport.runtime;

import com.google.android.datatransport.c;
import com.google.android.datatransport.e;
import com.google.android.datatransport.runtime.k;
import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b.class */
final class b extends k {

    /* renamed from: a  reason: collision with root package name */
    private final l f20399a;

    /* renamed from: b  reason: collision with root package name */
    private final String f20400b;

    /* renamed from: c  reason: collision with root package name */
    private final c<?> f20401c;

    /* renamed from: d  reason: collision with root package name */
    private final e<?, byte[]> f20402d;
    private final com.google.android.datatransport.b e;

    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b$a.class */
    static final class a extends k.a {

        /* renamed from: a  reason: collision with root package name */
        private l f20403a;

        /* renamed from: b  reason: collision with root package name */
        private String f20404b;

        /* renamed from: c  reason: collision with root package name */
        private c<?> f20405c;

        /* renamed from: d  reason: collision with root package name */
        private e<?, byte[]> f20406d;
        private com.google.android.datatransport.b e;

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.k.a
        public final k.a a(com.google.android.datatransport.b bVar) {
            Objects.requireNonNull(bVar, "Null encoding");
            this.e = bVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.k.a
        public final k.a a(c<?> cVar) {
            Objects.requireNonNull(cVar, "Null event");
            this.f20405c = cVar;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.runtime.k.a
        public final k.a a(e<?, byte[]> eVar) {
            Objects.requireNonNull(eVar, "Null transformer");
            this.f20406d = eVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.k.a
        public final k.a a(l lVar) {
            Objects.requireNonNull(lVar, "Null transportContext");
            this.f20403a = lVar;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.k.a
        public final k.a a(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f20404b = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.k.a
        public final k a() {
            String str = "";
            if (this.f20403a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f20404b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f20405c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f20406d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new b(this.f20403a, this.f20404b, this.f20405c, this.f20406d, this.e);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private b(l lVar, String str, c<?> cVar, e<?, byte[]> eVar, com.google.android.datatransport.b bVar) {
        this.f20399a = lVar;
        this.f20400b = str;
        this.f20401c = cVar;
        this.f20402d = eVar;
        this.e = bVar;
    }

    @Override // com.google.android.datatransport.runtime.k
    public final l a() {
        return this.f20399a;
    }

    @Override // com.google.android.datatransport.runtime.k
    public final String b() {
        return this.f20400b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.k
    public final c<?> c() {
        return this.f20401c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.runtime.k
    public final e<?, byte[]> d() {
        return this.f20402d;
    }

    @Override // com.google.android.datatransport.runtime.k
    public final com.google.android.datatransport.b e() {
        return this.e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof k)) {
            return false;
        }
        k kVar = (k) obj;
        return this.f20399a.equals(kVar.a()) && this.f20400b.equals(kVar.b()) && this.f20401c.equals(kVar.c()) && this.f20402d.equals(kVar.d()) && this.e.equals(kVar.e());
    }

    public final int hashCode() {
        return ((((((((this.f20399a.hashCode() ^ 1000003) * 1000003) ^ this.f20400b.hashCode()) * 1000003) ^ this.f20401c.hashCode()) * 1000003) ^ this.f20402d.hashCode()) * 1000003) ^ this.e.hashCode();
    }

    public final String toString() {
        return "SendRequest{transportContext=" + this.f20399a + ", transportName=" + this.f20400b + ", event=" + this.f20401c + ", transformer=" + this.f20402d + ", encoding=" + this.e + "}";
    }
}
