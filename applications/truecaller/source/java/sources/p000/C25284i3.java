package p000;

import s1.k;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: i3 */
/* loaded from: classes6-dex2jar.jar:i3.class */
public final class C25284i3 extends m implements l<k<? extends String, ? extends String>, CharSequence> {

    /* renamed from: c */
    public static final C25284i3 f70732c = new C25284i3(0);

    /* renamed from: d */
    public static final C25284i3 f70733d = new C25284i3(1);

    /* renamed from: b */
    public final /* synthetic */ int f70734b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C25284i3(int i) {
        super(1);
        this.f70734b = i;
    }

    /* renamed from: d */
    public final Object m3722d(Object obj) {
        int i = this.f70734b;
        if (i == 0) {
            k kVar = (k) obj;
            s1.z.c.l.e(kVar, "it");
            return (CharSequence) kVar.b;
        } else if (i != 1) {
            throw null;
        } else {
            k kVar2 = (k) obj;
            s1.z.c.l.e(kVar2, "it");
            return "i." + ((String) kVar2.a);
        }
    }
}
