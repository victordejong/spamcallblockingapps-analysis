package com.google.android.gms.internal.measurement;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzvt.class */
public class zzvt extends IOException {
    private zzwt zzbzm = null;

    public zzvt(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwk() {
        return new zzvt("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwl() {
        return new zzvt("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwm() {
        return new zzvt("CodedInputStream encountered a malformed varint.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwn() {
        return new zzvt("Protocol message end-group tag did not match expected tag.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvu zzwo() {
        return new zzvu("Protocol message tag had invalid wire type.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwp() {
        return new zzvt("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwq() {
        return new zzvt("Failed to parse the message.");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzvt zzwr() {
        return new zzvt("Protocol message had invalid UTF-8.");
    }

    public final zzvt zzg(zzwt zzwtVar) {
        this.zzbzm = zzwtVar;
        return this;
    }
}
