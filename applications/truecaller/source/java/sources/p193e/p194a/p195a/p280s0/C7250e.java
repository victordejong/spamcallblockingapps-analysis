package p193e.p194a.p195a.p280s0;

import android.content.Context;
import android.content.Intent;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.defaultsms.DefaultSmsActivity;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19230g;
import p193e.p194a.p851h5.AbstractC14965w;
import p193e.p194a.p851h5.AbstractC14967y;
import q3.a.n;
import q3.a.o;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.a.s0.e */
/* loaded from: classes7-dex2jar.jar:e/a/a/s0/e.class */
public final class C7250e implements AbstractC7249d {

    /* renamed from: a */
    public l<? super Boolean, s> f23174a;

    /* renamed from: b */
    public final Context f23175b;

    /* renamed from: c */
    public final AbstractC19230g f23176c;

    /* renamed from: d */
    public final AbstractC14965w f23177d;

    /* renamed from: e */
    public final AbstractC14967y f23178e;

    @e(c = "com.truecaller.messaging.defaultsms.DefaultSmsHelperImpl", f = "DefaultSmsHelper.kt", l = {50, 51}, m = "requestDefaultSmsApp")
    /* renamed from: e.a.a.s0.e$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/s0/e$a.class */
    public static final class C7251a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23179d;

        /* renamed from: e */
        public int f23180e;

        /* renamed from: g */
        public Object f23182g;

        /* renamed from: h */
        public int f23183h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7251a(d dVar) {
            super(dVar);
            C7250e.this = r4;
        }

