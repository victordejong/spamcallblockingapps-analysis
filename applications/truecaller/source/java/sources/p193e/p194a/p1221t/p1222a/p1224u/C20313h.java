package p193e.p194a.p1221t.p1222a.p1224u;

import java.util.concurrent.FutureTask;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.android.truemoji.data.EmojiMetadataHolder$load$2", f = "EmojiMetadataHolder.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.t.a.u.h */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/u/h.class */
public final class C20313h extends i implements p<i0, d<? super s>, Object> {
    public C20313h(d dVar) {
        super(2, dVar);
    }

    /* renamed from: i */
    public final d<s> m11254i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C20313h(dVar);
    }

    /* renamed from: k */
    public final Object m11253k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        dVar.getContext();
        s sVar = s.a;
        C25225a.m3932a3(sVar);
        FutureTask<C20311f> futureTask = C20314i.f57127a;
        if (futureTask != null) {
            futureTask.run();
        }
        return sVar;
    }

    /* renamed from: s */
    public final Object m11252s(Object obj) {
        C25225a.m3932a3(obj);
        FutureTask<C20311f> futureTask = C20314i.f57127a;
        if (futureTask != null) {
            futureTask.run();
        }
        return s.a;
    }
}
