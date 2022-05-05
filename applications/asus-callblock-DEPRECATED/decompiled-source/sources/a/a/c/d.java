package a.a.c;

import a.a.b.a;
import a.a.b.b;
import com.asus.updatesdk.BuildConfig;
/* loaded from: classes-dex2jar.jar:a/a/c/d.class */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    private b f7a;

    /* renamed from: b  reason: collision with root package name */
    private a f8b;

    public d(b bVar, a aVar) {
        this.f7a = bVar;
        this.f8b = aVar;
    }

    private String b() {
        String sb;
        if (this.f8b == null) {
            sb = BuildConfig.FLAVOR;
        } else {
            StringBuilder sb2 = new StringBuilder();
            int i = 0;
            for (String str : this.f8b.keySet()) {
                if (!"oauth_signature".equals(str) && !"realm".equals(str)) {
                    if (i > 0) {
                        sb2.append("&");
                    }
                    sb2.append(this.f8b.a((Object) str));
                }
                i++;
            }
            sb = sb2.toString();
        }
        return sb;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x004c, code lost:
        if (r0.getPort() == 443) goto L_0x004f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0082, code lost:
        if (r0.length() <= 0) goto L_0x0085;
     */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String a() {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: a.a.c.d.a():java.lang.String");
    }
}
