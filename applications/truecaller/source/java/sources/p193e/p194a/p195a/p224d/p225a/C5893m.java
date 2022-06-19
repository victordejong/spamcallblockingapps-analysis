package p193e.p194a.p195a.p224d.p225a;

import android.net.Uri;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19057m;
import p193e.p194a.p1129p5.AbstractC19218a;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1187r2.AbstractC19854f;
import p193e.p194a.p1187r2.AbstractC19868j;
import p193e.p194a.p195a.p244k.p245a.AbstractC6653z0;
import p193e.p194a.p195a.p244k.p245a.C6540d2;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6485m;
import q3.a.i0;
import q3.a.j0;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
/* renamed from: e.a.a.d.a.m */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m.class */
public final class C5893m extends AbstractC5884f {

    /* renamed from: g */
    public String f19674g;

    /* renamed from: h */
    public Uri f19675h;

    /* renamed from: i */
    public final f f19676i;

    /* renamed from: j */
    public final f f19677j;

    /* renamed from: k */
    public final AbstractC19868j f19678k;

    /* renamed from: l */
    public final AbstractC19854f<AbstractC6485m> f19679l;

    /* renamed from: m */
    public final AbstractC19219a0 f19680m;

    /* renamed from: n */
    public final AbstractC6653z0 f19681n;

    /* renamed from: o */
    public final AbstractC19057m f19682o;

    /* renamed from: p */
    public final AbstractC19218a f19683p;

    /* renamed from: q */
    public final AbstractC19321u f19684q;

    /* renamed from: r */
    public final AbstractC5883e f19685r;

    /* renamed from: s */
    public final AbstractC19462a f19686s;

    @e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter", f = "NewImGroupPresenter.kt", l = {211}, m = "getUploadedAvatarUri")
    /* renamed from: e.a.a.d.a.m$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m$a.class */
    public static final class C5894a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f19687d;

        /* renamed from: e */
        public int f19688e;

        /* renamed from: g */
        public Object f19690g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5894a(d dVar) {
            super(dVar);
            C5893m.this = r4;
        }

        /* renamed from: s */
        public final Object m32256s(Object obj) {
            this.f19687d = obj;
            this.f19688e |= Integer.MIN_VALUE;
            return C5893m.this.m32263Tj(null, this);
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$getUploadedAvatarUri$uploadResult$1", f = "NewImGroupPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.a.m$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m$b.class */
    public static final class C5895b extends i implements p<i0, d<? super C6540d2>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f19692f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5895b(c0 c0Var, d dVar) {
            super(2, dVar);
            C5893m.this = r5;
            this.f19692f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m32255i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5895b(this.f19692f, dVar);
        }

        /* renamed from: k */
        public final Object m32254k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5893m c5893m = C5893m.this;
            c0 c0Var = this.f19692f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            Uri mo14173e = c5893m.f19682o.mo14173e((Uri) c0Var.a, 640, 50);
            C6540d2 mo30600a = c5893m.f19681n.mo30600a(mo14173e);
            c5893m.f19682o.mo14177a(mo14173e);
            return mo30600a;
        }

        /* renamed from: s */
        public final Object m32253s(Object obj) {
            C25225a.m3932a3(obj);
            Uri mo14173e = C5893m.this.f19682o.mo14173e((Uri) this.f19692f.a, 640, 50);
            C6540d2 mo30600a = C5893m.this.f19681n.mo30600a(mo14173e);
            C5893m.this.f19682o.mo14177a(mo14173e);
            return mo30600a;
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$onDoneClicked$1", f = "NewImGroupPresenter.kt", l = {109}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.a.m$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m$c.class */
    public static final class C5896c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f19693e;

        /* renamed from: f */
        public int f19694f;

        /* renamed from: h */
        public final /* synthetic */ AbstractC5885g f19696h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5896c(AbstractC5885g abstractC5885g, d dVar) {
            super(2, dVar);
            C5893m.this = r5;
            this.f19696h = abstractC5885g;
        }

        /* renamed from: i */
        public final d<s> m32252i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5896c(this.f19696h, dVar);
        }

