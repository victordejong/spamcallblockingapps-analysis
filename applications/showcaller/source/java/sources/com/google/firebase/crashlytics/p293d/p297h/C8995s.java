package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.s */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/s.class */
final class C8995s extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d {

    /* renamed from: a */
    private final String f39181a;

    /* renamed from: com.google.firebase.crashlytics.d.h.s$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/s$b.class */
    public static final class C8997b extends AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.AbstractC9038a {

        /* renamed from: a */
        private String f39182a;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.AbstractC9038a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d mo2102a() {
            String str = "";
            if (this.f39182a == null) {
                str = " content";
            }
            if (str.isEmpty()) {
                return new C8995s(this.f39182a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.AbstractC9038a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d.AbstractC9038a mo2101b(String str) {
            Objects.requireNonNull(str, "Null content");
            this.f39182a = str;
            return this;
        }
    }

    private C8995s(String str) {
        this.f39181a = str;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d
    /* renamed from: b */
    public String mo2103b() {
        return this.f39181a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d)) {
            return false;
        }
        return this.f39181a.equals(((AbstractC9004v.AbstractC9012d.AbstractC9019d.AbstractC9037d) obj).mo2103b());
    }

    public int hashCode() {
        return this.f39181a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f39181a + "}";
    }
}
