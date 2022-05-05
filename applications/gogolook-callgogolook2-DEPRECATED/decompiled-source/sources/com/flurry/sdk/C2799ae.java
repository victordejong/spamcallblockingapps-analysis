package com.flurry.sdk;

import android.text.TextUtils;
import androidx.media2.session.SessionCommand;
import com.flurry.sdk.AbstractC2829aq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.flurry.sdk.ae */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ae.class */
public class C2799ae {

    /* renamed from: c */
    public static final String f3948c = "ae";

    /* renamed from: b */
    public final C2843at<byte[]> f3950b;

    /* renamed from: g */
    public final int f3953g;

    /* renamed from: a */
    public final Map<String, C2812aj> f3949a = new HashMap();

    /* renamed from: d */
    public final Map<String, C2812aj> f3951d = new LinkedHashMap();

    /* renamed from: e */
    public final Map<String, AbstractC2829aq> f3952e = new LinkedHashMap();

    /* renamed from: h */
    public EnumC2805a f3954h = EnumC2805a.INIT;

    /* renamed from: com.flurry.sdk.ae$a */
    /* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ae$a.class */
    public enum EnumC2805a {
        INIT,
        ACTIVE,
        PAUSED
    }

    public C2799ae(String str, long j, long j2) {
        this.f3950b = new C2843at<>(new C3411kh(), str, j);
        this.f3953g = Runtime.getRuntime().availableProcessors() > 1 ? 2 : 1;
    }

