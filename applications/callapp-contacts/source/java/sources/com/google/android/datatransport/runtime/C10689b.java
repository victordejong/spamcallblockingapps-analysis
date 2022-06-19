package com.google.android.datatransport.runtime;

import com.google.android.datatransport.AbstractC10628c;
import com.google.android.datatransport.AbstractC10677e;
import com.google.android.datatransport.C10627b;
import com.google.android.datatransport.runtime.AbstractC10736k;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.runtime.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b.class */
final class C10689b extends AbstractC10736k {

    /* renamed from: a */
    private final AbstractC10738l f34535a;

    /* renamed from: b */
    private final String f34536b;

    /* renamed from: c */
    private final AbstractC10628c<?> f34537c;

    /* renamed from: d */
    private final AbstractC10677e<?, byte[]> f34538d;

    /* renamed from: e */
    private final C10627b f34539e;

    /* renamed from: com.google.android.datatransport.runtime.b$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/b$a.class */
    static final class C10691a extends AbstractC10736k.AbstractC10737a {

        /* renamed from: a */
        private AbstractC10738l f34540a;

        /* renamed from: b */
        private String f34541b;

        /* renamed from: c */
        private AbstractC10628c<?> f34542c;

        /* renamed from: d */
        private AbstractC10677e<?, byte[]> f34543d;

        /* renamed from: e */
        private C10627b f34544e;

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k.AbstractC10737a mo22455a(C10627b c10627b) {
            Objects.requireNonNull(c10627b, "Null encoding");
            this.f34544e = c10627b;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k.AbstractC10737a mo22454a(AbstractC10628c<?> abstractC10628c) {
            Objects.requireNonNull(abstractC10628c, "Null event");
            this.f34542c = abstractC10628c;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k.AbstractC10737a mo22453a(AbstractC10677e<?, byte[]> abstractC10677e) {
            Objects.requireNonNull(abstractC10677e, "Null transformer");
            this.f34543d = abstractC10677e;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k.AbstractC10737a mo22452a(AbstractC10738l abstractC10738l) {
            Objects.requireNonNull(abstractC10738l, "Null transportContext");
            this.f34540a = abstractC10738l;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k.AbstractC10737a mo22451a(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f34541b = str;
            return this;
        }

        @Override // com.google.android.datatransport.runtime.AbstractC10736k.AbstractC10737a
        /* renamed from: a */
        public final AbstractC10736k mo22456a() {
            String str = "";
            if (this.f34540a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f34541b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f34542c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f34543d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.f34544e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new C10689b(this.f34540a, this.f34541b, this.f34542c, this.f34543d, this.f34544e);
            }
            throw new IllegalStateException("Missing required properties:".concat(String.valueOf(str5)));
        }
    }

    private C10689b(AbstractC10738l abstractC10738l, String str, AbstractC10628c<?> abstractC10628c, AbstractC10677e<?, byte[]> abstractC10677e, C10627b c10627b) {
        this.f34535a = abstractC10738l;
        this.f34536b = str;
        this.f34537c = abstractC10628c;
        this.f34538d = abstractC10677e;
        this.f34539e = c10627b;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10736k
    /* renamed from: a */
    public final AbstractC10738l mo22461a() {
        return this.f34535a;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10736k
    /* renamed from: b */
    public final String mo22460b() {
        return this.f34536b;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10736k
    /* renamed from: c */
    public final AbstractC10628c<?> mo22459c() {
        return this.f34537c;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10736k
    /* renamed from: d */
    public final AbstractC10677e<?, byte[]> mo22458d() {
        return this.f34538d;
    }

    @Override // com.google.android.datatransport.runtime.AbstractC10736k
    /* renamed from: e */
    public final C10627b mo22457e() {
        return this.f34539e;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC10736k)) {
            return false;
        }
        AbstractC10736k abstractC10736k = (AbstractC10736k) obj;
        return this.f34535a.equals(abstractC10736k.mo22461a()) && this.f34536b.equals(abstractC10736k.mo22460b()) && this.f34537c.equals(abstractC10736k.mo22459c()) && this.f34538d.equals(abstractC10736k.mo22458d()) && this.f34539e.equals(abstractC10736k.mo22457e());
    }

    public final int hashCode() {
        return ((((((((this.f34535a.hashCode() ^ 1000003) * 1000003) ^ this.f34536b.hashCode()) * 1000003) ^ this.f34537c.hashCode()) * 1000003) ^ this.f34538d.hashCode()) * 1000003) ^ this.f34539e.hashCode();
    }

    public final String toString() {
        return "SendRequest{transportContext=" + this.f34535a + ", transportName=" + this.f34536b + ", event=" + this.f34537c + ", transformer=" + this.f34538d + ", encoding=" + this.f34539e + "}";
    }
}
