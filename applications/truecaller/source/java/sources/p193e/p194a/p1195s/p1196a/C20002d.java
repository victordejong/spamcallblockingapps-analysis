package p193e.p194a.p1195s.p1196a;

import android.app.Activity;
import com.truecaller.C2752R;
import com.truecaller.dynamicfeaturesupport.DynamicFeature;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19237j0;
import p193e.p194a.p1188r3.AbstractC19909g;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.s.a.d */
/* loaded from: classes6-dex2jar.jar:e/a/s/a/d.class */
public final class C20002d extends AbstractC20574a<AbstractC20001c> implements Object {

    /* renamed from: d */
    public final f f56525d;

    /* renamed from: e */
    public final AbstractC19237j0 f56526e;

    /* renamed from: f */
    public final AbstractC19909g f56527f;

    /* renamed from: g */
    public final AbstractC19223c0 f56528g;

    /* renamed from: h */
    public final C20592g f56529h;

    /* renamed from: e.a.s.a.d$a */
    /* loaded from: classes6-dex2jar.jar:e/a/s/a/d$a.class */
    public static abstract class AbstractC20003a {

        /* renamed from: a */
        public final int f56530a;

        /* renamed from: e.a.s.a.d$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/s/a/d$a$a.class */
        public static final class C20004a extends AbstractC20003a {

            /* renamed from: b */
            public static final C20004a f56531b = new C20004a();

            public C20004a() {
                super(C2752R.string.StrCanceled, null);
            }
        }

        /* renamed from: e.a.s.a.d$a$b */
        /* loaded from: classes6-dex2jar.jar:e/a/s/a/d$a$b.class */
        public static final class C20005b extends AbstractC20003a {

            /* renamed from: b */
            public static final C20005b f56532b = new C20005b();

            public C20005b() {
                super(2131887883, null);
            }
        }

        /* renamed from: e.a.s.a.d$a$c */
        /* loaded from: classes6-dex2jar.jar:e/a/s/a/d$a$c.class */
        public static final class C20006c extends AbstractC20003a {

            /* renamed from: b */
            public static final C20006c f56533b = new C20006c();

            public C20006c() {
                super(C2752R.string.StrFailed, null);
            }
        }

        public AbstractC20003a(int i, s1.z.c.f fVar) {
            this.f56530a = i;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20002d(@Named("UI") f fVar, AbstractC19237j0 abstractC19237j0, AbstractC19909g abstractC19909g, AbstractC19223c0 abstractC19223c0, C20592g c20592g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19237j0, "toastUtil");
        l.e(abstractC19909g, "dynamicFeatureManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(c20592g, "featureRegistry");
        this.f56525d = fVar;
        this.f56526e = abstractC19237j0;
        this.f56527f = abstractC19909g;
        this.f56528g = abstractC19223c0;
        this.f56529h = c20592g;
    }

    /* renamed from: Ij */
    public void m11673Ij(Activity activity) {
        l.e(activity, "activity");
        if (!this.f56527f.mo11821b(DynamicFeature.CALLHERO_ASSISTANT)) {
            d.w2(this, (f) null, (j0) null, new C20007e(this, activity, null), 3, (Object) null);
            return;
        }
        AbstractC20001c abstractC20001c = (AbstractC20001c) this.f57683a;
        if (abstractC20001c == null) {
            return;
        }
        abstractC20001c.mo11674fb();
    }
}
