package p000;

import s1.k;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: a3 */
/* loaded from: classes6-dex2jar.jar:a3.class */
public final class C0003a3 extends m implements l<k<? extends String, ? extends String>, CharSequence> {

    /* renamed from: c */
    public static final C0003a3 f4c = new C0003a3(0);

    /* renamed from: d */
    public static final C0003a3 f5d = new C0003a3(1);

    /* renamed from: b */
    public final /* synthetic */ int f6b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0003a3(int i) {
        super(1);
        this.f6b = i;
    }

    /* renamed from: d */
    public final Object m43324d(Object obj) {
        int i = this.f6b;
        if (i == 0) {
            k kVar = (k) obj;
            s1.z.c.l.e(kVar, "it");
            return (CharSequence) kVar.b;
        } else if (i != 1) {
            throw null;
        } else {
            k kVar2 = (k) obj;
            s1.z.c.l.e(kVar2, "it");
            return (CharSequence) kVar2.a;
        }
    }
}
