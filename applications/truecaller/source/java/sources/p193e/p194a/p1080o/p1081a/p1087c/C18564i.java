package p193e.p194a.p1080o.p1081a.p1087c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.contextcall.C3771R;
import com.truecaller.contextcall.p159db.reason.CallReason;
import com.truecaller.contextcall.utils.ContextCallAnalyticsContext;
import io.agora.rtc.Constants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1080o.p1097b.AbstractC18705d;
import p193e.p194a.p1080o.p1097b.AbstractC18710f;
import p193e.p194a.p1080o.p1097b.AbstractC18738k;
import p193e.p194a.p1080o.p1103p.p1108e.AbstractC18868e;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import q3.a.j0;
import s1.d0.h;
import s1.d0.j;
import s1.k;
import s1.s;
import s1.u.z;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.o.a.c.i */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/c/i.class */
public final class C18564i extends AbstractC20574a<AbstractC18569l> implements AbstractC18568k {

    /* renamed from: d */
    public C18570m f52334d;

    /* renamed from: e */
    public final AbstractC19223c0 f52335e;

    /* renamed from: f */
    public final AbstractC18868e f52336f;

    /* renamed from: g */
    public final AbstractC18710f f52337g;

    /* renamed from: h */
    public final AbstractC18738k f52338h;

    /* renamed from: i */
    public final a<AbstractC18705d> f52339i;

    /* renamed from: j */
    public final f f52340j;

    @e(c = "com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonPresenter$getReasons$1", f = "ManageCallReasonPresenter.kt", l = {51}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.c.i$a */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/i$a.class */
    public static final class C18565a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52341e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18565a(d dVar) {
            super(2, dVar);
            C18564i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m14781i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18565a(dVar);
        }

        /* renamed from: k */
        public final Object m14780k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18565a(dVar).m14779s(s.a);
        }

        /* renamed from: s */
        public final Object m14779s(Object obj) {
            int i;
            s1.w.j.a aVar = s1.w.j.a.a;
            int i2 = this.f52341e;
            if (i2 == 0) {
                C25225a.m3932a3(obj);
                AbstractC18868e abstractC18868e = C18564i.this.f52336f;
                this.f52341e = 1;
                Object mo14383a = abstractC18868e.mo14383a(this);
                obj = mo14383a;
                if (mo14383a == aVar) {
                    return aVar;
                }
            } else if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            List<CallReason> list = (List) obj;
            l.e(list, "$this$mapToFullCallReasonItem");
            ArrayList arrayList = new ArrayList();
            for (CallReason callReason : list) {
                arrayList.add(new C18558c(callReason.getId(), callReason.getReasonText()));
            }
            C18564i c18564i = C18564i.this;
            int size = arrayList.size();
            boolean mo14606e = c18564i.f52337g.mo14606e();
            AbstractC18569l abstractC18569l = (AbstractC18569l) c18564i.f57683a;
            if (abstractC18569l != null) {
                String mo13768b = mo14606e ? c18564i.f52335e.mo13768b(C3771R.string.context_call_manage_reason_toolbar_title, new Object[0]) : "";
                l.d(mo13768b, "if (onBoardingShownBefor…on_toolbar_title) else \"\"");
                abstractC18569l.setTitle(mo13768b);
            }
            if ((size > 0) && (!mo14606e)) {
                AbstractC18569l abstractC18569l2 = (AbstractC18569l) c18564i.f57683a;
                if (abstractC18569l2 != null) {
                    abstractC18569l2.mo14763ph();
                }
            } else {
                AbstractC18569l abstractC18569l3 = (AbstractC18569l) c18564i.f57683a;
                if (abstractC18569l3 != null) {
                    abstractC18569l3.mo14767Mk();
                }
            }
            if (arrayList.size() < 3) {
                String[] mo13761i = C18564i.this.f52335e.mo13761i(C3771R.array.context_call_reason_placeholder_positions);
                l.d(mo13761i, "resourceProvider.getStri…on_placeholder_positions)");
                String[] mo13761i2 = C18564i.this.f52335e.mo13761i(C3771R.array.context_call_reason_tips);
                l.d(mo13761i2, "resourceProvider.getStri…context_call_reason_tips)");
                Collection j = j.j(arrayList.size(), 3);
                l.e(j, "$this$count");
                if (j instanceof Collection) {
                    i = j.size();
                } else {
                    z it = j.iterator();
                    i = 0;
                    while (((h) it).b) {
                        it.next();
                        i++;
                        if (i < 0) {
                            s1.u.i.M0();
                            throw null;
                        }
                    }
                }
                for (int i3 = 0; i3 < i; i3++) {
                    int intValue = new Integer(i3).intValue();
                    int size2 = arrayList.size();
                    String mo13768b2 = C18564i.this.f52335e.mo13768b(C3771R.string.context_call_reason_placeholder, mo13761i[size2]);
                    l.d(mo13768b2, "resourceProvider.getStri…olderPositions[position])");
                    String str = mo13761i2[size2];
                    if (intValue == 0) {
                        l.d(str, "hint");
                        arrayList.add(new C18570m(mo13768b2, str));
                    } else {
                        l.d(str, "hint");
                        arrayList.add(new C18557b(mo13768b2, str));
                    }
                }
            }
            AbstractC18569l abstractC18569l4 = (AbstractC18569l) C18564i.this.f57683a;
            if (abstractC18569l4 != null) {
                abstractC18569l4.mo14768Jj(arrayList);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.contextcall.ui.managecallreasons.ManageCallReasonPresenter$onDeleteClicked$1", f = "ManageCallReasonPresenter.kt", l = {Constants.ERR_WATERMARKR_INFO}, m = "invokeSuspend")
    /* renamed from: e.a.o.a.c.i$b */
    /* loaded from: classes8-dex2jar.jar:e/a/o/a/c/i$b.class */
    public static final class C18566b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f52343e;

        /* renamed from: g */
        public final /* synthetic */ CallReason f52345g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18566b(CallReason callReason, d dVar) {
            super(2, dVar);
            C18564i.this = r5;
            this.f52345g = callReason;
        }

        /* renamed from: i */
        public final d<s> m14778i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C18566b(this.f52345g, dVar);
        }

        /* renamed from: k */
        public final Object m14777k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C18566b(this.f52345g, dVar).m14776s(s.a);
        }

