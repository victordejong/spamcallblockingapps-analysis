package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dkw.class */
public final class dkw implements dkt {

    /* renamed from: a */
    private final dli[] f14544a;

    /* renamed from: b */
    private final drj f14545b;

    /* renamed from: c */
    private final drg f14546c;

    /* renamed from: d */
    private final cnz f14547d;

    /* renamed from: e */
    private final dky f14548e;

    /* renamed from: f */
    private final CopyOnWriteArraySet<dks> f14549f;

    /* renamed from: g */
    private final dlo f14550g;

    /* renamed from: h */
    private final dlp f14551h;

    /* renamed from: i */
    private boolean f14552i;

    /* renamed from: j */
    private boolean f14553j;

    /* renamed from: k */
    private int f14554k;

    /* renamed from: l */
    private int f14555l;

    /* renamed from: m */
    private int f14556m;

    /* renamed from: n */
    private int f14557n;

    /* renamed from: o */
    private boolean f14558o;

    /* renamed from: p */
    private dln f14559p;

    /* renamed from: q */
    private Object f14560q;

    /* renamed from: r */
    private dqv f14561r;

    /* renamed from: s */
    private drg f14562s;

    /* renamed from: t */
    private dlj f14563t;

    /* renamed from: u */
    private dla f14564u;

    /* renamed from: v */
    private int f14565v;

    /* renamed from: w */
    private int f14566w;

    /* renamed from: x */
    private long f14567x;

