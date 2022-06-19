package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.u */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/u.class */
final class C9001u extends AbstractC9004v.AbstractC9012d.AbstractC9041f {

    /* renamed from: a */
    private final String f39191a;

    /* renamed from: com.google.firebase.crashlytics.d.h.u$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/u$b.class */
    public static final class C9003b extends AbstractC9004v.AbstractC9012d.AbstractC9041f.AbstractC9042a {

        /* renamed from: a */
        private String f39192a;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9041f.AbstractC9042a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9041f mo2088a() {
            String str = "";
            if (this.f39192a == null) {
                str = " identifier";
            }
            if (str.isEmpty()) {
                return new C9001u(this.f39192a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9041f.AbstractC9042a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9041f.AbstractC9042a mo2087b(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f39192a = str;
            return this;
        }
    }

    private C9001u(String str) {
        this.f39191a = str;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9041f
    /* renamed from: b */
    public String mo2089b() {
        return this.f39191a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9041f)) {
            return false;
        }
        return this.f39191a.equals(((AbstractC9004v.AbstractC9012d.AbstractC9041f) obj).mo2089b());
    }

    public int hashCode() {
        return this.f39191a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f39191a + "}";
    }
}
