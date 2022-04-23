package androidx.media2.exoplayer.external.drm;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager;
import androidx.media2.exoplayer.external.drm.DrmInitData;
import androidx.media2.exoplayer.external.drm.DrmSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;
import p012b.p076s.p078b.p079a.C1220c;
import p012b.p076s.p078b.p079a.p080a1.C1160a;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
import p012b.p076s.p078b.p079a.p080a1.C1168e;
import p012b.p076s.p078b.p079a.p080a1.C1175j;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1324h;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1327k;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1329m;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1330n;
import p012b.p076s.p078b.p079a.p085r0.AbstractC1334p;
import p012b.p076s.p078b.p079a.p085r0.C1319g;
import p012b.p076s.p078b.p079a.p085r0.C1328l;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager.class */
public class DefaultDrmSessionManager<T extends AbstractC1329m> implements AbstractC1327k<T>, C1319g.AbstractC1322c<T> {

    /* renamed from: a */
    public final UUID f1648a;

    /* renamed from: b */
    public final AbstractC1330n<T> f1649b;

    /* renamed from: c */
    public final AbstractC1334p f1650c;

    /* renamed from: d */
    public final HashMap<String, String> f1651d;

    /* renamed from: e */
    public final C1168e<AbstractC1324h> f1652e;

    /* renamed from: f */
    public final boolean f1653f;

    /* renamed from: g */
    public final int f1654g;

    /* renamed from: h */
    public final List<C1319g<T>> f1655h;

    /* renamed from: i */
    public final List<C1319g<T>> f1656i;

    /* renamed from: j */
    public Looper f1657j;

    /* renamed from: k */
    public int f1658k;

    /* renamed from: l */
    public byte[] f1659l;

    /* renamed from: m */
    public volatile DefaultDrmSessionManager<T>.HandlerC0290b f1660m;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$MissingSchemeDataException.class */
    public static final class MissingSchemeDataException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public MissingSchemeDataException(java.util.UUID r6) {
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

