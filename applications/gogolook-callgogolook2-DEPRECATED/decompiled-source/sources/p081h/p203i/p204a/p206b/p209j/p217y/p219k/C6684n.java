package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.Cursor;
import java.util.List;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.n */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/n.class */
public final /* synthetic */ class C6684n implements C6656b0.AbstractC6658b {

    /* renamed from: a */
    public final C6656b0 f16565a;

    /* renamed from: b */
    public final List f16566b;

    /* renamed from: c */
    public final AbstractC6580m f16567c;

    public C6684n(C6656b0 b0Var, List list, AbstractC6580m mVar) {
        this.f16565a = b0Var;
        this.f16566b = list;
        this.f16567c = mVar;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6658b m22077a(C6656b0 b0Var, List list, AbstractC6580m mVar) {
        return new C6684n(b0Var, list, mVar);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6658b
    public Object apply(Object obj) {
        return C6656b0.m22154a(this.f16565a, this.f16566b, this.f16567c, (Cursor) obj);
    }
}
