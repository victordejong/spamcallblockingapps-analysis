package com.google.android.play.core.assetpacks;

import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.play.core.assetpacks.ac */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/ac.class */
public final class C14902ac extends AbstractC14953c {

    /* renamed from: a */
    private final long f54382a;

    /* renamed from: b */
    private final Map<String, AbstractC14926b> f54383b;

    public C14902ac(long j, Map<String, AbstractC14926b> map) {
        this.f54382a = j;
        this.f54383b = map;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14953c
    /* renamed from: a */
    public final long mo9717a() {
        return this.f54382a;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14953c
    /* renamed from: b */
    public final Map<String, AbstractC14926b> mo9715b() {
        return this.f54383b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC14953c)) {
            return false;
        }
        AbstractC14953c abstractC14953c = (AbstractC14953c) obj;
        return this.f54382a == abstractC14953c.mo9717a() && this.f54383b.equals(abstractC14953c.mo9715b());
    }

    public final int hashCode() {
        long j = this.f54382a;
        return this.f54383b.hashCode() ^ ((((int) (j ^ (j >>> 32))) ^ 1000003) * 1000003);
    }

    public final String toString() {
        long j = this.f54382a;
        String valueOf = String.valueOf(this.f54383b);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61);
        sb.append("AssetPackStates{totalBytes=");
        sb.append(j);
        sb.append(", packStates=");
        sb.append(valueOf);
        sb.append("}");
        return sb.toString();
    }
}
