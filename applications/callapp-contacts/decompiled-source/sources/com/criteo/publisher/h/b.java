package com.criteo.publisher.h;

import android.util.Base64;
import android.util.DisplayMetrics;
import com.criteo.publisher.logging.g;
import com.criteo.publisher.logging.h;
import com.criteo.publisher.m0.c;
import com.criteo.publisher.m0.k;
import com.criteo.publisher.m0.o;
import com.criteo.publisher.m0.s;
import com.criteo.publisher.model.b0.n;
import com.criteo.publisher.model.b0.r;
import com.google.android.gms.ads.admanager.AdManagerAdRequest;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLEncoder;
import java.nio.charset.Charset;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b.class */
public final class b implements d {

    /* renamed from: a  reason: collision with root package name */
    private final c f17334a;

    /* renamed from: b  reason: collision with root package name */
    private final k f17335b;

    /* renamed from: c  reason: collision with root package name */
    private final g f17336c = h.a(getClass());

    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b$a.class */
    static final /* synthetic */ class a {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f17337a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[com.criteo.publisher.m0.a.values().length];
            f17337a = iArr;
            try {
                iArr[com.criteo.publisher.m0.a.CRITEO_BANNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f17337a[com.criteo.publisher.m0.a.CRITEO_INTERSTITIAL.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f17337a[com.criteo.publisher.m0.a.CRITEO_CUSTOM_NATIVE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.criteo.publisher.h.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/h/b$b.class */
    public static final class C0343b {

        /* renamed from: a  reason: collision with root package name */
        final StringBuilder f17338a;

        /* renamed from: b  reason: collision with root package name */
        private final AdManagerAdRequest.Builder f17339b;

        private C0343b(AdManagerAdRequest.Builder builder) {
            this.f17339b = builder;
            this.f17338a = new StringBuilder();
        }

        /* synthetic */ C0343b(AdManagerAdRequest.Builder builder, a aVar) {
            this(builder);
        }

        final void a(String str, String str2) {
            try {
                this.f17339b.addCustomTargeting(str, str2);
                if (this.f17338a.length() != 0) {
                    this.f17338a.append(",");
                }
                StringBuilder sb = this.f17338a;
                sb.append(str);
                sb.append("=");
                sb.append(str2);
            } catch (LinkageError e) {
                o.a((Throwable) e);
            }
        }
    }

    public b(c cVar, k kVar) {
        this.f17334a = cVar;
        this.f17335b = kVar;
    }

    private static String a(String str) {
        if (s.a((CharSequence) str)) {
            return null;
        }
        try {
            return b(b(Base64.encodeToString(str.getBytes(Charset.forName("UTF-8")), 2)));
        } catch (UnsupportedEncodingException e) {
            o.a((Throwable) e);
            return null;
        }
    }

    private void a(C0343b bVar, String str, String str2) {
        if (!s.a((CharSequence) str)) {
            bVar.a(str2, a(str));
        }
    }

    private static String b(String str) throws UnsupportedEncodingException {
        return URLEncoder.encode(str, Charset.forName("UTF-8").name());
    }

    @Override // com.criteo.publisher.h.d
    public final com.criteo.publisher.i.a a() {
        return com.criteo.publisher.i.a.GAM_APP_BIDDING;
    }

    @Override // com.criteo.publisher.h.d
    public final void a(Object obj, com.criteo.publisher.m0.a aVar, com.criteo.publisher.model.s sVar) {
        String str;
        n g;
        if (obj instanceof AdManagerAdRequest.Builder) {
            C0343b bVar = new C0343b((AdManagerAdRequest.Builder) obj, null);
            bVar.a("crt_cpm", sVar.a());
            int i = a.f17337a[aVar.ordinal()];
            boolean z = true;
            if (i != 1) {
                if (i == 2) {
                    a(bVar, sVar.d(), "crt_displayurl");
                    boolean z2 = this.f17334a.a() == 1;
                    DisplayMetrics a2 = this.f17335b.a();
                    if (Math.min(a2.widthPixels, a2.heightPixels) < a2.density * 600.0f) {
                        z = false;
                    }
                    if (z) {
                        if (z2 && sVar.k() >= 768 && sVar.e() >= 1024) {
                            str = "768x1024";
                        } else if (!z2 && sVar.k() >= 1024 && sVar.e() >= 768) {
                            str = "1024x768";
                        }
                        bVar.a("crt_size", str);
                    }
                    str = z2 ? "320x480" : "480x320";
                    bVar.a("crt_size", str);
                } else if (i == 3 && (g = sVar.g()) != null) {
                    r n = g.n();
                    a(bVar, n.g(), "crtn_title");
                    a(bVar, n.c(), "crtn_desc");
                    a(bVar, n.f(), "crtn_price");
                    a(bVar, n.b().toString(), "crtn_clickurl");
                    a(bVar, n.a(), "crtn_cta");
                    a(bVar, n.e().toString(), "crtn_imageurl");
                    a(bVar, g.c(), "crtn_advname");
                    a(bVar, g.d(), "crtn_advdomain");
                    a(bVar, g.f().toString(), "crtn_advlogourl");
                    a(bVar, g.e().toString(), "crtn_advurl");
                    a(bVar, g.l().toString(), "crtn_prurl");
                    a(bVar, g.m().toString(), "crtn_primageurl");
                    a(bVar, g.k(), "crtn_prtext");
                    List<URL> g2 = g.g();
                    for (int i2 = 0; i2 < g2.size(); i2++) {
                        a(bVar, g2.get(i2).toString(), "crtn_pixurl_".concat(String.valueOf(i2)));
                    }
                    StringBuilder sb = new StringBuilder();
                    sb.append(g2.size());
                    bVar.a("crtn_pixcount", sb.toString());
                }
            } else {
                a(bVar, sVar.d(), "crt_displayurl");
                bVar.a("crt_size", sVar.k() + "x" + sVar.e());
            }
            this.f17336c.a(com.criteo.publisher.h.a.a(com.criteo.publisher.i.a.GAM_APP_BIDDING, bVar.f17338a.toString()));
        }
    }

    @Override // com.criteo.publisher.h.d
    public final boolean a(Object obj) {
        return obj instanceof AdManagerAdRequest.Builder;
    }

    @Override // com.criteo.publisher.h.d
    public final void b(Object obj) {
    }
}
