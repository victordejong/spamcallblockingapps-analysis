package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/zzenn.class */
public class zzenn extends IOException {

    /* renamed from: a */
    dot f50224a = null;

    public zzenn(String str) {
        super(str);
    }

    /* renamed from: a */
    public static zzenn m13635a() {
        return new zzenn("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static zzenn m13634b() {
        return new zzenn("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static zzenn m13633c() {
        return new zzenn("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static zzenn m13632d() {
        return new zzenn("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: e */
    public static zzenn m13631e() {
        return new zzenn("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: f */
    public static zzenm m13630f() {
        return new zzenm("Protocol message tag had invalid wire type.");
    }

    /* renamed from: g */
    public static zzenn m13629g() {
        return new zzenn("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* renamed from: h */
    public static zzenn m13628h() {
        return new zzenn("Failed to parse the message.");
    }

    /* renamed from: i */
    public static zzenn m13627i() {
        return new zzenn("Protocol message had invalid UTF-8.");
    }
}
