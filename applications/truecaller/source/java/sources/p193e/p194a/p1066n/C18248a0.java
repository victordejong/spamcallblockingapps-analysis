package p193e.p194a.p1066n;

import e.m.d.y.n;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.backup.BackupSettingsPresenter$fetchLastBackupTime$1", f = "BackupSettingsPresenter.kt", l = {252}, m = "invokeSuspend")
/* renamed from: e.a.n.a0 */
/* loaded from: classes5-dex2jar.jar:e/a/n/a0.class */
public final class C18248a0 extends i implements p<i0, d<? super p1>, Object> {

    /* renamed from: e */
    public int f51573e;

    /* renamed from: f */
    public final /* synthetic */ C18259b0 f51574f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18248a0(C18259b0 c18259b0, d dVar) {
        super(2, dVar);
        this.f51574f = c18259b0;
    }

    /* renamed from: i */
    public final d<s> m15385i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18248a0(this.f51574f, dVar);
    }

    /* renamed from: k */
    public final Object m15384k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C18248a0(this.f51574f, dVar).m15383s(s.a);
    }

    /* renamed from: s */
    public final Object m15383s(Object obj) {
        a aVar = a.a;
        int i = this.f51573e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC18380m abstractC18380m = this.f51574f.f51604h;
            this.f51573e = 1;
            Object S = n.S(abstractC18380m, (String) null, this, 1, (Object) null);
            obj = S;
            if (S == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        long longValue = ((Number) obj).longValue();
        this.f51574f.f51606j.putLong("key_backup_last_success", longValue);
        C18259b0 c18259b0 = this.f51574f;
        return s1.a.a.a.v0.f.d.w2(h1.a, c18259b0.f51603g, (j0) null, new C18275c0(c18259b0, longValue, null), 2, (Object) null);
    }
}
