package com.google.android.play.core.assetpacks;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.b0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/b0.class */
public final class C8366b0 extends AbstractC8365b {

    /* renamed from: a */
    private final long f37666a;

    /* renamed from: b */
    private final Map<String, AssetPackState> f37667b;

    public C8366b0(long j, Map<String, AssetPackState> map) {
        this.f37666a = j;
        this.f37667b = map;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8365b
    /* renamed from: e */
    public final Map<String, AssetPackState> mo3782e() {
        return this.f37667b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8365b)) {
            return false;
        }
        AbstractC8365b abstractC8365b = (AbstractC8365b) obj;
        return this.f37666a == abstractC8365b.mo3781f() && this.f37667b.equals(abstractC8365b.mo3782e());
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8365b
    /* renamed from: f */
    public final long mo3781f() {
        return this.f37666a;
    }

    public final int hashCode() {
        long j = this.f37666a;
        return this.f37667b.hashCode() ^ ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j = this.f37666a;
        String valueOf = String.valueOf(this.f37667b);
        StringBuilder sb = new StringBuilder(valueOf.length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j);
        sb.append(", packStates=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
