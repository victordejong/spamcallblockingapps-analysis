package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzib.class */
public class zzib extends IOException {
    public zzib(String str) {
        super(str);
    }

    public static zzib zza() {
        return new zzib("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzib zzb() {
        return new zzib("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzib zzc() {
        return new zzib("Protocol message contained an invalid tag (zero).");
    }

    public static zzia zzd() {
        return new zzia("Protocol message tag had invalid wire type.");
    }

    public static zzib zze() {
        return new zzib("Failed to parse the message.");
    }

    public static zzib zzf() {
        return new zzib("Protocol message had invalid UTF-8.");
    }
}
