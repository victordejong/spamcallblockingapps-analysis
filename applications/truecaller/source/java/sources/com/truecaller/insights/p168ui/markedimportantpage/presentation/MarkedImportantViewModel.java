package com.truecaller.insights.p168ui.markedimportantpage.presentation;

import android.support.p001v4.media.session.MediaSessionCompat;
import com.huawei.hms.opendevice.AbstractC2405c;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.insights.models.analytics.SimpleAnalyticsModel;
import com.truecaller.insights.p168ui.models.AdapterItem;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.inject.Inject;
import kotlin.Metadata;
import p1727n3.p1868v.AbstractC26985a0;
import p1727n3.p1868v.AbstractC27013m0;
import p1727n3.p1868v.AbstractC27028u;
import p1727n3.p1868v.AbstractC27040y0;
import p1727n3.p1868v.C27010k0;
import p193e.p1425c.p1426a.p1427a.p1429c.C22021b;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p437c.p438a.p446c.p450g.C8833c;
import p193e.p194a.p437c.p438a.p479i.AbstractC9114h;
import p193e.p194a.p437c.p438a.p479i.C9116j;
import p193e.p194a.p437c.p438a.p487k.p489b.C9199b;
import p193e.p194a.p437c.p438a.p487k.p489b.C9206e;
import p193e.p194a.p437c.p438a.p487k.p490c.AbstractC9209c;
import p193e.p194a.p437c.p438a.p487k.p490c.C9207a;
import p193e.p194a.p437c.p438a.p487k.p490c.C9208b;
import p193e.p194a.p437c.p438a.p487k.p490c.C9213d;
import p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a;
import p193e.p194a.p437c.p438a.p493l.AbstractC9235b;
import p193e.p194a.p437c.p524b.AbstractC9691j;
import p193e.p194a.p437c.p531c0.AbstractC10028o;
import p193e.p194a.p437c.p548h.AbstractC10254d;
import p193e.p194a.p437c.p548h.p551m.AbstractC10267d;
import p193e.p194a.p437c.p580r.p581d.C10529b;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import q3.a.x2.f;
import q3.a.x2.g;
import s1.u.s;
import s1.u.u;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0096\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n��\n\u0002\u0010!\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018��2\u00020\u00012\u00020\u00022\u00020\u0003BA\b\u0007\u0012\u0006\u0010*\u001a\u00020(\u0012\u0006\u0010$\u001a\u00020\"\u0012\u0006\u0010;\u001a\u000209\u0012\u0006\u00100\u001a\u00020.\u0012\u0006\u0010'\u001a\u00020%\u0012\u0006\u0010>\u001a\u00020<\u0012\u0006\u00104\u001a\u000201¢\u0006\u0004\bC\u0010DJ3\u0010\f\u001a\u00020\u000b2\u0006\u0010\u0005\u001a\u00020\u00042\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00070\u00062\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00070\tH\u0002¢\u0006\u0004\b\f\u0010\rJ#\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u000e2\n\b\u0002\u0010\u0010\u001a\u0004\u0018\u00010\u0007H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0011H\u0002¢\u0006\u0004\b\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0011H\u0007¢\u0006\u0004\b\u0016\u0010\u0015J\r\u0010\u0017\u001a\u00020\u000b¢\u0006\u0004\b\u0017\u0010\u0018J\u001b\u0010\u001a\u001a\u00020\u00112\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u001c\u0010\u0015J\u001f\u0010\u001d\u001a\u00020\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0007H\u0016¢\u0006\u0004\b\u001d\u0010\u001eJ\u0015\u0010 \u001a\u00020\u00112\u0006\u0010\u001f\u001a\u00020\u0004¢\u0006\u0004\b \u0010!R\u0016\u0010$\u001a\u00020\"8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010#R\u0016\u0010'\u001a\u00020%8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010&R\u0016\u0010*\u001a\u00020(8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010)R\u0016\u0010-\u001a\u00020+8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001c\u0010,R\u0016\u00100\u001a\u00020.8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\f\u0010/R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b2\u00103R\"\u00108\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u0002060\u0006058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001d\u00107R\u0016\u0010;\u001a\u0002098\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010:R\u0016\u0010>\u001a\u00020<8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010=R\"\u0010B\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020@0?058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\bA\u00107¨\u0006E"}, d2 = {"Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;", "Ln3/v/y0;", "Le/a/c/a/k/d/a;", "Ln3/v/a0;", "", "isImportant", "", "Le/a/c/a/l/b$c;", "diffList", "", "currentList", "Lq3/a/p1;", "g", "(ZLjava/util/List;Ljava/util/List;)Lq3/a/p1;", "", "actionInfo", "message", "Ls1/s;", "f", "(Ljava/lang/String;Le/a/c/a/l/b$c;)V", "d", "()V", "onCreate", "e", "()Lq3/a/p1;", "messageList", "i", "(Ljava/util/List;)V", "a", C22021b.f61237c, "(ZLe/a/c/a/l/b$c;)V", "isUpdated", "h", "(Z)V", "Le/a/c/a/k/b/e;", "Le/a/c/a/k/b/e;", "markImportantMessageUseCase", "Le/a/c/c0/o;", "Le/a/c/c0/o;", "insightsConfig", "Le/a/c/a/k/b/b;", "Le/a/c/a/k/b/b;", "fetchImportantMessageUseCase", "Le/a/c/a/k/c/b;", "Le/a/c/a/k/c/b;", "container", "Le/a/c/a/i/j;", "Le/a/c/a/i/j;", "analyticsUsecase", "Le/a/c/h/d;", "j", "Le/a/c/h/d;", "importantTabBadgeUpdater", "Ln3/v/k0;", "Lcom/truecaller/insights/ui/models/AdapterItem;", "Ln3/v/k0;", "importantMessageStream", "Le/a/c/a/i/h;", "Le/a/c/a/i/h;", "lifeCycleAwareAnalyticsLogger", "Le/a/c/b/j;", "Le/a/c/b/j;", "insightsStatusProvider", "", "Le/a/c/a/k/c/c;", AbstractC2405c.f7629a, "uiUpdateCommandStream", "<init>", "(Le/a/c/a/k/b/b;Le/a/c/a/k/b/e;Le/a/c/a/i/h;Le/a/c/a/i/j;Le/a/c/c0/o;Le/a/c/b/j;Le/a/c/h/d;)V", "insights-ui_release"}, k = 1, mv = {1, 4, 1})
/* renamed from: com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel */
/* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel.class */
public final class MarkedImportantViewModel extends AbstractC27040y0 implements AbstractC9214a, AbstractC26985a0 {

