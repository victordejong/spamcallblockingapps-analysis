package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzkn.class */
public class zzkn extends IOException {
    public zzkn(String str) {
        super(str);
    }

    public static zzkn zza() {
        return new zzkn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzkn zzb() {
        return new zzkn("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzkn zzc() {
        return new zzkn("Protocol message contained an invalid tag (zero).");
    }

    public static zzkm zzd() {
        return new zzkm("Protocol message tag had invalid wire type.");
    }

    public static zzkn zze() {
        return new zzkn("Failed to parse the message.");
    }

    public static zzkn zzf() {
        return new zzkn("Protocol message had invalid UTF-8.");
    }
}