    @SuppressLint({"HandlerLeak"})
    public dkw(dli[] dliVarArr, drj drjVar, dlh dlhVar) {
        String str = dsn.f15580e;
        Log.i("ExoPlayerImpl", new StringBuilder(String.valueOf(str).length() + 26).append("Init ExoPlayerLib/2.4.2 [").append(str).append("]").toString());
        drz.m8770b(dliVarArr.length > 0);
        this.f14544a = (dli[]) drz.m8774a(dliVarArr);
        this.f14545b = (drj) drz.m8774a(drjVar);
        this.f14553j = false;
        this.f14554k = 0;
        this.f14555l = 1;
        this.f14549f = new CopyOnWriteArraySet<>();
        this.f14546c = new drg(new dre[dliVarArr.length]);
        this.f14559p = dln.f14666a;
        this.f14550g = new dlo();
        this.f14551h = new dlp();
        this.f14561r = dqv.f15437a;
        this.f14562s = this.f14546c;
        this.f14563t = dlj.f14660a;
        this.f14547d = new dkz(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.f14564u = new dla(0, 0L);
        this.f14548e = new dky(dliVarArr, drjVar, dlhVar, this.f14553j, 0, this.f14547d, this.f14564u, this);
    }

    /* renamed from: i */
    private final int m9280i() {
        int i = 0;
        if (this.f14559p.m9199c() || this.f14556m > 0) {
            i = this.f14565v;
        } else {
            this.f14559p.mo8838a(this.f14564u.f14602a, this.f14551h, false);
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final int mo9296a() {
        return this.f14555l;
    }

    /* JADX WARN: Type inference failed for: r0v35, types: [long] */
    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final void mo9295a(long j) {
        int m9280i = m9280i();
        if (m9280i < 0 || (!this.f14559p.m9199c() && m9280i >= this.f14559p.mo8840a())) {
            throw new zzhg(this.f14559p, m9280i, j);
        }
        this.f14556m++;
        this.f14565v = m9280i;
        if (!this.f14559p.m9199c()) {
            this.f14559p.m9201a(m9280i, this.f14550g, false);
            char m9304b = j == -9223372036854775807L ? this.f14550g.f14674h : dkr.m9304b(j);
            long j2 = this.f14550g.f14676j;
            long j3 = this.f14559p.mo8838a(0, this.f14551h, false).f14679c;
            if (j3 == -9223372036854775807L || m9304b + j2 >= j3) {
            }
        }
        this.f14566w = 0;
        if (j == -9223372036854775807L) {
            this.f14567x = 0L;
            this.f14548e.m9269a(this.f14559p, m9280i, -9223372036854775807L);
            return;
        }
        this.f14567x = j;
        this.f14548e.m9269a(this.f14559p, m9280i, dkr.m9304b(j));
        Iterator<dks> it = this.f14549f.iterator();
        while (it.hasNext()) {
            it.next().mo9297g();
        }
    }

    /* renamed from: a */
    public final void m9294a(Message message) {
        switch (message.what) {
            case 0:
                this.f14557n--;
                return;
            case 1:
                this.f14555l = message.arg1;
                Iterator<dks> it = this.f14549f.iterator();
                while (it.hasNext()) {
                    it.next().mo9298a(this.f14553j, this.f14555l);
                }
                return;
            case 2:
                this.f14558o = message.arg1 != 0;
                Iterator<dks> it2 = this.f14549f.iterator();
                while (it2.hasNext()) {
                    it2.next().mo9299a(this.f14558o);
                }
                return;
            case 3:
                if (this.f14557n != 0) {
                    return;
                }
                drl drlVar = (drl) message.obj;
                this.f14552i = true;
                this.f14561r = drlVar.f15480a;
                this.f14562s = drlVar.f15481b;
                this.f14545b.mo8818a(drlVar.f15482c);
                Iterator<dks> it3 = this.f14549f.iterator();
                while (it3.hasNext()) {
                    it3.next().mo9301a(this.f14561r, this.f14562s);
                }
                return;
            case 4:
                int i = this.f14556m - 1;
                this.f14556m = i;
                if (i != 0) {
                    return;
                }
                this.f14564u = (dla) message.obj;
                if (message.arg1 == 0) {
                    return;
                }
                Iterator<dks> it4 = this.f14549f.iterator();
                while (it4.hasNext()) {
                    it4.next().mo9297g();
                }
                return;
            case 5:
                if (this.f14556m != 0) {
                    return;
                }
                this.f14564u = (dla) message.obj;
                Iterator<dks> it5 = this.f14549f.iterator();
                while (it5.hasNext()) {
                    it5.next().mo9297g();
                }
                return;
            case 6:
                dlc dlcVar = (dlc) message.obj;
                this.f14556m -= dlcVar.f14628d;
                if (this.f14557n != 0) {
                    return;
                }
                this.f14559p = dlcVar.f14625a;
                this.f14560q = dlcVar.f14626b;
                this.f14564u = dlcVar.f14627c;
                Iterator<dks> it6 = this.f14549f.iterator();
                while (it6.hasNext()) {
                    it6.next().mo9302a(this.f14559p, this.f14560q);
                }
                return;
            case 7:
                dlj dljVar = (dlj) message.obj;
                if (this.f14563t.equals(dljVar)) {
                    return;
                }
                this.f14563t = dljVar;
                Iterator<dks> it7 = this.f14549f.iterator();
                while (it7.hasNext()) {
                    it7.next().mo9303a(dljVar);
                }
                return;
            case 8:
                zzgq zzgqVar = (zzgq) message.obj;
                Iterator<dks> it8 = this.f14549f.iterator();
                while (it8.hasNext()) {
                    it8.next().mo9300a(zzgqVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final void mo9293a(dks dksVar) {
        this.f14549f.add(dksVar);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final void mo9292a(dqg dqgVar) {
        if (!this.f14559p.m9199c() || this.f14560q != null) {
            this.f14559p = dln.f14666a;
            this.f14560q = null;
            Iterator<dks> it = this.f14549f.iterator();
            while (it.hasNext()) {
                it.next().mo9302a(this.f14559p, this.f14560q);
            }
        }
        if (this.f14552i) {
            this.f14552i = false;
            this.f14561r = dqv.f15437a;
            this.f14562s = this.f14546c;
            this.f14545b.mo8818a((Object) null);
            Iterator<dks> it2 = this.f14549f.iterator();
            while (it2.hasNext()) {
                it2.next().mo9301a(this.f14561r, this.f14562s);
            }
        }
        this.f14557n++;
        this.f14548e.m9267a(dqgVar, true);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final void mo9291a(boolean z) {
        if (this.f14553j != z) {
            this.f14553j = z;
            this.f14548e.m9265a(z);
            Iterator<dks> it = this.f14549f.iterator();
            while (it.hasNext()) {
                it.next().mo9298a(z, this.f14555l);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: a */
    public final void mo9290a(dku... dkuVarArr) {
        this.f14548e.m9264a(dkuVarArr);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: b */
    public final void mo9288b(dks dksVar) {
        this.f14549f.remove(dksVar);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: b */
    public final void mo9287b(dku... dkuVarArr) {
        this.f14548e.m9254b(dkuVarArr);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: b */
    public final boolean mo9289b() {
        return this.f14553j;
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: c */
    public final void mo9286c() {
        this.f14548e.m9278a();
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: d */
    public final void mo9285d() {
        this.f14548e.m9262b();
        this.f14547d.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: e */
    public final int mo9284e() {
        return this.f14544a.length;
    }

    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: f */
    public final long mo9283f() {
        return this.f14559p.m9199c() ? (char) 1 : dkr.m9305a(this.f14559p.m9201a(m9280i(), this.f14550g, false).f14675i);
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: g */
    public final long mo9282g() {
        char c;
        if (this.f14559p.m9199c() || this.f14556m > 0) {
            c = this.f14567x;
        } else {
            this.f14559p.mo8838a(this.f14564u.f14602a, this.f14551h, false);
            c = this.f14551h.m9198a() + dkr.m9305a(this.f14564u.f14604c);
        }
        return c;
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // com.google.android.gms.internal.ads.dkt
    /* renamed from: h */
    public final long mo9281h() {
        char c;
        if (this.f14559p.m9199c() || this.f14556m > 0) {
            c = this.f14567x;
        } else {
            this.f14559p.mo8838a(this.f14564u.f14602a, this.f14551h, false);
            c = this.f14551h.m9198a() + dkr.m9305a(this.f14564u.f14605d);
        }
        return c;
    }
}
