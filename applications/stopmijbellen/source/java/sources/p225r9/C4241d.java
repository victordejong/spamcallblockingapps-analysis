package p225r9;

import javax.annotation.Nullable;
import p204p9.C4084b0;
import p204p9.C4135y;
/* renamed from: r9.d */
/* loaded from: classes2-dex2jar.jar:r9/d.class */
public final class C4241d {
    @Nullable

    /* renamed from: a */
    public final C4135y f13283a;
    @Nullable

    /* renamed from: b */
    public final C4084b0 f13284b;

    public C4241d(C4135y c4135y, C4084b0 c4084b0) {
        this.f13283a = c4135y;
        this.f13284b = c4084b0;
    }

    /* renamed from: a */
    public static boolean m1253a(C4084b0 c4084b0, C4135y c4135y) {
        int i = c4084b0.f12799c;
        if (i != 200 && i != 410 && i != 414 && i != 501 && i != 203 && i != 204) {
            if (i != 307) {
                if (i != 308 && i != 404 && i != 405) {
                    switch (i) {
                        case 300:
                        case 301:
                            break;
                        case 302:
                            break;
                        default:
                            return false;
                    }
                }
            }
            String m1401c = c4084b0.f12802f.m1401c("Expires");
            if (m1401c == null) {
                m1401c = null;
            }
            if (m1401c == null && c4084b0.m1436d().f12860c == -1 && !c4084b0.m1436d().f12863f && !c4084b0.m1436d().f12862e) {
                return false;
            }
        }
        boolean z = false;
        if (!c4084b0.m1436d().f12859b) {
            z = false;
            if (!c4135y.m1362a().f12859b) {
                z = true;
            }
        }
        return z;
    }
}
