package p081h.p119d.p120a.p124s.p131j;

import android.net.Uri;
import android.text.TextUtils;
import java.io.File;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.p */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/p.class */
public class C5922p<T> implements AbstractC5918l<String, T> {

    /* renamed from: a */
    public final AbstractC5918l<Uri, T> f14859a;

    public C5922p(AbstractC5918l<Uri, T> lVar) {
        this.f14859a = lVar;
    }

    /* renamed from: a */
    public static Uri m24136a(String str) {
        return Uri.fromFile(new File(str));
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public AbstractC5813c<T> mo24060a(String str, int i, int i2) {
        Uri uri;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (str.startsWith("/")) {
            uri = m24136a(str);
        } else {
            Uri parse = Uri.parse(str);
            uri = parse.getScheme() == null ? m24136a(str) : parse;
        }
        return this.f14859a.mo24060a(uri, i, i2);
    }
}
