package p193e.p194a.p1146q2.p1154x0;

import com.truecaller.analytics.call.BlockingAction;
import com.truecaller.blocking.FilterAction;
import com.truecaller.settings.CallingSettings;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1114o5.AbstractC19093r;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19563b;
import p193e.p194a.p1146q2.p1152w0.p1153h.C19564c;
import p193e.p194a.p372b0.p430q.AbstractC8621z;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.q2.x0.b */
/* loaded from: classes5-dex2jar.jar:e/a/q2/x0/b.class */
public final class C19588b implements AbstractC19563b {

    /* renamed from: a */
    public final f f54443a;

    /* renamed from: b */
    public final AbstractC19093r f54444b;

    /* renamed from: c */
    public final C16461b f54445c;

    /* renamed from: d */
    public final AbstractC8621z f54446d;

    /* renamed from: e */
    public final C19595f f54447e;

    /* renamed from: f */
    public final CallingSettings f54448f;

    /* renamed from: g */
    public final AbstractC19219a0 f54449g;

    @e(c = "com.truecaller.analytics.callanalytics.CallAnalyticsContactHelperImpl$resolveBlockingAction$2", f = "CallAnalyticsContactHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q2.x0.b$a */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/x0/b$a.class */
    public static final class C19589a extends i implements p<i0, d<? super BlockingAction>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f54451f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19589a(String str, d dVar) {
            super(2, dVar);
            C19588b.this = r5;
            this.f54451f = str;
        }

        /* renamed from: i */
        public final d<s> m13131i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19589a(this.f54451f, dVar);
        }

