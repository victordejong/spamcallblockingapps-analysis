package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzelo.class */
public class zzelo extends IOException {
    private zzemo zzirf = null;

    public zzelo(String str) {
        super(str);
    }

    public static zzelo zzbja() {
        return new zzelo("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzelo zzbjb() {
        return new zzelo("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzelo zzbjc() {
        return new zzelo("CodedInputStream encountered a malformed varint.");
    }

    public static zzelo zzbjd() {
        return new zzelo("Protocol message contained an invalid tag (zero).");
    }

    public static zzelo zzbje() {
        return new zzelo("Protocol message end-group tag did not match expected tag.");
    }

    public static zzeln zzbjf() {
        return new zzeln("Protocol message tag had invalid wire type.");
    }

    public static zzelo zzbjg() {
        return new zzelo("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzelo zzbjh() {
        return new zzelo("Failed to parse the message.");
    }

    public static zzelo zzbji() {
        return new zzelo("Protocol message had invalid UTF-8.");
    }

    public final zzelo zzl(zzemo zzemoVar) {
        this.zzirf = zzemoVar;
        return this;
    }
}
