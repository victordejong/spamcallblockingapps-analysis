package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzic.class */
public class zzic extends IOException {
    public zzic(String str) {
        super(str);
    }

    public static zzic zza() {
        return new zzic("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzic zzb() {
        return new zzic("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzic zzc() {
        return new zzic("Protocol message contained an invalid tag (zero).");
    }

    public static zzib zzd() {
        return new zzib("Protocol message tag had invalid wire type.");
    }

    public static zzic zze() {
        return new zzic("Failed to parse the message.");
    }

    public static zzic zzf() {
        return new zzic("Protocol message had invalid UTF-8.");
    }
}
