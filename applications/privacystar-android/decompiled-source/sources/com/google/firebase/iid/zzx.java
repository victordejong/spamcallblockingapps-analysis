package com.google.firebase.iid;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/zzx.class */
final class zzx implements InstanceIdResult {
    private final String zzbp;
    private final String zzbq;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzx(String str, String str2) {
        this.zzbp = str;
        this.zzbq = str2;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public final String getId() {
        return this.zzbp;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public final String getToken() {
        return this.zzbq;
    }
}
