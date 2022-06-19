package p193e.p194a.p1275v.p1276a.p1279b0;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.provider.CallLog;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import com.truecaller.data.entity.Number;
import com.truecaller.details_view.C3857R;
import com.truecaller.multisim.SimInfo;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC18951b0;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1275v.p1276a.C20847s;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1309p.AbstractC20920a;
import p193e.p194a.p712e4.AbstractC13477b0;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.a;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.b0.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/c.class */
public final class C20679c extends AbstractC20574a<AbstractC20678b> implements AbstractC20677a {

    /* renamed from: d */
    public C20847s f58232d;

    /* renamed from: e */
    public p1 f58233e;

    /* renamed from: f */
    public final C20680a f58234f;

    /* renamed from: g */
    public final f f58235g;

    /* renamed from: h */
    public final f f58236h;

    /* renamed from: i */
    public final AbstractC20920a f58237i;

    /* renamed from: j */
    public final AbstractC18951b0 f58238j;

    /* renamed from: k */
    public final AbstractC19223c0 f58239k;

    /* renamed from: l */
    public final AbstractC19233h0 f58240l;

    /* renamed from: m */
    public final AbstractC13477b0 f58241m;

    /* renamed from: n */
    public final ContentResolver f58242n;

    /* renamed from: o */
    public final Handler f58243o;

    /* renamed from: p */
    public final C20879a f58244p;

    /* renamed from: q */
    public final AbstractC19219a0 f58245q;