    /* renamed from: androidx.media2.exoplayer.external.drm.DefaultDrmSessionManager$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/drm/DefaultDrmSessionManager$b.class */
    public class HandlerC0290b extends Handler {
        public HandlerC0290b(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            byte[] bArr = (byte[]) message.obj;
            if (bArr != null) {
                for (C1319g gVar : DefaultDrmSessionManager.this.f1655h) {
                    if (gVar.m33719a(bArr)) {
                        gVar.m33726a(message.what);
                        return;
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public static List<DrmInitData.SchemeData> m38104a(DrmInitData drmInitData, UUID uuid, boolean z) {
        ArrayList arrayList = new ArrayList(drmInitData.f1665d);
        for (int i = 0; i < drmInitData.f1665d; i++) {
            DrmInitData.SchemeData a = drmInitData.m38101a(i);
            if ((a.m38093a(uuid) || (C1220c.f4892c.equals(uuid) && a.m38093a(C1220c.f4891b))) && (a.f1670e != null || z)) {
                arrayList.add(a);
            }
        }
        return arrayList;
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1327k
    /* renamed from: a */
    public DrmSession<T> mo33693a(Looper looper, DrmInitData drmInitData) {
        List<DrmInitData.SchemeData> list;
        C1319g<T> gVar;
        Looper looper2 = this.f1657j;
        C1160a.m34518b(looper2 == null || looper2 == looper);
        if (this.f1655h.isEmpty()) {
            this.f1657j = looper;
            if (this.f1660m == null) {
                this.f1660m = new HandlerC0290b(looper);
            }
        }
        if (this.f1659l == null) {
            list = m38104a(drmInitData, this.f1648a, false);
            if (list.isEmpty()) {
                final MissingSchemeDataException missingSchemeDataException = new MissingSchemeDataException(this.f1648a);
                this.f1652e.m34429a(new C1168e.AbstractC1169a(missingSchemeDataException) { // from class: b.s.b.a.r0.i

                    /* renamed from: a */
                    public final DefaultDrmSessionManager.MissingSchemeDataException f5278a;

                    {
                        this.f5278a = missingSchemeDataException;
                    }

                    @Override // p012b.p076s.p078b.p079a.p080a1.C1168e.AbstractC1169a
                    /* renamed from: a */
                    public void mo32373a(Object obj) {
                        ((AbstractC1324h) obj).mo33699a(this.f5278a);
                    }
                });
                return new C1328l(new DrmSession.DrmSessionException(missingSchemeDataException));
            }
        } else {
            list = null;
        }
        if (this.f1653f) {
            Iterator<C1319g<T>> it = this.f1655h.iterator();
            do {
                gVar = null;
                if (!it.hasNext()) {
                    break;
                }
                gVar = it.next();
            } while (!C1167d0.m34478a(gVar.f5255a, list));
        } else {
            gVar = this.f1655h.isEmpty() ? null : this.f1655h.get(0);
        }
        C1319g<T> gVar2 = gVar;
        if (gVar == null) {
            gVar2 = new C1319g<>(this.f1648a, this.f1649b, this, new C1319g.AbstractC1323d(this) { // from class: b.s.b.a.r0.j

                /* renamed from: a */
                public final DefaultDrmSessionManager f5279a;

                {
                    this.f5279a = this;
                }

                @Override // p012b.p076s.p078b.p079a.p085r0.C1319g.AbstractC1323d
                /* renamed from: a */
                public void mo33694a(C1319g gVar3) {
                    this.f5279a.m38103b(gVar3);
                }
            }, list, this.f1658k, this.f1659l, this.f1651d, this.f1650c, looper, this.f1652e, this.f1654g);
            this.f1655h.add(gVar2);
        }
        gVar2.m33727a();
        return gVar2;
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.C1319g.AbstractC1322c
    /* renamed from: a */
    public void mo33702a() {
        for (C1319g<T> gVar : this.f1656i) {
            gVar.m33709i();
        }
        this.f1656i.clear();
    }

    /* renamed from: a */
    public final void m38107a(Handler handler, AbstractC1324h hVar) {
        this.f1652e.m34430a(handler, hVar);
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1327k
    /* renamed from: a */
    public void mo33691a(DrmSession<T> drmSession) {
        if (!(drmSession instanceof C1328l)) {
            ((C1319g) drmSession).m33707k();
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.C1319g.AbstractC1322c
    /* renamed from: a */
    public void mo33701a(C1319g<T> gVar) {
        if (!this.f1656i.contains(gVar)) {
            this.f1656i.add(gVar);
            if (this.f1656i.size() == 1) {
                gVar.m33708j();
            }
        }
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.C1319g.AbstractC1322c
    /* renamed from: a */
    public void mo33700a(Exception exc) {
        for (C1319g<T> gVar : this.f1656i) {
            gVar.m33712c(exc);
        }
        this.f1656i.clear();
    }

    @Override // p012b.p076s.p078b.p079a.p085r0.AbstractC1327k
    /* renamed from: a */
    public boolean mo33692a(DrmInitData drmInitData) {
        if (this.f1659l != null) {
            return true;
        }
        if (m38104a(drmInitData, this.f1648a, true).isEmpty()) {
            if (drmInitData.f1665d != 1 || !drmInitData.m38101a(0).m38093a(C1220c.f4891b)) {
                return false;
            }
            String valueOf = String.valueOf(this.f1648a);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 72);
            sb.append("DrmInitData only contains common PSSH SchemeData. Assuming support for: ");
            sb.append(valueOf);
            C1175j.m34414d("DefaultDrmSessionMgr", sb.toString());
        }
        String str = drmInitData.f1664c;
        boolean z = true;
        if (str != null) {
            if ("cenc".equals(str)) {
                z = true;
            } else if (!"cbc1".equals(str) && !"cbcs".equals(str) && !"cens".equals(str)) {
                return true;
            } else {
                z = C1167d0.f4688a >= 25;
            }
        }
        return z;
    }

    /* renamed from: c */
    public final void m38103b(C1319g<T> gVar) {
        this.f1655h.remove(gVar);
        if (this.f1656i.size() > 1 && this.f1656i.get(0) == gVar) {
            this.f1656i.get(1).m33708j();
        }
        this.f1656i.remove(gVar);
    }
}
