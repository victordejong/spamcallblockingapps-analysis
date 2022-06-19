package p193e.p194a.p1114o5.p1119c2;

import android.content.Context;
import com.truecaller.TrueApp;
import p1727n3.p1807k.p1809b.C26467a;
/* renamed from: e.a.o5.c2.k */
/* loaded from: classes15-dex2jar.jar:e/a/o5/c2/k.class */
public abstract class AbstractC18977k {

    /* renamed from: e.a.o5.c2.k$a */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/c2/k$a.class */
    public class C18978a extends C18980c {

        /* renamed from: d */
        public final /* synthetic */ Context f53114d;

        /* renamed from: e */
        public final /* synthetic */ boolean f53115e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18978a(AbstractC18977k abstractC18977k, Context context, boolean z) {
            super(abstractC18977k);
            this.f53114d = context;
            this.f53115e = z;
            this.f53122a = ((TrueApp) context.getApplicationContext()).mo10154s().mo12525V().mo28596b() ? 2131236521 : 2131232775;
            Object obj = C26467a.f74235a;
            this.f53123b = C26467a.C26471d.m1787a(context, 2131101323);
            this.f53124c = C26467a.C26471d.m1787a(context, z ? 2131100323 : 2131100324);
        }
    }

    /* renamed from: e.a.o5.c2.k$b */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/c2/k$b.class */
    public class C18979b {

        /* renamed from: a */
        public String f53116a;

        /* renamed from: b */
        public int f53117b;

        /* renamed from: c */
        public int f53118c;

        /* renamed from: d */
        public int f53119d;

        /* renamed from: e */
        public int f53120e;

        /* renamed from: f */
        public int f53121f;

        public C18979b(AbstractC18977k abstractC18977k) {
        }
    }

    /* renamed from: e.a.o5.c2.k$c */
    /* loaded from: classes15-dex2jar.jar:e/a/o5/c2/k$c.class */
    public class C18980c {

        /* renamed from: a */
        public int f53122a;

        /* renamed from: b */
        public int f53123b;

        /* renamed from: c */
        public int f53124c;

        public C18980c(AbstractC18977k abstractC18977k) {
        }

        /* renamed from: a */
        public boolean m14266a() {
            int i = this.f53122a;
            return (i == 2131236521 || i == 2131232775) ? false : true;
        }
    }

    /* renamed from: c */
    public static boolean m14269c(C18979b c18979b) {
        return c18979b != null && c18979b.f53117b > 0 && c18979b.f53119d > 0 && c18979b.f53118c > 0 && c18979b.f53120e > 0 && c18979b.f53121f > 0;
    }

    /* renamed from: a */
    public C18979b mo14270a() {
        return null;
    }

    /* renamed from: b */
    public C18980c mo14263b(Context context) {
        return new C18978a(this, context, mo14268d());
    }

    /* renamed from: d */
    public boolean mo14268d() {
        return false;
    }

    /* renamed from: e */
    public boolean mo14267e() {
        return true;
    }
}