        /* renamed from: k */
        public final Object m32251k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5896c(this.f19696h, dVar).m32250s(s.a);
        }

        /* renamed from: s */
        public final Object m32250s(Object obj) {
            String str;
            a aVar = a.a;
            int i = this.f19694f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5893m c5893m = C5893m.this;
                str = c5893m.f19674g;
                if (str != null) {
                    this.f19693e = str;
                    this.f19694f = 1;
                    c0 c0Var = new c0();
                    Uri uri = c5893m.f19675h;
                    if (uri != null) {
                        c0Var.a = uri;
                        obj = s1.a.a.a.v0.f.d.a4(c5893m.f19676i, new C5892l(c5893m, c0Var, null), this);
                    } else {
                        obj = null;
                    }
                    if (obj == aVar) {
                        return aVar;
                    }
                }
                return s.a;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                str = (String) this.f19693e;
                C25225a.m3932a3(obj);
            }
            Uri uri2 = (Uri) obj;
            AbstractC5885g abstractC5885g = this.f19696h;
            Participant[] participantArr = C5893m.this.f19657d;
            ArrayList<Participant> arrayList = null;
            if (participantArr != null) {
                arrayList = new ArrayList<>();
                C25225a.m3927b3(participantArr, arrayList);
            }
            abstractC5885g.mo32296Vb(str, uri2, arrayList);
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$performCenterCrop$1", f = "NewImGroupPresenter.kt", l = {173}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.a.m$d */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m$d.class */
    public static final class C5897d extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public Object f19697e;

        /* renamed from: f */
        public int f19698f;

        /* renamed from: h */
        public final /* synthetic */ Uri f19700h;

        @e(c = "com.truecaller.messaging.newconversation.newimgroup.NewImGroupPresenter$performCenterCrop$1$1", f = "NewImGroupPresenter.kt", l = {}, m = "invokeSuspend")
        /* renamed from: e.a.a.d.a.m$d$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/m$d$a.class */
        public static final class C5898a extends i implements p<i0, d<? super Uri>, Object> {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C5898a(d dVar) {
                super(2, dVar);
                C5897d.this = r5;
            }

            /* renamed from: i */
            public final d<s> m32246i(Object obj, d<?> dVar) {
                l.e(dVar, "completion");
                return new C5898a(dVar);
            }

            /* renamed from: k */
            public final Object m32245k(Object obj, Object obj2) {
                d dVar = (d) obj2;
                l.e(dVar, "completion");
                C5897d c5897d = C5897d.this;
                dVar.getContext();
                C25225a.m3932a3(s.a);
                return C5893m.this.f19683p.mo13833a(c5897d.f19700h, 640);
            }

            /* renamed from: s */
            public final Object m32244s(Object obj) {
                C25225a.m3932a3(obj);
                C5897d c5897d = C5897d.this;
                return C5893m.this.f19683p.mo13833a(c5897d.f19700h, 640);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5897d(Uri uri, d dVar) {
            super(2, dVar);
            C5893m.this = r5;
            this.f19700h = uri;
        }

        /* renamed from: i */
        public final d<s> m32249i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5897d(this.f19700h, dVar);
        }

        /* renamed from: k */
        public final Object m32248k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C5897d(this.f19700h, dVar).m32247s(s.a);
        }

        /* renamed from: s */
        public final Object m32247s(Object obj) {
            Object obj2;
            C5893m c5893m;
            AbstractC5885g abstractC5885g;
            a aVar = a.a;
            int i = this.f19698f;
            if (i == 0) {
                C25225a.m3932a3(obj);
                C5893m c5893m2 = C5893m.this;
                f fVar = c5893m2.f19676i;
                C5898a c5898a = new C5898a(null);
                this.f19697e = c5893m2;
                this.f19698f = 1;
                obj2 = s1.a.a.a.v0.f.d.a4(fVar, c5898a, this);
                if (obj2 == aVar) {
                    return aVar;
                }
                c5893m = c5893m2;
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                c5893m = (C5893m) this.f19697e;
                C25225a.m3932a3(obj);
                obj2 = obj;
            }
            c5893m.f19675h = (Uri) obj2;
            C5893m c5893m3 = C5893m.this;
            Uri uri = c5893m3.f19675h;
            if (uri != null && (abstractC5885g = (AbstractC5885g) c5893m3.f57683a) != null) {
                abstractC5885g.mo32301Ks(uri);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5893m(@Named("IO") f fVar, @Named("UI") f fVar2, @Named("ui_thread") AbstractC19868j abstractC19868j, AbstractC19854f<AbstractC6485m> abstractC19854f, AbstractC19219a0 abstractC19219a0, AbstractC6653z0 abstractC6653z0, AbstractC19057m abstractC19057m, AbstractC19218a abstractC19218a, AbstractC19321u abstractC19321u, AbstractC5883e abstractC5883e, AbstractC19462a abstractC19462a) {
        super(fVar2);
        l.e(fVar, "asyncContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC19868j, "uiThread");
        l.e(abstractC19854f, "imGroupManager");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC6653z0, "imUploadFileManager");
        l.e(abstractC19057m, "bitmapConverter");
        l.e(abstractC19218a, "bitmapUtil");
        l.e(abstractC19321u, "networkUtil");
        l.e(abstractC5883e, "groupParticipantPresenter");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f19676i = fVar;
        this.f19677j = fVar2;
        this.f19678k = abstractC19868j;
        this.f19679l = abstractC19854f;
        this.f19680m = abstractC19219a0;
        this.f19681n = abstractC6653z0;
        this.f19682o = abstractC19057m;
        this.f19683p = abstractC19218a;
        this.f19684q = abstractC19321u;
        this.f19685r = abstractC5883e;
        this.f19686s = abstractC19462a;
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Ij */
    public void mo32274Ij() {
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            if (this.f19680m.mo13825h("android.permission.CAMERA")) {
                abstractC5885g.mo32298Q0();
            } else if (abstractC5885g.mo32287k("android.permission.CAMERA")) {
                abstractC5885g.mo32294Z0(2131887172, C2752R.string.PermissionDialog_camera);
            } else {
                abstractC5885g.mo32300M5("android.permission.CAMERA", 0);
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Jj */
    public void mo32273Jj() {
        ImGroupInfo imGroupInfo;
        String str;
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            if (!m32259Xj(this.f19674g)) {
                abstractC5885g.mo32297To(C2752R.string.NewImGroupNameError);
                return;
            }
            String str2 = this.f19659f;
            if (str2 == null) {
                return;
            }
            int hashCode = str2.hashCode();
            if (hashCode != -1424083893) {
                if (hashCode != 1505483517 || !str2.equals("im_group_mode_create")) {
                    return;
                }
                s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5896c(abstractC5885g, null), 3, (Object) null);
            } else if (!str2.equals("im_group_mode_edit")) {
            } else {
                if (!this.f19684q.mo13429d()) {
                    abstractC5885g.mo32297To(2131886717);
                    return;
                }
                abstractC5885g.mo32289f(true);
                if (!m32261Vj() && !m32260Wj()) {
                    m32257Zj(Boolean.TRUE);
                    return;
                }
                String str3 = this.f19674g;
                if (str3 == null || (imGroupInfo = this.f19658e) == null || (str = imGroupInfo.f13319a) == null) {
                    return;
                }
                s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5891k(this, str, str3, null), 3, (Object) null);
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Kj */
    public void mo32272Kj() {
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            if (this.f19680m.mo13825h("android.permission.READ_EXTERNAL_STORAGE")) {
                abstractC5885g.mo32299N0();
            } else if (abstractC5885g.mo32287k("android.permission.READ_EXTERNAL_STORAGE")) {
                abstractC5885g.mo32294Z0(C2752R.string.PermissionDialog_read_storage_reason, C2752R.string.PermissionDialog_read_storage);
            } else {
                abstractC5885g.mo32300M5("android.permission.READ_EXTERNAL_STORAGE", 1);
            }
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Lj */
    public void mo32271Lj(Uri uri) {
        s sVar;
        if (uri != null) {
            AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
            if (abstractC5885g != null) {
                abstractC5885g.mo32291cq(uri);
                sVar = s.a;
            } else {
                sVar = null;
            }
            if (sVar != null) {
                return;
            }
        }
        AbstractC5885g abstractC5885g2 = (AbstractC5885g) this.f57683a;
        if (abstractC5885g2 != null) {
            abstractC5885g2.mo32297To(2131887634);
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Mj */
    public void mo32270Mj(Uri uri) {
        this.f19675h = uri;
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            abstractC5885g.mo32301Ks(uri);
        }
        AbstractC5885g abstractC5885g2 = (AbstractC5885g) this.f57683a;
        if (abstractC5885g2 != null) {
            abstractC5885g2.mo32288fp(m32262Uj());
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Nj */
    public void mo32269Nj() {
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            abstractC5885g.mo32305C();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Oj */
    public void mo32268Oj() {
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            abstractC5885g.mo32302Kp(this.f19675h != null);
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Pj */
    public void mo32267Pj(String str) {
        this.f19674g = v.g0(str).toString();
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            abstractC5885g.mo32288fp(m32262Uj());
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Qj */
    public void mo32266Qj() {
        AbstractC5885g abstractC5885g;
        AbstractC5885g abstractC5885g2;
        String str = this.f19659f;
        if (str == null) {
            return;
        }
        int hashCode = str.hashCode();
        if (hashCode == -1424083893) {
            if (!str.equals("im_group_mode_edit") || (abstractC5885g = (AbstractC5885g) this.f57683a) == null) {
                return;
            }
            abstractC5885g.mo32305C();
        } else if (hashCode != 1505483517 || !str.equals("im_group_mode_create") || (abstractC5885g2 = (AbstractC5885g) this.f57683a) == null) {
        } else {
            abstractC5885g2.mo32290d0();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Rj */
    public void mo32265Rj(int i, String[] strArr, int[] iArr) {
        AbstractC5885g abstractC5885g;
        AbstractC5885g abstractC5885g2;
        l.e(strArr, "permissions");
        l.e(iArr, "grantResults");
        if (i == 0) {
            if (!(!(iArr.length == 0)) || iArr[0] != 0 || (abstractC5885g = (AbstractC5885g) this.f57683a) == null) {
                return;
            }
            abstractC5885g.mo32298Q0();
        } else if (i != 1) {
        } else {
            if (!(!(iArr.length == 0)) || iArr[0] != 0 || (abstractC5885g2 = (AbstractC5885g) this.f57683a) == null) {
                return;
            }
            abstractC5885g2.mo32299N0();
        }
    }

    @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5884f
    /* renamed from: Sj */
    public void mo32264Sj(Uri uri) {
        l.e(uri, "uri");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C5897d(uri, null), 3, (Object) null);
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00bf  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00c4  */
    /* renamed from: Tj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32263Tj(android.net.Uri r7, s1.w.d<? super java.lang.String> r8) {
        /*
            Method dump skipped, instructions count: 267
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.p225a.C5893m.m32263Tj(android.net.Uri, s1.w.d):java.lang.Object");
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0065, code lost:
        if (m32259Xj(r3.f19674g) != false) goto L21;
     */
    /* renamed from: Uj */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m32262Uj() {
        /*
            r3 = this;
            r0 = r3
            java.lang.String r0 = r0.f19659f
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 != 0) goto L10
            r0 = r5
            r6 = r0
            goto L6a
        L10:
            r0 = r4
            int r0 = r0.hashCode()
            r7 = r0
            r0 = r7
            r1 = -1424083893(0xffffffffab1e344b, float:-5.6205447E-13)
            if (r0 == r1) goto L40
            r0 = r7
            r1 = 1505483517(0x59bbdafd, float:6.6095751E15)
            if (r0 == r1) goto L29
            r0 = r5
            r6 = r0
            goto L6a
        L29:
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.String r1 = "im_group_mode_create"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6a
            r0 = r3
            r1 = r3
            java.lang.String r1 = r1.f19674g
            boolean r0 = r0.m32259Xj(r1)
            r6 = r0
            goto L6a
        L40:
            r0 = r5
            r6 = r0
            r0 = r4
            java.lang.String r1 = "im_group_mode_edit"
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L6a
            r0 = r3
            boolean r0 = r0.m32260Wj()
            if (r0 != 0) goto L68
            r0 = r5
            r6 = r0
            r0 = r3
            boolean r0 = r0.m32261Vj()
            if (r0 == 0) goto L6a
            r0 = r5
            r6 = r0
            r0 = r3
            r1 = r3
            java.lang.String r1 = r1.f19674g
            boolean r0 = r0.m32259Xj(r1)
            if (r0 == 0) goto L6a
        L68:
            r0 = 1
            r6 = r0
        L6a:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.p225a.C5893m.m32262Uj():boolean");
    }

    /* renamed from: Vj */
    public final boolean m32261Vj() {
        ImGroupInfo imGroupInfo = this.f19658e;
        Uri uri = null;
        if (imGroupInfo != null) {
            String str = imGroupInfo.f13321c;
            uri = null;
            if (str != null) {
                if (!(!l.a(str, ""))) {
                    str = null;
                }
                uri = null;
                if (str != null) {
                    uri = Uri.parse(str);
                }
            }
        }
        return !l.a(uri, this.f19675h);
    }

    /* renamed from: Wj */
    public final boolean m32260Wj() {
        ImGroupInfo imGroupInfo;
        boolean z = true;
        if (!(!l.a(this.f19658e != null ? imGroupInfo.f13320b : null, this.f19674g)) || !m32259Xj(this.f19674g)) {
            z = false;
        }
        return z;
    }

    /* renamed from: Xj */
    public final boolean m32259Xj(String str) {
        boolean z = false;
        if (!(str == null || str.length() == 0)) {
            z = false;
            if (str.length() >= 1) {
                z = false;
                if (str.length() <= 25) {
                    z = true;
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x0116  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x012c  */
    /* JADX WARN: Removed duplicated region for block: B:49:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.d.a.g] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo9029Y0(java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p224d.p225a.C5893m.mo9029Y0(java.lang.Object):void");
    }

    /* renamed from: Yj */
    public final void m32258Yj(String str) {
        AbstractC19462a abstractC19462a = this.f19686s;
        LinkedHashMap m8655X = C22128a.m8655X("ImGroupInfoEdit", "type");
        C22128a.m8684N0("ImGroupInfoEdit", C22128a.m8652Y("type", AnalyticsConstants.NAME, str, "value", m8655X, "type", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* renamed from: Zj */
    public final void m32257Zj(Boolean bool) {
        AbstractC5885g abstractC5885g = (AbstractC5885g) this.f57683a;
        if (abstractC5885g != null) {
            abstractC5885g.mo32289f(false);
            if (!l.a(bool, Boolean.TRUE)) {
                abstractC5885g.mo32297To(C2752R.string.NewImGroupUpdateError);
                return;
            }
            abstractC5885g.mo32305C();
            if (m32260Wj()) {
                m32258Yj(AnalyticsConstants.NAME);
            }
            if (!m32261Vj()) {
                return;
            }
            m32258Yj("picture");
        }
    }
}
