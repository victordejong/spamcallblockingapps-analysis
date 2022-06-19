package com.google.android.gms.internal.ads;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzeco.class */
public class zzeco extends IOException {

    /* renamed from: a */
    private deg f17745a = null;

    public zzeco(String str) {
        super(str);
    }

    /* renamed from: a */
    public static zzeco m6551a() {
        return new zzeco("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static zzeco m6549b() {
        return new zzeco("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static zzeco m6548c() {
        return new zzeco("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static zzeco m6547d() {
        return new zzeco("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: e */
    public static zzeco m6546e() {
        return new zzeco("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: f */
    public static zzecn m6545f() {
        return new zzecn("Protocol message tag had invalid wire type.");
    }

    /* renamed from: g */
    public static zzeco m6544g() {
        return new zzeco("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    /* renamed from: h */
    public static zzeco m6543h() {
        return new zzeco("Failed to parse the message.");
    }

    /* renamed from: i */
    public static zzeco m6542i() {
        return new zzeco("Protocol message had invalid UTF-8.");
    }

    /* renamed from: a */
    public final zzeco m6550a(deg degVar) {
        this.f17745a = degVar;
        return this;
    }
}
