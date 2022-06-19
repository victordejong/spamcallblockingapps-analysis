package androidx.media2.exoplayer.external.drm;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.C1446c;
import androidx.media2.exoplayer.external.drm.AbstractC1471m;
import androidx.media2.exoplayer.external.drm.DefaultDrmSession;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.upstream.AbstractC1986t;
import androidx.media2.exoplayer.external.upstream.C1983q;
import androidx.media2.exoplayer.external.util.C1993a;
import androidx.media2.exoplayer.external.util.C1996ac;
import androidx.media2.exoplayer.external.util.C2003f;
import androidx.media2.exoplayer.external.util.C2009j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager.class */
public final class DefaultDrmSessionManager<T extends AbstractC1471m> implements DefaultDrmSession.AbstractC1448a<T>, AbstractC1468k<T> {

    /* renamed from: a */
    public final C2003f<AbstractC1464g> f5560a;

    /* renamed from: b */
    final List<DefaultDrmSession<T>> f5561b;

    /* renamed from: c */
    final List<DefaultDrmSession<T>> f5562c;

    /* renamed from: d */
    volatile DefaultDrmSessionManager<T>.HandlerC1455b f5563d;

    /* renamed from: f */
    private final UUID f5564f;

    /* renamed from: g */
    private final AbstractC1472n<T> f5565g;

    /* renamed from: h */
    private final AbstractC1476p f5566h;

    /* renamed from: i */
    private final HashMap<String, String> f5567i;

    /* renamed from: j */
    private final boolean f5568j;

    /* renamed from: k */
    private final AbstractC1986t f5569k;

    /* renamed from: l */
    private Looper f5570l;

    /* renamed from: m */
    private int f5571m;

