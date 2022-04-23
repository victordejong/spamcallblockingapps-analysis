package p459j.p460a.p572v0.p573c;

import p459j.p460a.p572v0.p573c.AbstractC13709g;
import p626l.p641z.p643d.C15149k;
/* renamed from: j.a.v0.c.f */
/* loaded from: classes3-dex2jar.jar:j/a/v0/c/f.class */
public final class C13708f extends AbstractC13709g {

    /* renamed from: b */
    public final EnumC13715k f30777b = EnumC13715k.UNRATED;

    /* renamed from: c */
    public final String f30778c;

    /* renamed from: d */
    public final String f30779d;

    /* renamed from: e */
    public final int f30780e;

    /* renamed from: f */
    public final int f30781f;

    /* renamed from: g */
    public final int f30782g;

    /* renamed from: h */
    public final boolean f30783h;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13708f(String str, String str2, int i, int i2, int i3, boolean z) {
        super(AbstractC13709g.EnumC13710a.REDIRECT_CHECK, null);
        C15149k.m377b(str, "url");
        C15149k.m377b(str2, "redirectedUrl");
        this.f30778c = str;
        this.f30779d = str2;
        this.f30780e = i;
        this.f30781f = i2;
        this.f30782g = i3;
        this.f30783h = z;
    }

    @Override // p459j.p460a.p572v0.p573c.AbstractC13709g
    /* renamed from: b */
    public EnumC13715k mo3601b() {
        return this.f30777b;
    }

    /* renamed from: c */
    public final int m3621c() {
        return this.f30781f;
    }

    /* renamed from: d */
    public final int m3620d() {
        return this.f30780e;
    }

    /* renamed from: e */
    public final String m3619e() {
        return this.f30779d;
    }

    /* renamed from: f */
    public String m3618f() {
        return this.f30778c;
    }

    public String toString() {
        return "RedirectCheckResult { url=" + m3618f() + ", redirectedUrl=" + this.f30779d + ", redirectTimes=" + this.f30780e + ", redirectCheckTimes=" + this.f30781f + ", maxRedirectCheckTimes=" + this.f30782g + ", isRedirectCheckTimeout=" + this.f30783h + '}';
    }
}
