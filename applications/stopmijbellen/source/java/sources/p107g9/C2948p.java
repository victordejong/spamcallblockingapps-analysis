package p107g9;

import android.content.Context;
import android.net.Uri;
import com.applovin.sdk.AppLovinEventTypes;
/* renamed from: g9.p */
/* loaded from: classes2-dex2jar.jar:g9/p.class */
public class C2948p extends C2934g {

    /* renamed from: b */
    public static final String[] f9914b = {"orientation"};

    public C2948p(Context context) {
        super(context);
    }

    @Override // p107g9.C2934g, p107g9.AbstractC2968x
    /* renamed from: c */
    public boolean mo2800c(C2964v c2964v) {
        Uri uri = c2964v.f9956c;
        return AppLovinEventTypes.USER_VIEWED_CONTENT.equals(uri.getScheme()) && "media".equals(uri.getAuthority());
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0056, code lost:
        if (r12 != null) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0076, code lost:
        if (r12 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0079, code lost:
        r12.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0080, code lost:
        r14 = 0;
     */
    @Override // p107g9.C2934g, p107g9.AbstractC2968x
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public p107g9.AbstractC2968x.C2969a mo2799f(p107g9.C2964v r8, int r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p107g9.C2948p.mo2799f(g9.v, int):g9.x$a");
    }
}
