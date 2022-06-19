package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.t */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/t.class */
final class C8998t extends AbstractC9004v.AbstractC9012d.AbstractC9039e {

    /* renamed from: a */
    private final int f39183a;

    /* renamed from: b */
    private final String f39184b;

    /* renamed from: c */
    private final String f39185c;

    /* renamed from: d */
    private final boolean f39186d;

    /* renamed from: com.google.firebase.crashlytics.d.h.t$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/t$b.class */
    public static final class C9000b extends AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a {

        /* renamed from: a */
        private Integer f39187a;

        /* renamed from: b */
        private String f39188b;

        /* renamed from: c */
        private String f39189c;

        /* renamed from: d */
        private Boolean f39190d;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9039e mo2095a() {
            String str = "";
            if (this.f39187a == null) {
                str = " platform";
            }
            String str2 = str;
            if (this.f39188b == null) {
                str2 = str + " version";
            }
            String str3 = str2;
            if (this.f39189c == null) {
                str3 = str2 + " buildVersion";
            }
            String str4 = str3;
            if (this.f39190d == null) {
                str4 = str3 + " jailbroken";
            }
            if (str4.isEmpty()) {
                return new C8998t(this.f39187a.intValue(), this.f39188b, this.f39189c, this.f39190d.booleanValue());
            }
            throw new IllegalStateException("Missing required properties:" + str4);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a mo2094b(String str) {
            Objects.requireNonNull(str, "Null buildVersion");
            this.f39189c = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a mo2093c(boolean z) {
            this.f39190d = Boolean.valueOf(z);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a
        /* renamed from: d */
        public AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a mo2092d(int i) {
            this.f39187a = Integer.valueOf(i);
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a
        /* renamed from: e */
        public AbstractC9004v.AbstractC9012d.AbstractC9039e.AbstractC9040a mo2091e(String str) {
            Objects.requireNonNull(str, "Null version");
            this.f39188b = str;
            return this;
        }
    }

    private C8998t(int i, String str, String str2, boolean z) {
        this.f39183a = i;
        this.f39184b = str;
        this.f39185c = str2;
        this.f39186d = z;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e
    /* renamed from: b */
    public String mo2099b() {
        return this.f39185c;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e
    /* renamed from: c */
    public int mo2098c() {
        return this.f39183a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e
    /* renamed from: d */
    public String mo2097d() {
        return this.f39184b;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9039e
    /* renamed from: e */
    public boolean mo2096e() {
        return this.f39186d;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9039e)) {
            return false;
        }
        AbstractC9004v.AbstractC9012d.AbstractC9039e abstractC9039e = (AbstractC9004v.AbstractC9012d.AbstractC9039e) obj;
        if (this.f39183a != abstractC9039e.mo2098c() || !this.f39184b.equals(abstractC9039e.mo2097d()) || !this.f39185c.equals(abstractC9039e.mo2099b()) || this.f39186d != abstractC9039e.mo2096e()) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int i = this.f39183a;
        int hashCode = this.f39184b.hashCode();
        return ((((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ this.f39185c.hashCode()) * 1000003) ^ (this.f39186d ? 1231 : 1237);
    }

    public String toString() {
        return "OperatingSystem{platform=" + this.f39183a + ", version=" + this.f39184b + ", buildVersion=" + this.f39185c + ", jailbroken=" + this.f39186d + "}";
    }
}
