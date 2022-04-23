package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzekj.class */
public class zzekj extends IOException {
    public zzelj zzikc = null;

    public zzekj(String str) {
        super(str);
    }

    public static zzekj zzbgx() {
        return new zzekj("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzekj zzbgy() {
        return new zzekj("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzekj zzbgz() {
        return new zzekj("CodedInputStream encountered a malformed varint.");
    }

    public static zzekj zzbha() {
        return new zzekj("Protocol message contained an invalid tag (zero).");
    }

    public static zzekj zzbhb() {
        return new zzekj("Protocol message end-group tag did not match expected tag.");
    }

    public static zzekm zzbhc() {
        return new zzekm("Protocol message tag had invalid wire type.");
    }

    public static zzekj zzbhd() {
        return new zzekj("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzekj zzbhe() {
        return new zzekj("Failed to parse the message.");
    }

    public static zzekj zzbhf() {
        return new zzekj("Protocol message had invalid UTF-8.");
    }

    public final zzekj zzl(zzelj zzeljVar) {
        this.zzikc = zzeljVar;
        return this;
    }
}
