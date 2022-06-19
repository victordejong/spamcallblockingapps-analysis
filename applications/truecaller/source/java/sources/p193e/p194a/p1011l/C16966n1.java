package p193e.p194a.p1011l;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1011l.p1012a.C16605z;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1313v3.p1314c.AbstractC21012a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.PremiumLogsSender$sendLogsToSupport$2", f = "PremiumLogsSender.kt", l = {26, 26}, m = "invokeSuspend")
/* renamed from: e.a.l.n1 */
/* loaded from: classes12-dex2jar.jar:e/a/l/n1.class */
public final class C16966n1 extends i implements p<i0, d<? super Boolean>, Object> {

    /* renamed from: e */
    public Object f47588e;

    /* renamed from: f */
    public Object f47589f;

    /* renamed from: g */
    public Object f47590g;

    /* renamed from: h */
    public Object f47591h;

    /* renamed from: i */
    public Object f47592i;

    /* renamed from: j */
    public Object f47593j;

    /* renamed from: k */
    public int f47594k;

    /* renamed from: l */
    public final /* synthetic */ C17009o1 f47595l;

    /* renamed from: m */
    public final /* synthetic */ String f47596m;

    /* renamed from: n */
    public final /* synthetic */ String f47597n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16966n1(C17009o1 c17009o1, String str, String str2, d dVar) {
        super(2, dVar);
        this.f47595l = c17009o1;
        this.f47596m = str;
        this.f47597n = str2;
    }

    /* renamed from: i */
    public final d<s> m16725i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C16966n1(this.f47595l, this.f47596m, this.f47597n, dVar);
    }

    /* renamed from: k */
    public final Object m16724k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C16966n1(this.f47595l, this.f47596m, this.f47597n, dVar).m16723s(s.a);
    }

    /* renamed from: s */
    public final Object m16723s(Object obj) {
        Integer num;
        AbstractC21012a abstractC21012a;
        String str;
        String str2;
        CharSequence charSequence;
        String str3;
        String str4;
        a aVar = a.a;
        int i = this.f47594k;
        boolean z = true;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C17009o1 c17009o1 = this.f47595l;
            abstractC21012a = c17009o1.f47714c;
            str = C17422k.m16109I(c17009o1.f47713b);
            str2 = this.f47596m;
            charSequence = "Unable to purchase Truecaller Professional";
            str3 = this.f47597n;
            str4 = this.f47595l.f47712a.m17190h();
            C16605z c16605z = this.f47595l.f47712a;
            this.f47588e = abstractC21012a;
            this.f47589f = str;
            this.f47590g = str2;
            this.f47591h = "Unable to purchase Truecaller Professional";
            this.f47592i = str3;
            this.f47593j = str4;
            this.f47594k = 1;
            Object m17189i = c16605z.m17189i(this);
            obj = m17189i;
            if (m17189i == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            if (i != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            C25225a.m3932a3(obj);
            num = (Integer) obj;
            if (num != null || num.intValue() != 200) {
                z = false;
            }
            return Boolean.valueOf(z);
        } else {
            str4 = (String) this.f47593j;
            str3 = (CharSequence) this.f47592i;
            charSequence = (CharSequence) this.f47591h;
            str2 = (CharSequence) this.f47590g;
            str = (CharSequence) this.f47589f;
            abstractC21012a = (AbstractC21012a) this.f47588e;
            C25225a.m3932a3(obj);
        }
        this.f47588e = null;
        this.f47589f = null;
        this.f47590g = null;
        this.f47591h = null;
        this.f47592i = null;
        this.f47593j = null;
        this.f47594k = 2;
        Object mo10420a = abstractC21012a.mo10420a(str, str2, charSequence, str3, str4, (String) obj, this);
        obj = mo10420a;
        if (mo10420a == aVar) {
            return aVar;
        }
        num = (Integer) obj;
        if (num != null) {
        }
        z = false;
        return Boolean.valueOf(z);
    }
}
