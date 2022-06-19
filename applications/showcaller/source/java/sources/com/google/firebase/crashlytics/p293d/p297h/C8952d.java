package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
import java.util.Objects;
/* renamed from: com.google.firebase.crashlytics.d.h.d */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/d.class */
final class C8952d extends AbstractC9004v.AbstractC9008c {

    /* renamed from: a */
    private final C9043w<AbstractC9004v.AbstractC9008c.AbstractC9010b> f39040a;

    /* renamed from: b */
    private final String f39041b;

    /* renamed from: com.google.firebase.crashlytics.d.h.d$b */
    /* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/d$b.class */
    public static final class C8954b extends AbstractC9004v.AbstractC9008c.AbstractC9009a {

        /* renamed from: a */
        private C9043w<AbstractC9004v.AbstractC9008c.AbstractC9010b> f39042a;

        /* renamed from: b */
        private String f39043b;

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9009a
        /* renamed from: a */
        public AbstractC9004v.AbstractC9008c mo2278a() {
            String str = "";
            if (this.f39042a == null) {
                str = " files";
            }
            if (str.isEmpty()) {
                return new C8952d(this.f39042a, this.f39043b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9009a
        /* renamed from: b */
        public AbstractC9004v.AbstractC9008c.AbstractC9009a mo2277b(C9043w<AbstractC9004v.AbstractC9008c.AbstractC9010b> c9043w) {
            Objects.requireNonNull(c9043w, "Null files");
            this.f39042a = c9043w;
            return this;
        }

        @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c.AbstractC9009a
        /* renamed from: c */
        public AbstractC9004v.AbstractC9008c.AbstractC9009a mo2276c(String str) {
            this.f39043b = str;
            return this;
        }
    }

    private C8952d(C9043w<AbstractC9004v.AbstractC9008c.AbstractC9010b> c9043w, String str) {
        this.f39040a = c9043w;
        this.f39041b = str;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c
    /* renamed from: b */
    public C9043w<AbstractC9004v.AbstractC9008c.AbstractC9010b> mo2280b() {
        return this.f39040a;
    }

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9008c
    /* renamed from: c */
    public String mo2279c() {
        return this.f39041b;
    }

    public boolean equals(Object obj) {
        String str;
        boolean z = true;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9008c)) {
            return false;
        }
        AbstractC9004v.AbstractC9008c abstractC9008c = (AbstractC9004v.AbstractC9008c) obj;
        if (!this.f39040a.equals(abstractC9008c.mo2280b()) || ((str = this.f39041b) != null ? !str.equals(abstractC9008c.mo2279c()) : abstractC9008c.mo2279c() != null)) {
            z = false;
        }
        return z;
    }

    public int hashCode() {
        int hashCode = this.f39040a.hashCode();
        String str = this.f39041b;
        return ((hashCode ^ 1000003) * 1000003) ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f39040a + ", orgId=" + this.f39041b + "}";
    }
}