    /* renamed from: a */
    public static /* synthetic */ void m33678a(C2799ae aeVar) {
        for (C2812aj ajVar : aeVar.m33658i()) {
            if (!EnumC2828ap.COMPLETE.equals(aeVar.m33670b(ajVar))) {
                String str = f3948c;
                C3356jq.m32615a(3, str, "Precaching: expiring cached asset: " + ajVar.f3986a + " asset exp: " + ajVar.f3991f + " device epoch: " + System.currentTimeMillis());
                aeVar.m33674a(ajVar.f3986a);
            }
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m33677a(C2799ae aeVar, C2812aj ajVar) {
        if (ajVar != null) {
            synchronized (aeVar.f3951d) {
                aeVar.f3951d.remove(ajVar.f3986a);
            }
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m33671b(C2799ae aeVar) {
        if (aeVar.m33660g()) {
            C3356jq.m32615a(3, f3948c, "Precaching: Download files");
            synchronized (aeVar.f3951d) {
                Iterator<C2812aj> it = aeVar.f3951d.values().iterator();
                while (it.hasNext()) {
                    final C2812aj next = it.next();
                    if (aeVar.f3950b.m33546d(next.f3986a)) {
                        String str = f3948c;
                        C3356jq.m32615a(3, str, "Precaching: Asset already cached.  Skipping download:" + next.f3986a);
                        it.remove();
                        m33669b(next, EnumC2828ap.COMPLETE);
                    } else if (EnumC2828ap.IN_PROGRESS.equals(aeVar.m33670b(next))) {
                        continue;
                    } else if (C3323iz.m32690a().m32620b(aeVar) >= aeVar.f3953g) {
                        C3356jq.m32615a(3, f3948c, "Precaching: Download limit reached");
                        return;
                    } else {
                        C3444l.m32473a().m32472a("precachingDownloadStarted");
                        String str2 = f3948c;
                        C3356jq.m32615a(3, str2, "Precaching: Submitting for download: " + next.f3986a);
                        C2850av avVar = new C2850av(aeVar.f3950b, next.f3986a);
                        avVar.f4052b = next.f3986a;
                        avVar.f4053c = SessionCommand.COMMAND_CODE_SESSION_FAST_FORWARD;
                        avVar.f4054d = aeVar.f3950b;
                        avVar.f4051a = new AbstractC2829aq.AbstractC2840a() { // from class: com.flurry.sdk.ae.4
                            @Override // com.flurry.sdk.AbstractC2829aq.AbstractC2840a
                            /* renamed from: a */
                            public final void mo32331a(AbstractC2829aq aqVar) {
                                synchronized (C2799ae.this.f3952e) {
                                    C2799ae.this.f3952e.remove(next.f3986a);
                                }
                                C2799ae.m33677a(C2799ae.this, next);
                                if (aqVar.f4056f) {
                                    long j = aqVar.f4055e;
                                    String str3 = C2799ae.f3948c;
                                    C3356jq.m32615a(3, str3, "Precaching: Download success: " + next.f3986a + " size: " + j);
                                    next.m33623a(j);
                                    C2799ae.m33669b(next, EnumC2828ap.COMPLETE);
                                    C3444l.m32473a().m32472a("precachingDownloadSuccess");
                                } else {
                                    String str4 = C2799ae.f3948c;
                                    C3356jq.m32615a(3, str4, "Precaching: Download error: " + next.f3986a);
                                    C2799ae.m33669b(next, EnumC2828ap.ERROR);
                                    C3444l.m32473a().m32472a("precachingDownloadError");
                                }
                                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ae.4.1
                                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                                    /* renamed from: a */
                                    public final void mo32300a() {
                                        C2799ae.m33671b(C2799ae.this);
                                    }
                                });
                            }
                        };
                        avVar.m33582a();
                        synchronized (aeVar.f3952e) {
                            aeVar.f3952e.put(next.f3986a, avVar);
                        }
                        m33669b(next, EnumC2828ap.IN_PROGRESS);
                    }
                }
                C3356jq.m32615a(3, f3948c, "Precaching: No more files to download");
            }
        }
    }

    /* renamed from: b */
    public static void m33669b(C2812aj ajVar, EnumC2828ap apVar) {
        if (ajVar != null && apVar != null && !apVar.equals(ajVar.m33624a())) {
            String str = f3948c;
            C3356jq.m32615a(3, str, "Asset status changed for asset:" + ajVar.f3986a + " from:" + ajVar.m33624a() + " to:" + apVar);
            ajVar.m33622a(apVar);
            C2811ai aiVar = new C2811ai();
            aiVar.f3984a = ajVar.f3986a;
            aiVar.f3985b = apVar;
            aiVar.m32637b();
        }
    }

    /* renamed from: a */
    public final List<C2812aj> m33679a() {
        ArrayList arrayList;
        synchronized (this) {
            arrayList = new ArrayList();
            synchronized (this.f3949a) {
                arrayList.addAll(this.f3949a.values());
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public final void m33676a(C2812aj ajVar) {
        synchronized (this) {
            if (ajVar != null) {
                if (!TextUtils.isEmpty(ajVar.f3986a) && !this.f3949a.containsKey(ajVar.f3986a)) {
                    String str = f3948c;
                    C3356jq.m32615a(3, str, "Precaching: adding cached asset info from persisted storage: " + ajVar.f3986a + " asset exp: " + ajVar.f3991f + " saved time: " + ajVar.f3988c);
                    synchronized (this.f3949a) {
                        this.f3949a.put(ajVar.f3986a, ajVar);
                    }
                }
            }
        }
    }

    /* renamed from: a */
    public final void m33674a(String str) {
        if (m33663d() && !TextUtils.isEmpty(str)) {
            synchronized (this.f3949a) {
                this.f3949a.remove(str);
            }
            this.f3950b.m33547c(str);
        }
    }

    /* renamed from: a */
    public final boolean m33673a(String str, EnumC2851aw awVar, long j) {
        if (!m33663d() || TextUtils.isEmpty(str) || awVar == null) {
            return false;
        }
        C2812aj c = m33664c(str);
        if (c == null) {
            C2812aj ajVar = new C2812aj(str, awVar, j);
            synchronized (this.f3949a) {
                this.f3949a.put(ajVar.f3986a, ajVar);
            }
            m33665c(ajVar);
            return true;
        } else if (EnumC2828ap.COMPLETE.equals(m33670b(c))) {
            return true;
        } else {
            m33665c(c);
            return true;
        }
    }

    /* renamed from: b */
    public final EnumC2828ap m33670b(C2812aj ajVar) {
        if (ajVar != null && !ajVar.m33621b()) {
            if (EnumC2828ap.COMPLETE.equals(ajVar.m33624a()) && !this.f3950b.m33546d(ajVar.f3986a)) {
                m33669b(ajVar, EnumC2828ap.EVICTED);
            }
            return ajVar.m33624a();
        }
        return EnumC2828ap.NONE;
    }

    /* renamed from: b */
    public final EnumC2828ap m33668b(String str) {
        return !m33663d() ? EnumC2828ap.NONE : m33670b(m33664c(str));
    }

    /* renamed from: b */
    public final void m33672b() {
        synchronized (this) {
            if (!m33660g()) {
                C3356jq.m32615a(3, f3948c, "Precaching: Starting AssetCache");
                this.f3950b.m33554a();
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ae.1
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2799ae.m33678a(C2799ae.this);
                        C2799ae.m33671b(C2799ae.this);
                    }
                });
                this.f3954h = EnumC2805a.ACTIVE;
            }
        }
    }

    /* renamed from: c */
    public final C2812aj m33664c(String str) {
        C2812aj ajVar;
        if (!m33663d() || TextUtils.isEmpty(str)) {
            return null;
        }
        synchronized (this.f3949a) {
            ajVar = this.f3949a.get(str);
        }
        C2812aj ajVar2 = ajVar;
        if (ajVar != null) {
            if (ajVar.m33621b()) {
                String str2 = f3948c;
                C3356jq.m32615a(3, str2, "Precaching: expiring cached asset: " + ajVar.f3986a + " asset exp: " + ajVar.f3991f + " device epoch" + System.currentTimeMillis());
                m33674a(ajVar.f3986a);
                ajVar2 = null;
            } else {
                m33670b(ajVar);
                ajVar.m33620c();
                ajVar2 = ajVar;
            }
        }
        return ajVar2;
    }

    /* renamed from: c */
    public final void m33667c() {
        synchronized (this) {
            if (m33663d()) {
                C3356jq.m32615a(3, f3948c, "Precaching: Stopping AssetCache");
                C3356jq.m32615a(3, f3948c, "Precaching: Cancelling in-progress downloads");
                synchronized (this.f3952e) {
                    for (Map.Entry<String, AbstractC2829aq> entry : this.f3952e.entrySet()) {
                        entry.getValue().m33574b();
                    }
                    this.f3952e.clear();
                }
                synchronized (this.f3951d) {
                    for (Map.Entry<String, C2812aj> entry2 : this.f3951d.entrySet()) {
                        C2812aj value = entry2.getValue();
                        if (!EnumC2828ap.COMPLETE.equals(m33670b(value))) {
                            String str = f3948c;
                            C3356jq.m32615a(3, str, "Precaching: Download cancelled: " + value.f3988c);
                            m33669b(value, EnumC2828ap.CANCELLED);
                        }
                    }
                }
                this.f3950b.m33551b();
                this.f3954h = EnumC2805a.INIT;
            }
        }
    }

    /* renamed from: c */
    public final void m33665c(C2812aj ajVar) {
        Map<String, C2812aj> map;
        if (ajVar != null) {
            EnumC2828ap b = m33670b(ajVar);
            if (!EnumC2828ap.COMPLETE.equals(b)) {
                if (EnumC2828ap.IN_PROGRESS.equals(b) || EnumC2828ap.QUEUED.equals(b)) {
                    map = this.f3951d;
                    synchronized (map) {
                        if (!this.f3951d.containsKey(ajVar.f3986a)) {
                            this.f3951d.put(ajVar.f3986a, ajVar);
                        }
                    }
                } else {
                    String str = f3948c;
                    C3356jq.m32615a(3, str, "Precaching: Queueing asset:" + ajVar.f3986a);
                    C3444l.m32473a().m32472a("precachingDownloadRequested");
                    m33669b(ajVar, EnumC2828ap.QUEUED);
                    map = this.f3951d;
                    synchronized (map) {
                        this.f3951d.put(ajVar.f3986a, ajVar);
                    }
                }
                C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ae.3
                    @Override // com.flurry.sdk.AbstractRunnableC3447lc
                    /* renamed from: a */
                    public final void mo32300a() {
                        C2799ae.m33671b(C2799ae.this);
                    }
                });
            }
        }
    }

