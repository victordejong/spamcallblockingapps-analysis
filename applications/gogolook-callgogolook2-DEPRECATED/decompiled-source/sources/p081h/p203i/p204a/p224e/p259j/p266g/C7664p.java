package p081h.p203i.p204a.p224e.p259j.p266g;

import android.net.Uri;
/* renamed from: h.i.a.e.j.g.p */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/g/p.class */
public final class C7664p {

    /* renamed from: a */
    public final String f18003a;

    /* renamed from: b */
    public final Uri f18004b;

    /* renamed from: c */
    public final String f18005c;

    /* renamed from: d */
    public final String f18006d;

    /* renamed from: e */
    public final boolean f18007e;

    /* renamed from: f */
    public final boolean f18008f;

    public C7664p(Uri uri) {
        this(null, uri, "", "", false, false);
    }

    public C7664p(String str, Uri uri, String str2, String str3, boolean z, boolean z2) {
        this.f18003a = str;
        this.f18004b = uri;
        this.f18005c = str2;
        this.f18006d = str3;
        this.f18007e = z;
        this.f18008f = z2;
    }

    /* renamed from: a */
    public final <T> AbstractC7581f<T> m19880a(String str, T t, AbstractC7657o<T> oVar) {
        return AbstractC7581f.m20183b(this, str, t, oVar);
    }

    /* renamed from: a */
    public final AbstractC7581f<String> m19879a(String str, String str2) {
        return AbstractC7581f.m20182b(this, str, (String) null);
    }

    /* renamed from: a */
    public final AbstractC7581f<Boolean> m19878a(String str, boolean z) {
        return AbstractC7581f.m20181b(this, str, false);
    }

    /* renamed from: a */
    public final C7664p m19881a(String str) {
        boolean z = this.f18007e;
        if (!z) {
            return new C7664p(this.f18003a, this.f18004b, str, this.f18006d, z, this.f18008f);
        }
        throw new IllegalStateException("Cannot set GServices prefix and skip GServices");
    }

    /* renamed from: b */
    public final C7664p m19876b(String str) {
        return new C7664p(this.f18003a, this.f18004b, this.f18005c, str, this.f18007e, this.f18008f);
    }
}
