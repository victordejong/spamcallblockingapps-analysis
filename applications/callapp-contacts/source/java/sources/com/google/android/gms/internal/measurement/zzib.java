package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzib.class */
public class zzib extends IOException {
    public zzib(String str) {
        super(str);
    }

    /* renamed from: a */
    public static zzib m12289a() {
        return new zzib("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* renamed from: b */
    public static zzib m12288b() {
        return new zzib("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* renamed from: c */
    public static zzib m12287c() {
        return new zzib("Protocol message contained an invalid tag (zero).");
    }

    /* renamed from: d */
    public static zzia m12286d() {
        return new zzia("Protocol message tag had invalid wire type.");
    }

    /* renamed from: e */
    public static zzib m12285e() {
        return new zzib("Failed to parse the message.");
    }

    /* renamed from: f */
    public static zzib m12284f() {
        return new zzib("Protocol message had invalid UTF-8.");
    }
}
