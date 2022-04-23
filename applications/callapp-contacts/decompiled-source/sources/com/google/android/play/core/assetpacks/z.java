package com.google.android.play.core.assetpacks;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/z.class */
public final class z extends a {

    /* renamed from: a  reason: collision with root package name */
    private final int f31322a;

    /* renamed from: b  reason: collision with root package name */
    private final String f31323b;

    /* renamed from: c  reason: collision with root package name */
    private final String f31324c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z(int i, String str, String str2) {
        this.f31322a = i;
        this.f31323b = str;
        this.f31324c = str2;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final int a() {
        return this.f31322a;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final String b() {
        return this.f31323b;
    }

    @Override // com.google.android.play.core.assetpacks.a
    public final String c() {
        return this.f31324c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f31322a != aVar.a()) {
            return false;
        }
        String str = this.f31323b;
        if (str == null) {
            if (aVar.b() != null) {
                return false;
            }
        } else if (!str.equals(aVar.b())) {
            return false;
        }
        String str2 = this.f31324c;
        String c2 = aVar.c();
        return str2 == null ? c2 == null : str2.equals(c2);
    }

    public final int hashCode() {
        int i = this.f31322a;
        String str = this.f31323b;
        int i2 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f31324c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2;
    }

    public final String toString() {
        int i = this.f31322a;
        String str = this.f31323b;
        String str2 = this.f31324c;
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