    /* renamed from: d */
    public final boolean m33663d() {
        boolean z;
        synchronized (this) {
            if (!EnumC2805a.ACTIVE.equals(this.f3954h)) {
                if (!EnumC2805a.PAUSED.equals(this.f3954h)) {
                    z = false;
                }
            }
            z = true;
        }
        return z;
    }

    /* renamed from: e */
    public final void m33662e() {
        synchronized (this) {
            if (m33663d()) {
                if (m33659h()) {
                    C3356jq.m32615a(3, f3948c, "Precaching: Resuming AssetCache");
                    C3331jb.m32681a().m32674b(new AbstractRunnableC3447lc() { // from class: com.flurry.sdk.ae.2
                        @Override // com.flurry.sdk.AbstractRunnableC3447lc
                        /* renamed from: a */
                        public final void mo32300a() {
                            C2799ae.m33678a(C2799ae.this);
                            C2799ae.m33671b(C2799ae.this);
                        }
                    });
                    this.f3954h = EnumC2805a.ACTIVE;
                }
            }
        }
    }

    /* renamed from: g */
    public final boolean m33660g() {
        boolean equals;
        synchronized (this) {
            equals = EnumC2805a.ACTIVE.equals(this.f3954h);
        }
        return equals;
    }

    /* renamed from: h */
    public final boolean m33659h() {
        boolean equals;
        synchronized (this) {
            equals = EnumC2805a.PAUSED.equals(this.f3954h);
        }
        return equals;
    }

    /* renamed from: i */
    public final List<C2812aj> m33658i() {
        ArrayList arrayList;
        synchronized (this.f3949a) {
            arrayList = new ArrayList(this.f3949a.values());
        }
        return arrayList;
    }
}
