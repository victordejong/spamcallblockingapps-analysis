package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cug.class */
final class cug {

    /* renamed from: a  reason: collision with root package name */
    public final String f26411a;

    /* renamed from: b  reason: collision with root package name */
    public final String f26412b;

    public cug(String str, String str2) {
        this.f26411a = str;
        this.f26412b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cug)) {
            return false;
        }
        cug cugVar = (cug) obj;
        return this.f26411a.equals(cugVar.f26411a) && this.f26412b.equals(cugVar.f26412b);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f26411a);
        String valueOf2 = String.valueOf(this.f26412b);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
