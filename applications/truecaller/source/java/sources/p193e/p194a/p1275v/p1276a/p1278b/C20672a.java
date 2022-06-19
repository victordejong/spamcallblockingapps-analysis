package p193e.p194a.p1275v.p1276a.p1278b;

import android.graphics.drawable.Drawable;
import com.truecaller.api.services.presence.p139v1.models.Availability;
import com.truecaller.details_view.C3857R;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.AbstractC17405c;
import p193e.p194a.p1049l4.C17409e;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1270u2.p1271a.AbstractC20576b;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.b.a */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/b/a.class */
public final class C20672a extends AbstractC20576b<AbstractC20676c> implements AbstractC20675b, AbstractC17405c.AbstractC17407b {

    /* renamed from: b */
    public final g f58222b;

    /* renamed from: c */
    public final g f58223c;

    /* renamed from: d */
    public final g f58224d;

    /* renamed from: e */
    public final g f58225e;

    /* renamed from: f */
    public AbstractC17405c.AbstractC17406a f58226f;

    /* renamed from: g */
    public final AbstractC17405c f58227g;

    /* renamed from: h */
    public final AbstractC19233h0 f58228h;

    /* renamed from: e.a.v.a.b.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/v/a/b/a$a.class */
    public static final class C20673a extends m implements a<Drawable> {

        /* renamed from: b */
        public final /* synthetic */ int f58229b;

        /* renamed from: c */
        public final /* synthetic */ Object f58230c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20673a(int i, Object obj) {
            super(0);
            this.f58229b = i;
            this.f58230c = obj;
        }

        public final Object invoke() {
            int i = this.f58229b;
            if (i != 0) {
                if (i == 1) {
                    Drawable mo13767c = ((C20672a) this.f58230c).f58228h.mo13767c(C3857R.C3858drawable.ic_tcx_stat_on_call_outline_24dp);
                    mo13767c.setTint(((Number) ((C20672a) this.f58230c).f58222b.getValue()).intValue());
                    return mo13767c;
                } else if (i != 2) {
                    throw null;
                } else {
                    Drawable mo13767c2 = ((C20672a) this.f58230c).f58228h.mo13767c(C3857R.C3858drawable.ic_tcx_stat_silent_outline_24dp);
                    mo13767c2.setTint(((Number) ((C20672a) this.f58230c).f58222b.getValue()).intValue());
                    return mo13767c2;
                }
            }
            return ((C20672a) this.f58230c).f58228h.mo13767c(C3857R.C3858drawable.ic_presence_status_available);
        }
    }

    /* renamed from: e.a.v.a.b.a$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/b/a$b.class */
    public static final class C20674b extends m implements a<Integer> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20674b() {
            super(0);
            C20672a.this = r4;
        }

        public Object invoke() {
            return Integer.valueOf(C20672a.this.f58228h.mo13758l(C3857R.attr.tcx_alertBackgroundRed));
        }
    }

    @Inject
    public C20672a(AbstractC17405c abstractC17405c, AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC17405c, "availabilityManager");
        l.e(abstractC19233h0, "resourceProvider");
        this.f58227g = abstractC17405c;
        this.f58228h = abstractC19233h0;
        h hVar = h.c;
        this.f58222b = C25225a.m3982O1(hVar, new C20674b());
        this.f58223c = C25225a.m3982O1(hVar, new C20673a(0, this));
        this.f58224d = C25225a.m3982O1(hVar, new C20673a(2, this));
        this.f58225e = C25225a.m3982O1(hVar, new C20673a(1, this));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [e.a.v.a.b.c, PV, java.lang.Object] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20676c abstractC20676c) {
        AbstractC20676c abstractC20676c2 = abstractC20676c;
        l.e(abstractC20676c2, "presenterView");
        this.f57683a = abstractC20676c2;
        this.f58227g.mo9925I1();
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f57683a = null;
        AbstractC17405c.AbstractC17406a abstractC17406a = this.f58226f;
        if (abstractC17406a != null) {
            abstractC17406a.mo9916a();
        }
        this.f58227g.mo9924Y();
    }

    @Override // p193e.p194a.p1049l4.AbstractC17405c.AbstractC17407b
    /* renamed from: ki */
    public void mo9914ki(C17409e c17409e) {
        if ((c17409e != null ? c17409e.f48755b : null) == null) {
            AbstractC20676c abstractC20676c = (AbstractC20676c) this.f57683a;
            if (abstractC20676c == null) {
                return;
            }
            abstractC20676c.mo10862Q();
            return;
        }
        Availability availability = c17409e.f48755b;
        Availability.Status status = availability != null ? availability.getStatus() : null;
        if (status != null) {
            int ordinal = status.ordinal();
            if (ordinal == 1) {
                AbstractC20676c abstractC20676c2 = (AbstractC20676c) this.f57683a;
                if (abstractC20676c2 == null) {
                    return;
                }
                Drawable drawable = (Drawable) this.f58223c.getValue();
                l.d(drawable, "availableIcon");
                abstractC20676c2.mo10863L0(drawable, c17409e);
                return;
            } else if (ordinal == 2) {
                Availability availability2 = c17409e.f48755b;
                Availability.Context context = null;
                if (availability2 != null) {
                    context = availability2.getContext();
                }
                if (context != null) {
                    int ordinal2 = context.ordinal();
                    if (ordinal2 == 1) {
                        AbstractC20676c abstractC20676c3 = (AbstractC20676c) this.f57683a;
                        if (abstractC20676c3 == null) {
                            return;
                        }
                        Drawable drawable2 = (Drawable) this.f58225e.getValue();
                        l.d(drawable2, "onCallIcon");
                        abstractC20676c3.mo10863L0(drawable2, c17409e);
                        return;
                    } else if (ordinal2 == 3) {
                        AbstractC20676c abstractC20676c4 = (AbstractC20676c) this.f57683a;
                        if (abstractC20676c4 == null) {
                            return;
                        }
                        Drawable drawable3 = (Drawable) this.f58224d.getValue();
                        l.d(drawable3, "silentIcon");
                        abstractC20676c4.mo10863L0(drawable3, c17409e);
                        return;
                    }
                }
                AbstractC20676c abstractC20676c5 = (AbstractC20676c) this.f57683a;
                if (abstractC20676c5 == null) {
                    return;
                }
                abstractC20676c5.mo10862Q();
                return;
            }
        }
        AbstractC20676c abstractC20676c6 = (AbstractC20676c) this.f57683a;
        if (abstractC20676c6 == null) {
            return;
        }
        abstractC20676c6.mo10862Q();
    }
}
