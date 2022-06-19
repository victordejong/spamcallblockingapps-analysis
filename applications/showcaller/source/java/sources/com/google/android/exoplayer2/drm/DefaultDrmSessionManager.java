package com.google.android.exoplayer2.drm;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import com.google.android.exoplayer2.C5543v;
import com.google.android.exoplayer2.drm.AbstractC5043m;
import com.google.android.exoplayer2.drm.AbstractC5044n;
import com.google.android.exoplayer2.drm.DefaultDrmSession;
import com.google.android.exoplayer2.drm.DefaultDrmSessionManager;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.drm.DrmSession;
import com.google.android.exoplayer2.upstream.AbstractC5493u;
import com.google.android.exoplayer2.util.C5508e;
import com.google.android.exoplayer2.util.C5515h0;
import com.google.android.exoplayer2.util.C5519k;
import com.google.android.exoplayer2.util.C5526o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
@TargetApi(18)
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager.class */
public class DefaultDrmSessionManager<T extends AbstractC5043m> implements AbstractC5040k<T> {

    /* renamed from: b */
    private final UUID f15680b;

    /* renamed from: c */
    private final AbstractC5044n.AbstractC5047c<T> f15681c;

    /* renamed from: d */
    private final AbstractC5050p f15682d;

    /* renamed from: e */
    private final HashMap<String, String> f15683e;

    /* renamed from: f */
    private final C5519k<AbstractC5037h> f15684f;

    /* renamed from: g */
    private final boolean f15685g;

    /* renamed from: h */
    private final int[] f15686h;

    /* renamed from: i */
    private final boolean f15687i;

    /* renamed from: j */
    private final DefaultDrmSessionManager<T>.C5027d f15688j;

    /* renamed from: k */
    private final AbstractC5493u f15689k;

    /* renamed from: l */
    private final List<DefaultDrmSession<T>> f15690l;

    /* renamed from: m */
    private final List<DefaultDrmSession<T>> f15691m;

    /* renamed from: n */
    private int f15692n;

    /* renamed from: o */
    private AbstractC5044n<T> f15693o;

    /* renamed from: p */
    private DefaultDrmSession<T> f15694p;

    /* renamed from: q */
    private DefaultDrmSession<T> f15695q;

    /* renamed from: r */
    private Looper f15696r;

    /* renamed from: s */
    private int f15697s;

    /* renamed from: t */
    private byte[] f15698t;

    /* renamed from: u */
    volatile DefaultDrmSessionManager<T>.HandlerC5026c f15699u;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        private MissingSchemeDataException(UUID uuid) {
            super("Media does not support uuid: " + uuid);
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$b.class */
    private class C5025b implements AbstractC5044n.AbstractC5046b<T> {
        private C5025b() {
            DefaultDrmSessionManager.this = r4;
        }
    }

    @SuppressLint({"HandlerLeak"})
    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$c */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$c.class */
    public class HandlerC5026c extends Handler {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public HandlerC5026c(Looper looper) {
            super(looper);
            DefaultDrmSessionManager.this = r4;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr == null) {
                return;
            }
            for (DefaultDrmSession defaultDrmSession : DefaultDrmSessionManager.this.f15690l) {
                if (defaultDrmSession.m20827l(bArr)) {
                    defaultDrmSession.m20820s(message.what);
                    return;
                }
            }
        }
    }

    /* renamed from: com.google.android.exoplayer2.drm.DefaultDrmSessionManager$d */
    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/DefaultDrmSessionManager$d.class */
    public class C5027d implements DefaultDrmSession.AbstractC5019a<T> {
    }

    /* renamed from: i */
    private void m20807i(Looper looper) {
        Looper looper2 = this.f15696r;
        C5508e.m18910f(looper2 == null || looper2 == looper);
        this.f15696r = looper;
    }

    /* renamed from: j */
    private DefaultDrmSession<T> m20806j(List<DrmInitData.SchemeData> list, boolean z) {
        C5508e.m18911e(this.f15693o);
        return new DefaultDrmSession<>(this.f15680b, this.f15693o, this.f15688j, new DefaultDrmSession.AbstractC5020b() { // from class: com.google.android.exoplayer2.drm.c
            @Override // com.google.android.exoplayer2.drm.DefaultDrmSession.AbstractC5020b
            /* renamed from: a */
            public final void mo20786a(DefaultDrmSession defaultDrmSession) {
                DefaultDrmSessionManager.this.m20801o(defaultDrmSession);
            }
        }, list, this.f15697s, this.f15687i | z, z, this.f15698t, this.f15683e, this.f15682d, (Looper) C5508e.m18911e(this.f15696r), this.f15684f, this.f15689k);
    }

