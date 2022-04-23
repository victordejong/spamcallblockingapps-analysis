package com.google.android.play.core.assetpacks;

import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ac.class */
final class ac extends c {

    /* renamed from: a  reason: collision with root package name */
    private final long f31090a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, b> f31091b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ac(long j, Map<String, b> map) {
        this.f31090a = j;
        this.f31091b = map;
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final long a() {
        return this.f31090a;
    }

    @Override // com.google.android.play.core.assetpacks.c
    public final Map<String, b> b() {
        return this.f31091b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f31090a == cVar.a() && this.f31091b.equals(cVar.b());
    }

    public final int hashCode() {
        long j = this.f31090a;
        return this.f31091b.hashCode() ^ ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j = this.f31090a;
        String valueOf = String.valueOf(this.f31091b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j);
        sb.append(", packStates=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
