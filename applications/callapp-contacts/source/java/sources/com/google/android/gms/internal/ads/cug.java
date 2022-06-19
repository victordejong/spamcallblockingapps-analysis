package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cug.class */
final class cug {

    /* renamed from: a */
    public final String f46560a;

    /* renamed from: b */
    public final String f46561b;

    public cug(String str, String str2) {
        this.f46560a = str;
        this.f46561b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof cug)) {
            return false;
        }
        cug cugVar = (cug) obj;
        return this.f46560a.equals(cugVar.f46560a) && this.f46561b.equals(cugVar.f46561b);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.f46560a);
        String valueOf2 = String.valueOf(this.f46561b);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
