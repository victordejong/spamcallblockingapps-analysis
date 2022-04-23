package p081h.p115c.p116a.p117i;

import com.aotter.net.trek.model.Location;
import com.criteo.publisher.model.C2052w;
import com.mopub.nativeads.BuildConfig;
import com.mopub.network.ImpressionData;
import java.util.Locale;
import p081h.p115c.p116a.C5716a;
/* renamed from: h.c.a.i.a */
/* loaded from: classes-dex2jar.jar:h/c/a/i/a.class */
public class C5744a extends C5757h<C5744a> {
    public C5744a(String str, String str2) {
        super(str, str2);
    }

    /* renamed from: a */
    public C5744a m24597a(Boolean bool) {
        m24550a(Location.LOCATION_LAT_KEY, bool.booleanValue() ? "1" : "0");
        return this;
    }

    /* renamed from: a */
    public C5744a m24596a(boolean z) {
        m24550a("force_gdpr_applies", z ? "1" : "0");
        return this;
    }

    /* renamed from: b */
    public C5744a m24595b(String str) {
        m24550a("h", str);
        return this;
    }

    /* renamed from: b */
    public C5744a m24594b(boolean z) {
        m24550a("gdpr_applies", z ? "1" : "0");
        return this;
    }

    /* renamed from: c */
    public C5744a m24593c() {
        m24584g(C5716a.m24662a().m24568a());
        return this;
    }

    /* renamed from: c */
    public C5744a m24592c(String str) {
        m24550a("zoneid", str);
        return this;
    }

    /* renamed from: d */
    public C5744a m24591d() {
        m24596a(C5716a.m24660b());
        return this;
    }

    /* renamed from: d */
    public C5744a m24590d(String str) {
        m24550a(C2052w.f2268l, str);
        return this;
    }

    /* renamed from: e */
    public C5744a m24589e() {
        m24594b(C5716a.m24659c());
        return this;
    }

    /* renamed from: e */
    public C5744a m24588e(String str) {
        m24550a("bundle", str);
        return this;
    }

    /* renamed from: f */
    public C5744a m24587f() {
        m24580k(Locale.getDefault().toString());
        return this;
    }

    /* renamed from: f */
    public C5744a m24586f(String str) {
        m24550a("conntype", str);
        return this;
    }

    /* renamed from: g */
    public C5744a m24585g() {
        m24577n(BuildConfig.VERSION_NAME);
        return this;
    }

    /* renamed from: g */
    public C5744a m24584g(String str) {
        m24550a("current_consent_status", str);
        return this;
    }

    /* renamed from: h */
    public C5744a m24583h(String str) {
        m24550a(ImpressionData.COUNTRY, str);
        return this;
    }

    /* renamed from: i */
    public C5744a m24582i(String str) {
        m24550a("ia", str);
        return this;
    }

    /* renamed from: j */
    public C5744a m24581j(String str) {
        m24550a("type", str);
        return this;
    }

    /* renamed from: k */
    public C5744a m24580k(String str) {
        m24550a("locale", str);
        return this;
    }

    /* renamed from: l */
    public C5744a m24579l(String str) {
        m24550a("operator", str);
        return this;
    }

    /* renamed from: m */
    public C5744a m24578m(String str) {
        m24550a("operator_name", str);
        return this;
    }

    /* renamed from: n */
    public C5744a m24577n(String str) {
        m24550a("sdk_version", str);
        return this;
    }
}
