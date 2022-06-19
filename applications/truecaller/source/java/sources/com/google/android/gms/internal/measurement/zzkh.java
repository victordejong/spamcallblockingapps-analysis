package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkh.class */
public class zzkh extends IOException {
    public zzkh(String str) {
        super(str);
    }

    public static zzkg zza() {
        return new zzkg("Protocol message tag had invalid wire type.");
    }

    public static zzkh zzb() {
        return new zzkh("Protocol message contained an invalid tag (zero).");
    }

    public static zzkh zzc() {
        return new zzkh("Protocol message had invalid UTF-8.");
    }

    public static zzkh zzd() {
        return new zzkh("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzkh zze() {
        return new zzkh("Failed to parse the message.");
    }

    public static zzkh zzf() {
        return new zzkh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }
}
