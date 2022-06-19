package p193e.p194a.p1011l.p1025p2;

import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.premium.data.FriendUpgradedPromoRepository$getContactsForPromo$2", f = "FriendUpgradedPromoRepository.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.l.p2.j */
/* loaded from: classes12-dex2jar.jar:e/a/l/p2/j.class */
public final class C17107j extends i implements p<i0, d<? super List<? extends Contact>>, Object> {

    /* renamed from: e */
    public final /* synthetic */ C17119k f48019e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C17107j(C17119k c17119k, d dVar) {
        super(2, dVar);
        this.f48019e = c17119k;
    }

    /* renamed from: i */
    public final d<s> m16528i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C17107j(this.f48019e, dVar);
    }

    /* renamed from: k */
    public final Object m16527k(Object obj, Object obj2) {
        s1.u.s sVar;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C17119k c17119k = this.f48019e;
        dVar.getContext();
        C25225a.m3932a3(s.a);
        String mo16901W = c17119k.f48054c.mo16901W();
        List<String> U = mo16901W != null ? v.U(mo16901W, new String[]{c17119k.f48052a}, false, 0, 6) : null;
        boolean z = true;
        if (U != null) {
            z = U.isEmpty();
        }
        if (z) {
            sVar = s1.u.s.a;
        } else {
            s1.u.s arrayList = new ArrayList();
            for (String str : U) {
                Contact contact = (Contact) c17119k.f48053b.mo17344c(str).a;
                if (contact != null) {
                    arrayList.add(contact);
                }
            }
            sVar = arrayList;
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m16526s(Object obj) {
        C25225a.m3932a3(obj);
        String mo16901W = this.f48019e.f48054c.mo16901W();
        List<String> U = mo16901W != null ? v.U(mo16901W, new String[]{this.f48019e.f48052a}, false, 0, 6) : null;
        boolean z = true;
        if (U != null) {
            z = U.isEmpty();
        }
        if (z) {
            return s1.u.s.a;
        }
        ArrayList arrayList = new ArrayList();
        for (String str : U) {
            Contact contact = (Contact) this.f48019e.f48053b.mo17344c(str).a;
            if (contact != null) {
                arrayList.add(contact);
            }
        }
        return arrayList;
    }
}
