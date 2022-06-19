package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzaf.class */
public final class zzaf {
    public static final zzaf zza = new zzaf(null, null);
    private final Boolean zzb;
    private final Boolean zzc;

    public zzaf(Boolean bool, Boolean bool2) {
        this.zzb = bool;
        this.zzc = bool2;
    }

    public static String zza(Bundle bundle) {
        String string = bundle.getString("ad_storage");
        if (string == null || zzo(string) != null) {
            String string2 = bundle.getString("analytics_storage");
            if (string2 != null && zzo(string2) == null) {
                return string2;
            }
            return null;
        }
        return string;
    }

    public static zzaf zzb(Bundle bundle) {
        return bundle == null ? zza : new zzaf(zzo(bundle.getString("ad_storage")), zzo(bundle.getString("analytics_storage")));
    }

    public static zzaf zzc(String str) {
        Boolean bool;
        Boolean bool2 = null;
        if (str != null) {
            Boolean zzp = str.length() >= 3 ? zzp(str.charAt(2)) : null;
            if (str.length() >= 4) {
                bool2 = zzp(str.charAt(3));
            }
            bool = zzp;
        } else {
            bool2 = null;
            bool = null;
        }
        return new zzaf(bool, bool2);
    }

    public static Boolean zzj(Boolean bool, Boolean bool2) {
        if (bool == null) {
            return bool2;
        }
        if (bool2 == null) {
            return bool;
        }
        boolean z = false;
        if (bool.booleanValue()) {
            z = false;
            if (bool2.booleanValue()) {
                z = true;
            }
        }
        return Boolean.valueOf(z);
    }

    public static boolean zzm(int i, int i2) {
        return i <= i2;
    }

    public static final int zzn(Boolean bool) {
        if (bool == null) {
            return 0;
        }
        return bool.booleanValue() ? 1 : 2;
    }

    private static Boolean zzo(String str) {
        if (str == null) {
            return null;
        }
        if (str.equals("granted")) {
            return Boolean.TRUE;
        }
        if (!str.equals("denied")) {
            return null;
        }
        return Boolean.FALSE;
    }

    private static Boolean zzp(char c) {
        if (c != '0') {
            if (c == '1') {
                return Boolean.TRUE;
            }
            return null;
        }
        return Boolean.FALSE;
    }

    private static final char zzq(Boolean bool) {
        if (bool == null) {
            return '-';
        }
        return bool.booleanValue() ? '1' : '0';
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzaf)) {
            return false;
        }
        zzaf zzafVar = (zzaf) obj;
        return zzn(this.zzb) == zzn(zzafVar.zzb) && zzn(this.zzc) == zzn(zzafVar.zzc);
    }

    public final int hashCode() {
        return zzn(this.zzc) + ((zzn(this.zzb) + 527) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ConsentSettings: ");
        sb.append("adStorage=");
        Boolean bool = this.zzb;
        if (bool == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool.booleanValue() ? "denied" : "granted");
        }
        sb.append(", analyticsStorage=");
        Boolean bool2 = this.zzc;
        if (bool2 == null) {
            sb.append("uninitialized");
        } else {
            sb.append(true != bool2.booleanValue() ? "denied" : "granted");
        }
        return sb.toString();
    }

    public final String zzd() {
        return "G1" + zzq(this.zzb) + zzq(this.zzc);
    }

    public final Boolean zze() {
        return this.zzb;
    }

    public final boolean zzf() {
        Boolean bool = this.zzb;
        return bool == null || bool.booleanValue();
    }

    public final Boolean zzg() {
        return this.zzc;
    }

    public final boolean zzh() {
        Boolean bool = this.zzc;
        return bool == null || bool.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x001a, code lost:
        if (r4.zzb == r0) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzi(com.google.android.gms.measurement.internal.zzaf r4) {
        /*
            r3 = this;
            r0 = r3
            java.lang.Boolean r0 = r0.zzb
            r5 = r0
            java.lang.Boolean r0 = java.lang.Boolean.FALSE
            r6 = r0
            r0 = 1
            r7 = r0
            r0 = r5
            r1 = r6
            if (r0 != r1) goto L1d
            r0 = r7
            r8 = r0
            r0 = r4
            java.lang.Boolean r0 = r0.zzb
            r1 = r6
            if (r0 != r1) goto L39
        L1d:
            r0 = r3
            java.lang.Boolean r0 = r0.zzc
            r1 = r6
            if (r0 != r1) goto L36
            r0 = r4
            java.lang.Boolean r0 = r0.zzc
            r1 = r6
            if (r0 == r1) goto L34
            r0 = r7
            r8 = r0
            goto L39
        L34:
            r0 = 0
            return r0
        L36:
            r0 = 0
            r8 = r0
        L39:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzaf.zzi(com.google.android.gms.measurement.internal.zzaf):boolean");
    }

    public final zzaf zzk(zzaf zzafVar) {
        return new zzaf(zzj(this.zzb, zzafVar.zzb), zzj(this.zzc, zzafVar.zzc));
    }

    public final zzaf zzl(zzaf zzafVar) {
        Boolean bool = this.zzb;
        Boolean bool2 = bool;
        if (bool == null) {
            bool2 = zzafVar.zzb;
        }
        Boolean bool3 = this.zzc;
        Boolean bool4 = bool3;
        if (bool3 == null) {
            bool4 = zzafVar.zzc;
        }
        return new zzaf(bool2, bool4);
    }
}
