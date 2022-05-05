package com.firstorion.libcyd;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/CydContentMetadata.class */
public final class CydContentMetadata {
    final String ctid;
    final String cvid;
    final long exp;
    final boolean keep;
    final long nbf;
    final String spid;
    final String tid;

    public CydContentMetadata(String str, String str2, String str3, String str4, long j, boolean z, long j2) {
        this.tid = str;
        this.ctid = str2;
        this.cvid = str3;
        this.spid = str4;
        this.exp = j;
        this.keep = z;
        this.nbf = j2;
    }
}
