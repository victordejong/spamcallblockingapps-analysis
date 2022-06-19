package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/c.class */
final class C8949c extends AbstractC9004v.AbstractC9006b {

    /* renamed from: a */
    private final String f39036a;

    /* renamed from: b */
    private final String f39037b;

    /* renamed from: com.google.firebase.crashlytics.d.h.c$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/c$b.class */
    public static final class C8951b extends AbstractC9004v.AbstractC9006b.AbstractC9007a {

        /* renamed from: a */
        private String f39038a;

        /* renamed from: b */
        private String f39039b;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9006b.AbstractC9007a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9006b mo2284a() {
            String str = "";
            if (this.f39038a == null) {
                str = " key";
            }
            String str2 = str;
            if (this.f39039b == null) {
                str2 = str + " value";
            }
            if (str2.isEmpty()) {
                return new C8949c(this.f39038a, this.f39039b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9006b.AbstractC9007a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9006b.AbstractC9007a mo2283b(String str) {
            Objects.requireNonNull(str, "Null key");
            this.f39038a = str;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9006b.AbstractC9007a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9006b.AbstractC9007a mo2282c(String str) {
            Objects.requireNonNull(str, "Null value");
            this.f39039b = str;
            return this;
        }
    }

    private C8949c(String str, String str2) {
        this.f39036a = str;
        this.f39037b = str2;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9006b
    /* renamed from: b */
    public String mo2286b() {
        return this.f39036a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9006b
    /* renamed from: c */
    public String mo2285c() {
        return this.f39037b;
    }

    public boolean equals(Object obj) {
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9006b)) {
            return false;
        }
        AbstractC9004v.AbstractC9006b abstractC9006b = (AbstractC9004v.AbstractC9006b) obj;
        if (!this.f39036a.equals(abstractC9006b.mo2286b()) || !this.f39037b.equals(abstractC9006b.mo2285c())) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        return ((this.f39036a.hashCode() ^ 1000003) * 1000003) ^ this.f39037b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f39036a + ", value=" + this.f39037b + "}";
    }
}
