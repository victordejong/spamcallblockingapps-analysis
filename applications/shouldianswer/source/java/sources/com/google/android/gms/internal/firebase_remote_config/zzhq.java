package com.google.android.gms.internal.firebase_remote_config;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzhq.class */
public class zzhq extends IOException {
    private zziq zzud = null;

    public zzhq(String str) {
        super(str);
    }

    public static zzhq zzhe() {
        return new zzhq("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public static zzhq zzhf() {
        return new zzhq("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static zzhq zzhg() {
        return new zzhq("CodedInputStream encountered a malformed varint.");
    }

    public static zzhq zzhh() {
        return new zzhq("Protocol message contained an invalid tag (zero).");
    }

    public static zzhq zzhi() {
        return new zzhq("Protocol message end-group tag did not match expected tag.");
    }

    public static zzhp zzhj() {
        return new zzhp("Protocol message tag had invalid wire type.");
    }

    public static zzhq zzhk() {
        return new zzhq("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
    }

    public static zzhq zzhl() {
        return new zzhq("Failed to parse the message.");
    }

    public static zzhq zzhm() {
        return new zzhq("Protocol message had invalid UTF-8.");
    }

    public final zzhq zzg(zziq zziqVar) {
        this.zzud = zziqVar;
        return this;
    }
}
