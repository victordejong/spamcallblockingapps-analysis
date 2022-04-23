package p131c.p132a.p133a.p134a;

import android.app.Activity;
import android.content.Context;
import p131c.p132a.p133a.p134a.C1999i;
/* renamed from: c.a.a.a.c */
/* loaded from: classes-dex2jar.jar:c/a/a/a/c.class */
public abstract class AbstractC1984c {

    /* renamed from: c.a.a.a.c$a */
    /* loaded from: classes-dex2jar.jar:c/a/a/a/c$a.class */
    public static final class C1985a {

        /* renamed from: a */
        public boolean f7800a;

        /* renamed from: b */
        public final Context f7801b;

        /* renamed from: c */
        public AbstractC2002j f7802c;

        public /* synthetic */ C1985a(Context context, C2001i0 i0Var) {
            this.f7801b = context;
        }

        /* renamed from: a */
        public C1985a m31353a(AbstractC2002j jVar) {
            this.f7802c = jVar;
            return this;
        }

        /* renamed from: a */
        public AbstractC1984c m31354a() {
            Context context = this.f7801b;
            if (context != null) {
                AbstractC2002j jVar = this.f7802c;
                if (jVar == null) {
                    throw new IllegalArgumentException("Please provide a valid listener for purchases updates.");
                } else if (this.f7800a) {
                    return new C1987d(null, true, context, jVar);
                } else {
                    throw new IllegalArgumentException("Support for pending purchases must be enabled. Enable this by calling 'enablePendingPurchases()' on BillingClientBuilder.");
                }
            } else {
                throw new IllegalArgumentException("Please provide a valid Context.");
            }
        }

        /* renamed from: b */
        public C1985a m31352b() {
            this.f7800a = true;
            return this;
        }
    }

    /* renamed from: a */
    public static C1985a m31355a(Context context) {
        return new C1985a(context, null);
    }

    /* renamed from: a */
    public abstract C1994g mo31350a(Activity activity, C1991f fVar);

    /* renamed from: a */
    public abstract C1994g mo31336a(String str);

    /* renamed from: a */
    public abstract void mo31351a();

    /* renamed from: a */
    public abstract void mo31348a(C1979a aVar, AbstractC1982b bVar);

    /* renamed from: a */
    public abstract void mo31340a(AbstractC1989e eVar);

    /* renamed from: a */
    public abstract void mo31338a(C2006l lVar, AbstractC2009m mVar);

    /* renamed from: b */
    public abstract C1999i.C2000a mo31329b(String str);

    /* renamed from: b */
    public abstract boolean mo31333b();
}
