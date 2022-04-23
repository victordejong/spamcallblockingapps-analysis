package com.integralads.avid.library.inmobi.session.internal;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.integralads.avid.library.mopub.AvidBridge;
import p131c.p372f.p373a.p374a.p375a.p378j.AbstractC6418a;
import p131c.p372f.p373a.p374a.p375a.p378j.C6419b;
import p131c.p372f.p373a.p374a.p375a.p381m.C6433g;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.AbstractC6435b;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.C6434a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.C6441h;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6442a;
import p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6448d;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
import p131c.p372f.p373a.p374a.p375a.p385n.C6456d;
import p131c.p372f.p373a.p374a.p375a.p389q.C6472b;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession.class */
public abstract class InternalAvidAdSession<T extends View> implements C6442a.AbstractC6443a {

    /* renamed from: a */
    public final C6434a f32994a;

    /* renamed from: b */
    public C6442a f32995b;

    /* renamed from: c */
    public C6448d f32996c;

    /* renamed from: d */
    public C6472b<T> f32997d = new C6472b<>(null);

    /* renamed from: e */
    public C6419b f32998e;

    /* renamed from: f */
    public AbstractC6435b f32999f;

    /* renamed from: g */
    public boolean f33000g;

    /* renamed from: h */
    public boolean f33001h;

    /* renamed from: i */
    public final C6441h f33002i;

    /* renamed from: j */
    public AdState f33003j;

    /* renamed from: k */
    public double f33004k;

    /* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/inmobi/session/internal/InternalAvidAdSession$AdState.class */
    public enum AdState {
        AD_STATE_IDLE,
        AD_STATE_VISIBLE,
        AD_STATE_HIDDEN
    }

    public InternalAvidAdSession(Context context, String str, C6433g gVar) {
        C6434a aVar = new C6434a(context, str, mo5445g().toString(), mo5447e().toString(), gVar);
        this.f32994a = aVar;
        C6442a aVar2 = new C6442a(aVar);
        this.f32995b = aVar2;
        aVar2.m20872a(this);
        this.f32996c = new C6448d(this.f32994a, this.f32995b);
        boolean z = !gVar.m20885b();
        this.f33000g = z;
        if (!z) {
            this.f32998e = new C6419b(this, this.f32995b);
        }
        this.f33002i = new C6441h();
        m5436p();
    }

    /* renamed from: a */
    public void m5459a() {
        if (m5442j()) {
            this.f32995b.m20865c(C6454b.m20839a().toString());
        }
    }

    /* renamed from: a */
    public void m5457a(AbstractC6435b bVar) {
        this.f32999f = bVar;
    }

    /* renamed from: a */
    public void m5456a(String str, double d) {
        if (d > this.f33004k && this.f33003j != AdState.AD_STATE_HIDDEN) {
            this.f32995b.m20871a(str);
            this.f33003j = AdState.AD_STATE_HIDDEN;
        }
    }

    /* renamed from: a */
    public void m5455a(boolean z) {
        this.f33001h = z;
        AbstractC6435b bVar = this.f32999f;
        if (bVar == null) {
            return;
        }
        if (z) {
            bVar.mo20880b(this);
        } else {
            bVar.mo20879c(this);
        }
    }

    /* renamed from: a */
    public boolean m5458a(View view) {
        return this.f32997d.m20773a(view);
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p381m.p382h.p383i.C6442a.AbstractC6443a
    public void avidBridgeManagerDidInjectAvidJs() {
        m5433s();
    }

    /* renamed from: b */
    public String m5454b() {
        return this.f32994a.m20884a();
    }

    /* renamed from: b */
    public void m5453b(T t) {
        if (!m5458a(t)) {
            m5436p();
            this.f32997d.m20771b(t);
            mo5435q();
            m5433s();
        }
    }

    /* renamed from: b */
    public void m5452b(String str, double d) {
        if (d > this.f33004k) {
            this.f32995b.m20871a(str);
            this.f33003j = AdState.AD_STATE_VISIBLE;
        }
    }

    /* renamed from: b */
    public void m5451b(boolean z) {
        if (m5442j()) {
            this.f32995b.m20868b(z ? AvidBridge.APP_STATE_ACTIVE : AvidBridge.APP_STATE_INACTIVE);
        }
    }

    /* renamed from: c */
    public C6442a m5450c() {
        return this.f32995b;
    }

    /* renamed from: c */
    public void m5449c(T t) {
        if (m5458a(t)) {
            m5436p();
            m5459a();
            this.f32997d.m20771b(null);
            mo5434r();
            m5433s();
        }
    }

    /* renamed from: d */
    public AbstractC6418a m5448d() {
        return this.f32998e;
    }

    /* renamed from: e */
    public abstract MediaType mo5447e();

    /* renamed from: f */
    public C6441h m5446f() {
        return this.f33002i;
    }

    /* renamed from: g */
    public abstract SessionType mo5445g();

    /* renamed from: h */
    public T m5444h() {
        return (T) ((View) this.f32997d.m20774a());
    }

    /* renamed from: i */
    public abstract WebView mo5443i();

    /* renamed from: j */
    public boolean m5442j() {
        return this.f33001h;
    }

    /* renamed from: k */
    public boolean m5441k() {
        return this.f32997d.m20772b();
    }

    /* renamed from: l */
    public boolean m5440l() {
        return this.f33000g;
    }

    /* renamed from: m */
    public void mo5439m() {
        m5459a();
        C6419b bVar = this.f32998e;
        if (bVar != null) {
            bVar.m20915u();
        }
        this.f32995b.m20874a();
        this.f32996c.m20851b();
        this.f33000g = false;
        m5433s();
        AbstractC6435b bVar2 = this.f32999f;
        if (bVar2 != null) {
            bVar2.mo20881a(this);
        }
    }

    /* renamed from: n */
    public void m5438n() {
        this.f33000g = true;
        m5433s();
    }

    /* renamed from: o */
    public void mo5437o() {
    }

    /* renamed from: p */
    public final void m5436p() {
        this.f33004k = C6456d.m20822a();
        this.f33003j = AdState.AD_STATE_IDLE;
    }

    /* renamed from: q */
    public void mo5435q() {
    }

    /* renamed from: r */
    public void mo5434r() {
    }

    /* renamed from: s */
    public void m5433s() {
        boolean z = this.f32995b.m20866c() && this.f33000g && !m5441k();
        if (this.f33001h != z) {
            m5455a(z);
        }
    }

    /* renamed from: t */
    public void m5432t() {
        this.f32996c.m20852a(mo5443i());
    }
}
