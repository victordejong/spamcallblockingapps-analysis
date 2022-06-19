package p193e.p194a.p195a.p258m.p263f3;

import p193e.p194a.p1111o2.C18900h;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.m.f3.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/f3/c.class */
public final class C6855c extends m implements l<Boolean, s> {

    /* renamed from: b */
    public final /* synthetic */ C6856d f22408b;

    /* renamed from: c */
    public final /* synthetic */ C18900h f22409c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6855c(C6856d c6856d, C18900h c18900h) {
        super(1);
        this.f22408b = c6856d;
        this.f22409c = c18900h;
    }

    /* renamed from: d */
    public Object m30416d(Object obj) {
        if (((Boolean) obj).booleanValue()) {
            this.f22408b.m30415B(this.f22409c);
            this.f22408b.m30414C("DialerGranted");
        } else {
            this.f22408b.m30414C("DialerRejected");
        }
        return s.a;
    }
}
