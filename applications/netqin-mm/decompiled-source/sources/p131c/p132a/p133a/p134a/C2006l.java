package p131c.p132a.p133a.p134a;

import java.util.ArrayList;
import java.util.List;
/* renamed from: c.a.a.a.l */
/* loaded from: classes-dex2jar.jar:c/a/a/a/l.class */
public class C2006l {

    /* renamed from: a */
    public String f7859a;

    /* renamed from: b */
    public List<String> f7860b;

    /* renamed from: c.a.a.a.l$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/a/l$a.class */
    public static class C2007a {

        /* renamed from: a */
        public String f7861a;

        /* renamed from: b */
        public List<String> f7862b;

        public /* synthetic */ C2007a(C1983b0 b0Var) {
        }

        /* renamed from: a */
        public C2007a m31255a(String str) {
            this.f7861a = str;
            return this;
        }

        /* renamed from: a */
        public C2007a m31254a(List<String> list) {
            this.f7862b = new ArrayList(list);
            return this;
        }

        /* renamed from: a */
        public C2006l m31256a() {
            if (this.f7861a == null) {
                throw new IllegalArgumentException("SKU type must be set");
            } else if (this.f7862b != null) {
                C2006l lVar = new C2006l();
                lVar.f7859a = this.f7861a;
                lVar.f7860b = this.f7862b;
                return lVar;
            } else {
                throw new IllegalArgumentException("SKU list or SkuWithOffer list must be set");
            }
        }
    }

    /* renamed from: c */
    public static C2007a m31257c() {
        return new C2007a(null);
    }

    /* renamed from: a */
    public String m31261a() {
        return this.f7859a;
    }

    /* renamed from: b */
    public List<String> m31258b() {
        return this.f7860b;
    }
}
