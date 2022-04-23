package p131c.p161d.p170b.p173b.p176i.p184y.p186k;

import android.database.Cursor;
import java.util.List;
import p131c.p161d.p170b.p173b.p176i.AbstractC2571m;
import p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0;
/* renamed from: c.d.b.b.i.y.k.n */
/* loaded from: classes-dex2jar.jar:c/d/b/b/i/y/k/n.class */
public final /* synthetic */ class C2667n implements C2639b0.AbstractC2641b {

    /* renamed from: a */
    public final C2639b0 f9798a;

    /* renamed from: b */
    public final List f9799b;

    /* renamed from: c */
    public final AbstractC2571m f9800c;

    public C2667n(C2639b0 b0Var, List list, AbstractC2571m mVar) {
        this.f9798a = b0Var;
        this.f9799b = list;
        this.f9800c = mVar;
    }

    /* renamed from: a */
    public static C2639b0.AbstractC2641b m29312a(C2639b0 b0Var, List list, AbstractC2571m mVar) {
        return new C2667n(b0Var, list, mVar);
    }

    @Override // p131c.p161d.p170b.p173b.p176i.p184y.p186k.C2639b0.AbstractC2641b
    public Object apply(Object obj) {
        return C2639b0.m29389a(this.f9798a, this.f9799b, this.f9800c, (Cursor) obj);
    }
}