    /* renamed from: e.a.v.a.b0.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/c$a.class */
    public static final class C20680a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20680a(Handler handler) {
            super(handler);
            C20679c.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            C20679c.this.m10860Jj();
        }
    }

    @e(c = "com.truecaller.details_view.ui.callhistory.CallHistoryExpandedPresenter$loadCallHistory$1$1", f = "CallHistoryExpandedPresenter.kt", l = {85}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.b0.c$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/c$b.class */
    public static final class C20681b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f58247e;

        /* renamed from: f */
        public final /* synthetic */ Contact f58248f;

        /* renamed from: g */
        public final /* synthetic */ C20679c f58249g;

        @e(c = "com.truecaller.details_view.ui.callhistory.CallHistoryExpandedPresenter$loadCallHistory$1$1$historyEvents$1", f = "CallHistoryExpandedPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.v.a.b0.c$b$a */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/c$b$a.class */
        public static final class C20682a extends i implements p<i0, d<? super List<? extends HistoryEvent>>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C20682a(d dVar) {
                super(2, dVar);
                C20681b.this = r5;
            }

            /* renamed from: i */
            public final d<s> m10856i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C20682a(dVar);
            }

            /* renamed from: k */
            public final Object m10855k(Object obj, Object obj2) {
                List<HistoryEvent> list;
                String m35479e;
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C20681b c20681b = C20681b.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                if (c20681b.f58248f.getId() != null) {
                    list = c20681b.f58249g.f58237i.mo10519b(c20681b.f58248f, new Integer(4));
                } else {
                    Number m35493v = c20681b.f58248f.m35493v();
                    list = (m35493v == null || (m35479e = m35493v.m35479e()) == null) ? null : c20681b.f58249g.f58237i.mo10520a(m35479e, new Integer(4));
                }
                return list;
            }

            /* renamed from: s */
            public final Object m10854s(Object obj) {
                List<HistoryEvent> list;
                String m35479e;
                C25225a.m3932a3(obj);
                if (C20681b.this.f58248f.getId() != null) {
                    C20681b c20681b = C20681b.this;
                    list = c20681b.f58249g.f58237i.mo10519b(c20681b.f58248f, new Integer(4));
                } else {
                    Number m35493v = C20681b.this.f58248f.m35493v();
                    list = (m35493v == null || (m35479e = m35493v.m35479e()) == null) ? null : C20681b.this.f58249g.f58237i.mo10520a(m35479e, new Integer(4));
                }
                return list;
            }
        }

        /* renamed from: e.a.v.a.b0.c$b$b */
        /* loaded from: classes8-dex2jar.jar:e/a/v/a/b0/c$b$b.class */
        public static final class C20683b extends m implements a<s> {

            /* renamed from: b */
            public final /* synthetic */ HistoryEvent f58251b;

            /* renamed from: c */
            public final /* synthetic */ C20681b f58252c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C20683b(HistoryEvent historyEvent, C20681b c20681b) {
                super(0);
                this.f58251b = historyEvent;
                this.f58252c = c20681b;
            }

            public Object invoke() {
                if (this.f58252c.f58249g.m10861Ij(this.f58251b)) {
                    C20681b c20681b = this.f58252c;
                    AbstractC20678b abstractC20678b = (AbstractC20678b) c20681b.f58249g.f57683a;
                    if (abstractC20678b != null) {
                        abstractC20678b.mo10849e(c20681b.f58248f);
                    }
                } else {
                    C20681b c20681b2 = this.f58252c;
                    AbstractC20678b abstractC20678b2 = (AbstractC20678b) c20681b2.f58249g.f57683a;
                    if (abstractC20678b2 != null) {
                        abstractC20678b2.mo10853a(c20681b2.f58248f);
                    }
                }
                return s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20681b(Contact contact, d dVar, C20679c c20679c) {
            super(2, dVar);
            this.f58248f = contact;
            this.f58249g = c20679c;
        }

        /* renamed from: i */
        public final d<s> m10859i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20681b(this.f58248f, dVar, this.f58249g);
        }

        /* renamed from: k */
        public final Object m10858k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20681b(this.f58248f, dVar, this.f58249g).m10857s(s.a);
        }

        /* renamed from: s */
        public final Object m10857s(Object obj) {
            ArrayList arrayList;
            Drawable drawable;
            Drawable drawable2;
            s sVar = s.a;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f58247e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                f fVar = this.f58249g.f58236h;
                C20682a c20682a = new C20682a(null);
                this.f58247e = 1;
                Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c20682a, this);
                obj = a4;
                if (a4 == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<HistoryEvent> list = (List) obj;
            if (list != null) {
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list, 10));
                for (HistoryEvent historyEvent : list) {
                    C20679c c20679c = this.f58249g;
                    if (c20679c.m10861Ij(historyEvent) && historyEvent.f11550q == 3) {
                        drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_voip_16dp);
                        l.d(drawable, "resourceProvider.getDraw…e.ic_tcx_event_voip_16dp)");
                        drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_alertBackgroundRed));
                    } else if (c20679c.m10861Ij(historyEvent)) {
                        drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_voip_16dp);
                        l.d(drawable, "resourceProvider.getDraw…e.ic_tcx_event_voip_16dp)");
                        drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_textSecondary));
                    } else {
                        int i2 = historyEvent.f11551r;
                        if (i2 == 1) {
                            drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_blocked_16dp);
                            l.d(drawable, "resourceProvider.getDraw…c_tcx_event_blocked_16dp)");
                            drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_alertBackgroundRed));
                        } else if (i2 == 3) {
                            drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_blocked_16dp);
                            l.d(drawable, "resourceProvider.getDraw…c_tcx_event_blocked_16dp)");
                            drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_alertBackgroundRed));
                        } else {
                            int i3 = historyEvent.f11550q;
                            if (i3 == 1) {
                                drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_incoming_call_16dp);
                                l.d(drawable, "resourceProvider.getDraw…event_incoming_call_16dp)");
                                drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_textSecondary));
                            } else if (i3 == 2) {
                                drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_outgoing_call_16dp);
                                l.d(drawable, "resourceProvider.getDraw…event_outgoing_call_16dp)");
                                drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_textSecondary));
                            } else if (i3 == 3) {
                                drawable = c20679c.f58239k.mo13767c(C3857R.C3858drawable.ic_tcx_event_missed_call_16dp);
                                l.d(drawable, "resourceProvider.getDraw…x_event_missed_call_16dp)");
                                drawable.setTint(c20679c.f58240l.mo13758l(C3857R.attr.tcx_alertBackgroundRed));
                            } else {
                                drawable = null;
                            }
                        }
                    }
                    C20679c c20679c2 = this.f58249g;
                    Contact contact = historyEvent.f11539f;
                    String str = historyEvent.f11536c;
                    l.d(str, "it.rawNumber");
                    Objects.requireNonNull(c20679c2);
                    if (contact != null) {
                        str = contact.m35496t();
                    }
                    C20679c c20679c3 = this.f58249g;
                    long j = historyEvent.f11541h;
                    long j2 = historyEvent.f11542i;
                    StringBuilder sb = new StringBuilder();
                    sb.append(c20679c3.f58238j.mo14281n(j));
                    if (j2 > 0) {
                        sb.append(" (");
                        sb.append(c20679c3.f58238j.mo14286i(j2));
                        sb.append(")");
                    }
                    String sb2 = sb.toString();
                    l.d(sb2, "stringBuilder.toString()");
                    C20679c c20679c4 = this.f58249g;
                    String str2 = historyEvent.f11544k;
                    l.d(str2, "it.subscriptionId");
                    SimInfo simInfo = c20679c4.f58241m.get(str2);
                    Integer valueOf = simInfo != null ? Integer.valueOf(simInfo.f13983a) : null;
                    if (valueOf != null && valueOf.intValue() == 0) {
                        drawable2 = c20679c4.f58239k.mo13767c(C3857R.C3858drawable.ic_sim1);
                        l.d(drawable2, "resourceProvider.getDrawable(R.drawable.ic_sim1)");
                        drawable2.setTint(c20679c4.f58240l.mo13758l(C3857R.attr.tcx_textSecondary));
                    } else if (valueOf != null && valueOf.intValue() == 1) {
                        drawable2 = c20679c4.f58239k.mo13767c(C3857R.C3858drawable.ic_sim2);
                        l.d(drawable2, "resourceProvider.getDrawable(R.drawable.ic_sim2)");
                        drawable2.setTint(c20679c4.f58240l.mo13758l(C3857R.attr.tcx_textSecondary));
                    } else {
                        drawable2 = null;
                    }
                    arrayList2.add(new C20686e(drawable, str, sb2, drawable2, new C20683b(historyEvent, this)));
                }
                arrayList = arrayList2;
            } else {
                arrayList = null;
            }
            if (arrayList == null || arrayList.isEmpty()) {
                AbstractC20678b abstractC20678b = (AbstractC20678b) this.f58249g.f57683a;
                if (abstractC20678b != null) {
                    abstractC20678b.mo10852b();
                }
                return sVar;
            }
            AbstractC20678b abstractC20678b2 = (AbstractC20678b) this.f58249g.f57683a;
            if (abstractC20678b2 != null) {
                abstractC20678b2.mo10848f((C20686e) arrayList.get(0), (C20686e) s1.u.i.G(arrayList, 1), (C20686e) s1.u.i.G(arrayList, 2));
            }
            if (arrayList.size() > 3) {
                AbstractC20678b abstractC20678b3 = (AbstractC20678b) this.f58249g.f57683a;
                if (abstractC20678b3 != null) {
                    abstractC20678b3.mo10851c(this.f58248f);
                }
            } else {
                AbstractC20678b abstractC20678b4 = (AbstractC20678b) this.f58249g.f57683a;
                if (abstractC20678b4 != null) {
                    abstractC20678b4.mo10847g();
                }
            }
            return sVar;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20679c(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC20920a abstractC20920a, AbstractC18951b0 abstractC18951b0, AbstractC19223c0 abstractC19223c0, AbstractC19233h0 abstractC19233h0, AbstractC13477b0 abstractC13477b0, ContentResolver contentResolver, Handler handler, C20879a c20879a, AbstractC19219a0 abstractC19219a0) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "asyncContext");
        l.e(abstractC20920a, "callHistoryManagerDelegate");
        l.e(abstractC18951b0, "dateHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC13477b0, "simInfoCache");
        l.e(contentResolver, "contentResolver");
        l.e(handler, "handler");
        l.e(c20879a, "detailsViewAnalytics");
        l.e(abstractC19219a0, "permissionUtil");
        this.f58235g = fVar;
        this.f58236h = fVar2;
        this.f58237i = abstractC20920a;
        this.f58238j = abstractC18951b0;
        this.f58239k = abstractC19223c0;
        this.f58240l = abstractC19233h0;
        this.f58241m = abstractC13477b0;
        this.f58242n = contentResolver;
        this.f58243o = handler;
        this.f58244p = c20879a;
        this.f58245q = abstractC19219a0;
        this.f58234f = new C20680a(handler);
    }

    /* renamed from: Ij */
    public final boolean m10861Ij(HistoryEvent historyEvent) {
        return l.a("com.truecaller.voip.manager.VOIP", historyEvent.f11552s);
    }

    /* renamed from: Jj */
    public final void m10860Jj() {
        Contact contact;
        C20847s c20847s = this.f58232d;
        if (c20847s == null || (contact = c20847s.f58578a) == null) {
            return;
        }
        p1 p1Var = this.f58233e;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f58233e = s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20681b(contact, null, this), 3, (Object) null);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.v.a.b0.b] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC20678b abstractC20678b) {
        AbstractC20678b abstractC20678b2 = abstractC20678b;
        l.e(abstractC20678b2, "presenterView");
        this.f57683a = abstractC20678b2;
        if (!this.f58245q.mo13825h("android.permission.READ_CALL_LOG")) {
            return;
        }
        try {
            this.f58242n.registerContentObserver(CallLog.Calls.CONTENT_URI, true, this.f58234f);
        } catch (SecurityException e) {
        }
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        this.f58242n.unregisterContentObserver(this.f58234f);
    }
}
