package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdsg.class */
final class zzdsg {
    public final String label;
    public final String value;

    public zzdsg(String str, String str2) {
        this.label = str;
        this.value = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzdsg)) {
            return false;
        }
        zzdsg zzdsgVar = (zzdsg) obj;
        return this.label.equals(zzdsgVar.label) && this.value.equals(zzdsgVar.value);
    }

    public final int hashCode() {
        String valueOf = String.valueOf(this.label);
        String valueOf2 = String.valueOf(this.value);
        return (valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf)).hashCode();
    }
}
