package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzfo.class */
public class zzfo extends IOException {
    private zzgo zza = null;

    public zzfo(String str) {
        super(str);
    }

    public static zzfo zza() {
        return new zzfo("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzfo zzb() {
        return new zzfo("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzfo zzc() {
        return new zzfo("CodedInputStream encountered a malformed varint.");
    }

    public static zzfo zzd() {
        return new zzfo("Protocol message contained an invalid tag (zero).");
    }

    public static zzfo zze() {
        return new zzfo("Protocol message end-group tag did not match expected tag.");
    }

    public static zzfn zzf() {
        return new zzfn("Protocol message tag had invalid wire type.");
    }

    public static zzfo zzg() {
        return new zzfo("Failed to parse the message.");
    }

    public static zzfo zzh() {
        return new zzfo("Protocol message had invalid UTF-8.");
    }
}
