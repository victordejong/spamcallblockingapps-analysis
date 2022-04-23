package com.google.android.exoplayer2.drm;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.drm.c;
import com.google.android.exoplayer2.drm.i;
import com.google.android.exoplayer2.f;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.upstream.r;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.q;
import com.google.common.collect.v;
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
public final class DefaultDrmSessionManager implements com.google.android.exoplayer2.drm.d {

    /* renamed from: a  reason: collision with root package name */
    final List<DefaultDrmSession> f20860a;

    /* renamed from: b  reason: collision with root package name */
    int f20861b;

    /* renamed from: c  reason: collision with root package name */
    byte[] f20862c;

    /* renamed from: d  reason: collision with root package name */
    volatile c f20863d;
    private final UUID g;
    private final i.d h;
    private final m i;
    private final HashMap<String, String> j;
    private final boolean k;
    private final int[] l;
    private final boolean m;
    private final d n;
    private final r o;
    private final e p;
    private final long q;
    private final List<DefaultDrmSession> r;
    private final Set<DefaultDrmSession> s;
    private int t;
    private i u;
    private DefaultDrmSession v;
    private DefaultDrmSession w;
    private Looper x;
    private Handler y;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: ".concat(String.valueOf(uuid)));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$a.class */
    public static final class a {

        /* renamed from: d  reason: collision with root package name */
        boolean f20867d;
        boolean f;

        /* renamed from: a  reason: collision with root package name */
        final HashMap<String, String> f20864a = new HashMap<>();

        /* renamed from: b  reason: collision with root package name */
        UUID f20865b = f.f21362d;

        /* renamed from: c  reason: collision with root package name */
        i.d f20866c = k.f20897a;
        r g = new p();
        int[] e = new int[0];
        long h = 300000;

