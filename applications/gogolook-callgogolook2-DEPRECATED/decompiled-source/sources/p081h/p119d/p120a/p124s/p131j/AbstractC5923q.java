package p081h.p119d.p120a.p124s.p131j;

import android.content.Context;
import android.net.Uri;
import p081h.p119d.p120a.p124s.p125h.AbstractC5813c;
/* renamed from: h.d.a.s.j.q */
/* loaded from: classes-dex2jar.jar:h/d/a/s/j/q.class */
public abstract class AbstractC5923q<T> implements AbstractC5918l<Uri, T> {

    /* renamed from: a */
    public final Context f14860a;

    /* renamed from: b */
    public final AbstractC5918l<C5904d, T> f14861b;

    public AbstractC5923q(Context context, AbstractC5918l<C5904d, T> lVar) {
        this.f14860a = context;
        this.f14861b = lVar;
    }

    /* renamed from: a */
    public static boolean m24133a(String str) {
        return "file".equals(str) || "content".equals(str) || "android.resource".equals(str);
    }

    /* renamed from: a */
    public abstract AbstractC5813c<T> mo5522a(Context context, Uri uri);

    /* renamed from: a */
    public abstract AbstractC5813c<T> mo5521a(Context context, String str);

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public final AbstractC5813c<T> mo24060a(Uri uri, int i, int i2) {
        String scheme = uri.getScheme();
        return m24133a(scheme) ? C5900a.m24164a(uri) ? mo5521a(this.f14860a, C5900a.m24163b(uri)) : mo5522a(this.f14860a, uri) : (this.f14861b == null || (!"http".equals(scheme) && !"https".equals(scheme))) ? null : this.f14861b.mo24060a(new C5904d(uri.toString()), i, i2);
    }
}
