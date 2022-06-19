package com.google.android.exoplayer2.drm;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.C11158f;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.AbstractC10955c;
import com.google.android.exoplayer2.drm.AbstractC10964i;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.upstream.AbstractC11585r;
import com.google.android.exoplayer2.upstream.C11583p;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11620q;
import com.google.common.collect.AbstractC15549v;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager.class */
public final class DefaultDrmSessionManager implements AbstractC10958d {

    /* renamed from: a */
    final List<DefaultDrmSession> f35421a;

    /* renamed from: b */
    int f35422b;

    /* renamed from: c */
    byte[] f35423c;

    /* renamed from: d */
    volatile HandlerC10948c f35424d;

    /* renamed from: g */
    private final UUID f35425g;

    /* renamed from: h */
    private final AbstractC10964i.AbstractC10968d f35426h;

    /* renamed from: i */
    private final AbstractC10973m f35427i;

    /* renamed from: j */
    private final HashMap<String, String> f35428j;

    /* renamed from: k */
    private final boolean f35429k;

    /* renamed from: l */
    private final int[] f35430l;

    /* renamed from: m */
    private final boolean f35431m;

    /* renamed from: n */
    private final C10949d f35432n;

    /* renamed from: o */
    private final AbstractC11585r f35433o;

    /* renamed from: p */
    private final C10950e f35434p;

    /* renamed from: q */
    private final long f35435q;

    /* renamed from: r */
    private final List<DefaultDrmSession> f35436r;

    /* renamed from: s */
    private final Set<DefaultDrmSession> f35437s;

    /* renamed from: t */
    private int f35438t;

    /* renamed from: u */
    private AbstractC10964i f35439u;

    /* renamed from: v */
    private DefaultDrmSession f35440v;

    /* renamed from: w */
    private DefaultDrmSession f35441w;

    /* renamed from: x */
    private Looper f35442x;

    /* renamed from: y */
    private Handler f35443y;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: ".concat(String.valueOf(uuid)));
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$a.class */
    public static final class C10946a {

        /* renamed from: d */
        boolean f35447d;

        /* renamed from: f */
        boolean f35449f;

        /* renamed from: a */
        final HashMap<String, String> f35444a = new HashMap<>();

        /* renamed from: b */
        UUID f35445b = C11158f.f36542d;

        /* renamed from: c */
        AbstractC10964i.AbstractC10968d f35446c = C10971k.f35484a;

        /* renamed from: g */
        AbstractC11585r f35450g = new C11583p();

        /* renamed from: e */
        int[] f35448e = new int[0];

        /* renamed from: h */
        long f35451h = 300000;

        /* renamed from: a */
        public final C10946a m21874a(int... iArr) {
            int length = iArr.length;
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                boolean z = true;
                if (i2 != 2) {
                    z = i2 == 1;
                }
                C11593a.m20022a(z);
            }
            this.f35448e = (int[]) iArr.clone();
            return this;
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$b.class */
    final class C10947b implements AbstractC10964i.AbstractC10967c {
        private C10947b() {
            DefaultDrmSessionManager.this = r4;
        }

