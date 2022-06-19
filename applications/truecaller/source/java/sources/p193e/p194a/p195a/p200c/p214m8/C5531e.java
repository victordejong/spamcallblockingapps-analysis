package p193e.p194a.p195a.p200c.p214m8;

import e.m.e.d0.b;
import kotlin.Metadata;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1432d.p1439c.p1440a.C22128a;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\b\b\u0086\b\u0018��2\u00020\u0001J\u0010\u0010\u0003\u001a\u00020\u0002HÖ\u0001¢\u0006\u0004\b\u0003\u0010\u0004J\u0010\u0010\u0006\u001a\u00020\u0005HÖ\u0001¢\u0006\u0004\b\u0006\u0010\u0007J\u001a\u0010\n\u001a\u00020\t2\b\u0010\b\u001a\u0004\u0018\u00010\u0001HÖ\u0003¢\u0006\u0004\b\n\u0010\u000bR\u001c\u0010\u000f\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u0004R\u001c\u0010\u0010\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004¢\u0006\f\n\u0004\b\u000e\u0010\r\u001a\u0004\b\f\u0010\u0004¨\u0006\u0011"}, d2 = {"Le/a/a/c/m8/e;", "", "", "toString", "()Ljava/lang/String;", "", "hashCode", "()I", "other", "", "equals", "(Ljava/lang/Object;)Z", C22021b.f61237c, "Ljava/lang/String;", "a", "analyticsValue", "emoji", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
/* renamed from: e.a.a.c.m8.e */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/m8/e.class */
public final class C5531e {
    @b("emoji")

    /* renamed from: a */
    private final String f18709a;
    @b("analyticsValue")

    /* renamed from: b */
    private final String f18710b;

    /* renamed from: a */
    public final String m32988a() {
        return this.f18710b;
    }

    /* renamed from: b */
    public final String m32987b() {
        return this.f18709a;
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C5531e)) {
                return false;
            }
            C5531e c5531e = (C5531e) obj;
            return l.a(this.f18709a, c5531e.f18709a) && l.a(this.f18710b, c5531e.f18710b);
        }
        return true;
    }

    public int hashCode() {
        String str = this.f18709a;
        int i = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        String str2 = this.f18710b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return (hashCode * 31) + i;
    }

    public String toString() {
        StringBuilder m8728C = C22128a.m8728C("EmojiRemoteConfig(emoji=");
        m8728C.append(this.f18709a);
        m8728C.append(", analyticsValue=");
        return C22128a.m8618h(m8728C, this.f18710b, ")");
    }
}
