package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.sqlite.SQLiteDatabase;
import p131c.p161d.p170b.p173b.p176i.AbstractC2562h;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.w */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/w.class */
public final /* synthetic */ class C2676w implements C2639b0.AbstractC2641b {

    /* renamed from: a */
    public final C2639b0 f9809a;

    /* renamed from: b */
    public final AbstractC2571m f9810b;

    /* renamed from: c */
    public final AbstractC2562h f9811c;

    public C2676w(C2639b0 b0Var, AbstractC2571m mVar, AbstractC2562h hVar) {
        this.f9809a = b0Var;
        this.f9810b = mVar;
        this.f9811c = hVar;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2641b m29302a(C2639b0 b0Var, AbstractC2571m mVar, AbstractC2562h hVar) {
        return new C2676w(b0Var, mVar, hVar);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2641b
    public Object apply(Object obj) {
        return C2639b0.m29390a(this.f9809a, this.f9810b, this.f9811c, (SQLiteDatabase) obj);
    }
}
