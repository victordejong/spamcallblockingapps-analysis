package p131c.p135b.p136a.p138b.p139a.p141c;

import android.graphics.PointF;
import android.net.Uri;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.p483a.C6894a;
import com.applovin.impl.p483a.C6905k;
import com.applovin.impl.p483a.EnumC6899d;
import com.applovin.impl.sdk.p489ad.AbstractC7036g;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p131c.p135b.p136a.p137a.C2034d;
import p131c.p135b.p136a.p137a.C2035e;
import p131c.p135b.p136a.p137a.C2036f;
import p131c.p135b.p136a.p138b.C2082h;
import p131c.p135b.p136a.p148e.C2251d;
import p131c.p135b.p136a.p148e.C2341l;
import p131c.p135b.p136a.p148e.C2374t;
/* renamed from: c.b.a.b.a.c.c */
/* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/c.class */
public class C2056c extends C2058d {

    /* renamed from: R */
    public final C6894a f7995R;

    /* renamed from: S */
    public final Set<C2034d> f7996S = new HashSet();

    /* renamed from: c.b.a.b.a.c.c$a */
    /* loaded from: classes-dex2jar.jar:c/b/a/b/a/c/c$a.class */
    public class C2057a implements C2082h.AbstractC2084b {
        public C2057a() {
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: a */
        public void mo19212a() {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(C2056c.this.f8007J - (C2056c.this.f8017z.getDuration() - C2056c.this.f8017z.getCurrentPosition()));
            HashSet hashSet = new HashSet();
            for (C2034d dVar : new HashSet(C2056c.this.f7996S)) {
                if (dVar.m31230a(seconds, C2056c.this.m31166A())) {
                    hashSet.add(dVar);
                    C2056c.this.f7996S.remove(dVar);
                }
            }
            C2056c.this.m31170a(hashSet);
        }

        @Override // p131c.p135b.p136a.p138b.C2082h.AbstractC2084b
        /* renamed from: b */
        public boolean mo19211b() {
            return !C2056c.this.f8010M;
        }
    }

    public C2056c(AbstractC7036g gVar, AppLovinFullscreenActivity appLovinFullscreenActivity, C2341l lVar, AppLovinAdClickListener appLovinAdClickListener, AppLovinAdDisplayListener appLovinAdDisplayListener, AppLovinAdVideoPlaybackListener appLovinAdVideoPlaybackListener) {
        super(gVar, appLovinFullscreenActivity, lVar, appLovinAdClickListener, appLovinAdDisplayListener, appLovinAdVideoPlaybackListener);
        C6894a aVar = (C6894a) gVar;
        this.f7995R = aVar;
        this.f7996S.addAll(aVar.m19454a(C6894a.EnumC6897c.VIDEO, C2035e.f7940a));
        m31174a(C6894a.EnumC6897c.IMPRESSION);
        m31172a(C6894a.EnumC6897c.VIDEO, "creativeView");
    }

    /* renamed from: B */
    private void m31177B() {
        if (m31134z() && !this.f7996S.isEmpty()) {
            C2374t tVar = this.f7954c;
            tVar.m30040d("InterActivityV2", "Firing " + this.f7996S.size() + " un-fired video progress trackers when video was completed.");
            m31170a(this.f7996S);
        }
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: a */
    public void mo31163a(PointF pointF) {
        m31174a(C6894a.EnumC6897c.VIDEO_CLICK);
        super.mo31163a(pointF);
    }

    /* renamed from: a */
    public final void m31174a(C6894a.EnumC6897c cVar) {
        m31173a(cVar, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m31173a(C6894a.EnumC6897c cVar, EnumC6899d dVar) {
        m31171a(cVar, "", dVar);
    }

    /* renamed from: a */
    public final void m31172a(C6894a.EnumC6897c cVar, String str) {
        m31171a(cVar, str, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m31171a(C6894a.EnumC6897c cVar, String str, EnumC6899d dVar) {
        m31169a(this.f7995R.m19455a(cVar, str), dVar);
    }

    /* renamed from: a */
    public final void m31170a(Set<C2034d> set) {
        m31169a(set, EnumC6899d.UNSPECIFIED);
    }

    /* renamed from: a */
    public final void m31169a(Set<C2034d> set, EnumC6899d dVar) {
        if (set != null && !set.isEmpty()) {
            long seconds = TimeUnit.MILLISECONDS.toSeconds(this.f8017z.getCurrentPosition());
            C6905k X0 = this.f7995R.m19459X0();
            Uri a = X0 != null ? X0.m19409a() : null;
            C2374t tVar = this.f7954c;
            tVar.m30044b("InterActivityV2", "Firing " + set.size() + " tracker(s): " + set);
            C2036f.m31215a(set, seconds, a, dVar, this.f7953b);
        }
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d, p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: c */
    public void mo31156c() {
        super.mo31156c();
        this.f8004G.m31101a("PROGRESS_TRACKING", ((Long) this.f7953b.m30291a(C2251d.C2256e.f8551I3)).longValue(), new C2057a());
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: c */
    public void mo31154c(String str) {
        m31173a(C6894a.EnumC6897c.ERROR, EnumC6899d.MEDIA_FILE_ERROR);
        super.mo31154c(str);
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: d */
    public void mo31168d() {
        super.mo31168d();
        m31172a(this.f8010M ? C6894a.EnumC6897c.COMPANION : C6894a.EnumC6897c.VIDEO, "resume");
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: e */
    public void mo31167e() {
        super.mo31167e();
        m31172a(this.f8010M ? C6894a.EnumC6897c.COMPANION : C6894a.EnumC6897c.VIDEO, "pause");
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d, p131c.p135b.p136a.p138b.p139a.p141c.AbstractC2041a
    /* renamed from: f */
    public void mo31149f() {
        m31172a(C6894a.EnumC6897c.VIDEO, "close");
        m31172a(C6894a.EnumC6897c.COMPANION, "close");
        super.mo31149f();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3, types: [long] */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2, types: [long] */
    /* JADX WARN: Type inference failed for: r9v7 */
    /* JADX WARN: Type inference failed for: r9v8 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: t */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo31140t() {
        /*
            Method dump skipped, instructions count: 192
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p135b.p136a.p138b.p139a.p141c.C2056c.mo31140t():void");
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: u */
    public void mo31139u() {
        this.f8004G.m31098c();
        super.mo31139u();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: v */
    public void mo31138v() {
        m31172a(C6894a.EnumC6897c.VIDEO, "skip");
        super.mo31138v();
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: w */
    public void mo31137w() {
        super.mo31137w();
        m31172a(C6894a.EnumC6897c.VIDEO, this.f8006I ? "mute" : "unmute");
    }

    @Override // p131c.p135b.p136a.p138b.p139a.p141c.C2058d
    /* renamed from: x */
    public void mo31136x() {
        m31177B();
        if (!C2036f.m31208c(this.f7995R)) {
            this.f7954c.m30044b("InterActivityV2", "VAST ad does not have valid companion ad - dismissing...");
            mo31149f();
        } else if (!this.f8010M) {
            m31172a(C6894a.EnumC6897c.COMPANION, "creativeView");
            super.mo31136x();
        }
    }
}
