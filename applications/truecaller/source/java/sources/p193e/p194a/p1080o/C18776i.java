package p193e.p194a.p1080o;

import com.truecaller.data.entity.Contact;
import e.m.d.y.n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contextcall.ContextCallSupportImpl$getContactByNumber$2", f = "ContextCallSupportImpl.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.o.i */
/* loaded from: classes8-dex2jar.jar:e/a/o/i.class */
public final class C18776i extends i implements p<i0, d<? super C18770g>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C18771h f52747e;

    /* renamed from: f */
    public final /* synthetic */ String f52748f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18776i(C18771h c18771h, String str, d dVar) {
        super(2, dVar);
        this.f52747e = c18771h;
        this.f52748f = str;
    }

    /* renamed from: i */
    public final d<s> m14489i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18776i(this.f52747e, this.f52748f, dVar);
    }

    /* renamed from: k */
    public final Object m14488k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C18771h c18771h = this.f52747e;
        String str = this.f52748f;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        Contact m17364h = ((C16461b) c18771h.f52738e.get()).m17364h(str);
        C18770g c18770g = null;
        if (m17364h != null) {
            l.d(m17364h, "aggregatedContactDao.get…: return@withContext null");
            c18770g = new C18770g(m17364h, n.s(m17364h, false, false, (String) null, 7));
        }
        return c18770g;
    }

    /* renamed from: s */
    public final Object m14487s(Object obj) {
        C25225a.m3932a3(obj);
        Contact m17364h = ((C16461b) this.f52747e.f52738e.get()).m17364h(this.f52748f);
        if (m17364h != null) {
            l.d(m17364h, "aggregatedContactDao.get…: return@withContext null");
            return new C18770g(m17364h, n.s(m17364h, false, false, (String) null, 7));
        }
        return null;
    }
}
