package p193e.p194a.p1129p5;

import e.m.e.k;
import java.io.Writer;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.utils.JsonFileUtil$writeAsync$2", f = "JsonFileUtil.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.p5.n */
/* loaded from: classes15-dex2jar.jar:e/a/p5/n.class */
public final class C19248n extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public final /* synthetic */ Writer f53616e;

    /* renamed from: f */
    public final /* synthetic */ Object f53617f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19248n(Writer writer, Object obj, d dVar) {
        super(2, dVar);
        this.f53616e = writer;
        this.f53617f = obj;
    }

    /* renamed from: i */
    public final d<s> m13748i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19248n(this.f53616e, this.f53617f, dVar);
    }

    /* renamed from: k */
    public final Object m13747k(Object obj, Object obj2) {
        s sVar = s.a;
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        Writer writer = this.f53616e;
        Object obj3 = this.f53617f;
        dVar.getContext();
        C25225a.m3932a3(sVar);
        try {
            new k().q(obj3, writer);
            th = null;
            return sVar;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }

    /* renamed from: s */
    public final Object m13746s(Object obj) {
        Writer writer;
        C25225a.m3932a3(obj);
        try {
            new k().q(this.f53617f, this.f53616e);
            th = null;
            return s.a;
        } finally {
            try {
                throw th;
            } finally {
            }
        }
    }
}
