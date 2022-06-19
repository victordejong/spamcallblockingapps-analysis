package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.C2662s;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.ExecutionException;
/* renamed from: com.google.android.gms.measurement.internal.fj */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/fj.class */
public final class BinderC4302fj extends AbstractBinderC4258dt {

    /* renamed from: a */
    private final C4415jo f18922a;

    /* renamed from: b */
    private Boolean f18923b;

    /* renamed from: c */
    private String f18924c;

    public BinderC4302fj(C4415jo c4415jo) {
        this(c4415jo, null);
    }

    private BinderC4302fj(C4415jo c4415jo, String str) {
        C2662s.m13981a(c4415jo);
        this.f18922a = c4415jo;
        this.f18924c = null;
    }

    /* renamed from: a */
    private final void m4456a(Runnable runnable) {
        C2662s.m13981a(runnable);
        if (this.f18922a.mo4031u().m4580c()) {
            runnable.run();
        } else {
            this.f18922a.mo4031u().m4587a(runnable);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x005b, code lost:
        if (com.google.android.gms.common.C2596i.m14146a(r7.f18922a.mo4034r()).m14147a(android.os.Binder.getCallingUid()) != false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void m4451a(java.lang.String r8, boolean r9) {
        /*
            r7 = this;
            r0 = 0
            r10 = r0
            r0 = r8
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 == 0) goto L22
            r0 = r7
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()
            com.google.android.gms.measurement.internal.ea r0 = r0.m4655x_()
            java.lang.String r1 = "Measurement Service called without app package"
            r0.m4654a(r1)
            java.lang.SecurityException r0 = new java.lang.SecurityException
            r1 = r0
            java.lang.String r2 = "Measurement Service called without app package"
            r1.<init>(r2)
            throw r0
        L22:
            r0 = r9
            if (r0 == 0) goto L72
            r0 = r7
            java.lang.Boolean r0 = r0.f18923b     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto L68
            java.lang.String r0 = "com.google.android.gms"
            r1 = r7
            java.lang.String r1 = r1.f18924c     // Catch: java.lang.SecurityException -> Lb4
            boolean r0 = r0.equals(r1)     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto L5e
            r0 = r7
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a     // Catch: java.lang.SecurityException -> Lb4
            android.content.Context r0 = r0.mo4034r()     // Catch: java.lang.SecurityException -> Lb4
            int r1 = android.os.Binder.getCallingUid()     // Catch: java.lang.SecurityException -> Lb4
            boolean r0 = com.google.android.gms.common.util.C2721r.m13825a(r0, r1)     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto L5e
            r0 = r10
            r9 = r0
            r0 = r7
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a     // Catch: java.lang.SecurityException -> Lb4
            android.content.Context r0 = r0.mo4034r()     // Catch: java.lang.SecurityException -> Lb4
            com.google.android.gms.common.i r0 = com.google.android.gms.common.C2596i.m14146a(r0)     // Catch: java.lang.SecurityException -> Lb4
            int r1 = android.os.Binder.getCallingUid()     // Catch: java.lang.SecurityException -> Lb4
            boolean r0 = r0.m14147a(r1)     // Catch: java.lang.SecurityException -> Lb4
            if (r0 == 0) goto L60
        L5e:
            r0 = 1
            r9 = r0
        L60:
            r0 = r7
            r1 = r9
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r1)     // Catch: java.lang.SecurityException -> Lb4
            r0.f18923b = r1     // Catch: java.lang.SecurityException -> Lb4
        L68:
            r0 = r7
            java.lang.Boolean r0 = r0.f18923b     // Catch: java.lang.SecurityException -> Lb4
            boolean r0 = r0.booleanValue()     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto Lcc
        L72:
            r0 = r7
            java.lang.String r0 = r0.f18924c     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto L8f
            r0 = r7
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a     // Catch: java.lang.SecurityException -> Lb4
            android.content.Context r0 = r0.mo4034r()     // Catch: java.lang.SecurityException -> Lb4
            int r1 = android.os.Binder.getCallingUid()     // Catch: java.lang.SecurityException -> Lb4
            r2 = r8
            boolean r0 = com.google.android.gms.common.C2595h.m14157a(r0, r1, r2)     // Catch: java.lang.SecurityException -> Lb4
            if (r0 == 0) goto L8f
            r0 = r7
            r1 = r8
            r0.f18924c = r1     // Catch: java.lang.SecurityException -> Lb4
        L8f:
            r0 = r8
            r1 = r7
            java.lang.String r1 = r1.f18924c     // Catch: java.lang.SecurityException -> Lb4
            boolean r0 = r0.equals(r1)     // Catch: java.lang.SecurityException -> Lb4
            if (r0 != 0) goto Lcc
            java.lang.SecurityException r0 = new java.lang.SecurityException     // Catch: java.lang.SecurityException -> Lb4
            r11 = r0
            r0 = r11
            java.lang.String r1 = "Unknown calling package name '%s'."
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.SecurityException -> Lb4
            r3 = r2
            r4 = 0
            r5 = r8
            r3[r4] = r5     // Catch: java.lang.SecurityException -> Lb4
            java.lang.String r1 = java.lang.String.format(r1, r2)     // Catch: java.lang.SecurityException -> Lb4
            r0.<init>(r1)     // Catch: java.lang.SecurityException -> Lb4
            r0 = r11
            throw r0     // Catch: java.lang.SecurityException -> Lb4
        Lb4:
            r11 = move-exception
            r0 = r7
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()
            com.google.android.gms.measurement.internal.ea r0 = r0.m4655x_()
            java.lang.String r1 = "Measurement Service called with invalid calling package. appId"
            r2 = r8
            java.lang.Object r2 = com.google.android.gms.measurement.internal.C4263dy.m4669a(r2)
            r0.m4653a(r1, r2)
            r0 = r11
            throw r0
        Lcc:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.BinderC4302fj.m4451a(java.lang.String, boolean):void");
    }

    /* renamed from: b */
    private final void m4449b(C4430kb c4430kb, boolean z) {
        C2662s.m13981a(c4430kb);
        m4451a(c4430kb.f19301a, false);
        this.f18922a.m4197j().m4112a(c4430kb.f19302b, c4430kb.f19318r, c4430kb.f19322v);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4462a(C4430kb c4430kb, boolean z) {
        ArrayList arrayList;
        m4449b(c4430kb, false);
        try {
            List<C4425jx> list = (List) this.f18922a.mo4031u().m4586a(new CallableC4314fv(this, c4430kb)).get();
            ArrayList arrayList2 = new ArrayList(list.size());
            for (C4425jx c4425jx : list) {
                if (z || !C4424jw.m4085e(c4425jx.f19288c)) {
                    arrayList2.add(new C4423jv(c4425jx));
                }
            }
            arrayList = arrayList2;
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4652a("Failed to get user properties. appId", C4263dy.m4669a(c4430kb.f19301a), e);
            arrayList = null;
        }
        return arrayList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4442kn> mo4455a(String str, String str2, C4430kb c4430kb) {
        List<C4442kn> emptyList;
        m4449b(c4430kb, false);
        try {
            emptyList = (List) this.f18922a.mo4031u().m4586a(new CallableC4305fm(this, c4430kb, str, str2)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4653a("Failed to get conditional user properties", e);
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4442kn> mo4454a(String str, String str2, String str3) {
        List<C4442kn> emptyList;
        m4451a(str, true);
        try {
            emptyList = (List) this.f18922a.mo4031u().m4586a(new CallableC4308fp(this, str, str2, str3)).get();
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4653a("Failed to get conditional user properties as", e);
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4453a(String str, String str2, String str3, boolean z) {
        ArrayList emptyList;
        m4451a(str, true);
        try {
            List<C4425jx> list = (List) this.f18922a.mo4031u().m4586a(new CallableC4306fn(this, str, str2, str3)).get();
            ArrayList arrayList = new ArrayList(list.size());
            for (C4425jx c4425jx : list) {
                if (z || !C4424jw.m4085e(c4425jx.f19288c)) {
                    arrayList.add(new C4423jv(c4425jx));
                }
            }
            emptyList = arrayList;
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4652a("Failed to get user properties as. appId", C4263dy.m4669a(str), e);
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final List<C4423jv> mo4452a(String str, String str2, boolean z, C4430kb c4430kb) {
        List<C4423jv> emptyList;
        m4449b(c4430kb, false);
        try {
            List<C4425jx> list = (List) this.f18922a.mo4031u().m4586a(new CallableC4303fk(this, c4430kb, str, str2)).get();
            emptyList = new ArrayList<>(list.size());
            for (C4425jx c4425jx : list) {
                if (z || !C4424jw.m4085e(c4425jx.f19288c)) {
                    emptyList.add(new C4423jv(c4425jx));
                }
            }
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4652a("Failed to query user properties. appId", C4263dy.m4669a(c4430kb.f19301a), e);
            emptyList = Collections.emptyList();
        }
        return emptyList;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4466a(long j, String str, String str2, String str3) {
        m4456a(new RunnableC4316fx(this, str2, str3, str, j));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4464a(C4423jv c4423jv, C4430kb c4430kb) {
        C2662s.m13981a(c4423jv);
        m4449b(c4430kb, false);
        m4456a(new RunnableC4311fs(this, c4423jv, c4430kb));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4463a(C4430kb c4430kb) {
        m4449b(c4430kb, false);
        m4456a(new RunnableC4313fu(this, c4430kb));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4461a(C4442kn c4442kn) {
        C2662s.m13981a(c4442kn);
        C2662s.m13981a(c4442kn.f19356c);
        m4451a(c4442kn.f19354a, true);
        m4456a(new RunnableC4304fl(this, new C4442kn(c4442kn)));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4460a(C4442kn c4442kn, C4430kb c4430kb) {
        C2662s.m13981a(c4442kn);
        C2662s.m13981a(c4442kn.f19356c);
        m4449b(c4430kb, false);
        C4442kn c4442kn2 = new C4442kn(c4442kn);
        c4442kn2.f19354a = c4430kb.f19301a;
        m4456a(new RunnableC4315fw(this, c4442kn2, c4430kb));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4459a(C4450r c4450r, C4430kb c4430kb) {
        C2662s.m13981a(c4450r);
        m4449b(c4430kb, false);
        m4456a(new RunnableC4310fr(this, c4450r, c4430kb));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final void mo4457a(C4450r c4450r, String str, String str2) {
        C2662s.m13981a(c4450r);
        C2662s.m13979a(str);
        m4451a(str, true);
        m4456a(new RunnableC4309fq(this, c4450r, str));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: a */
    public final byte[] mo4458a(C4450r c4450r, String str) {
        byte[] bArr;
        C2662s.m13979a(str);
        C2662s.m13981a(c4450r);
        m4451a(str, true);
        this.f18922a.mo4030v().m4658i().m4653a("Log and bundle. event", this.f18922a.m4198i().m4682a(c4450r.f19386a));
        long mo13860c = this.f18922a.mo4035q().mo13860c() / 1000000;
        try {
            byte[] bArr2 = (byte[]) this.f18922a.mo4031u().m4581b(new CallableC4312ft(this, c4450r, str)).get();
            bArr = bArr2;
            if (bArr2 == null) {
                this.f18922a.mo4030v().m4655x_().m4653a("Log and bundle returned null. appId", C4263dy.m4669a(str));
                bArr = new byte[0];
            }
            this.f18922a.mo4030v().m4658i().m4651a("Log and bundle processed. event, size, time_ms", this.f18922a.m4198i().m4682a(c4450r.f19386a), Integer.valueOf(bArr.length), Long.valueOf((this.f18922a.mo4035q().mo13860c() / 1000000) - mo13860c));
        } catch (InterruptedException | ExecutionException e) {
            this.f18922a.mo4030v().m4655x_().m4651a("Failed to log and bundle. appId, event, error", C4263dy.m4669a(str), this.f18922a.m4198i().m4682a(c4450r.f19386a), e);
            bArr = null;
        }
        return bArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0088, code lost:
        if ("referrer API".equals(r0) != false) goto L20;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final com.google.android.gms.measurement.internal.C4450r m4448b(com.google.android.gms.measurement.internal.C4450r r9, com.google.android.gms.measurement.internal.C4430kb r10) {
        /*
            r8 = this;
            r0 = 0
            r11 = r0
            r0 = r11
            r12 = r0
            java.lang.String r0 = "_cmp"
            r1 = r9
            java.lang.String r1 = r1.f19386a
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L29
            r0 = r11
            r12 = r0
            r0 = r9
            com.google.android.gms.measurement.internal.m r0 = r0.f19387b
            if (r0 == 0) goto L29
            r0 = r9
            com.google.android.gms.measurement.internal.m r0 = r0.f19387b
            int r0 = r0.m4025a()
            if (r0 != 0) goto L5b
            r0 = r11
            r12 = r0
        L29:
            r0 = r12
            if (r0 == 0) goto La8
            r0 = r8
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a
            com.google.android.gms.measurement.internal.dy r0 = r0.mo4030v()
            com.google.android.gms.measurement.internal.ea r0 = r0.m4659h()
            java.lang.String r1 = "Event has been filtered "
            r2 = r9
            java.lang.String r2 = r2.toString()
            r0.m4653a(r1, r2)
            com.google.android.gms.measurement.internal.r r0 = new com.google.android.gms.measurement.internal.r
            r1 = r0
            java.lang.String r2 = "_cmpx"
            r3 = r9
            com.google.android.gms.measurement.internal.m r3 = r3.f19387b
            r4 = r9
            java.lang.String r4 = r4.f19388c
            r5 = r9
            long r5 = r5.f19389d
            r1.<init>(r2, r3, r4, r5)
            r9 = r0
        L59:
            r0 = r9
            return r0
        L5b:
            r0 = r9
            com.google.android.gms.measurement.internal.m r0 = r0.f19387b
            java.lang.String r1 = "_cis"
            java.lang.String r0 = r0.m4019d(r1)
            r13 = r0
            r0 = r11
            r12 = r0
            r0 = r13
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L29
            java.lang.String r0 = "referrer broadcast"
            r1 = r13
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L8b
            r0 = r11
            r12 = r0
            java.lang.String r0 = "referrer API"
            r1 = r13
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L29
        L8b:
            r0 = r11
            r12 = r0
            r0 = r8
            com.google.android.gms.measurement.internal.jo r0 = r0.f18922a
            com.google.android.gms.measurement.internal.b r0 = r0.m4216b()
            r1 = r10
            java.lang.String r1 = r1.f19301a
            com.google.android.gms.measurement.internal.dr<java.lang.Boolean> r2 = com.google.android.gms.measurement.internal.C4452t.f19408R
            boolean r0 = r0.m4787e(r1, r2)
            if (r0 == 0) goto L29
            r0 = 1
            r12 = r0
            goto L29
        La8:
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.BinderC4302fj.m4448b(com.google.android.gms.measurement.internal.r, com.google.android.gms.measurement.internal.kb):com.google.android.gms.measurement.internal.r");
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: b */
    public final void mo4450b(C4430kb c4430kb) {
        m4449b(c4430kb, false);
        m4456a(new RunnableC4301fi(this, c4430kb));
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: c */
    public final String mo4447c(C4430kb c4430kb) {
        m4449b(c4430kb, false);
        return this.f18922a.m4204d(c4430kb);
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC4255dq
    /* renamed from: d */
    public final void mo4446d(C4430kb c4430kb) {
        m4451a(c4430kb.f19301a, false);
        m4456a(new RunnableC4307fo(this, c4430kb));
    }
}
