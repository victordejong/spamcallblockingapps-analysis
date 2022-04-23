package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.k */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/k.class */
public final /* synthetic */ class C2664k implements C2639b0.AbstractC2641b {

    /* renamed from: a */
    public final C2639b0 f9794a;

    /* renamed from: b */
    public final AbstractC2571m f9795b;

    public C2664k(C2639b0 b0Var, AbstractC2571m mVar) {
        this.f9794a = b0Var;
        this.f9795b = mVar;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2641b m29315a(C2639b0 b0Var, AbstractC2571m mVar) {
        return new C2664k(b0Var, mVar);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2641b
    public Object apply(Object obj) {
        return C2639b0.m29379b(this.f9794a, this.f9795b, (SQLiteDatabase) obj);
    }
}