    /* renamed from: k */
    private static List<DrmInitData.SchemeData> m20805k(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f15705g);
        for (int i = 0; i < drmInitData.f15705g; i++) {
            DrmInitData.SchemeData m20796e = drmInitData.m20796e(i);
            if ((m20796e.m20791d(uuid) || (C5543v.f17962c.equals(uuid) && m20796e.m20791d(C5543v.f17961b))) && (m20796e.f15710h != null || z)) {
                arrayList.add(m20796e);
            }
        }
        return arrayList;
    }

    /* renamed from: n */
    private void m20802n(Looper looper) {
        if (this.f15699u == null) {
            this.f15699u = new HandlerC5026c(looper);
        }
    }

    /* renamed from: o */
    public void m20801o(DefaultDrmSession<T> defaultDrmSession) {
        this.f15690l.remove(defaultDrmSession);
        if (this.f15694p == defaultDrmSession) {
            this.f15694p = null;
        }
        if (this.f15695q == defaultDrmSession) {
            this.f15695q = null;
        }
        if (this.f15691m.size() > 1 && this.f15691m.get(0) == defaultDrmSession) {
            this.f15691m.get(1).m20816w();
        }
        this.f15691m.remove(defaultDrmSession);
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: a */
    public Class<T> mo20775a(DrmInitData drmInitData) {
        return mo20770f(drmInitData) ? ((AbstractC5044n) C5508e.m18911e(this.f15693o)).m20763a() : null;
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: b */
    public final void mo20774b() {
        int i = this.f15692n - 1;
        this.f15692n = i;
        if (i == 0) {
            ((AbstractC5044n) C5508e.m18911e(this.f15693o)).m20762b();
            this.f15693o = null;
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: c */
    public final void mo20773c() {
        int i = this.f15692n;
        this.f15692n = i + 1;
        if (i == 0) {
            C5508e.m18910f(this.f15693o == null);
            AbstractC5044n<T> m20751a = this.f15681c.m20751a(this.f15680b);
            this.f15693o = m20751a;
            m20751a.m20755i(new C5025b());
        }
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: d */
    public DrmSession<T> mo20772d(Looper looper, int i) {
        m20807i(looper);
        AbstractC5044n abstractC5044n = (AbstractC5044n) C5508e.m18911e(this.f15693o);
        if ((C5049o.class.equals(abstractC5044n.m20763a()) && C5049o.f15720a) || C5515h0.m18846Z(this.f15686h, i) == -1 || abstractC5044n.m20763a() == null) {
            return null;
        }
        m20802n(looper);
        if (this.f15694p == null) {
            DefaultDrmSession<T> m20806j = m20806j(Collections.emptyList(), true);
            this.f15690l.add(m20806j);
            this.f15694p = m20806j;
        }
        this.f15694p.mo20769a();
        return this.f15694p;
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: e */
    public DrmSession<T> mo20771e(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        DefaultDrmSession<T> defaultDrmSession;
        m20807i(looper);
        m20802n(looper);
        if (this.f15698t == null) {
            List<DrmInitData.SchemeData> m20805k = m20805k(drmInitData, this.f15680b, false);
            list = m20805k;
            if (m20805k.isEmpty()) {
                final MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f15680b);
                this.f15684f.m18784b(new C5519k.AbstractC5520a() { // from class: com.google.android.exoplayer2.drm.d
                    @Override // com.google.android.exoplayer2.util.C5519k.AbstractC5520a
                    /* renamed from: a */
                    public final void mo18782a(Object obj) {
                        ((AbstractC5037h) obj).mo20783j(DefaultDrmSessionManager.MissingSchemeDataException.this);
                    }
                });
                return new C5042l(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.f15685g) {
            Iterator<DefaultDrmSession<T>> it = this.f15690l.iterator();
            do {
                defaultDrmSession = null;
                if (!it.hasNext()) {
                    break;
                }
                defaultDrmSession = it.next();
            } while (!C5515h0.m18843b(defaultDrmSession.f15651a, list));
        } else {
            defaultDrmSession = this.f15695q;
        }
        DefaultDrmSession<T> defaultDrmSession2 = defaultDrmSession;
        if (defaultDrmSession == null) {
            defaultDrmSession2 = m20806j(list, false);
            if (!this.f15685g) {
                this.f15695q = defaultDrmSession2;
            }
            this.f15690l.add(defaultDrmSession2);
        }
        defaultDrmSession2.mo20769a();
        return defaultDrmSession2;
    }

    @Override // com.google.android.exoplayer2.drm.AbstractC5040k
    /* renamed from: f */
    public boolean mo20770f(DrmInitData drmInitData) {
        if (this.f15698t != null) {
            return true;
        }
        if (m20805k(drmInitData, this.f15680b, true).isEmpty()) {
            if (drmInitData.f15705g != 1 || !drmInitData.m20796e(0).m20791d(C5543v.f17961b)) {
                return false;
            }
            C5526o.m18742f("DefaultDrmSessionMgr", "DrmInitData only contains common PSSH SchemeData. Assuming support for: " + this.f15680b);
        }
        String str = drmInitData.f15704f;
        boolean z = true;
        if (str != null) {
            if ("cenc".equals(str)) {
                z = true;
            } else if (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) {
                return true;
            } else {
                z = C5515h0.f17876a >= 25;
            }
        }
        return z;
    }

    /* renamed from: h */
    public final void m20808h(Handler handler, AbstractC5037h abstractC5037h) {
        this.f15684f.m18785a(handler, abstractC5037h);
    }
}
