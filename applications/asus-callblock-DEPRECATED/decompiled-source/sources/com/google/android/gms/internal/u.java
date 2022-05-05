package com.google.android.gms.internal;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/u.class */
public final class u extends IOException {
    private u(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u a() {
        return new u("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u b() {
        return new u("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u c() {
        return new u("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u d() {
        return new u("Protocol message contained an invalid tag (zero).");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u e() {
        return new u("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u f() {
        return new u("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static u g() {
        return new u("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
