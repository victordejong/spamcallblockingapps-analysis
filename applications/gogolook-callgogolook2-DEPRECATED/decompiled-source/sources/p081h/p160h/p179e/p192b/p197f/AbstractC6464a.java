package p081h.p160h.p179e.p192b.p197f;

import android.content.Context;
import p081h.p160h.p179e.p192b.p201g.AbstractC6482a;
import p626l.C14989s;
import p626l.p634w.AbstractC15044d;
import p626l.p641z.p643d.C15149k;
import p646n.p649b.p650a.C15203c;
/* renamed from: h.h.e.b.f.a */
/* loaded from: classes2-dex2jar.jar:h/h/e/b/f/a.class */
public abstract class AbstractC6464a<I, O> {

    /* renamed from: a */
    public final AbstractC6482a<C15203c> f16100a;

    /* renamed from: b */
    public final C6465b f16101b;

    public AbstractC6464a(AbstractC6482a<C15203c> aVar, C6465b bVar) {
        C15149k.m377b(aVar, "modelSource");
        C15149k.m377b(bVar, "modelConfig");
        this.f16100a = aVar;
        this.f16101b = bVar;
    }

    /* renamed from: a */
    public final C6465b m22521a() {
        return this.f16101b;
    }

    /* renamed from: a */
    public abstract Object mo22502a(Context context, AbstractC15044d<? super C14989s> dVar);

    /* renamed from: a */
    public abstract Object mo22493a(I i, AbstractC15044d<? super O> dVar);

    /* renamed from: b */
    public final AbstractC6482a<C15203c> m22520b() {
        return this.f16100a;
    }

    /* renamed from: b */
    public abstract Object mo22491b(Context context, AbstractC15044d<? super C14989s> dVar);

    /* renamed from: c */
    public abstract boolean mo22488c();
}
