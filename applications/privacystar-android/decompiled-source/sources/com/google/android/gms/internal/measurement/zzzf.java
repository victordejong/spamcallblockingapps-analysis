package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzzf.class */
public final class zzzf extends IOException {
    public zzzf(String str) {
        super(str);
    }

    public zzzf(String str, Exception exc) {
        super(str, exc);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzzf zzyw() {
        return new zzzf("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either than the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzzf zzyx() {
        return new zzzf("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzzf zzyy() {
        return new zzzf("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzzf zzyz() {
        return new zzzf("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }
}
