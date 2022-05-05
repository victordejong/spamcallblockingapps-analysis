package com.google.firebase.iid;
/* loaded from: classes-dex2jar.jar:com/google/firebase/iid/InstanceIdResultImpl.class */
final class InstanceIdResultImpl implements InstanceIdResult {

    /* renamed from: id */
    private final String f11915id;
    private final String token;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InstanceIdResultImpl(String str, String str2) {
        this.f11915id = str;
        this.token = str2;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public final String getId() {
        return this.f11915id;
    }

    @Override // com.google.firebase.iid.InstanceIdResult
    public final String getToken() {
        return this.token;
    }
}
