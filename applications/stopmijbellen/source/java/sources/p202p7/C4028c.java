package p202p7;

import android.net.Uri;
import java.util.Date;
import java.util.Objects;
import p181n7.C3784x;
import p202p7.C4024a;
/* renamed from: p7.c */
/* loaded from: classes2-dex2jar.jar:p7/c.class */
public final class C4028c {

    /* renamed from: a */
    public final C4026b f12645a;

    /* renamed from: b */
    public boolean f12646b;

    /* renamed from: c */
    public int f12647c = -1;

    /* renamed from: d */
    public int f12648d = -1;

    /* renamed from: e */
    public int f12649e = -1;

    /* renamed from: f */
    public boolean f12650f;

    /* renamed from: g */
    public String f12651g;

    /* renamed from: h */
    public String f12652h;

    /* renamed from: p7.c$a */
    /* loaded from: classes2-dex2jar.jar:p7/c$a.class */
    public class C4029a implements C4024a.AbstractC4025a {
        public C4029a() {
            C4028c.this = r4;
        }

        @Override // p202p7.C4024a.AbstractC4025a
        /* renamed from: a */
        public void mo1472a(String str, String str2) {
            if (str.equalsIgnoreCase("no-cache")) {
                C4028c.this.f12646b = true;
            } else if (str.equalsIgnoreCase("max-age")) {
                C4028c.this.f12647c = C4024a.m1498b(str2);
            } else if (str.equalsIgnoreCase("max-stale")) {
                C4028c.this.f12648d = C4024a.m1498b(str2);
            } else if (str.equalsIgnoreCase("min-fresh")) {
                C4028c.this.f12649e = C4024a.m1498b(str2);
            } else if (!str.equalsIgnoreCase("only-if-cached")) {
            } else {
                Objects.requireNonNull(C4028c.this);
            }
        }
    }

    public C4028c(Uri uri, C4026b c4026b) {
        this.f12645a = c4026b;
        C4029a c4029a = new C4029a();
        for (int i = 0; i < c4026b.m1491f(); i++) {
            String m1493d = c4026b.m1493d(i);
            String m1492e = c4026b.m1492e(i);
            if ("Cache-Control".equalsIgnoreCase(m1493d)) {
                C4024a.m1499a(m1492e, c4029a);
            } else if ("Pragma".equalsIgnoreCase(m1493d)) {
                if (m1492e.equalsIgnoreCase("no-cache")) {
                    this.f12646b = true;
                }
            } else if ("If-None-Match".equalsIgnoreCase(m1493d)) {
                this.f12652h = m1492e;
            } else if ("If-Modified-Since".equalsIgnoreCase(m1493d)) {
                this.f12651g = m1492e;
            } else if ("Authorization".equalsIgnoreCase(m1493d)) {
                this.f12650f = true;
            } else if ("Content-Length".equalsIgnoreCase(m1493d)) {
                try {
                    Integer.parseInt(m1492e);
                } catch (NumberFormatException e) {
                }
            } else if (!"Transfer-Encoding".equalsIgnoreCase(m1493d) && !"User-Agent".equalsIgnoreCase(m1493d) && !"Host".equalsIgnoreCase(m1493d) && !"Connection".equalsIgnoreCase(m1493d) && !"Accept-Encoding".equalsIgnoreCase(m1493d) && !"Content-Type".equalsIgnoreCase(m1493d)) {
                "Proxy-Authorization".equalsIgnoreCase(m1493d);
            }
        }
    }

    /* renamed from: a */
    public void m1487a(Date date) {
        if (this.f12651g != null) {
            this.f12645a.m1490g("If-Modified-Since");
        }
        String format = C3784x.f12258a.get().format(date);
        this.f12645a.m1496a("If-Modified-Since", format);
        this.f12651g = format;
    }
}
