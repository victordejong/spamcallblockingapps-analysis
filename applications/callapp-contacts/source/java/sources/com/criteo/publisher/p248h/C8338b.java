package com.criteo.publisher.p248h;

import android.util.Base64;
import android.util.DisplayMetrics;
import com.criteo.publisher.logging.C8402g;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.model.C8503s;
import com.criteo.publisher.model.p257b0.AbstractC8474n;
import com.criteo.publisher.model.p257b0.AbstractC8479r;
import com.criteo.publisher.p249i.EnumC8347a;
import com.criteo.publisher.p256m0.C8429c;
import com.criteo.publisher.p256m0.C8440k;
import com.criteo.publisher.p256m0.C8444o;
import com.criteo.publisher.p256m0.C8448s;
import com.criteo.publisher.p256m0.EnumC8423a;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
/* renamed from: com.criteo.publisher.h.b */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b.class */
public final class C8338b implements AbstractC8342d {

    /* renamed from: a */
    private final C8429c f29978a;

    /* renamed from: b */
    private final C8440k f29979b;

    /* renamed from: c */
    private final C8402g f29980c = C8404h.m25741a(getClass());

    /* renamed from: com.criteo.publisher.h.b$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b$a.class */
    static final /* synthetic */ class C8339a {

        /* renamed from: a */
        static final /* synthetic */ int[] f29981a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8423a.values().length];
            f29981a = iArr;
            try {
                iArr[EnumC8423a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f29981a[EnumC8423a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f29981a[EnumC8423a.CRITEO_CUSTOM_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.criteo.publisher.h.b$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b$b.class */
    public static final class C8340b {

        /* renamed from: a */
        final StringBuilder f29982a;

        /* renamed from: b */
        private final AdManagerAdRequest.Builder f29983b;

        private C8340b(AdManagerAdRequest.Builder builder) {
            this.f29983b = builder;
            this.f29982a = new StringBuilder();
        }

        /* synthetic */ C8340b(AdManagerAdRequest.Builder builder, C8339a c8339a) {
            this(builder);
        }

        /* renamed from: a */
        final void m25821a(String str, String str2) {
            try {
                this.f29983b.addCustomTargeting(str, str2);
                if (this.f29982a.length() != 0) {
                    this.f29982a.append(",");
                }
                StringBuilder sb = this.f29982a;
                sb.append(str);
                sb.append("=");
                sb.append(str2);
            } catch (LinkageError e) {
                C8444o.m25675a((Throwable) e);
            }
        }
    }

    public C8338b(C8429c c8429c, C8440k c8440k) {
        this.f29978a = c8429c;
        this.f29979b = c8440k;
    }

    /* renamed from: a */
    private static String m25823a(String str) {
        if (C8448s.m25669a((CharSequence) str)) {
            return null;
        }
        try {
            return m25822b(m25822b(Base64.encodeToString(str.getBytes(Charset.forName("UTF-8")), 2)));
        } catch (UnsupportedEncodingException e) {
            C8444o.m25675a((Throwable) e);
            return null;
        }
    }

    /* renamed from: a */
    private void m25824a(C8340b c8340b, String str, String str2) {
        if (!C8448s.m25669a((CharSequence) str)) {
            c8340b.m25821a(str2, m25823a(str));
        }
    }

    /* renamed from: b */
    private static String m25822b(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, Charset.forName("UTF-8").name());
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final EnumC8347a mo25819a() {
        return EnumC8347a.GAM_APP_BIDDING;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final void mo25817a(Object obj, EnumC8423a enumC8423a, C8503s c8503s) {
        DisplayMetrics m25684a;
        String str;
        AbstractC8474n m25544g;
        if (!(obj instanceof AdManagerAdRequest.Builder)) {
            return;
        }
        C8340b c8340b = new C8340b((AdManagerAdRequest.Builder) obj, null);
        c8340b.m25821a("crt_cpm", c8503s.m25554a());
        int i = C8339a.f29981a[enumC8423a.ordinal()];
        boolean z = true;
        if (i != 1) {
            if (i == 2) {
                m25824a(c8340b, c8503s.m25547d(), "crt_displayurl");
                boolean z2 = this.f29978a.m25697a() == 1;
                if (Math.min(m25684a.widthPixels, m25684a.heightPixels) < this.f29979b.m25684a().density * 600.0f) {
                    z = false;
                }
                if (z) {
                    if (z2 && c8503s.m25540k() >= 768 && c8503s.m25546e() >= 1024) {
                        str = "768x1024";
                    } else if (!z2 && c8503s.m25540k() >= 1024 && c8503s.m25546e() >= 768) {
                        str = "1024x768";
                    }
                    c8340b.m25821a("crt_size", str);
                }
                str = z2 ? "320x480" : "480x320";
                c8340b.m25821a("crt_size", str);
            } else if (i == 3 && (m25544g = c8503s.m25544g()) != null) {
                AbstractC8479r m25626n = m25544g.m25626n();
                m25824a(c8340b, m25626n.mo25602g(), "crtn_title");
                m25824a(c8340b, m25626n.mo25606c(), "crtn_desc");
                m25824a(c8340b, m25626n.mo25603f(), "crtn_price");
                m25824a(c8340b, m25626n.mo25607b().toString(), "crtn_clickurl");
                m25824a(c8340b, m25626n.mo25609a(), "crtn_cta");
                m25824a(c8340b, m25626n.m25604e().toString(), "crtn_imageurl");
                m25824a(c8340b, m25544g.m25637c(), "crtn_advname");
                m25824a(c8340b, m25544g.m25636d(), "crtn_advdomain");
                m25824a(c8340b, m25544g.m25634f().toString(), "crtn_advlogourl");
                m25824a(c8340b, m25544g.m25635e().toString(), "crtn_advurl");
                m25824a(c8340b, m25544g.m25628l().toString(), "crtn_prurl");
                m25824a(c8340b, m25544g.m25627m().toString(), "crtn_primageurl");
                m25824a(c8340b, m25544g.m25629k(), "crtn_prtext");
                List<URL> m25633g = m25544g.m25633g();
                for (int i2 = 0; i2 < m25633g.size(); i2++) {
                    m25824a(c8340b, m25633g.get(i2).toString(), "crtn_pixurl_".concat(String.valueOf(i2)));
                }
                StringBuilder sb = new StringBuilder();
                sb.append(m25633g.size());
                c8340b.m25821a("crtn_pixcount", sb.toString());
            }
        } else {
            m25824a(c8340b, c8503s.m25547d(), "crt_displayurl");
            c8340b.m25821a("crt_size", c8503s.m25540k() + "x" + c8503s.m25546e());
        }
        this.f29980c.m25744a(C8337a.m25826a(EnumC8347a.GAM_APP_BIDDING, c8340b.f29982a.toString()));
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: a */
    public final boolean mo25818a(Object obj) {
        return obj instanceof AdManagerAdRequest.Builder;
    }

    @Override // com.criteo.publisher.p248h.AbstractC8342d
    /* renamed from: b */
    public final void mo25816b(Object obj) {
    }
}
