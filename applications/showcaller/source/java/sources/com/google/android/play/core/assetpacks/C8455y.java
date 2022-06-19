package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.y */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/assetpacks/y.class */
public final class C8455y extends AbstractC8361a {

    /* renamed from: b */
    private final int f37988b;

    /* renamed from: c */
    private final String f37989c;

    /* renamed from: d */
    private final String f37990d;

    public C8455y(int i, String str, String str2) {
        this.f37988b = i;
        this.f37989c = str;
        this.f37990d = str2;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8361a
    /* renamed from: a */
    public final String mo3614a() {
        return this.f37990d;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8361a
    /* renamed from: c */
    public final int mo3613c() {
        return this.f37988b;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC8361a
    /* renamed from: d */
    public final String mo3612d() {
        return this.f37989c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC8361a)) {
            return false;
        }
        AbstractC8361a abstractC8361a = (AbstractC8361a) obj;
        if (this.f37988b != abstractC8361a.mo3613c()) {
            return false;
        }
        String str = this.f37989c;
        if (str == null) {
            if (abstractC8361a.mo3612d() != null) {
                return false;
            }
        } else if (!str.equals(abstractC8361a.mo3612d())) {
            return false;
        }
        String str2 = this.f37990d;
        String mo3614a = abstractC8361a.mo3614a();
        return str2 == null ? mo3614a == null : str2.equals(mo3614a);
    }

    public final int hashCode() {
        int i = this.f37988b;
        String str = this.f37989c;
        int i2 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f37990d;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2;
    }

    public final String toString() {
        int i = this.f37988b;
        String str = this.f37989c;
        String str2 = this.f37990d;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str2).length());
        sb.append("AssetPackLocation{packStorageMethod=");
        sb.append(i);
        sb.append(", path=");
        sb.append(str);
        sb.append(", assetsPath=");
        sb.append(str2);
        sb.append("}");
        return sb.toString();
    }
}
