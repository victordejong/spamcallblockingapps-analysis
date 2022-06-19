package p134j4;

import androidx.recyclerview.widget.C0608b;
/* renamed from: j4.z */
/* loaded from: classes-dex2jar.jar:j4/z.class */
public final class C3268z extends AbstractC3181a {

    /* renamed from: a */
    public final String f11066a;

    /* renamed from: b */
    public final String f11067b;

    public C3268z(int i, String str, String str2) {
        this.f11066a = str;
        this.f11067b = str2;
    }

    @Override // p134j4.AbstractC3181a
    /* renamed from: a */
    public final String mo2469a() {
        return this.f11067b;
    }

    @Override // p134j4.AbstractC3181a
    /* renamed from: b */
    public final int mo2468b() {
        return 0;
    }

    @Override // p134j4.AbstractC3181a
    /* renamed from: c */
    public final String mo2467c() {
        return this.f11066a;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC3181a)) {
            return false;
        }
        AbstractC3181a abstractC3181a = (AbstractC3181a) obj;
        if (abstractC3181a.mo2468b() != 0) {
            return false;
        }
        String str = this.f11066a;
        if (str == null) {
            if (abstractC3181a.mo2467c() != null) {
                return false;
            }
        } else if (!str.equals(abstractC3181a.mo2467c())) {
            return false;
        }
        String str2 = this.f11067b;
        return str2 == null ? abstractC3181a.mo2469a() == null : str2.equals(abstractC3181a.mo2469a());
    }

    public final int hashCode() {
        String str = this.f11066a;
        int i = 0;
        int hashCode = str == null ? 0 : str.hashCode();
        String str2 = this.f11067b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode ^ (-721379959)) * 1000003) ^ i;
    }

    public final String toString() {
        String str = this.f11066a;
        String str2 = this.f11067b;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 68 + String.valueOf(str2).length());
        sb.append("AssetPackLocation{packStorageMethod=");
        sb.append(0);
        sb.append(", path=");
        sb.append(str);
        return C0608b.m7625j(sb, ", assetsPath=", str2, "}");
    }
}
