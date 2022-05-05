package p081h.p203i.p204a.p206b.p209j.p217y.p219k;

import android.database.sqlite.SQLiteDatabase;
import p081h.p203i.p204a.p206b.p209j.AbstractC6580m;
import p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0;
/* renamed from: h.i.a.b.j.y.k.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/b/j/y/k/j.class */
public final /* synthetic */ class C6680j implements C6656b0.AbstractC6658b {

    /* renamed from: a */
    public final long f16559a;

    /* renamed from: b */
    public final AbstractC6580m f16560b;

    public C6680j(long j, AbstractC6580m mVar) {
        this.f16559a = j;
        this.f16560b = mVar;
    }

    /* renamed from: a */
    public static C6656b0.AbstractC6658b m22081a(long j, AbstractC6580m mVar) {
        return new C6680j(j, mVar);
    }

    @Override // p081h.p203i.p204a.p206b.p209j.p217y.p219k.C6656b0.AbstractC6658b
    public Object apply(Object obj) {
        return C6656b0.m22164a(this.f16559a, this.f16560b, (SQLiteDatabase) obj);
    }
}
