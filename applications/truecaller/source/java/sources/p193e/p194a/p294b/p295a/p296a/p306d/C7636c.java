package p193e.p194a.p294b.p295a.p296a.p306d;

import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p294b.p295a.p296a.p301b.AbstractC7591a;
import p193e.p194a.p294b.p354l.AbstractC8042q;
import p193e.p194a.p294b.p354l.C8036l;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.bizmon.newBusiness.profile.vm.BizProfileViewModel$deleteProfile$1", f = "BizProfileViewModel.kt", l = {158}, m = "invokeSuspend")
/* renamed from: e.a.b.a.a.d.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/d/c.class */
public final class C7636c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f24004e;

    /* renamed from: f */
    public final /* synthetic */ C7633b f24005f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7636c(C7633b c7633b, d dVar) {
        super(2, dVar);
        this.f24005f = c7633b;
    }

    /* renamed from: i */
    public final d<s> m29464i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C7636c(this.f24005f, dVar);
    }

    /* renamed from: k */
    public final Object m29463k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C7636c(this.f24005f, dVar).m29462s(s.a);
    }

    /* renamed from: s */
    public final Object m29462s(Object obj) {
        Boolean bool = Boolean.FALSE;
        a aVar = a.a;
        int i = this.f24004e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC7591a abstractC7591a = this.f24005f.f23997n;
            this.f24004e = 1;
            Object mo29504b = abstractC7591a.mo29504b(this);
            obj = mo29504b;
            if (mo29504b == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        AbstractC8042q abstractC8042q = (AbstractC8042q) obj;
        if (abstractC8042q instanceof AbstractC8042q.C8045c) {
            this.f24005f.f23994k.mo1001j(new C8036l<>(Boolean.TRUE));
            this.f24005f.f23986c.mo1001j(bool);
        } else if (abstractC8042q instanceof AbstractC8042q.C8043a) {
            this.f24005f.f23994k.mo1001j(new C8036l<>(bool));
            this.f24005f.f23986c.mo1001j(bool);
        } else if (abstractC8042q instanceof AbstractC8042q.C8044b) {
            throw new IllegalStateException("Delete profile result can't be loading.");
        }
        return s.a;
    }
}