        /* renamed from: s */
        public final Object m14776s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f52343e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC18868e abstractC18868e = C18564i.this.f52336f;
                CallReason callReason = this.f52345g;
                this.f52343e = 1;
                if (abstractC18868e.mo14381c(callReason, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C18564i.this.m14782Ij();
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C18564i(AbstractC19223c0 abstractC19223c0, AbstractC18868e abstractC18868e, AbstractC18710f abstractC18710f, AbstractC18738k abstractC18738k, a<AbstractC18705d> aVar, @Named("UI") f fVar) {
        super(fVar);
        l.e(abstractC19223c0, "resourceProvider");
        l.e(abstractC18868e, "callReasonRepository");
        l.e(abstractC18710f, "availabilityManager");
        l.e(abstractC18738k, "contextCallPromoManager");
        l.e(aVar, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(fVar, "uiContext");
        this.f52335e = abstractC19223c0;
        this.f52336f = abstractC18868e;
        this.f52337g = abstractC18710f;
        this.f52338h = abstractC18738k;
        this.f52339i = aVar;
        this.f52340j = fVar;
    }

    /* renamed from: Ij */
    public final void m14782Ij() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C18565a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: Qb */
    public void mo14775Qb() {
        m14782Ij();
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.o.a.c.l] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(AbstractC18569l abstractC18569l) {
        ContextCallAnalyticsContext mo14766Q3;
        AbstractC18569l abstractC18569l2 = abstractC18569l;
        l.e(abstractC18569l2, "presenterView");
        this.f57683a = abstractC18569l2;
        this.f52338h.mo14573a();
        AbstractC18569l abstractC18569l3 = (AbstractC18569l) this.f57683a;
        if (abstractC18569l3 == null || (mo14766Q3 = abstractC18569l3.mo14766Q3()) == null) {
            return;
        }
        ((AbstractC18705d) this.f52339i.get()).mo14616a("OnBoardingContextCallSetup", s1.u.i.W(new k[]{new k("Source", mo14766Q3.getValue()), new k("Context", "ManageReasonScreen")}));
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x001f, code lost:
        if (r6 != null) goto L11;
     */
    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: c1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo14774c1(boolean r4) {
        /*
            r3 = this;
            r0 = r4
            if (r0 == 0) goto L2f
            r0 = r3
            PV r0 = r0.f57683a
            e.a.o.a.c.l r0 = (p193e.p194a.p1080o.p1081a.p1087c.AbstractC18569l) r0
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L2f
            r0 = r3
            e.a.o.a.c.m r0 = r0.f52334d
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L25
            r0 = r6
            java.lang.String r0 = r0.f52347b
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L25
            goto L28
        L25:
            java.lang.String r0 = ""
            r6 = r0
        L28:
            r0 = r5
            r1 = r6
            r0.mo14764gq(r1)
        L2f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1087c.C18564i.mo14774c1(boolean):void");
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: g2 */
    public void mo14773g2(AbstractC18562g abstractC18562g) {
        AbstractC18569l abstractC18569l;
        l.e(abstractC18562g, "manageCallReasonItem");
        if (!(abstractC18562g instanceof C18558c)) {
            abstractC18562g = null;
        }
        C18558c c18558c = (C18558c) abstractC18562g;
        if (c18558c != null) {
            l.e(c18558c, "$this$mapToCallReason");
            String str = c18558c.f52325b;
            CallReason callReason = null;
            if (str != null) {
                callReason = new CallReason(c18558c.f52324a, str);
            }
            if (callReason == null || (abstractC18569l = (AbstractC18569l) this.f57683a) == null) {
                return;
            }
            abstractC18569l.mo14765Uw(callReason);
        }
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: l6 */
    public void mo14772l6() {
        m14782Ij();
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    public void onResume() {
        m14782Ij();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0037  */
    /* JADX WARN: Removed duplicated region for block: B:12:? A[RETURN, SYNTHETIC] */
    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: ue */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo14771ue(p193e.p194a.p1080o.p1081a.p1087c.AbstractC18562g r10) {
        /*
            r9 = this;
            r0 = r10
            java.lang.String r1 = "manageCallReasonItem"
            s1.z.c.l.e(r0, r1)
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p1080o.p1081a.p1087c.C18558c
            if (r0 == 0) goto L31
            r0 = r10
            e.a.o.a.c.c r0 = (p193e.p194a.p1080o.p1081a.p1087c.C18558c) r0
            r11 = r0
            r0 = r11
            java.lang.String r1 = "$this$mapToCallReason"
            s1.z.c.l.e(r0, r1)
            r0 = r11
            java.lang.String r0 = r0.f52325b
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L31
            com.truecaller.contextcall.db.reason.CallReason r0 = new com.truecaller.contextcall.db.reason.CallReason
            r1 = r0
            r2 = r11
            int r2 = r2.f52324a
            r3 = r10
            r1.<init>(r2, r3)
            r10 = r0
            goto L33
        L31:
            r0 = 0
            r10 = r0
        L33:
            r0 = r10
            if (r0 == 0) goto L4a
            r0 = r9
            r1 = 0
            r2 = 0
            e.a.o.a.c.i$b r3 = new e.a.o.a.c.i$b
            r4 = r3
            r5 = r9
            r6 = r10
            r7 = 0
            r4.<init>(r6, r7)
            r4 = 3
            r5 = 0
            q3.a.p1 r0 = s1.a.a.a.v0.f.d.w2(r0, r1, r2, r3, r4, r5)
        L4a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1080o.p1081a.p1087c.C18564i.mo14771ue(e.a.o.a.c.g):void");
    }

    @Override // p193e.p194a.p1080o.p1081a.p1087c.AbstractC18568k
    /* renamed from: z3 */
    public void mo14770z3(AbstractC18562g abstractC18562g) {
        AbstractC18569l abstractC18569l;
        l.e(abstractC18562g, "manageCallReasonItem");
        if (abstractC18562g instanceof C18570m) {
            C18570m c18570m = (C18570m) abstractC18562g;
            this.f52334d = c18570m;
            AbstractC18569l abstractC18569l2 = (AbstractC18569l) this.f57683a;
            if (C12864a2.m22540r(abstractC18569l2 != null ? Boolean.valueOf(abstractC18569l2.mo14769Hr()) : null) || (abstractC18569l = (AbstractC18569l) this.f57683a) == null) {
                return;
            }
            abstractC18569l.mo14764gq(c18570m.f52347b);
        }
    }
}
