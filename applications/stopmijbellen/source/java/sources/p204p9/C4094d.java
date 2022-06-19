package p204p9;

import com.google.android.gms.common.api.Api;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
/* renamed from: p9.d */
/* loaded from: classes2-dex2jar.jar:p9/d.class */
public final class C4094d {

    /* renamed from: n */
    public static final C4094d f12857n;

    /* renamed from: a */
    public final boolean f12858a;

    /* renamed from: b */
    public final boolean f12859b;

    /* renamed from: c */
    public final int f12860c;

    /* renamed from: d */
    public final int f12861d;

    /* renamed from: e */
    public final boolean f12862e;

    /* renamed from: f */
    public final boolean f12863f;

    /* renamed from: g */
    public final boolean f12864g;

    /* renamed from: h */
    public final int f12865h;

    /* renamed from: i */
    public final int f12866i;

    /* renamed from: j */
    public final boolean f12867j;

    /* renamed from: k */
    public final boolean f12868k;

    /* renamed from: l */
    public final boolean f12869l;
    @Nullable

    /* renamed from: m */
    public String f12870m;

    /* renamed from: p9.d$a */
    /* loaded from: classes2-dex2jar.jar:p9/d$a.class */
    public static final class C4095a {

        /* renamed from: a */
        public boolean f12871a;

        /* renamed from: b */
        public boolean f12872b;

        /* renamed from: c */
        public int f12873c = -1;

        /* renamed from: d */
        public boolean f12874d;
    }

    static {
        C4095a c4095a = new C4095a();
        c4095a.f12874d = true;
        int i = Integer.MAX_VALUE;
        long seconds = TimeUnit.SECONDS.toSeconds((long) Api.BaseClientBuilder.API_PRIORITY_OTHER);
        if (seconds <= 2147483647L) {
            i = (int) seconds;
        }
        c4095a.f12873c = i;
        f12857n = new C4094d(c4095a);
    }

    public C4094d(C4095a c4095a) {
        this.f12858a = c4095a.f12871a;
        this.f12859b = c4095a.f12872b;
        this.f12860c = -1;
        this.f12861d = -1;
        this.f12862e = false;
        this.f12863f = false;
        this.f12864g = false;
        this.f12865h = c4095a.f12873c;
        this.f12866i = -1;
        this.f12867j = c4095a.f12874d;
        this.f12868k = false;
        this.f12869l = false;
    }

    public C4094d(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, @Nullable String str) {
        this.f12858a = z;
        this.f12859b = z2;
        this.f12860c = i;
        this.f12861d = i2;
        this.f12862e = z3;
        this.f12863f = z4;
        this.f12864g = z5;
        this.f12865h = i3;
        this.f12866i = i4;
        this.f12867j = z6;
        this.f12868k = z7;
        this.f12869l = z8;
        this.f12870m = str;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x00e8  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01f1  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static p204p9.C4094d m1423a(p204p9.C4121r r16) {
        /*
            Method dump skipped, instructions count: 1335
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p204p9.C4094d.m1423a(p9.r):p9.d");
    }

    public String toString() {
        String str = this.f12870m;
        if (str == null) {
            StringBuilder sb = new StringBuilder();
            if (this.f12858a) {
                sb.append("no-cache, ");
            }
            if (this.f12859b) {
                sb.append("no-store, ");
            }
            if (this.f12860c != -1) {
                sb.append("max-age=");
                sb.append(this.f12860c);
                sb.append(", ");
            }
            if (this.f12861d != -1) {
                sb.append("s-maxage=");
                sb.append(this.f12861d);
                sb.append(", ");
            }
            if (this.f12862e) {
                sb.append("private, ");
            }
            if (this.f12863f) {
                sb.append("public, ");
            }
            if (this.f12864g) {
                sb.append("must-revalidate, ");
            }
            if (this.f12865h != -1) {
                sb.append("max-stale=");
                sb.append(this.f12865h);
                sb.append(", ");
            }
            if (this.f12866i != -1) {
                sb.append("min-fresh=");
                sb.append(this.f12866i);
                sb.append(", ");
            }
            if (this.f12867j) {
                sb.append("only-if-cached, ");
            }
            if (this.f12868k) {
                sb.append("no-transform, ");
            }
            if (this.f12869l) {
                sb.append("immutable, ");
            }
            if (sb.length() == 0) {
                str = "";
            } else {
                sb.delete(sb.length() - 2, sb.length());
                str = sb.toString();
            }
            this.f12870m = str;
        }
        return str;
    }
}
