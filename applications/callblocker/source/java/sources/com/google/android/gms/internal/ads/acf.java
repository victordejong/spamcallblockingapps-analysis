package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.ads.internal.C2341q;
import com.google.android.gms.common.util.AbstractC2708e;
import java.io.IOException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/acf.class */
public final class acf extends abt implements dsa<drp> {

    /* renamed from: d */
    private String f7807d;

    /* renamed from: e */
    private final aae f7808e;

    /* renamed from: f */
    private boolean f7809f;

    /* renamed from: i */
    private ByteBuffer f7812i;

    /* renamed from: j */
    private boolean f7813j;

    /* renamed from: l */
    private boolean f7815l;

    /* renamed from: g */
    private final acg f7810g = new acg();

    /* renamed from: h */
    private final abl f7811h = new abl();

    /* renamed from: k */
    private final Object f7814k = new Object();

    public acf(aad aadVar, aae aaeVar) {
        super(aadVar);
        this.f7808e = aaeVar;
    }

    /* renamed from: f */
    private final void m13645f() {
        int m13644a = (int) this.f7810g.m13644a();
        int m13668a = (int) this.f7811h.m13668a(this.f7812i);
        int position = this.f7812i.position();
        int round = Math.round(m13668a * (position / m13644a));
        m13661a(this.f7807d, mo13632b(this.f7807d), position, m13644a, round, m13668a, round > 0, abb.m13676b(), abb.m13673c());
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8767a(drp drpVar) {
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo8766a(drp drpVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.dsa
    /* renamed from: a */
    public final /* synthetic */ void mo8765a(drp drpVar, drq drqVar) {
        drp drpVar2 = drpVar;
        if (drpVar2 instanceof drr) {
            this.f7810g.m13643a((drr) drpVar2);
        }
    }

    /* JADX WARN: Type inference failed for: r0v42, types: [long] */
    /* JADX WARN: Type inference failed for: r0v90, types: [long] */
    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: a */
    public final boolean mo13638a(String str) {
        drp drpVar;
        Exception e;
        boolean z;
        AbstractC2708e m14737j;
        ?? mo13862a;
        long longValue;
        long longValue2;
        byte[] bArr;
        char c;
        ?? mo13862a2;
        this.f7807d = str;
        String mo13632b = mo13632b(str);
        try {
            drr drrVar = new drr(this.f7763b, null, this, this.f7808e.f7614d, this.f7808e.f7615e, true, null);
            drpVar = this.f7808e.f7619i ? new aaw(this.f7762a, drrVar, null, null) : drrVar;
            drpVar.mo8811a(new drq(Uri.parse(str)));
            aad aadVar = this.f7764c.get();
            if (aadVar != null) {
                aadVar.mo13463a(mo13632b, this);
            }
            m14737j = C2341q.m14737j();
            mo13862a = m14737j.mo13862a();
            longValue = ((Long) dyx.m8158e().m7876a(edi.f16604p)).longValue();
            longValue2 = ((Long) dyx.m8158e().m7876a(edi.f16603o)).longValue();
            this.f7812i = ByteBuffer.allocate(this.f7808e.f7613c);
            bArr = new byte[8192];
            c = mo13862a;
        } catch (Exception e2) {
            e = e2;
            drpVar = "error";
        }
        do {
            int mo8808a = drpVar.mo8808a(bArr, 0, Math.min(this.f7812i.remaining(), 8192));
            if (mo8808a == -1) {
                this.f7815l = true;
                m13660a(str, mo13632b, (int) this.f7811h.m13668a(this.f7812i));
            } else {
                synchronized (this.f7814k) {
                    if (!this.f7809f) {
                        this.f7812i.put(bArr, 0, mo8808a);
                    }
                }
                if (this.f7812i.remaining() <= 0) {
                    m13645f();
                } else {
                    try {
                        if (this.f7809f) {
                            throw new IOException(new StringBuilder(35).append("Precache abort at ").append(this.f7812i.limit()).append(" bytes").toString());
                        }
                        mo13862a2 = m14737j.mo13862a();
                        char c2 = c;
                        if (mo13862a2 - c >= longValue) {
                            m13645f();
                            c2 = mo13862a2;
                        }
                        c = c2;
                    } catch (Exception e3) {
                        e = e3;
                        String canonicalName = e.getClass().getCanonicalName();
                        String message = e.getMessage();
                        String sb = new StringBuilder(String.valueOf(canonicalName).length() + 1 + String.valueOf(message).length()).append(canonicalName).append(":").append(message).toString();
                        C3556uu.m6745e(new StringBuilder(String.valueOf(str).length() + 34 + String.valueOf(sb).length()).append("Failed to preload url ").append(str).append(" Exception: ").append(sb).toString());
                        m13658a(str, mo13632b, drpVar, sb);
                        z = false;
                        return z;
                    }
                }
            }
            z = true;
            return z;
        } while (mo13862a2 - mo13862a <= 1000 * longValue2);
        throw new IOException(new StringBuilder(49).append("Timeout exceeded. Limit: ").append(longValue2).append(" sec").toString());
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final String mo13632b(String str) {
        String valueOf = String.valueOf("cache:");
        String valueOf2 = String.valueOf(super.mo13632b(str));
        return valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf);
    }

    @Override // com.google.android.gms.internal.ads.abt
    /* renamed from: b */
    public final void mo13634b() {
        this.f7809f = true;
    }

    /* renamed from: c */
    public final String m13648c() {
        return this.f7807d;
    }

    /* renamed from: d */
    public final boolean m13647d() {
        return this.f7815l;
    }

    /* renamed from: e */
    public final ByteBuffer m13646e() {
        synchronized (this.f7814k) {
            if (this.f7812i != null && !this.f7813j) {
                this.f7812i.flip();
                this.f7813j = true;
            }
            this.f7809f = true;
        }
        return this.f7812i;
    }
}
