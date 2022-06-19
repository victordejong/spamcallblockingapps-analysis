package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzggm.class */
public class zzggm extends IOException {
    private mf3 zza = null;
    private boolean zzb;

    public zzggm(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }

    public zzggm(String str) {
        super(str);
    }

    public static zzggm zzd() {
        return new zzggm("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzggm zze() {
        return new zzggm("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzggm zzf() {
        return new zzggm("CodedInputStream encountered a malformed varint.");
    }

    public static zzggm zzg() {
        return new zzggm("Protocol message contained an invalid tag (zero).");
    }

    public static zzggm zzh() {
        return new zzggm("Protocol message end-group tag did not match expected tag.");
    }

    public static zzggl zzi() {
        return new zzggl("Protocol message tag had invalid wire type.");
    }

    public static zzggm zzj() {
        return new zzggm("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzggm zzk() {
        return new zzggm("Failed to parse the message.");
    }

    public static zzggm zzl() {
        return new zzggm("Protocol message had invalid UTF-8.");
    }

    public final zzggm zza(mf3 mf3Var) {
        this.zza = mf3Var;
        return this;
    }

    public final void zzb() {
        this.zzb = true;
    }

    public final boolean zzc() {
        return this.zzb;
    }
}
