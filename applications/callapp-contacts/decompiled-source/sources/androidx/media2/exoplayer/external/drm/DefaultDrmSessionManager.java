package androidx.media2.exoplayer.external.drm;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.c;
import androidx.media2.exoplayer.external.drm.DefaultDrmSession;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import androidx.media2.exoplayer.external.drm.m;
import androidx.media2.exoplayer.external.upstream.q;
import androidx.media2.exoplayer.external.upstream.t;
import androidx.media2.exoplayer.external.util.ac;
import androidx.media2.exoplayer.external.util.f;
import androidx.media2.exoplayer.external.util.j;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager.class */
public final class DefaultDrmSessionManager<T extends m> implements DefaultDrmSession.a<T>, k<T> {

    /* renamed from: a  reason: collision with root package name */
    public final f<g> f2977a;

    /* renamed from: b  reason: collision with root package name */
    final List<DefaultDrmSession<T>> f2978b;

    /* renamed from: c  reason: collision with root package name */
    final List<DefaultDrmSession<T>> f2979c;

    /* renamed from: d  reason: collision with root package name */
    volatile DefaultDrmSessionManager<T>.b f2980d;
    private final UUID f;
    private final n<T> g;
    private final p h;
    private final HashMap<String, String> i;
    private final boolean j;
    private final t k;
    private Looper l;
    private int m;
    private byte[] n;

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

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$a.class */
    final class a {
        private a() {
        }
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b.class */
    final class b extends Handler {
        public b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr != null) {
                for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f2978b) {
                    if (Arrays.equals(defaultDrmSession.k, bArr)) {
                        if (message.what == 2 && defaultDrmSession.f2970d == 0 && defaultDrmSession.j == 4) {
                            ac.a(defaultDrmSession.k);
                            defaultDrmSession.b(false);
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    public DefaultDrmSessionManager(UUID uuid, n<T> nVar, p pVar, HashMap<String, String> hashMap) {
        this(uuid, (n) nVar, pVar, hashMap, false, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, n<T> nVar, p pVar, HashMap<String, String> hashMap, boolean z) {
        this(uuid, nVar, pVar, hashMap, z, 3);
    }

    public DefaultDrmSessionManager(UUID uuid, n<T> nVar, p pVar, HashMap<String, String> hashMap, boolean z, int i) {
        this(uuid, nVar, pVar, hashMap, z, new q(i));
    }

    private DefaultDrmSessionManager(UUID uuid, n<T> nVar, p pVar, HashMap<String, String> hashMap, boolean z, t tVar) {
        androidx.media2.exoplayer.external.util.a.a(uuid);
        androidx.media2.exoplayer.external.util.a.a(nVar);
        androidx.media2.exoplayer.external.util.a.a(!c.f2959b.equals(uuid), "Use C.CLEARKEY_UUID instead");
        this.f = uuid;
        this.g = nVar;
        this.h = pVar;
        this.i = hashMap;
        this.f2977a = new f<>();
        this.j = z;
        this.k = tVar;
        this.m = 0;
        this.f2978b = new ArrayList();
        this.f2979c = new ArrayList();
        if (z && c.f2961d.equals(uuid)) {
            int i = ac.f4119a;
        }
        new a();
    }

    private static List<DrmInitData.SchemeData> a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.schemeDataCount);
        for (int i = 0; i < drmInitData.schemeDataCount; i++) {
            DrmInitData.SchemeData schemeData = drmInitData.get(i);
            if ((schemeData.matches(uuid) || (c.f2960c.equals(uuid) && schemeData.matches(c.f2959b))) && (schemeData.data != null || z)) {
                arrayList.add(schemeData);
            }
        }
        return arrayList;
    }

    @Override // androidx.media2.exoplayer.external.drm.k
    public final DrmSession<T> a(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        DefaultDrmSession<T> defaultDrmSession;
        Looper looper2 = this.l;
        androidx.media2.exoplayer.external.util.a.b(looper2 == null || looper2 == looper);
        if (this.f2978b.isEmpty()) {
            this.l = looper;
            if (this.f2980d == null) {
                this.f2980d = new b(looper);
            }
        }
        if (this.n == null) {
            list = a(drmInitData, this.f, false);
            if (list.isEmpty()) {
                final MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f);
                this.f2977a.a(new f.a(missingSchemeDataException) { // from class: androidx.media2.exoplayer.external.drm.h

                    /* renamed from: a  reason: collision with root package name */
                    private final DefaultDrmSessionManager.MissingSchemeDataException f2990a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f2990a = missingSchemeDataException;
                    }

                    @Override // androidx.media2.exoplayer.external.util.f.a
                    public final void a(Object obj) {
                        DefaultDrmSessionManager.MissingSchemeDataException missingSchemeDataException2 = this.f2990a;
                        ((g) obj).i();
                    }
                });
                return new l(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.j) {
            Iterator<DefaultDrmSession<T>> it2 = this.f2978b.iterator();
            do {
                defaultDrmSession = null;
                if (!it2.hasNext()) {
                    break;
                }
                defaultDrmSession = it2.next();
            } while (!ac.a(defaultDrmSession.f2967a, list));
        } else {
            defaultDrmSession = this.f2978b.isEmpty() ? null : this.f2978b.get(0);
        }
        DefaultDrmSession<T> defaultDrmSession2 = defaultDrmSession;
        if (defaultDrmSession == null) {
            defaultDrmSession2 = new DefaultDrmSession<>(this.f, this.g, this, new DefaultDrmSession.b(this) { // from class: androidx.media2.exoplayer.external.drm.i

                /* renamed from: a  reason: collision with root package name */
                private final DefaultDrmSessionManager f2991a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f2991a = this;
                }

                @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.b
                public final void a(DefaultDrmSession defaultDrmSession3) {
                    DefaultDrmSessionManager defaultDrmSessionManager = this.f2991a;
                    defaultDrmSessionManager.f2978b.remove(defaultDrmSession3);
                    if (defaultDrmSessionManager.f2979c.size() > 1 && defaultDrmSessionManager.f2979c.get(0) == defaultDrmSession3) {
                        ((DefaultDrmSession) defaultDrmSessionManager.f2979c.get(1)).a();
                    }
                    defaultDrmSessionManager.f2979c.remove(defaultDrmSession3);
                }
            }, list, this.m, this.n, this.i, this.h, looper, this.f2977a, this.k);
            this.f2978b.add(defaultDrmSession2);
        }
        defaultDrmSession2.f();
        return defaultDrmSession2;
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.a
    public final void a() {
        for (DefaultDrmSession<T> defaultDrmSession : this.f2979c) {
            if (defaultDrmSession.a(false)) {
                defaultDrmSession.b(true);
            }
        }
        this.f2979c.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.a
    public final void a(DefaultDrmSession<T> defaultDrmSession) {
        if (!this.f2979c.contains(defaultDrmSession)) {
            this.f2979c.add(defaultDrmSession);
            if (this.f2979c.size() == 1) {
                defaultDrmSession.a();
            }
        }
    }

    @Override // androidx.media2.exoplayer.external.drm.DefaultDrmSession.a
    public final void a(Exception exc) {
        for (DefaultDrmSession<T> defaultDrmSession : this.f2979c) {
            defaultDrmSession.b(exc);
        }
        this.f2979c.clear();
    }

    @Override // androidx.media2.exoplayer.external.drm.k
    public final boolean a(DrmInitData drmInitData) {
        if (this.n != null) {
            return true;
        }
        if (a(drmInitData, this.f, true).isEmpty()) {
            if (drmInitData.schemeDataCount != 1 || !drmInitData.get(0).matches(c.f2959b)) {
                return false;
            }
            String valueOf = String.valueOf(this.f);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            j.a("DefaultDrmSessionMgr", sb.toString());
        }
        String str = drmInitData.schemeType;
        if (str == null || "cenc".equals(str)) {
            return true;
        }
        return (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) || ac.f4119a >= 25;
    }

    @Override // androidx.media2.exoplayer.external.drm.k
    public final Class<T> b(DrmInitData drmInitData) {
        if (a(drmInitData)) {
            return this.g.g();
        }
        return null;
    }
}
