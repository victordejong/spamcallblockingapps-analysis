package com.google.android.datatransport.p232h;

import com.google.android.datatransport.AbstractC4603c;
import com.google.android.datatransport.AbstractC4645d;
import com.google.android.datatransport.C4602b;
import com.google.android.datatransport.p232h.AbstractC4671l;
import java.util.Objects;
/* renamed from: com.google.android.datatransport.h.b */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/b.class */
final class C4652b extends AbstractC4671l {

    /* renamed from: a */
    private final AbstractC4673m f14202a;

    /* renamed from: b */
    private final String f14203b;

    /* renamed from: c */
    private final AbstractC4603c<?> f14204c;

    /* renamed from: d */
    private final AbstractC4645d<?, byte[]> f14205d;

    /* renamed from: e */
    private final C4602b f14206e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.datatransport.h.b$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/b$b.class */
    public static final class C4654b extends AbstractC4671l.AbstractC4672a {

        /* renamed from: a */
        private AbstractC4673m f14207a;

        /* renamed from: b */
        private String f14208b;

        /* renamed from: c */
        private AbstractC4603c<?> f14209c;

        /* renamed from: d */
        private AbstractC4645d<?, byte[]> f14210d;

        /* renamed from: e */
        private C4602b f14211e;

        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: a */
        public AbstractC4671l mo22030a() {
            String str = "";
            if (this.f14207a == null) {
                str = " transportContext";
            }
            String str2 = str;
            if (this.f14208b == null) {
                str2 = str + " transportName";
            }
            String str3 = str2;
            if (this.f14209c == null) {
                str3 = str2 + " event";
            }
            String str4 = str3;
            if (this.f14210d == null) {
                str4 = str3 + " transformer";
            }
            String str5 = str4;
            if (this.f14211e == null) {
                str5 = str4 + " encoding";
            }
            if (str5.isEmpty()) {
                return new C4652b(this.f14207a, this.f14208b, this.f14209c, this.f14210d, this.f14211e);
            }
            throw new IllegalStateException("Missing required properties:" + str5);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: b */
        public AbstractC4671l.AbstractC4672a mo22029b(C4602b c4602b) {
            Objects.requireNonNull(c4602b, "Null encoding");
            this.f14211e = c4602b;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: c */
        public AbstractC4671l.AbstractC4672a mo22028c(AbstractC4603c<?> abstractC4603c) {
            Objects.requireNonNull(abstractC4603c, "Null event");
            this.f14209c = abstractC4603c;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: d */
        public AbstractC4671l.AbstractC4672a mo22027d(AbstractC4645d<?, byte[]> abstractC4645d) {
            Objects.requireNonNull(abstractC4645d, "Null transformer");
            this.f14210d = abstractC4645d;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: e */
        public AbstractC4671l.AbstractC4672a mo22026e(AbstractC4673m abstractC4673m) {
            Objects.requireNonNull(abstractC4673m, "Null transportContext");
            this.f14207a = abstractC4673m;
            return this;
        }

        @Override // com.google.android.datatransport.p232h.AbstractC4671l.AbstractC4672a
        /* renamed from: f */
        public AbstractC4671l.AbstractC4672a mo22025f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f14208b = str;
            return this;
        }
    }

    private C4652b(AbstractC4673m abstractC4673m, String str, AbstractC4603c<?> abstractC4603c, AbstractC4645d<?, byte[]> abstractC4645d, C4602b c4602b) {
        this.f14202a = abstractC4673m;
        this.f14203b = str;
        this.f14204c = abstractC4603c;
        this.f14205d = abstractC4645d;
        this.f14206e = c4602b;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4671l
    /* renamed from: b */
    public C4602b mo22036b() {
        return this.f14206e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.AbstractC4671l
    /* renamed from: c */
    public AbstractC4603c<?> mo22035c() {
        return this.f14204c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.datatransport.p232h.AbstractC4671l
    /* renamed from: e */
    public AbstractC4645d<?, byte[]> mo22033e() {
        return this.f14205d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC4671l)) {
            return false;
        }
        AbstractC4671l abstractC4671l = (AbstractC4671l) obj;
        if (!this.f14202a.equals(abstractC4671l.mo22032f()) || !this.f14203b.equals(abstractC4671l.mo22031g()) || !this.f14204c.equals(abstractC4671l.mo22035c()) || !this.f14205d.equals(abstractC4671l.mo22033e()) || !this.f14206e.equals(abstractC4671l.mo22036b())) {
            z = false;
        }
        return z;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4671l
    /* renamed from: f */
    public AbstractC4673m mo22032f() {
        return this.f14202a;
    }

    @Override // com.google.android.datatransport.p232h.AbstractC4671l
    /* renamed from: g */
    public String mo22031g() {
        return this.f14203b;
    }

    public int hashCode() {
        return ((((((((this.f14202a.hashCode() ^ 1000003) * 1000003) ^ this.f14203b.hashCode()) * 1000003) ^ this.f14204c.hashCode()) * 1000003) ^ this.f14205d.hashCode()) * 1000003) ^ this.f14206e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f14202a + ", transportName=" + this.f14203b + ", event=" + this.f14204c + ", transformer=" + this.f14205d + ", encoding=" + this.f14206e + "}";
    }
}