        @Override // com.google.android.exoplayer2.drm.AbstractC10964i.AbstractC10967c
        /* renamed from: a */
        public final void mo21837a(byte[] bArr, int i) {
            ((HandlerC10948c) C11593a.m20020b(DefaultDrmSessionManager.this.f35424d)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$c.class */
    final class HandlerC10948c extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC10948c(Looper looper) {
            super(looper);
            DefaultDrmSessionManager.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f35421a) {
                if (Arrays.equals(defaultDrmSession.f35398i, bArr)) {
                    defaultDrmSession.m21903a(message.what);
                    return;
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$d */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$d.class */
    public final class C10949d implements DefaultDrmSession.AbstractC10940a {
        private C10949d() {
            DefaultDrmSessionManager.this = r4;
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC10940a
        /* renamed from: a */
        public final void mo21873a() {
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f35436r) {
                defaultDrmSession.m21896b();
            }
            DefaultDrmSessionManager.this.f35436r.clear();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC10940a
        /* renamed from: a */
        public final void mo21872a(DefaultDrmSession defaultDrmSession) {
            if (DefaultDrmSessionManager.this.f35436r.contains(defaultDrmSession)) {
                return;
            }
            DefaultDrmSessionManager.this.f35436r.add(defaultDrmSession);
            if (DefaultDrmSessionManager.this.f35436r.size() != 1) {
                return;
            }
            defaultDrmSession.m21904a();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC10940a
        /* renamed from: a */
        public final void mo21871a(Exception exc) {
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f35436r) {
                defaultDrmSession.m21900a(exc);
            }
            DefaultDrmSessionManager.this.f35436r.clear();
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$e */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$e.class */
    public final class C10950e implements DefaultDrmSession.AbstractC10941b {
        private C10950e() {
            DefaultDrmSessionManager.this = r4;
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC10941b
        /* renamed from: a */
        public final void mo21870a(DefaultDrmSession defaultDrmSession) {
            if (DefaultDrmSessionManager.this.f35435q != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f35437s.remove(defaultDrmSession);
                ((Handler) C11593a.m20020b(DefaultDrmSessionManager.this.f35443y)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC10941b
        /* renamed from: a */
        public final void mo21869a(final DefaultDrmSession defaultDrmSession, int i) {
            if (i == 1 && DefaultDrmSessionManager.this.f35435q != -9223372036854775807L) {
                DefaultDrmSessionManager.this.f35437s.add(defaultDrmSession);
                ((Handler) C11593a.m20020b(DefaultDrmSessionManager.this.f35443y)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$DefaultDrmSessionManager$e$GnUJzynyGfxxMaZ4SjrPEHtigYU
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.mo21844b((AbstractC10955c.C10956a) null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.f35435q);
            } else if (i != 0) {
            } else {
                DefaultDrmSessionManager.this.f35421a.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f35440v == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f35440v = null;
                }
                if (DefaultDrmSessionManager.this.f35441w == defaultDrmSession) {
                    DefaultDrmSessionManager.this.f35441w = null;
                }
                if (DefaultDrmSessionManager.this.f35436r.size() > 1 && DefaultDrmSessionManager.this.f35436r.get(0) == defaultDrmSession) {
                    ((DefaultDrmSession) DefaultDrmSessionManager.this.f35436r.get(1)).m21904a();
                }
                DefaultDrmSessionManager.this.f35436r.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.f35435q == -9223372036854775807L) {
                    return;
                }
                ((Handler) C11593a.m20020b(DefaultDrmSessionManager.this.f35443y)).removeCallbacksAndMessages(defaultDrmSession);
                DefaultDrmSessionManager.this.f35437s.remove(defaultDrmSession);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public DefaultDrmSessionManager(UUID uuid, AbstractC10964i.AbstractC10968d abstractC10968d, AbstractC10973m abstractC10973m, HashMap<String, String> hashMap, boolean z, int[] iArr, boolean z2, AbstractC11585r abstractC11585r, long j) {
        C11593a.m20020b(uuid);
        C11593a.m20021a(!C11158f.f36540b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f35425g = uuid;
        this.f35426h = abstractC10968d;
        this.f35427i = abstractC10973m;
        this.f35428j = hashMap;
        this.f35429k = z;
        this.f35430l = iArr;
        this.f35431m = z2;
        this.f35433o = abstractC11585r;
        this.f35432n = new C10949d();
        this.f35434p = new C10950e();
        this.f35422b = 0;
        this.f35421a = new ArrayList();
        this.f35436r = new ArrayList();
        this.f35437s = Collections.newSetFromMap(new IdentityHashMap());
        this.f35435q = j;
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, AbstractC10964i abstractC10964i, AbstractC10973m abstractC10973m, HashMap<String, String> hashMap) {
        this(uuid, abstractC10964i, abstractC10973m, hashMap == null ? new HashMap<>() : hashMap, false, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, AbstractC10964i abstractC10964i, AbstractC10973m abstractC10973m, HashMap<String, String> hashMap, boolean z) {
        this(uuid, abstractC10964i, abstractC10973m, hashMap == null ? new HashMap<>() : hashMap, z, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, AbstractC10964i abstractC10964i, AbstractC10973m abstractC10973m, HashMap<String, String> hashMap, boolean z, int i) {
        this(uuid, new AbstractC10964i.C10965a(abstractC10964i), abstractC10973m, hashMap == null ? new HashMap<>() : hashMap, z, new int[0], false, new C11583p(i), 300000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if ((((com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) com.google.android.exoplayer2.util.C11593a.m20020b(r0.mo21841e())).getCause() instanceof android.media.ResourceBusyException) != false) goto L8;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.drm.DefaultDrmSession m21884a(java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> r6, boolean r7, com.google.android.exoplayer2.drm.AbstractC10955c.C10956a r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            com.google.android.exoplayer2.drm.DefaultDrmSession r0 = r0.m21882b(r1, r2, r3)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.f35397h
            r1 = 1
            if (r0 != r1) goto L8f
            int r0 = com.google.android.exoplayer2.util.C11599af.f38648a
            r1 = 19
            if (r0 < r1) goto L36
            r0 = r9
            r10 = r0
            r0 = r9
            com.google.android.exoplayer2.drm.DrmSession$DrmSessionException r0 = r0.mo21841e()
            java.lang.Object r0 = com.google.android.exoplayer2.util.C11593a.m20020b(r0)
            com.google.android.exoplayer2.drm.DrmSession$DrmSessionException r0 = (com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) r0
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof android.media.ResourceBusyException
            if (r0 == 0) goto L8f
        L36:
            r0 = r9
            r10 = r0
            r0 = r5
            java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> r0 = r0.f35437s
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L8f
            r0 = r5
            java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> r0 = r0.f35437s
            com.google.common.collect.z r0 = com.google.common.collect.AbstractC15566z.m8658a(r0)
            com.google.common.collect.ay r0 = r0.iterator()
            r10 = r0
        L52:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L6f
            r0 = r10
            java.lang.Object r0 = r0.next()
            com.google.android.exoplayer2.drm.DrmSession r0 = (com.google.android.exoplayer2.drm.DrmSession) r0
            r1 = 0
            r0.mo21844b(r1)
            goto L52
        L6f:
            r0 = r9
            r1 = r8
            r0.mo21844b(r1)
            r0 = r5
            long r0 = r0.f35435q
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L86
            r0 = r9
            r1 = 0
            r0.mo21844b(r1)
        L86:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            com.google.android.exoplayer2.drm.DefaultDrmSession r0 = r0.m21882b(r1, r2, r3)
            r10 = r0
        L8f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.m21884a(java.util.List, boolean, com.google.android.exoplayer2.drm.c$a):com.google.android.exoplayer2.drm.DefaultDrmSession");
    }

    /* renamed from: a */
    private static List<DrmInitData.SchemeData> m21885a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (C11158f.f36541c.equals(uuid) && schemeData.matches(C11158f.f36540b))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    /* renamed from: b */
    private DefaultDrmSession m21882b(List<DrmInitData.SchemeData> list, boolean z, AbstractC10955c.C10956a c10956a) {
        C11593a.m20020b(this.f35439u);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.f35425g, this.f35439u, this.f35432n, this.f35434p, list, this.f35422b, this.f35431m | z, z, this.f35423c, this.f35428j, this.f35427i, (Looper) C11593a.m20020b(this.f35442x), this.f35433o);
        defaultDrmSession.mo21845a(c10956a);
        if (this.f35435q != -9223372036854775807L) {
            defaultDrmSession.mo21845a((AbstractC10955c.C10956a) null);
        }
        return defaultDrmSession;
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10958d
    /* renamed from: a */
    public final DrmSession mo21849a(Looper looper, AbstractC10955c.C10956a c10956a, Format format) {
        List<DrmInitData.SchemeData> list;
        DefaultDrmSession defaultDrmSession;
        Looper looper2 = this.f35442x;
        if (looper2 == null) {
            this.f35442x = looper;
            this.f35443y = new Handler(looper);
        } else {
            C11593a.m20019b(looper2 == looper);
        }
        if (this.f35424d == null) {
            this.f35424d = new HandlerC10948c(looper);
        }
        if (format.drmInitData == null) {
            int m19845g = C11620q.m19845g(format.sampleMimeType);
            AbstractC10964i abstractC10964i = (AbstractC10964i) C11593a.m20020b(this.f35439u);
            boolean z = false;
            if (C10970j.class.equals(abstractC10964i.mo21820e())) {
                z = false;
                if (C10970j.f35480a) {
                    z = true;
                }
            }
            if (z || C11599af.m19958a(this.f35430l, m19845g) == -1 || C10974n.class.equals(abstractC10964i.mo21820e())) {
                return null;
            }
            DefaultDrmSession defaultDrmSession2 = this.f35440v;
            if (defaultDrmSession2 == null) {
                DefaultDrmSession m21884a = m21884a((List<DrmInitData.SchemeData>) AbstractC15549v.m8720g(), true, (AbstractC10955c.C10956a) null);
                this.f35421a.add(m21884a);
                this.f35440v = m21884a;
            } else {
                defaultDrmSession2.mo21845a((AbstractC10955c.C10956a) null);
            }
            return this.f35440v;
        }
        if (this.f35423c == null) {
            List<DrmInitData.SchemeData> m21885a = m21885a((DrmInitData) C11593a.m20020b(format.drmInitData), this.f35425g, false);
            list = m21885a;
            if (m21885a.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f35425g);
                if (c10956a != null) {
                    c10956a.m21859a(missingSchemeDataException);
                }
                return new C10962g(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.f35429k) {
            Iterator<DefaultDrmSession> it2 = this.f35421a.iterator();
            do {
                defaultDrmSession = null;
                if (!it2.hasNext()) {
                    break;
                }
                defaultDrmSession = it2.next();
            } while (!C11599af.m19973a(defaultDrmSession.f35390a, list));
        } else {
            defaultDrmSession = this.f35441w;
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = m21884a(list, false, c10956a);
            if (!this.f35429k) {
                this.f35441w = defaultDrmSession;
            }
            this.f35421a.add(defaultDrmSession);
        } else {
            defaultDrmSession.mo21845a(c10956a);
        }
        return defaultDrmSession;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3 A[RETURN] */
    @Override // com.google.android.exoplayer2.drm.AbstractC10958d
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Class<? extends com.google.android.exoplayer2.drm.AbstractC10963h> mo21848a(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.mo21848a(com.google.android.exoplayer2.Format):java.lang.Class");
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10958d
    /* renamed from: a */
    public final void mo21850a() {
        int i = this.f35438t;
        this.f35438t = i + 1;
        if (i != 0) {
            return;
        }
        C11593a.m20019b(this.f35439u == null);
        AbstractC10964i acquireExoMediaDrm = this.f35426h.acquireExoMediaDrm(this.f35425g);
        this.f35439u = acquireExoMediaDrm;
        acquireExoMediaDrm.mo21835a(new C10947b());
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC10958d
    /* renamed from: b */
    public final void mo21847b() {
        int i = this.f35438t - 1;
        this.f35438t = i;
        if (i != 0) {
            return;
        }
        if (this.f35435q != -9223372036854775807L) {
            ArrayList arrayList = new ArrayList(this.f35421a);
            for (int i2 = 0; i2 < arrayList.size(); i2++) {
                ((DefaultDrmSession) arrayList.get(i2)).mo21844b((AbstractC10955c.C10956a) null);
            }
        }
        ((AbstractC10964i) C11593a.m20020b(this.f35439u)).mo21822d();
        this.f35439u = null;
    }
}
