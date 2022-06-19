package p193e.p194a.p1080o.p1081a.p1087c;

import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.o.a.c.m */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/m.class */
public final class C18570m extends AbstractC18562g {

    /* renamed from: a */
    public final String f52346a;

    /* renamed from: b */
    public final String f52347b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18570m(String str, String str2) {
        super(null);
        l.e(str, "placeholder");
        l.e(str2, "hint");
        this.f52346a = str;
        this.f52347b = str2;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C18570m)) {
                return false;
            }
            C18570m c18570m = (C18570m) obj;
            return l.a(this.f52346a, c18570m.f52346a) && l.a(this.f52347b, c18570m.f52347b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f52346a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f52347b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("ReadyToSetReason(placeholder=");
        m8728C.append(this.f52346a);
        m8728C.append(", hint=");
        return C22128a.m8618h(m8728C, this.f52347b, ")");
    }
}
