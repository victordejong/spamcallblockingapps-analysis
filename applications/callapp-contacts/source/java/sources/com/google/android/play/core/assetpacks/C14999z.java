package com.google.android.play.core.assetpacks;
/* renamed from: com.google.android.play.core.assetpacks.z */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/assetpacks/z.class */
public final class C14999z extends AbstractC14899a {

    /* renamed from: a */
    private final int f54723a;

    /* renamed from: b */
    private final String f54724b;

    /* renamed from: c */
    private final String f54725c;

    public C14999z(int i, String str, String str2) {
        this.f54723a = i;
        this.f54724b = str;
        this.f54725c = str2;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14899a
    /* renamed from: a */
    public final int mo9638a() {
        return this.f54723a;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14899a
    /* renamed from: b */
    public final String mo9637b() {
        return this.f54724b;
    }

    @Override // com.google.android.play.core.assetpacks.AbstractC14899a
    /* renamed from: c */
    public final String mo9636c() {
        return this.f54725c;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC14899a)) {
            return false;
        }
        AbstractC14899a abstractC14899a = (AbstractC14899a) obj;
        if (this.f54723a != abstractC14899a.mo9638a()) {
            return false;
        }
        String str = this.f54724b;
        if (str == null) {
            if (abstractC14899a.mo9637b() != null) {
                return false;
            }
        } else if (!str.equals(abstractC14899a.mo9637b())) {
            return false;
        }
        String str2 = this.f54725c;
        String mo9636c = abstractC14899a.mo9636c();
        return str2 == null ? mo9636c == null : str2.equals(mo9636c);
    }

    public final int hashCode() {
        int i = this.f54723a;
        String str = this.f54724b;
        int i2 = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f54725c;
        if (str2 != null) {
            i2 = str2.hashCode();
        }
        return ((((i ^ 1000003) * 1000003) ^ hashCode) * 1000003) ^ i2;
    }

    public final String toString() {
        int i = this.f54723a;
        String str = this.f54724b;
        String str2 = this.f54725c;
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
