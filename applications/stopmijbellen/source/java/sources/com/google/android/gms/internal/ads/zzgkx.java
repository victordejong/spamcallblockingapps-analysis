package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgkx.class */
public class zzgkx extends IOException {
    private zzglv zza = null;
    private boolean zzb;

    public zzgkx(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzgkx(String str) {
        super(str);
    }

    public static zzgkw zza() {
        return new zzgkw("Protocol message tag had invalid wire type.");
    }

    public static zzgkx zzb() {
        return new zzgkx("Protocol message end-group tag did not match expected tag.");
    }

    public static zzgkx zzc() {
        return new zzgkx("Protocol message contained an invalid tag (zero).");
    }

    public static zzgkx zzd() {
        return new zzgkx("Protocol message had invalid UTF-8.");
    }

    public static zzgkx zze() {
        return new zzgkx("CodedInputStream encountered a malformed varint.");
    }

    public static zzgkx zzf() {
        return new zzgkx("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzgkx zzg() {
        return new zzgkx("Failed to parse the message.");
    }

    public static zzgkx zzi() {
        return new zzgkx("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzgkx zzj() {
        return new zzgkx("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public final zzgkx zzh(zzglv zzglvVar) {
        this.zza = zzglvVar;
        return this;
    }

    public final void zzk() {
        this.zzb = true;
    }

    public final boolean zzl() {
        return this.zzb;
    }
}