        /* renamed from: k */
        public final Object m13130k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19588b c19588b = C19588b.this;
            String str = this.f54451f;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c19588b.f54448f.getBoolean("truecaller.call_in_progress") ? BlockingAction.NONE : c19588b.f54447e.m13119a(str).f10453b != FilterAction.FILTER_BLACKLISTED ? BlockingAction.NONE : (c19588b.f54448f.mo8949z() != CallingSettings.BlockMethod.Reject || !c19588b.f54449g.mo13825h("android.permission.CALL_PHONE")) ? BlockingAction.SILENT_RING : BlockingAction.AUTO_BLOCK;
        }

        /* renamed from: s */
        public final Object m13129s(Object obj) {
            C25225a.m3932a3(obj);
            if (!C19588b.this.f54448f.getBoolean("truecaller.call_in_progress") && C19588b.this.f54447e.m13119a(this.f54451f).f10453b == FilterAction.FILTER_BLACKLISTED) {
                return (C19588b.this.f54448f.mo8949z() != CallingSettings.BlockMethod.Reject || !C19588b.this.f54449g.mo13825h("android.permission.CALL_PHONE")) ? BlockingAction.SILENT_RING : BlockingAction.AUTO_BLOCK;
            }
            return BlockingAction.NONE;
        }
    }

    @e(c = "com.truecaller.analytics.callanalytics.CallAnalyticsContactHelperImpl$resolveContactInfo$2", f = "CallAnalyticsContactHelperImpl.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q2.x0.b$b */
    /* loaded from: classes5-dex2jar.jar:e/a/q2/x0/b$b.class */
    public static final class C19590b extends i implements p<i0, d<? super C19564c>, Object> {

        /* renamed from: f */
        public final /* synthetic */ String f54453f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19590b(String str, d dVar) {
            super(2, dVar);
            C19588b.this = r5;
            this.f54453f = str;
        }

        /* renamed from: i */
        public final d<s> m13128i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19590b(this.f54453f, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00cc  */
        /* renamed from: k */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13127k(java.lang.Object r6, java.lang.Object r7) {
            /*
                r5 = this;
                r0 = r7
                s1.w.d r0 = (s1.w.d) r0
                r6 = r0
                r0 = r6
                java.lang.String r1 = "completion"
                s1.z.c.l.e(r0, r1)
                r0 = r5
                e.a.q2.x0.b r0 = p193e.p194a.p1146q2.p1154x0.C19588b.this
                r7 = r0
                r0 = r5
                java.lang.String r0 = r0.f54453f
                r8 = r0
                r0 = r6
                s1.w.f r0 = r0.getContext()
                s1.s r0 = s1.s.a
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r8
                if (r0 == 0) goto L34
                r0 = r7
                e.a.b0.q.z r0 = r0.f54446d
                r1 = r8
                java.lang.String r0 = r0.mo28181j(r1)
                r6 = r0
                goto L36
            L34:
                r0 = 0
                r6 = r0
            L36:
                r0 = r7
                e.a.k3.j.b r0 = r0.f54445c
                r1 = r6
                com.truecaller.data.entity.Contact r0 = r0.m17364h(r1)
                r9 = r0
                r0 = r7
                e.a.q2.x0.f r0 = r0.f54447e
                r1 = r6
                com.truecaller.blocking.FilterMatch r0 = r0.m13119a(r1)
                r10 = r0
                r0 = r7
                e.a.o5.r r0 = r0.f54444b
                r1 = r8
                boolean r0 = r0.mo14115b(r1)
                if (r0 == 0) goto L5e
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.PHONEBOOK
                r7 = r0
                goto L62
            L5e:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.SERVER
                r7 = r0
            L62:
                r0 = r10
                com.truecaller.blocking.ActionSource r0 = r0.f10454c
                int r0 = r0.ordinal()
                r11 = r0
                r0 = 0
                r12 = r0
                r0 = r11
                switch(r0) {
                    case 6: goto Lba;
                    case 7: goto Lb3;
                    case 8: goto Lb3;
                    case 9: goto Lb3;
                    case 10: goto Lac;
                    default: goto L94;
                }
            L94:
                r0 = r7
                r6 = r0
                r0 = r9
                if (r0 == 0) goto Lc4
                r0 = r7
                r6 = r0
                r0 = r9
                boolean r0 = r0.m35501q0()
                if (r0 != 0) goto Lc4
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.NO_HIT
                r6 = r0
                goto Lc4
            Lac:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.USER_WHITELIST
                r6 = r0
                goto Lc4
            Lb3:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.USER_SPAMMER
                r6 = r0
                goto Lbe
            Lba:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.TOP_SPAMMER
                r6 = r0
            Lbe:
                r0 = 1
                r11 = r0
                goto Lc7
            Lc4:
                r0 = 0
                r11 = r0
            Lc7:
                r0 = r11
                if (r0 != 0) goto Ld6
                r0 = r9
                r1 = r10
                boolean r0 = p193e.p194a.p1114o5.C19103t.m14103j(r0, r1)
                if (r0 == 0) goto Ld9
            Ld6:
                r0 = 1
                r12 = r0
            Ld9:
                e.a.q2.w0.h.c r0 = new e.a.q2.w0.h.c
                r1 = r0
                r2 = r6
                r3 = r12
                r1.<init>(r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1154x0.C19588b.C19590b.m13127k(java.lang.Object, java.lang.Object):java.lang.Object");
        }

        /* JADX WARN: Removed duplicated region for block: B:24:0x00c0  */
        /* renamed from: s */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object m13126s(java.lang.Object r6) {
            /*
                r5 = this;
                r0 = r6
                p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
                r0 = r5
                java.lang.String r0 = r0.f54453f
                r6 = r0
                r0 = r6
                if (r0 == 0) goto L1e
                r0 = r5
                e.a.q2.x0.b r0 = p193e.p194a.p1146q2.p1154x0.C19588b.this
                e.a.b0.q.z r0 = r0.f54446d
                r1 = r6
                java.lang.String r0 = r0.mo28181j(r1)
                r6 = r0
                goto L20
            L1e:
                r0 = 0
                r6 = r0
            L20:
                r0 = r5
                e.a.q2.x0.b r0 = p193e.p194a.p1146q2.p1154x0.C19588b.this
                e.a.k3.j.b r0 = r0.f54445c
                r1 = r6
                com.truecaller.data.entity.Contact r0 = r0.m17364h(r1)
                r7 = r0
                r0 = r5
                e.a.q2.x0.b r0 = p193e.p194a.p1146q2.p1154x0.C19588b.this
                e.a.q2.x0.f r0 = r0.f54447e
                r1 = r6
                com.truecaller.blocking.FilterMatch r0 = r0.m13119a(r1)
                r8 = r0
                r0 = r5
                e.a.q2.x0.b r0 = p193e.p194a.p1146q2.p1154x0.C19588b.this
                e.a.o5.r r0 = r0.f54444b
                r1 = r5
                java.lang.String r1 = r1.f54453f
                boolean r0 = r0.mo14115b(r1)
                if (r0 == 0) goto L53
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.PHONEBOOK
                r9 = r0
                goto L58
            L53:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.SERVER
                r9 = r0
            L58:
                r0 = r8
                com.truecaller.blocking.ActionSource r0 = r0.f10454c
                int r0 = r0.ordinal()
                r10 = r0
                r0 = 0
                r11 = r0
                r0 = r10
                switch(r0) {
                    case 6: goto Lae;
                    case 7: goto La7;
                    case 8: goto La7;
                    case 9: goto La7;
                    case 10: goto La0;
                    default: goto L88;
                }
            L88:
                r0 = r9
                r6 = r0
                r0 = r7
                if (r0 == 0) goto Lb8
                r0 = r9
                r6 = r0
                r0 = r7
                boolean r0 = r0.m35501q0()
                if (r0 != 0) goto Lb8
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.NO_HIT
                r6 = r0
                goto Lb8
            La0:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.USER_WHITELIST
                r6 = r0
                goto Lb8
            La7:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.USER_SPAMMER
                r6 = r0
                goto Lb2
            Lae:
                com.truecaller.analytics.call.CallContactSource r0 = com.truecaller.analytics.call.CallContactSource.TOP_SPAMMER
                r6 = r0
            Lb2:
                r0 = 1
                r10 = r0
                goto Lbb
            Lb8:
                r0 = 0
                r10 = r0
            Lbb:
                r0 = r10
                if (r0 != 0) goto Lc8
                r0 = r7
                r1 = r8
                boolean r0 = p193e.p194a.p1114o5.C19103t.m14103j(r0, r1)
                if (r0 == 0) goto Lcb
            Lc8:
                r0 = 1
                r11 = r0
            Lcb:
                e.a.q2.w0.h.c r0 = new e.a.q2.w0.h.c
                r1 = r0
                r2 = r6
                r3 = r11
                r1.<init>(r2, r3)
                return r0
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p1146q2.p1154x0.C19588b.C19590b.m13126s(java.lang.Object):java.lang.Object");
        }
    }

    @Inject
    public C19588b(@Named("IO") f fVar, AbstractC19093r abstractC19093r, C16461b c16461b, AbstractC8621z abstractC8621z, C19595f c19595f, CallingSettings callingSettings, AbstractC19219a0 abstractC19219a0) {
        l.e(fVar, "asyncContext");
        l.e(abstractC19093r, "contactManagerSync");
        l.e(c16461b, "aggregatedContactDao");
        l.e(abstractC8621z, "numberHelper");
        l.e(c19595f, "callAnalyticsUtil");
        l.e(callingSettings, "callingSettings");
        l.e(abstractC19219a0, "permissionUtil");
        this.f54443a = fVar;
        this.f54444b = abstractC19093r;
        this.f54445c = c16461b;
        this.f54446d = abstractC8621z;
        this.f54447e = c19595f;
        this.f54448f = callingSettings;
        this.f54449g = abstractC19219a0;
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19563b
    /* renamed from: a */
    public Object mo13133a(String str, d<? super C19564c> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f54443a, new C19590b(str, null), dVar);
    }

    @Override // p193e.p194a.p1146q2.p1152w0.p1153h.AbstractC19563b
    /* renamed from: b */
    public Object mo13132b(String str, d<? super BlockingAction> dVar) {
        return s1.a.a.a.v0.f.d.a4(this.f54443a, new C19589a(str, null), dVar);
    }
}