    /* renamed from: n */
    private byte[] f5572n;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private MissingSchemeDataException(java.util.UUID r6) {
            /*
                r5 = this;
                r0 = r6
                java.lang.String r0 = java.lang.String.valueOf(r0)
                r6 = r0
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = r6
                java.lang.String r2 = java.lang.String.valueOf(r2)
                int r2 = r2.length()
                r3 = 29
                int r2 = r2 + r3
                r1.<init>(r2)
                r7 = r0
                r0 = r7
                java.lang.String r1 = "Media does not support uuid: "
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r5
                r1 = r7
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager.MissingSchemeDataException.<init>(java.util.UUID):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$a.class */
    public final class C1454a {
        private C1454a() {
            DefaultDrmSessionManager.this = r4;
        }
    }

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b.class */
    final class HandlerC1455b extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC1455b(Looper looper) {
            super(looper);
            DefaultDrmSessionManager.this = r4;
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f5561b) {
                if (Arrays.equals(defaultDrmSession.f5543k, bArr)) {
                    if (message.what != 2 || defaultDrmSession.f5536d != 0 || defaultDrmSession.f5542j != 4) {
                        return;
                    }
                    C1996ac.m41659a(defaultDrmSession.f5543k);
                    defaultDrmSession.m42886b(false);
                    return;
                }
            }
        }
    }

    public DefaultDrmSessionManager(UUID uuid, AbstractC1472n<T> abstractC1472n, AbstractC1476p abstractC1476p, HashMap<String, String> hashMap) {
        this(uuid, (AbstractC1472n) abstractC1472n, abstractC1476p, hashMap, false, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, AbstractC1472n<T> abstractC1472n, AbstractC1476p abstractC1476p, HashMap<String, String> hashMap, boolean z) {
        this(uuid, abstractC1472n, abstractC1476p, hashMap, z, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, AbstractC1472n<T> abstractC1472n, AbstractC1476p abstractC1476p, HashMap<String, String> hashMap, boolean z, int i) {
        this(uuid, abstractC1472n, abstractC1476p, hashMap, z, new C1983q(i));
    }

    private DefaultDrmSessionManager(UUID uuid, AbstractC1472n<T> abstractC1472n, AbstractC1476p abstractC1476p, HashMap<String, String> hashMap, boolean z, AbstractC1986t abstractC1986t) {
        C1993a.m41690a(uuid);
        C1993a.m41690a(abstractC1472n);
        C1993a.m41687a(!C1446c.f5515b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f5564f = uuid;
        this.f5565g = abstractC1472n;
        this.f5566h = abstractC1476p;
        this.f5567i = hashMap;
        this.f5560a = new C2003f<>();
        this.f5568j = z;
        this.f5569k = abstractC1986t;
        this.f5571m = 0;
        this.f5561b = new ArrayList();
        this.f5562c = new ArrayList();
        if (z && C1446c.f5517d.equals(uuid)) {
            int i = C1996ac.f8062a;
        }
        new C1454a();
    }

    /* renamed from: a */
    private static List<DrmInitData.SchemeData> m42877a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (C1446c.f5516c.equals(uuid) && schemeData.matches(C1446c.f5515b))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
    /* renamed from: a */
    public final DrmSession<T> mo42868a(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        DefaultDrmSession<T> defaultDrmSession;
        Looper looper2 = this.f5570l;
        C1993a.m41686b(looper2 == null || looper2 == looper);
        if (this.f5561b.isEmpty()) {
            this.f5570l = looper;
            if (this.f5563d == null) {
                this.f5563d = new HandlerC1455b(looper);
            }
        }
        if (this.f5572n == null) {
            list = m42877a(drmInitData, this.f5564f, false);
            if (list.isEmpty()) {
                MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f5564f);
                this.f5560a.m41590a(new C2003f.AbstractC2004a(missingSchemeDataException) { // from class: androidx.media2.exoplayer.external.drm.h

                    /* renamed from: a */
                    private final DefaultDrmSessionManager.MissingSchemeDataException f5582a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5582a = missingSchemeDataException;
                    }

                    @Override // androidx.media2.exoplayer.external.util.C2003f.AbstractC2004a
                    /* renamed from: a */
                    public final void mo41588a(Object obj) {
                        DefaultDrmSessionManager.MissingSchemeDataException missingSchemeDataException2 = this.f5582a;
                        ((AbstractC1464g) obj).mo42873i();
                    }
                });
                return new C1470l(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.f5568j) {
            Iterator<DefaultDrmSession<T>> it2 = this.f5561b.iterator();
            do {
                defaultDrmSession = null;
                if (!it2.hasNext()) {
                    break;
                }
                defaultDrmSession = it2.next();
            } while (!C1996ac.m41658a(defaultDrmSession.f5533a, list));
        } else {
            defaultDrmSession = this.f5561b.isEmpty() ? null : this.f5561b.get(0);
        }
        DefaultDrmSession<T> defaultDrmSession2 = defaultDrmSession;
        if (defaultDrmSession == null) {
            defaultDrmSession2 = new DefaultDrmSession<>(this.f5564f, this.f5565g, this, new DefaultDrmSession.AbstractC1449b(this) { // from class: androidx.media2.exoplayer.external.drm.i

                /* renamed from: a */
                private final DefaultDrmSessionManager f5583a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f5583a = this;
                }

                @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.AbstractC1449b
                /* renamed from: a */
                public final void mo42870a(DefaultDrmSession defaultDrmSession3) {
                    DefaultDrmSessionManager defaultDrmSessionManager = this.f5583a;
                    defaultDrmSessionManager.f5561b.remove(defaultDrmSession3);
                    if (defaultDrmSessionManager.f5562c.size() > 1 && defaultDrmSessionManager.f5562c.get(0) == defaultDrmSession3) {
                        ((DefaultDrmSession) defaultDrmSessionManager.f5562c.get(1)).m42890a();
                    }
                    defaultDrmSessionManager.f5562c.remove(defaultDrmSession3);
                }
            }, list, this.f5571m, this.f5572n, this.f5567i, this.f5566h, looper, this.f5560a, this.f5569k);
            this.f5561b.add(defaultDrmSession2);
        }
        defaultDrmSession2.mo42861f();
        return defaultDrmSession2;
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.AbstractC1448a
    /* renamed from: a */
    public final void mo42881a() {
        for (DefaultDrmSession<T> defaultDrmSession : this.f5562c) {
            if (defaultDrmSession.m42888a(false)) {
                defaultDrmSession.m42886b(true);
            }
        }
        this.f5562c.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.AbstractC1448a
    /* renamed from: a */
    public final void mo42880a(DefaultDrmSession<T> defaultDrmSession) {
        if (this.f5562c.contains(defaultDrmSession)) {
            return;
        }
        this.f5562c.add(defaultDrmSession);
        if (this.f5562c.size() != 1) {
            return;
        }
        defaultDrmSession.m42890a();
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.AbstractC1448a
    /* renamed from: a */
    public final void mo42876a(Exception exc) {
        for (DefaultDrmSession<T> defaultDrmSession : this.f5562c) {
            defaultDrmSession.m42887b(exc);
        }
        this.f5562c.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
    /* renamed from: a */
    public final boolean mo42867a(DrmInitData drmInitData) {
        if (this.f5572n != null) {
            return true;
        }
        if (m42877a(drmInitData, this.f5564f, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(C1446c.f5515b)) {
                return false;
            }
            String valueOf = String.valueOf(this.f5564f);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            C2009j.m41584a("DefaultDrmSessionMgr", sb.toString());
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        return (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) || C1996ac.f8062a >= 25;
    }

    @Override // androidx.media2.exoplayer.external.drm.AbstractC1468k
    /* renamed from: b */
    public final Class<T> mo42866b(DrmInitData drmInitData) {
        if (mo42867a(drmInitData)) {
            return this.f5565g.m42853g();
        }
        return null;
    }
}
