package p193e.p194a.p1275v.p1276a;

import android.content.ContentResolver;
import android.net.Uri;
import android.os.Handler;
import com.freshchat.consumer.sdk.beans.config.DefaultRefreshIntervals;
import com.razorpay.AnalyticsConstants;
import com.truecaller.analytics.common.event.ViewActionEvent;
import com.truecaller.contactfeedback.p157db.NumberAndType;
import com.truecaller.contactfeedback.p157db.PhoneNumberType;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.FeedbackSource;
import com.truecaller.data.entity.Number;
import com.truecaller.details_view.C3857R;
import com.truecaller.details_view.analytics.SourceType;
import com.truecaller.details_view.p162ui.actionbutton.ActionButton;
import com.truecaller.flashsdk.models.FlashContact;
import com.truecaller.spamcategories.SpamCategoryRequest;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1275v.p1276a.p1290j0.C20784b;
import p193e.p194a.p1275v.p1276a.p1299s0.C20849b;
import p193e.p194a.p1275v.p1276a.p1301x.C20863a;
import p193e.p194a.p1275v.p1276a.p1302y.AbstractC20874h;
import p193e.p194a.p1275v.p1276a.p1303z.C20879a;
import p193e.p194a.p1275v.p1309p.AbstractC20920a;
import p193e.p194a.p1275v.p1309p.AbstractC20923d;
import p193e.p194a.p1275v.p1309p.AbstractC20938l;
import p193e.p194a.p1275v.p1309p.C20941o;
import p193e.p194a.p1365y.p1382c.AbstractC21631b;
import p193e.p194a.p291a3.AbstractC7419a;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p798g5.AbstractC14535n;
import p193e.p194a.p997k3.AbstractC16452e;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.f0.r;
import s1.j;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.v.a.q */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/q.class */
public final class C20826q extends AbstractC20574a<AbstractC20758g> implements AbstractC20751f, ActionButton.AbstractC3866a {

    /* renamed from: A */
    public final AbstractC19222c f58499A;

    /* renamed from: B */
    public final AbstractC21631b f58500B;

    /* renamed from: C */
    public final C20849b f58501C;

    /* renamed from: D */
    public final AbstractC20923d f58502D;

    /* renamed from: E */
    public final AbstractC19223c0 f58503E;

    /* renamed from: J */
    public final Uri f58504J;

    /* renamed from: K */
    public final AbstractC20874h f58505K;

    /* renamed from: d */
    public C20847s f58506d;

    /* renamed from: e */
    public Integer f58507e;

    /* renamed from: f */
    public SourceType f58508f;

    /* renamed from: g */
    public final C20763h f58509g;

    /* renamed from: h */
    public final C20781j f58510h;

    /* renamed from: i */
    public final f f58511i;

    /* renamed from: j */
    public final f f58512j;

    /* renamed from: k */
    public final AbstractC7419a f58513k;

    /* renamed from: l */
    public final C20863a f58514l;

    /* renamed from: m */
    public final AbstractC8432l f58515m;

    /* renamed from: n */
    public final AbstractC19854f<AbstractC14535n> f58516n;

    /* renamed from: o */
    public final ContentResolver f58517o;

    /* renamed from: p */
    public final Uri f58518p;

    /* renamed from: q */
    public final C16461b f58519q;

    /* renamed from: r */
    public final Handler f58520r;

    /* renamed from: s */
    public final AbstractC20851t f58521s;

    /* renamed from: t */
    public final AbstractC20938l f58522t;

    /* renamed from: u */
    public final C8601l0 f58523u;

    /* renamed from: v */
    public final AbstractC20920a f58524v;

    /* renamed from: w */
    public final AbstractC16452e f58525w;

    /* renamed from: x */
    public final C20941o f58526x;

    /* renamed from: y */
    public final C20879a f58527y;

    /* renamed from: z */
    public final C20784b f58528z;

    @e(c = "com.truecaller.details_view.ui.DetailsPresenter$onVisibilityChanged$2", f = "DetailsPresenter.kt", l = {341}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.q$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/q$a.class */
    public static final class C20827a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f58529e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20827a(d dVar) {
            super(2, dVar);
            C20826q.this = r5;
        }

        /* renamed from: i */
        public final d<s> m10647i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20827a(dVar);
        }

