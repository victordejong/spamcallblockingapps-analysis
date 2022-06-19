package p193e.p194a.p195a.p200c.p203c;

import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Mention;
import java.util.Arrays;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
/* renamed from: e.a.a.c.c.g */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/c/g.class */
public final class C5139g {

    /* renamed from: a */
    public final BinaryEntity f17563a;

    /* renamed from: b */
    public String f17564b;

    /* renamed from: c */
    public Mention[] f17565c;

    public C5139g(BinaryEntity binaryEntity, String str, Mention[] mentionArr, int i) {
        Mention[] mentionArr2 = null;
        String str2 = (i & 2) != 0 ? "" : null;
        mentionArr2 = (i & 4) != 0 ? new Mention[0] : mentionArr2;
        l.e(binaryEntity, "entity");
        l.e(str2, "caption");
        l.e(mentionArr2, "mentions");
        this.f17563a = binaryEntity;
        this.f17564b = str2;
        this.f17565c = mentionArr2;
    }

    /* renamed from: a */
    public final void m33815a(String str) {
        l.e(str, "<set-?>");
        this.f17564b = str;
    }

    /* renamed from: b */
    public final void m33814b(Mention[] mentionArr) {
        l.e(mentionArr, "<set-?>");
        this.f17565c = mentionArr;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5139g)) {
                return false;
            }
            C5139g c5139g = (C5139g) obj;
            return l.a(this.f17563a, c5139g.f17563a) && l.a(this.f17564b, c5139g.f17564b) && l.a(this.f17565c, c5139g.f17565c);
        }
        return true;
    }

    public int hashCode() {
        BinaryEntity binaryEntity = this.f17563a;
        int i = 0;
        int hashCode = binaryEntity != null ? binaryEntity.hashCode() : 0;
        String str = this.f17564b;
        int hashCode2 = str != null ? str.hashCode() : 0;
        Mention[] mentionArr = this.f17565c;
        if (mentionArr != null) {
            i = Arrays.hashCode(mentionArr);
        }
        return (((hashCode * 31) + hashCode2) * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("DraftEntity(entity=");
        m8728C.append(this.f17563a);
        m8728C.append(", caption=");
        m8728C.append(this.f17564b);
        m8728C.append(", mentions=");
        return C22128a.m8618h(m8728C, Arrays.toString(this.f17565c), ")");
    }
}
