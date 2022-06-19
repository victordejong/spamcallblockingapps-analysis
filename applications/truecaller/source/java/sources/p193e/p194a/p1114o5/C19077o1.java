package p193e.p194a.p1114o5;

import android.content.Context;
import android.net.Uri;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.C19063n1;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
@e(c = "com.truecaller.util.RingtoneUtils$copyRingtoneAsync$1", f = "RingtoneUtils.kt", l = {64}, m = "invokeSuspend")
/* renamed from: e.a.o5.o1 */
/* loaded from: classes15-dex2jar.jar:e/a/o5/o1.class */
public final class C19077o1 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53275e;

    /* renamed from: f */
    public final /* synthetic */ Context f53276f;

    /* renamed from: g */
    public final /* synthetic */ C19063n1.AbstractC19064a f53277g;

    /* renamed from: h */
    public final /* synthetic */ l f53278h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19077o1(Context context, C19063n1.AbstractC19064a abstractC19064a, l lVar, d dVar) {
        super(2, dVar);
        this.f53276f = context;
        this.f53277g = abstractC19064a;
        this.f53278h = lVar;
    }

    /* renamed from: i */
    public final d<s> m14146i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C19077o1(this.f53276f, this.f53277g, this.f53278h, dVar);
    }

    /* renamed from: k */
    public final Object m14145k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C19077o1(this.f53276f, this.f53277g, this.f53278h, dVar).m14144s(s.a);
    }

    /* renamed from: s */
    public final Object m14144s(Object obj) {
        a aVar = a.a;
        int i = this.f53275e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            C19063n1 c19063n1 = C19063n1.f53240a;
            Context context = this.f53276f;
            C19063n1.AbstractC19064a abstractC19064a = this.f53277g;
            this.f53275e = 1;
            Object m14155a = c19063n1.m14155a(context, abstractC19064a, this);
            obj = m14155a;
            if (m14155a == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Uri uri = (Uri) obj;
        return uri != null ? (s) this.f53278h.d(uri) : null;
    }
}