        /* renamed from: s */
        public final Object m29902s(Object obj) {
            this.f23179d = obj;
            this.f23180e |= Integer.MIN_VALUE;
            return C7250e.this.mo29906a(null, 0, false, this);
        }
    }

    /* renamed from: e.a.a.s0.e$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/s0/e$b.class */
    public static final class C7252b extends m implements l<Boolean, s> {

        /* renamed from: b */
        public final /* synthetic */ n f23184b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7252b(n nVar) {
            super(1);
            this.f23184b = nVar;
        }

        /* renamed from: d */
        public Object m29901d(Object obj) {
            this.f23184b.c(Boolean.valueOf(((Boolean) obj).booleanValue()));
            return s.a;
        }
    }

    @e(c = "com.truecaller.messaging.defaultsms.DefaultSmsHelperImpl", f = "DefaultSmsHelper.kt", l = {75}, m = "requestSmsPermissions")
    /* renamed from: e.a.a.s0.e$c */
    /* loaded from: classes7-dex2jar.jar:e/a/a/s0/e$c.class */
    public static final class C7253c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f23185d;

        /* renamed from: e */
        public int f23186e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7253c(d dVar) {
            super(dVar);
            C7250e.this = r4;
        }

        /* renamed from: s */
        public final Object m29900s(Object obj) {
            this.f23185d = obj;
            this.f23186e |= Integer.MIN_VALUE;
            return C7250e.this.m29903d(0, this);
        }
    }

    @Inject
    public C7250e(Context context, AbstractC19230g abstractC19230g, AbstractC14965w abstractC14965w, AbstractC14967y abstractC14967y) {
        s1.z.c.l.e(context, AnalyticsConstants.CONTEXT);
        s1.z.c.l.e(abstractC19230g, "deviceInfoUtil");
        s1.z.c.l.e(abstractC14965w, "permissionsUtil");
        s1.z.c.l.e(abstractC14967y, "permissionsView");
        this.f23175b = context;
        this.f23176c = abstractC19230g;
        this.f23177d = abstractC14965w;
        this.f23178e = abstractC14967y;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x008f A[Catch: all -> 0x0111, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000a, B:9:0x0020, B:11:0x0031, B:13:0x003f, B:20:0x0064, B:21:0x006c, B:22:0x0077, B:24:0x007a, B:25:0x008f, B:29:0x009f, B:38:0x00cd, B:40:0x00d8, B:48:0x00fd), top: B:60:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d8 A[Catch: all -> 0x0111, TRY_LEAVE, TryCatch #0 {, blocks: (B:4:0x0002, B:6:0x000a, B:9:0x0020, B:11:0x0031, B:13:0x003f, B:20:0x0064, B:21:0x006c, B:22:0x0077, B:24:0x007a, B:25:0x008f, B:29:0x009f, B:38:0x00cd, B:40:0x00d8, B:48:0x00fd), top: B:60:0x0002 }] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0108  */
    @Override // p193e.p194a.p195a.p280s0.AbstractC7249d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo29906a(java.lang.String r7, int r8, boolean r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            Method dump skipped, instructions count: 278
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p280s0.C7250e.mo29906a(java.lang.String, int, boolean, s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p195a.p280s0.AbstractC7249d
    /* renamed from: b */
    public void mo29905b(boolean z) {
        synchronized (this) {
            l<? super Boolean, s> lVar = this.f23174a;
            if (lVar != null) {
                s sVar = (s) lVar.d(Boolean.valueOf(z));
            }
            this.f23174a = null;
        }
    }

    /* renamed from: c */
    public final Object m29904c(String str, int i, boolean z, d<? super Boolean> dVar) {
        if (this.f23176c.mo13794c()) {
            return Boolean.TRUE;
        }
        String string = z ? this.f23175b.getString(i) : null;
        Context context = this.f23175b;
        int i2 = DefaultSmsActivity.f13485b;
        Intent intent = new Intent(context, DefaultSmsActivity.class);
        intent.putExtra("AppUserInteraction.Context", str);
        intent.putExtra("DEFAULT_SMS_APP_URI_CONTEXT", (String) null);
        intent.putExtra("PREP_MESSAGE", string);
        Intent addFlags = intent.addFlags(268435456);
        s1.z.c.l.d(addFlags, "DefaultSmsActivity.creat…t.FLAG_ACTIVITY_NEW_TASK)");
        this.f23175b.startActivity(addFlags);
        o oVar = new o(C25225a.m3844s1(dVar), 1);
        oVar.z();
        this.f23174a = new C7252b(oVar);
        Object y = oVar.y();
        if (y == a.a) {
            s1.z.c.l.e(dVar, "frame");
        }
        return y;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0047  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0060  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m29903d(int r9, s1.w.d<? super java.lang.Boolean> r10) {
        /*
            r8 = this;
            r0 = r10
            boolean r0 = r0 instanceof p193e.p194a.p195a.p280s0.C7250e.C7253c
            if (r0 == 0) goto L28
            r0 = r10
            e.a.a.s0.e$c r0 = (p193e.p194a.p195a.p280s0.C7250e.C7253c) r0
            r11 = r0
            r0 = r11
            int r0 = r0.f23186e
            r12 = r0
            r0 = r12
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            r0 = r0 & r1
            if (r0 == 0) goto L28
            r0 = r11
            r1 = r12
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            int r1 = r1 + r2
            r0.f23186e = r1
            r0 = r11
            r10 = r0
            goto L32
        L28:
            e.a.a.s0.e$c r0 = new e.a.a.s0.e$c
            r1 = r0
            r2 = r8
            r3 = r10
            r1.<init>(r3)
            r10 = r0
        L32:
            r0 = r10
            java.lang.Object r0 = r0.f23185d
            r11 = r0
            s1.w.j.a r0 = s1.w.j.a.a
            r13 = r0
            r0 = r10
            int r0 = r0.f23186e
            r12 = r0
            r0 = r12
            if (r0 == 0) goto L60
            r0 = r12
            r1 = 1
            if (r0 != r1) goto L56
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r11
            r10 = r0
            goto Lb1
        L56:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r1 = r0
            java.lang.String r2 = "call to 'resume' before 'invoke' with coroutine"
            r1.<init>(r2)
            throw r0
        L60:
            r0 = r11
            p193e.p1681q.p1701f.p1702a.p1704d.C25225a.m3932a3(r0)
            r0 = r8
            e.a.h5.y r0 = r0.f23178e
            r11 = r0
            com.truecaller.tcpermissions.PermissionRequestOptions r0 = new com.truecaller.tcpermissions.PermissionRequestOptions
            r1 = r0
            r2 = 0
            r3 = 0
            java.lang.Integer r4 = new java.lang.Integer
            r5 = r4
            r6 = r9
            r5.<init>(r6)
            r5 = 3
            r1.<init>(r2, r3, r4, r5)
            r14 = r0
            r0 = r8
            e.a.h5.w r0 = r0.f23177d
            java.lang.String[] r0 = r0.mo19356a()
            r15 = r0
            r0 = r15
            r1 = r15
            int r1 = r1.length
            java.lang.Object[] r0 = java.util.Arrays.copyOf(r0, r1)
            java.lang.String[] r0 = (java.lang.String[]) r0
            r15 = r0
            r0 = r10
            r1 = 1
            r0.f23186e = r1
            r0 = r11
            r1 = r14
            r2 = r15
            r3 = r10
            java.lang.Object r0 = r0.mo19338b(r1, r2, r3)
            r11 = r0
            r0 = r11
            r10 = r0
            r0 = r11
            r1 = r13
            if (r0 != r1) goto Lb1
            r0 = r13
            return r0
        Lb1:
            r0 = r10
            e.a.h5.l r0 = (p193e.p194a.p851h5.C14945l) r0
            boolean r0 = r0.f42679a
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p280s0.C7250e.m29903d(int, s1.w.d):java.lang.Object");
    }
}
