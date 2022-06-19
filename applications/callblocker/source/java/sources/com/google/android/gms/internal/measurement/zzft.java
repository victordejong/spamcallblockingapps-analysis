package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzft.class */
public class zzft extends IOException {

    /* renamed from: a */
    private AbstractC3943fn f18556a = null;

    public zzft(String str) {
        super(str);
    }

    /* renamed from: a */
    public static zzft m4854a() {
        return new zzft("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static zzft m4853b() {
        return new zzft("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static zzft m4852c() {
        return new zzft("CodedInputStream encountered a malformed varint.");
    }

    /* renamed from: d */
    public static zzft m4851d() {
        return new zzft("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: e */
    public static zzft m4850e() {
        return new zzft("Protocol message end-group tag did not match expected tag.");
    }

    /* renamed from: f */
    public static zzfs m4849f() {
        return new zzfs("Protocol message tag had invalid wire type.");
    }

    /* renamed from: g */
    public static zzft m4848g() {
        return new zzft("Failed to parse the message.");
    }

    /* renamed from: h */
    public static zzft m4847h() {
        return new zzft("Protocol message had invalid UTF-8.");
    }
}