    /* renamed from: a */
    public final C9208b f12823a = new C9208b(null, this, 1);

    /* renamed from: b */
    public final C27010k0<List<AdapterItem>> f12824b = new C27010k0<>(s.a);

    /* renamed from: c */
    public final C27010k0<Set<AbstractC9209c>> f12825c = new C27010k0<>(u.a);

    /* renamed from: d */
    public final C9199b f12826d;

    /* renamed from: e */
    public final C9206e f12827e;

    /* renamed from: f */
    public final AbstractC9114h f12828f;

    /* renamed from: g */
    public final C9116j f12829g;

    /* renamed from: h */
    public final AbstractC10028o f12830h;

    /* renamed from: i */
    public final AbstractC9691j f12831i;

    /* renamed from: j */
    public final AbstractC10254d f12832j;

    @e(c = "com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$fetchImportantMessages$1", f = "MarkedImportantViewModel.kt", l = {218}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$a */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a.class */
    public static final class C4103a extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f12833e;

        /* renamed from: com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$a$a */
        /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$a$a.class */
        public static final class C4104a implements g<C9213d> {
            public C4104a() {
                C4103a.this = r4;
            }

            /* renamed from: a */
            public Object m35168a(C9213d c9213d, d<? super s1.s> dVar) {
                C9213d c9213d2 = c9213d;
                if (!l.a(c9213d2, MarkedImportantViewModel.this.f12823a.f27993a)) {
                    MarkedImportantViewModel markedImportantViewModel = MarkedImportantViewModel.this;
                    if (markedImportantViewModel.f12823a.f27993a != null) {
                        markedImportantViewModel.m35173h(true);
                    }
                    MarkedImportantViewModel markedImportantViewModel2 = MarkedImportantViewModel.this;
                    boolean isEmpty = c9213d2.f27999b.isEmpty();
                    Objects.requireNonNull(markedImportantViewModel2);
                    AbstractC9209c.C9212c c9212c = isEmpty ^ true ? new AbstractC9209c.C9212c(false) : new AbstractC9209c.C9212c(true);
                    l.e(c9212c, "$this$toSet");
                    Set<AbstractC9209c> y0 = s1.u.i.y0(c9212c);
                    MarkedImportantViewModel markedImportantViewModel3 = MarkedImportantViewModel.this;
                    markedImportantViewModel3.f12823a.f27993a = c9213d2;
                    markedImportantViewModel3.f12825c.mo1001j(y0);
                    MarkedImportantViewModel.this.m35177d();
                }
                return s1.s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4103a(d dVar) {
            super(2, dVar);
            MarkedImportantViewModel.this = r5;
        }

        /* renamed from: i */
        public final d<s1.s> m35171i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4103a(dVar);
        }

        /* renamed from: k */
        public final Object m35170k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C4103a(dVar).m35169s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m35169s(Object obj) {
            a aVar = a.a;
            int i = this.f12833e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                MarkedImportantViewModel markedImportantViewModel = MarkedImportantViewModel.this;
                f<C9213d> m27874c = markedImportantViewModel.f12826d.m27874c(markedImportantViewModel);
                C4104a c4104a = new C4104a();
                this.f12833e = 1;
                if (m27874c.c(c4104a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s1.s.a;
        }
    }

    @e(c = "com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$markMessage$2", f = "MarkedImportantViewModel.kt", l = {226}, m = "invokeSuspend")
    /* renamed from: com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$b */
    /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b.class */
    public static final class C4105b extends i implements p<i0, d<? super s1.s>, Object> {

        /* renamed from: e */
        public int f12836e;

        /* renamed from: g */
        public final /* synthetic */ List f12838g;

        /* renamed from: h */
        public final /* synthetic */ boolean f12839h;

        /* renamed from: i */
        public final /* synthetic */ List f12840i;

        /* renamed from: com.truecaller.insights.ui.markedimportantpage.presentation.MarkedImportantViewModel$b$a */
        /* loaded from: classes10-dex2jar.jar:com/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel$b$a.class */
        public static final class C4106a implements g<Boolean> {
            public C4106a() {
                C4105b.this = r4;
            }

            /* renamed from: a */
            public Object m35164a(Boolean bool, d<? super s1.s> dVar) {
                if (bool.booleanValue()) {
                    C4105b c4105b = C4105b.this;
                    MarkedImportantViewModel markedImportantViewModel = MarkedImportantViewModel.this;
                    boolean z = c4105b.f12839h;
                    List list = c4105b.f12840i;
                    List list2 = c4105b.f12838g;
                    Objects.requireNonNull(markedImportantViewModel);
                    if (!z) {
                        ArrayList arrayList = new ArrayList();
                        for (Object obj : list) {
                            if (!list2.contains((AbstractC9235b.C9238c) obj)) {
                                arrayList.add(obj);
                            }
                        }
                        C9213d c9213d = markedImportantViewModel.f12823a.f27993a;
                        if (c9213d != null) {
                            AdapterItem.C4117i c4117i = c9213d.f27998a;
                            AdapterItem.C4117i c4117i2 = null;
                            if (c4117i != null) {
                                C8833c c8833c = null;
                                if (!arrayList.isEmpty()) {
                                    c8833c = c4117i.f12878d;
                                }
                                c4117i2 = new AdapterItem.C4117i(c4117i.f12875a, c4117i.f12876b, c4117i.f12877c, c8833c, c4117i.f12879e, c4117i.f12880f, c4117i.f12881g);
                            }
                            C9208b c9208b = markedImportantViewModel.f12823a;
                            ArrayList arrayList2 = new ArrayList(C25225a.m4004J(arrayList, 10));
                            Iterator it = arrayList.iterator();
                            while (it.hasNext()) {
                                arrayList2.add((AbstractC9235b.C9238c) it.next());
                            }
                            l.e(arrayList2, "markImpValueItems");
                            c9208b.f27993a = new C9213d(c4117i2, arrayList2);
                        }
                        markedImportantViewModel.m35177d();
                        markedImportantViewModel.f12825c.mo1001j(s1.u.i.z0(new AbstractC9209c[]{new AbstractC9209c.C9211b(list2), arrayList.isEmpty() ^ true ? new AbstractC9209c.C9212c(false) : new AbstractC9209c.C9212c(true)}));
                    } else {
                        markedImportantViewModel.m35176e();
                    }
                    C4105b c4105b2 = C4105b.this;
                    MarkedImportantViewModel.m35178c(MarkedImportantViewModel.this, c4105b2.f12839h, c4105b2.f12838g, true);
                } else {
                    C4105b c4105b3 = C4105b.this;
                    MarkedImportantViewModel markedImportantViewModel2 = MarkedImportantViewModel.this;
                    boolean z2 = c4105b3.f12839h;
                    C27010k0<Set<AbstractC9209c>> c27010k0 = markedImportantViewModel2.f12825c;
                    AbstractC9209c.C9210a c9210a = new AbstractC9209c.C9210a(z2);
                    l.e(c9210a, "$this$toSet");
                    c27010k0.mo1001j(s1.u.i.y0(c9210a));
                    C4105b c4105b4 = C4105b.this;
                    MarkedImportantViewModel.m35178c(MarkedImportantViewModel.this, c4105b4.f12839h, c4105b4.f12838g, false);
                }
                return s1.s.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4105b(List list, boolean z, List list2, d dVar) {
            super(2, dVar);
            MarkedImportantViewModel.this = r5;
            this.f12838g = list;
            this.f12839h = z;
            this.f12840i = list2;
        }

        /* renamed from: i */
        public final d<s1.s> m35167i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C4105b(this.f12838g, this.f12839h, this.f12840i, dVar);
        }

        /* renamed from: k */
        public final Object m35166k(Object obj, Object obj2) {
            return m35167i(obj, (d) obj2).m35165s(s1.s.a);
        }

        /* renamed from: s */
        public final Object m35165s(Object obj) {
            a aVar = a.a;
            int i = this.f12836e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                List<AbstractC9235b.C9238c> list = this.f12838g;
                ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
                for (AbstractC9235b.C9238c c9238c : list) {
                    arrayList.add(new Long(c9238c.f28048a));
                }
                List<AbstractC9235b.C9238c> list2 = this.f12838g;
                ArrayList arrayList2 = new ArrayList(C25225a.m4004J(list2, 10));
                for (AbstractC9235b.C9238c c9238c2 : list2) {
                    AbstractC10267d abstractC10267d = c9238c2.f28055h;
                    arrayList2.add(abstractC10267d != null ? abstractC10267d.mo26506a() : null);
                }
                f<Boolean> m27874c = MarkedImportantViewModel.this.f12827e.m27874c(new C9207a(this.f12839h, arrayList, arrayList2));
                C4106a c4106a = new C4106a();
                this.f12836e = 1;
                if (m27874c.c(c4106a, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s1.s.a;
        }
    }

    @Inject
    public MarkedImportantViewModel(C9199b c9199b, C9206e c9206e, AbstractC9114h abstractC9114h, C9116j c9116j, AbstractC10028o abstractC10028o, AbstractC9691j abstractC9691j, AbstractC10254d abstractC10254d) {
        l.e(c9199b, "fetchImportantMessageUseCase");
        l.e(c9206e, "markImportantMessageUseCase");
        l.e(abstractC9114h, "lifeCycleAwareAnalyticsLogger");
        l.e(c9116j, "analyticsUsecase");
        l.e(abstractC10028o, "insightsConfig");
        l.e(abstractC9691j, "insightsStatusProvider");
        l.e(abstractC10254d, "importantTabBadgeUpdater");
        this.f12826d = c9199b;
        this.f12827e = c9206e;
        this.f12828f = abstractC9114h;
        this.f12829g = c9116j;
        this.f12830h = abstractC10028o;
        this.f12831i = abstractC9691j;
        this.f12832j = abstractC10254d;
    }

    /* renamed from: c */
    public static final void m35178c(MarkedImportantViewModel markedImportantViewModel, boolean z, List list, boolean z2) {
        Objects.requireNonNull(markedImportantViewModel);
        if (z) {
            if (z2) {
                markedImportantViewModel.m35175f("undo", list.size() > 1 ? null : (AbstractC9235b.C9238c) s1.u.i.B(list));
            } else {
                markedImportantViewModel.m35175f("undo_failed", list.size() > 1 ? null : (AbstractC9235b.C9238c) s1.u.i.B(list));
            }
        } else if (z2) {
            if (list.size() == 1) {
                markedImportantViewModel.m35175f("mark_not_important", (AbstractC9235b.C9238c) s1.u.i.B(list));
            } else if (list.size() <= 1) {
            } else {
                markedImportantViewModel.m35175f("mark_all_as_not_important", null);
            }
        } else if (list.size() == 1) {
            markedImportantViewModel.m35175f("mark_not_important_failed", (AbstractC9235b.C9238c) s1.u.i.B(list));
        } else if (list.size() <= 1) {
        } else {
            markedImportantViewModel.m35175f("mark_all_as_not_important_failed", null);
        }
    }

    @Override // p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a
    /* renamed from: a */
    public void mo27792a() {
        C9213d c9213d = this.f12823a.f27993a;
        if (c9213d != null) {
            List<AbstractC9235b.C9238c> list = c9213d.f27999b;
            m35174g(false, list, s1.u.i.a1(list));
        }
    }

    @Override // p193e.p194a.p437c.p438a.p487k.p491d.AbstractC9214a
    /* renamed from: b */
    public void mo27791b(boolean z, AbstractC9235b.C9238c c9238c) {
        l.e(c9238c, "message");
        C9213d c9213d = this.f12823a.f27993a;
        if (c9213d != null) {
            m35174g(z, C25225a.m3962T1(c9238c), s1.u.i.a1(c9213d.f27999b));
        }
    }

    /* renamed from: d */
    public final void m35177d() {
        C27010k0<List<AdapterItem>> c27010k0 = this.f12824b;
        C9208b c9208b = this.f12823a;
        Objects.requireNonNull(c9208b);
        ArrayList arrayList = new ArrayList();
        C9213d c9213d = c9208b.f27993a;
        if (c9213d != null) {
            AdapterItem.C4117i c4117i = c9213d.f27998a;
            if (c4117i != null) {
                arrayList.add(c4117i);
            }
            for (AbstractC9235b.C9238c c9238c : c9213d.f27999b) {
                arrayList.add(new AdapterItem.C4118j(c9238c, 0L, 2));
            }
        }
        c27010k0.mo1001j(arrayList);
    }

    /* renamed from: e */
    public final p1 m35176e() {
        return s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (s1.w.f) null, (j0) null, new C4103a(null), 3, (Object) null);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x012d, code lost:
        if (r20 != null) goto L43;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m35175f(java.lang.String r19, p193e.p194a.p437c.p438a.p493l.AbstractC9235b.C9238c r20) {
        /*
            Method dump skipped, instructions count: 401
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.truecaller.insights.p168ui.markedimportantpage.presentation.MarkedImportantViewModel.m35175f(java.lang.String, e.a.c.a.l.b$c):void");
    }

    /* renamed from: g */
    public final p1 m35174g(boolean z, List<AbstractC9235b.C9238c> list, List<AbstractC9235b.C9238c> list2) {
        return s1.a.a.a.v0.f.d.w2(MediaSessionCompat.m43315C0(this), (s1.w.f) null, (j0) null, new C4105b(list, z, list2, null), 3, (Object) null);
    }

    /* renamed from: h */
    public final void m35173h(boolean z) {
        if (this.f12831i.mo27289F()) {
            this.f12831i.mo27279P(z);
        }
    }

    /* renamed from: i */
    public final void m35172i(List<AbstractC9235b.C9238c> list) {
        l.e(list, "messageList");
        C9213d c9213d = this.f12823a.f27993a;
        if (c9213d != null) {
            m35174g(true, list, s1.u.i.a1(c9213d.f27999b));
        }
    }

    @AbstractC27013m0(AbstractC27028u.EnumC27029a.ON_CREATE)
    public final void onCreate() {
        C9116j c9116j = this.f12829g;
        boolean z = true;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        l.e("", "feature");
        l.e("", "eventCategory");
        l.e("", "eventInfo");
        l.e("", AnalyticsConstants.CONTEXT);
        l.e("", "actionType");
        l.e("", "actionInfo");
        l.e(linkedHashMap, "propertyMap");
        l.e("page_view", "<set-?>");
        l.e("marked_as_important", "<set-?>");
        l.e(ViewAction.VIEW, "<set-?>");
        l.e("insights_business_tab", "<set-?>");
        if ("page_view".length() <= 0) {
            z = false;
        }
        if (z) {
            c9116j.m27867a(new C10529b(new SimpleAnalyticsModel("page_view", "marked_as_important", "", "insights_business_tab", ViewAction.VIEW, "", 0L, null, false, 448, null), s1.u.i.W0(linkedHashMap)));
            return;
        }
        throw new IllegalArgumentException("Failed requirement.".toString());
    }
}
