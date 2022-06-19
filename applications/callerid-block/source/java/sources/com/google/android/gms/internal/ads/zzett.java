package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzett.class */
public class zzett extends IOException {
    private qd2 zza = null;

    public zzett(String str) {
        super(str);
    }

    public static zzett zzb() {
        return new zzett("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzett zzc() {
        return new zzett("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    static zzett zzd() {
        return new zzett("CodedInputStream encountered a malformed varint.");
    }

    public static zzett zze() {
        return new zzett("Protocol message contained an invalid tag (zero).");
    }

    public static zzett zzf() {
        return new zzett("Protocol message end-group tag did not match expected tag.");
    }

    public static zzets zzg() {
        return new zzets("Protocol message tag had invalid wire type.");
    }

    static zzett zzh() {
        return new zzett("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzett zzi() {
        return new zzett("Failed to parse the message.");
    }

    public static zzett zzj() {
        return new zzett("Protocol message had invalid UTF-8.");
    }

    public final zzett zza(qd2 qd2Var) {
        this.zza = qd2Var;
        return this;
    }
}
