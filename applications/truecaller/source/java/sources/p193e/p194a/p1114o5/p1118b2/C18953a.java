package p193e.p194a.p1114o5.p1118b2;

import android.content.Context;
import java.io.File;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.util.cache.DiskCacheUtils$purgePicassoCache$1", f = "DiskCacheUtils.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.o5.b2.a */
/* loaded from: classes15-dex2jar.jar:e/a/o5/b2/a.class */
public final class C18953a extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ Context f53106e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18953a(Context context, d dVar) {
        super(2, dVar);
        this.f53106e = context;
    }

    /* renamed from: i */
    public final d<s> m14297i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C18953a(this.f53106e, dVar);
    }

    /* renamed from: k */
    public final Object m14296k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        Context context = this.f53106e;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        File cacheDir = context.getCacheDir();
        C19291g.m13540j1(cacheDir != null ? new File(cacheDir, "picasso-cache") : null);
        return sVar;
    }

    /* renamed from: s */
    public final Object m14295s(Object obj) {
        C25225a.m3932a3(obj);
        File cacheDir = this.f53106e.getCacheDir();
        C19291g.m13540j1(cacheDir != null ? new File(cacheDir, "picasso-cache") : null);
        return s.a;
    }
}