        public final a a(int... iArr) {
            int length = iArr.length;
            for (int i = 0; i < length; i++) {
                int i2 = iArr[i];
                boolean z = true;
                if (i2 != 2) {
                    z = i2 == 1;
                }
                com.google.android.exoplayer2.util.a.a(z);
            }
            this.e = (int[]) iArr.clone();
            return this;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$b.class */
    final class b implements i.c {
        private b() {
        }

        @Override // com.google.android.exoplayer2.drm.i.c
        public final void a(byte[] bArr, int i) {
            ((c) com.google.android.exoplayer2.util.a.b(DefaultDrmSessionManager.this.f20863d)).obtainMessage(i, bArr).sendToTarget();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$c.class */
    final class c extends Handler {
        public c(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr != null) {
                for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f20860a) {
                    if (Arrays.equals(defaultDrmSession.i, bArr)) {
                        defaultDrmSession.a(message.what);
                        return;
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$d.class */
    public final class d implements DefaultDrmSession.a {
        private d() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public final void a() {
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.r) {
                defaultDrmSession.b();
            }
            DefaultDrmSessionManager.this.r.clear();
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public final void a(DefaultDrmSession defaultDrmSession) {
            if (!DefaultDrmSessionManager.this.r.contains(defaultDrmSession)) {
                DefaultDrmSessionManager.this.r.add(defaultDrmSession);
                if (DefaultDrmSessionManager.this.r.size() == 1) {
                    defaultDrmSession.a();
                }
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.a
        public final void a(Exception exc) {
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.r) {
                defaultDrmSession.a(exc);
            }
            DefaultDrmSessionManager.this.r.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$e.class */
    public final class e implements DefaultDrmSession.b {
        private e() {
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public final void a(DefaultDrmSession defaultDrmSession) {
            if (DefaultDrmSessionManager.this.q != -9223372036854775807L) {
                DefaultDrmSessionManager.this.s.remove(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.b(DefaultDrmSessionManager.this.y)).removeCallbacksAndMessages(defaultDrmSession);
            }
        }

        @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.b
        public final void a(final DefaultDrmSession defaultDrmSession, int i) {
            if (i == 1 && DefaultDrmSessionManager.this.q != -9223372036854775807L) {
                DefaultDrmSessionManager.this.s.add(defaultDrmSession);
                ((Handler) com.google.android.exoplayer2.util.a.b(DefaultDrmSessionManager.this.y)).postAtTime(new Runnable() { // from class: com.google.android.exoplayer2.drm._$$Lambda$DefaultDrmSessionManager$e$GnUJzynyGfxxMaZ4SjrPEHtigYU
                    @Override // java.lang.Runnable
                    public final void run() {
                        DefaultDrmSession.this.b((c.a) null);
                    }
                }, defaultDrmSession, SystemClock.uptimeMillis() + DefaultDrmSessionManager.this.q);
            } else if (i == 0) {
                DefaultDrmSessionManager.this.f20860a.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.v == defaultDrmSession) {
                    DefaultDrmSessionManager.this.v = null;
                }
                if (DefaultDrmSessionManager.this.w == defaultDrmSession) {
                    DefaultDrmSessionManager.this.w = null;
                }
                if (DefaultDrmSessionManager.this.r.size() > 1 && DefaultDrmSessionManager.this.r.get(0) == defaultDrmSession) {
                    ((DefaultDrmSession) DefaultDrmSessionManager.this.r.get(1)).a();
                }
                DefaultDrmSessionManager.this.r.remove(defaultDrmSession);
                if (DefaultDrmSessionManager.this.q != -9223372036854775807L) {
                    ((Handler) com.google.android.exoplayer2.util.a.b(DefaultDrmSessionManager.this.y)).removeCallbacksAndMessages(defaultDrmSession);
                    DefaultDrmSessionManager.this.s.remove(defaultDrmSession);
                }
            }
        }
    }

    private DefaultDrmSessionManager(UUID uuid, i.d dVar, m mVar, HashMap<String, String> hashMap, boolean z, int[] iArr, boolean z2, r rVar, long j) {
        com.google.android.exoplayer2.util.a.b(uuid);
        com.google.android.exoplayer2.util.a.a(!f.f21360b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.g = uuid;
        this.h = dVar;
        this.i = mVar;
        this.j = hashMap;
        this.k = z;
        this.l = iArr;
        this.m = z2;
        this.o = rVar;
        this.n = new d();
        this.p = new e();
        this.f20861b = 0;
        this.f20860a = new ArrayList();
        this.r = new ArrayList();
        this.s = Collections.newSetFromMap(new IdentityHashMap());
        this.q = j;
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, i iVar, m mVar, HashMap<String, String> hashMap) {
        this(uuid, iVar, mVar, hashMap == null ? new HashMap<>() : hashMap, false, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, i iVar, m mVar, HashMap<String, String> hashMap, boolean z) {
        this(uuid, iVar, mVar, hashMap == null ? new HashMap<>() : hashMap, z, 3);
    }

    @Deprecated
    public DefaultDrmSessionManager(UUID uuid, i iVar, m mVar, HashMap<String, String> hashMap, boolean z, int i) {
        this(uuid, new i.a(iVar), mVar, hashMap == null ? new HashMap<>() : hashMap, z, new int[0], false, new p(i), 300000L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0033, code lost:
        if ((((com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) com.google.android.exoplayer2.util.a.b(r0.e())).getCause() instanceof android.media.ResourceBusyException) != false) goto L_0x0036;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private com.google.android.exoplayer2.drm.DefaultDrmSession a(java.util.List<com.google.android.exoplayer2.drm.DrmInitData.SchemeData> r6, boolean r7, com.google.android.exoplayer2.drm.c.a r8) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            com.google.android.exoplayer2.drm.DefaultDrmSession r0 = r0.b(r1, r2, r3)
            r9 = r0
            r0 = r9
            r10 = r0
            r0 = r9
            int r0 = r0.h
            r1 = 1
            if (r0 != r1) goto L_0x008f
            int r0 = com.google.android.exoplayer2.util.af.f22275a
            r1 = 19
            if (r0 < r1) goto L_0x0036
            r0 = r9
            r10 = r0
            r0 = r9
            com.google.android.exoplayer2.drm.DrmSession$DrmSessionException r0 = r0.e()
            java.lang.Object r0 = com.google.android.exoplayer2.util.a.b(r0)
            com.google.android.exoplayer2.drm.DrmSession$DrmSessionException r0 = (com.google.android.exoplayer2.drm.DrmSession.DrmSessionException) r0
            java.lang.Throwable r0 = r0.getCause()
            boolean r0 = r0 instanceof android.media.ResourceBusyException
            if (r0 == 0) goto L_0x008f
        L_0x0036:
            r0 = r9
            r10 = r0
            r0 = r5
            java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> r0 = r0.s
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L_0x008f
            r0 = r5
            java.util.Set<com.google.android.exoplayer2.drm.DefaultDrmSession> r0 = r0.s
            com.google.common.collect.z r0 = com.google.common.collect.z.a(r0)
            com.google.common.collect.ay r0 = r0.iterator()
            r10 = r0
        L_0x0052:
            r0 = r10
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x006f
            r0 = r10
            java.lang.Object r0 = r0.next()
            com.google.android.exoplayer2.drm.DrmSession r0 = (com.google.android.exoplayer2.drm.DrmSession) r0
            r1 = 0
            r0.b(r1)
            goto L_0x0052
        L_0x006f:
            r0 = r9
            r1 = r8
            r0.b(r1)
            r0 = r5
            long r0 = r0.q
            r1 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 == 0) goto L_0x0086
            r0 = r9
            r1 = 0
            r0.b(r1)
        L_0x0086:
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            com.google.android.exoplayer2.drm.DefaultDrmSession r0 = r0.b(r1, r2, r3)
            r10 = r0
        L_0x008f:
            r0 = r10
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.a(java.util.List, boolean, com.google.android.exoplayer2.drm.c$a):com.google.android.exoplayer2.drm.DefaultDrmSession");
    }

    private static List<DrmInitData.SchemeData> a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (f.f21361c.equals(uuid) && schemeData.matches(f.f21360b))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    private DefaultDrmSession b(List<DrmInitData.SchemeData> list, boolean z, c.a aVar) {
        com.google.android.exoplayer2.util.a.b(this.u);
        DefaultDrmSession defaultDrmSession = new DefaultDrmSession(this.g, this.u, this.n, this.p, list, this.f20861b, this.m | z, z, this.f20862c, this.j, this.i, (Looper) com.google.android.exoplayer2.util.a.b(this.x), this.o);
        defaultDrmSession.a(aVar);
        if (this.q != -9223372036854775807L) {
            defaultDrmSession.a((c.a) null);
        }
        return defaultDrmSession;
    }

    @Override // com.google.android.exoplayer2.drm.d
    public final DrmSession a(Looper looper, c.a aVar, Format format) {
        List<DrmInitData.SchemeData> list;
        Looper looper2 = this.x;
        if (looper2 == null) {
            this.x = looper;
            this.y = new Handler(looper);
        } else {
            com.google.android.exoplayer2.util.a.b(looper2 == looper);
        }
        if (this.f20863d == null) {
            this.f20863d = new c(looper);
        }
        DefaultDrmSession defaultDrmSession = null;
        if (format.drmInitData == null) {
            int g = q.g(format.sampleMimeType);
            i iVar = (i) com.google.android.exoplayer2.util.a.b(this.u);
            boolean z = false;
            if (j.class.equals(iVar.e())) {
                z = false;
                if (j.f20893a) {
                    z = true;
                }
            }
            if (z || af.a(this.l, g) == -1 || n.class.equals(iVar.e())) {
                return null;
            }
            DefaultDrmSession defaultDrmSession2 = this.v;
            if (defaultDrmSession2 == null) {
                DefaultDrmSession a2 = a((List<DrmInitData.SchemeData>) v.g(), true, (c.a) null);
                this.f20860a.add(a2);
                this.v = a2;
            } else {
                defaultDrmSession2.a((c.a) null);
            }
            return this.v;
        }
        if (this.f20862c == null) {
            List<DrmInitData.SchemeData> a3 = a((DrmInitData) com.google.android.exoplayer2.util.a.b(format.drmInitData), this.g, false);
            list = a3;
            if (a3.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.g);
                if (aVar != null) {
                    aVar.a(missingSchemeDataException);
                }
                return new g(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.k) {
            Iterator<DefaultDrmSession> it2 = this.f20860a.iterator();
            while (it2.hasNext()) {
                defaultDrmSession = it2.next();
                if (af.a(defaultDrmSession.f20849a, list)) {
                    break;
                }
            }
        } else {
            defaultDrmSession = this.w;
        }
        if (defaultDrmSession == null) {
            defaultDrmSession = a(list, false, aVar);
            if (!this.k) {
                this.w = defaultDrmSession;
            }
            this.f20860a.add(defaultDrmSession);
        } else {
            defaultDrmSession.a(aVar);
        }
        return defaultDrmSession;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x00e1  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00e3 A[RETURN] */
    @Override // com.google.android.exoplayer2.drm.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Class<? extends com.google.android.exoplayer2.drm.h> a(com.google.android.exoplayer2.Format r5) {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.drm.DefaultDrmSessionManager.a(com.google.android.exoplayer2.Format):java.lang.Class");
    }

    @Override // com.google.android.exoplayer2.drm.d
    public final void a() {
        int i = this.t;
        this.t = i + 1;
        if (i == 0) {
            com.google.android.exoplayer2.util.a.b(this.u == null);
            i acquireExoMediaDrm = this.h.acquireExoMediaDrm(this.g);
            this.u = acquireExoMediaDrm;
            acquireExoMediaDrm.a(new b());
        }
    }

    @Override // com.google.android.exoplayer2.drm.d
    public final void b() {
        int i = this.t - 1;
        this.t = i;
        if (i == 0) {
            if (this.q != -9223372036854775807L) {
                ArrayList arrayList = new ArrayList(this.f20860a);
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    ((DefaultDrmSession) arrayList.get(i2)).b((c.a) null);
                }
            }
            ((i) com.google.android.exoplayer2.util.a.b(this.u)).d();
            this.u = null;
        }
    }
}
