package p309z8;

import p034c9.C0860g;
import p151l.AbstractC3415b;
/* renamed from: z8.b */
/* loaded from: classes2-dex2jar.jar:z8/b.class */
public class C5115b<TModel> extends AbstractC3415b {
    public C5115b(Class<TModel> cls) {
        super(cls);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p151l.AbstractC3415b
    /* renamed from: c */
    public TModel mo6c(C0860g c0860g, TModel tmodel) {
        TModel tmodel2 = tmodel;
        if (c0860g.moveToFirst()) {
            tmodel2 = tmodel;
            if (tmodel == null) {
                tmodel2 = m2321d().mo2687e();
            }
            m2321d().mo2688d(c0860g, tmodel2);
        }
        return tmodel2;
    }
}
