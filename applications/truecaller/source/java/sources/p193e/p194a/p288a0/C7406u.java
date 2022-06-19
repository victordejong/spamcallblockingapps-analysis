package p193e.p194a.p288a0;

import com.truecaller.data.entity.SpamCategoryModel;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a0.u */
/* loaded from: classes12-dex2jar.jar:e/a/a0/u.class */
public final class C7406u {

    /* renamed from: a */
    public final String f23546a;

    /* renamed from: b */
    public final SpamCategoryModel f23547b;

    public C7406u(String str, SpamCategoryModel spamCategoryModel) {
        l.e(str, "label");
        this.f23546a = str;
        this.f23547b = spamCategoryModel;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C7406u)) {
                return false;
            }
            C7406u c7406u = (C7406u) obj;
            return l.a(this.f23546a, c7406u.f23546a) && l.a(this.f23547b, c7406u.f23547b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f23546a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        SpamCategoryModel spamCategoryModel = this.f23547b;
        if (spamCategoryModel != null) {
            i = spamCategoryModel.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("SpamDetails(label=");
        m8728C.append(this.f23546a);
        m8728C.append(", spamCategoryModel=");
        m8728C.append(this.f23547b);
        m8728C.append(")");
        return m8728C.toString();
    }
}