        /* renamed from: k */
        public final Object m10646k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20827a(dVar).m10645s(s.a);
        }

        /* renamed from: s */
        public final Object m10645s(Object obj) {
            a aVar = a.a;
            int i = this.f58529e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C20826q c20826q = C20826q.this;
                this.f58529e = 1;
                if (c20826q.m10650Lj(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.details_view.ui.DetailsPresenter", f = "DetailsPresenter.kt", l = {412, 418}, m = "reloadAndRefreshView")
    /* renamed from: e.a.v.a.q$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/q$b.class */
    public static final class C20828b extends c {

        /* renamed from: d */
        public /* synthetic */ Object f58531d;

        /* renamed from: e */
        public int f58532e;

        /* renamed from: g */
        public Object f58534g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20828b(d dVar) {
            super(dVar);
            C20826q.this = r4;
        }

        /* renamed from: s */
        public final Object m10644s(Object obj) {
            this.f58531d = obj;
            this.f58532e |= Integer.MIN_VALUE;
            return C20826q.this.m10650Lj(this);
        }
    }

    @e(c = "com.truecaller.details_view.ui.DetailsPresenter$reloadAndRefreshView$contact$1", f = "DetailsPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.q$c */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/q$c.class */
    public static final class C20829c extends i implements p<i0, d<? super Contact>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20829c(d dVar) {
            super(2, dVar);
            C20826q.this = r5;
        }

        /* renamed from: i */
        public final d<s> m10643i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20829c(dVar);
        }

        /* renamed from: k */
        public final Object m10642k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20829c(dVar).m10641s(s.a);
        }

        /* renamed from: s */
        public final Object m10641s(Object obj) {
            Object obj2;
            String str;
            C25225a.m3932a3(obj);
            C20826q c20826q = C20826q.this;
            C16461b c16461b = c20826q.f58519q;
            C20847s c20847s = c20826q.f58506d;
            if (c20847s == null) {
                l.l("detailsViewModel");
                throw null;
            }
            Contact m17362j = c16461b.m17362j(c20847s.f58578a.getTcId());
            if (m17362j == null) {
                C20826q c20826q2 = C20826q.this;
                C16461b c16461b2 = c20826q2.f58519q;
                C20847s c20847s2 = c20826q2.f58506d;
                if (c20847s2 == null) {
                    l.l("detailsViewModel");
                    throw null;
                }
                Iterator it = ((ArrayList) C20826q.m10652Jj(c20826q2, c20847s2.f58578a)).iterator();
                do {
                    obj2 = null;
                    if (!it.hasNext()) {
                        break;
                    }
                    obj2 = it.next();
                    str = (String) obj2;
                } while (!Boolean.valueOf(!(str == null || r.p(str))).booleanValue());
                m17362j = c16461b2.m17364h((String) obj2);
            }
            if (m17362j == null) {
                m17362j = C20826q.m10653Ij(C20826q.this).f58578a;
            }
            return m17362j;
        }
    }

    @e(c = "com.truecaller.details_view.ui.DetailsPresenter$toggleFavorite$1", f = "DetailsPresenter.kt", l = {238}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.q$d */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/q$d.class */
    public static final class C20830d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f58536e;

        /* renamed from: g */
        public final /* synthetic */ boolean f58538g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20830d(boolean z, d dVar) {
            super(2, dVar);
            C20826q.this = r5;
            this.f58538g = z;
        }

        /* renamed from: i */
        public final d<s> m10640i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20830d(this.f58538g, dVar);
        }

        /* renamed from: k */
        public final Object m10639k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20830d(this.f58538g, dVar).m10638s(s.a);
        }

        /* renamed from: s */
        public final Object m10638s(Object obj) {
            a aVar = a.a;
            int i = this.f58536e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C20826q c20826q = C20826q.this;
                AbstractC20923d abstractC20923d = c20826q.f58502D;
                Contact contact = C20826q.m10653Ij(c20826q).f58578a;
                boolean z = this.f58538g;
                this.f58536e = 1;
                if (abstractC20923d.mo10515a(contact, z, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C20826q c20826q2 = C20826q.this;
            String mo13768b = c20826q2.f58503E.mo13768b(this.f58538g ? C3857R.string.details_view_contact_favorited : C3857R.string.details_view_contact_unfavorited, C20826q.m10653Ij(c20826q2).f58578a.m35489x());
            l.d(mo13768b, "resourceProvider.getStri…layNameOrNumber\n        )");
            AbstractC20758g abstractC20758g = (AbstractC20758g) C20826q.this.f57683a;
            if (abstractC20758g != null) {
                abstractC20758g.mo10738l(mo13768b);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20826q(@Named("UI") f fVar, @Named("IO") f fVar2, AbstractC7419a abstractC7419a, C20863a c20863a, AbstractC8432l abstractC8432l, AbstractC19854f<AbstractC14535n> abstractC19854f, ContentResolver contentResolver, @Named("aggregated_contact_table_uri") Uri uri, C16461b c16461b, Handler handler, AbstractC20851t abstractC20851t, AbstractC20938l abstractC20938l, C8601l0 c8601l0, AbstractC20920a abstractC20920a, AbstractC16452e abstractC16452e, C20941o c20941o, C20879a c20879a, C20784b c20784b, AbstractC19222c abstractC19222c, AbstractC21631b abstractC21631b, C20849b c20849b, AbstractC20923d abstractC20923d, AbstractC19223c0 abstractC19223c0, @Named("history_event_table_uri") Uri uri2, AbstractC20874h abstractC20874h) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(fVar2, "ioContext");
        l.e(abstractC7419a, "blockManager");
        l.e(c20863a, "actionButtonProvider");
        l.e(abstractC8432l, "truecallerAccountManager");
        l.e(abstractC19854f, "tagDataSaver");
        l.e(contentResolver, "contentResolver");
        l.e(uri, "aggregatedContactTableUri");
        l.e(c16461b, "aggregatedContactDao");
        l.e(handler, "handler");
        l.e(abstractC20851t, "detailsViewModelLoader");
        l.e(abstractC20938l, "searchHelper");
        l.e(c8601l0, "timestampUtil");
        l.e(abstractC20920a, "callHistoryManagerDelegate");
        l.e(abstractC16452e, "historyEventFactory");
        l.e(c20941o, "detailsViewModelComparator");
        l.e(c20879a, "detailsViewAnalytics");
        l.e(c20784b, "optionsMenuFactory");
        l.e(abstractC19222c, "clock");
        l.e(abstractC21631b, "flashManager");
        l.e(c20849b, "widgetProvider");
        l.e(abstractC20923d, "contactHelper");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(uri2, "historyEventTableUri");
        l.e(abstractC20874h, "detailsAdsLoader");
        this.f58511i = fVar;
        this.f58512j = fVar2;
        this.f58513k = abstractC7419a;
        this.f58514l = c20863a;
        this.f58515m = abstractC8432l;
        this.f58516n = abstractC19854f;
        this.f58517o = contentResolver;
        this.f58518p = uri;
        this.f58519q = c16461b;
        this.f58520r = handler;
        this.f58521s = abstractC20851t;
        this.f58522t = abstractC20938l;
        this.f58523u = c8601l0;
        this.f58524v = abstractC20920a;
        this.f58525w = abstractC16452e;
        this.f58526x = c20941o;
        this.f58527y = c20879a;
        this.f58528z = c20784b;
        this.f58499A = abstractC19222c;
        this.f58500B = abstractC21631b;
        this.f58501C = c20849b;
        this.f58502D = abstractC20923d;
        this.f58503E = abstractC19223c0;
        this.f58504J = uri2;
        this.f58505K = abstractC20874h;
        this.f58509g = new C20763h(this, handler);
        this.f58510h = new C20781j(this, handler);
    }

    /* renamed from: Ij */
    public static final /* synthetic */ C20847s m10653Ij(C20826q c20826q) {
        C20847s c20847s = c20826q.f58506d;
        if (c20847s != null) {
            return c20847s;
        }
        l.l("detailsViewModel");
        throw null;
    }

    /* renamed from: Jj */
    public static final List m10652Jj(C20826q c20826q, Contact contact) {
        Objects.requireNonNull(c20826q);
        List<Number> m35557M = contact.m35557M();
        l.d(m35557M, "numbers");
        ArrayList arrayList = new ArrayList(C25225a.m4004J(m35557M, 10));
        for (Number number : m35557M) {
            l.d(number, "it");
            String m35479e = number.m35479e();
            if (m35479e == null) {
                m35479e = number.m35473l();
            }
            arrayList.add(m35479e);
        }
        return arrayList;
    }

    /* JADX WARN: Code restructure failed: missing block: B:137:0x05c8, code lost:
        if (r14 != null) goto L141;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v262, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r0v295, types: [java.util.List] */
    /* renamed from: Kj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10651Kj() {
        /*
            Method dump skipped, instructions count: 1566
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.C20826q.m10651Kj():void");
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01e5  */
    /* renamed from: Lj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m10650Lj(s1.w.d<? super s1.s> r6) {
        /*
            Method dump skipped, instructions count: 492
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1275v.p1276a.C20826q.m10650Lj(s1.w.d):java.lang.Object");
    }

    /* renamed from: Mj */
    public final p1 m10649Mj(boolean z) {
        return s1.a.a.a.v0.f.d.w2(this, this.f58511i, (j0) null, new C20830d(z, null), 2, (Object) null);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f58517o.unregisterContentObserver(this.f58509g);
        this.f58517o.unregisterContentObserver(this.f58510h);
        super.mo9806c();
    }

    @Override // com.truecaller.details_view.p162ui.actionbutton.ActionButton.AbstractC3866a
    /* renamed from: dd */
    public void mo10648dd(ActionButton actionButton) {
        AbstractC20758g abstractC20758g;
        l.e(actionButton, "actionButton");
        boolean z = true;
        boolean z2 = true;
        switch (actionButton.f11728f.ordinal()) {
            case 0:
                AbstractC20758g abstractC20758g2 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g2 != null) {
                    C20847s c20847s = this.f58506d;
                    if (c20847s == null) {
                        l.l("detailsViewModel");
                        throw null;
                    } else {
                        abstractC20758g2.mo10749a(c20847s.f58578a);
                        break;
                    }
                }
                break;
            case 1:
                AbstractC20758g abstractC20758g3 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g3 != null) {
                    C20847s c20847s2 = this.f58506d;
                    if (c20847s2 == null) {
                        l.l("detailsViewModel");
                        throw null;
                    } else {
                        abstractC20758g3.mo10733q(c20847s2.f58578a);
                        break;
                    }
                }
                break;
            case 2:
                AbstractC20758g abstractC20758g4 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g4 != null) {
                    abstractC20758g4.mo10730t();
                    break;
                }
                break;
            case 3:
                C20847s c20847s3 = this.f58506d;
                if (c20847s3 == null) {
                    l.l("detailsViewModel");
                    throw null;
                }
                Contact contact = c20847s3.f58578a;
                if (!contact.m35526c1() || !this.f58515m.mo28580d()) {
                    z = false;
                }
                String m35489x = contact.m35489x();
                l.d(m35489x, "contact.displayNameOrNumber");
                List<Number> m35557M = contact.m35557M();
                l.d(m35557M, "contact.numbers");
                List<String> m15559x1 = C17891a1.C17902k.m15559x1(m35557M);
                ArrayList arrayList = new ArrayList(C25225a.m4004J(m15559x1, 10));
                Iterator it = ((ArrayList) m15559x1).iterator();
                while (it.hasNext()) {
                    String str = (String) it.next();
                    l.d(str, "it");
                    arrayList.add(new NumberAndType(str, PhoneNumberType.UNKNOWN_NUMBER_TYPE));
                }
                SpamCategoryRequest spamCategoryRequest = new SpamCategoryRequest(m35489x, z, arrayList, FeedbackSource.BLOCK_FLOW);
                AbstractC20758g abstractC20758g5 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g5 != null) {
                    abstractC20758g5.mo10754D(spamCategoryRequest);
                    break;
                }
                break;
            case 4:
                AbstractC20758g abstractC20758g6 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g6 != null) {
                    abstractC20758g6.mo10747c();
                    break;
                }
                break;
            case 5:
                AbstractC20758g abstractC20758g7 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g7 != null) {
                    C20847s c20847s4 = this.f58506d;
                    if (c20847s4 == null) {
                        l.l("detailsViewModel");
                        throw null;
                    } else {
                        abstractC20758g7.mo10751F2(c20847s4.f58578a);
                        break;
                    }
                }
                break;
            case 6:
                C20847s c20847s5 = this.f58506d;
                if (c20847s5 == null) {
                    l.l("detailsViewModel");
                    throw null;
                }
                List<FlashContact> list = c20847s5.f58581d;
                if (list.size() != 1) {
                    if (list.size() > 1 && (abstractC20758g = (AbstractC20758g) this.f57683a) != null) {
                        abstractC20758g.mo10732r(list);
                        break;
                    }
                } else {
                    FlashContact flashContact = (FlashContact) s1.u.i.B(list);
                    String str2 = flashContact.f11999a;
                    long mo13819c = this.f58499A.mo13819c() - this.f58500B.mo9313e(str2).f60487b;
                    if (mo13819c < DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL) {
                        z2 = false;
                    }
                    if (!z2) {
                        AbstractC20758g abstractC20758g8 = (AbstractC20758g) this.f57683a;
                        if (abstractC20758g8 != null) {
                            abstractC20758g8.mo10725y(Long.parseLong(str2), flashContact.f12000b, DefaultRefreshIntervals.ACTIVE_CONV_MAX_FETCH_INTERVAL - mo13819c);
                            break;
                        }
                    } else {
                        AbstractC20758g abstractC20758g9 = (AbstractC20758g) this.f57683a;
                        if (abstractC20758g9 != null) {
                            abstractC20758g9.mo10727w(str2, flashContact.f12000b);
                            break;
                        }
                    }
                }
                break;
            case 7:
                AbstractC20758g abstractC20758g10 = (AbstractC20758g) this.f57683a;
                if (abstractC20758g10 != null) {
                    C20847s c20847s6 = this.f58506d;
                    if (c20847s6 == null) {
                        l.l("detailsViewModel");
                        throw null;
                    } else {
                        abstractC20758g10.mo10731s(c20847s6.f58578a);
                        break;
                    }
                }
                break;
        }
        C20879a c20879a = this.f58527y;
        ActionButton.Type type = actionButton.f11728f;
        Objects.requireNonNull(c20879a);
        ViewActionEvent.C2856a c2856a = ViewActionEvent.f9985d;
        l.e(type, "actionButtonType");
        ViewActionEvent viewActionEvent = null;
        switch (type.ordinal()) {
            case 0:
                String str3 = c20879a.f58670a;
                l.e(str3, AnalyticsConstants.CONTEXT);
                l.e("call", "action");
                viewActionEvent = new ViewActionEvent("call", null, str3);
                break;
            case 1:
                String str4 = c20879a.f58670a;
                l.e(str4, AnalyticsConstants.CONTEXT);
                l.e("message", "action");
                viewActionEvent = new ViewActionEvent("message", null, str4);
                break;
            case 2:
                viewActionEvent = ViewActionEvent.C2856a.m35935c(c2856a, c20879a.f58670a, ViewActionEvent.BlockingAction.UNBLOCK, null, 4);
                break;
            case 3:
                viewActionEvent = ViewActionEvent.C2856a.m35935c(c2856a, c20879a.f58670a, ViewActionEvent.BlockingAction.BLOCK, null, 4);
                break;
            case 4:
                viewActionEvent = ViewActionEvent.C2856a.m35935c(c2856a, c20879a.f58670a, ViewActionEvent.BlockingAction.NOTSPAM, null, 4);
                break;
            case 5:
                String str5 = c20879a.f58670a;
                l.e(str5, AnalyticsConstants.CONTEXT);
                l.e("voip", "action");
                viewActionEvent = new ViewActionEvent("voip", null, str5);
                break;
            case 6:
                String str6 = c20879a.f58670a;
                l.e(str6, AnalyticsConstants.CONTEXT);
                l.e("flash", "action");
                viewActionEvent = new ViewActionEvent("flash", null, str6);
                break;
            case 7:
                break;
            default:
                throw new j("Unknown action button: " + type);
        }
        if (viewActionEvent != null) {
            n.B0(viewActionEvent, c20879a.f58671b);
        }
    }

    public void onVisibilityChanged(boolean z) {
        if (!z || this.f58506d == null) {
            return;
        }
        s1.a.a.a.v0.f.d.w2(this, this.f58511i, (j0) null, new C20827a(null), 2, (Object) null);
    }
}
