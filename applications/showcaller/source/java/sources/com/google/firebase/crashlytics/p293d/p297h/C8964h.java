package com.google.firebase.crashlytics.p293d.p297h;

import com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v;
/* renamed from: com.google.firebase.crashlytics.d.h.h */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/h/h.class */
final class C8964h extends AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b {

    /* renamed from: a */
    private final String f39084a;

    @Override // com.google.firebase.crashlytics.p293d.p297h.AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b
    /* renamed from: a */
    public String mo2238a() {
        return this.f39084a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b)) {
            return false;
        }
        return this.f39084a.equals(((AbstractC9004v.AbstractC9012d.AbstractC9013a.AbstractC9015b) obj).mo2238a());
    }

    public int hashCode() {
        return this.f39084a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Organization{clsId=" + this.f39084a + "}";
    }
}
