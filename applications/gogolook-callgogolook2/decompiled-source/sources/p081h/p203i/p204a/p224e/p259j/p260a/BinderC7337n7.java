package p081h.p203i.p204a.p224e.p259j.p260a;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.RemoteException;
import p081h.p203i.p204a.p224e.p252e.AbstractC7106b;
import p081h.p203i.p204a.p224e.p252e.BinderC7110d;
@AbstractC7354p0
/* renamed from: h.i.a.e.j.a.n7 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/a/n7.class */
public final class BinderC7337n7 extends AbstractBinderC7410t7 {

    /* renamed from: a */
    public final Drawable f17398a;

    /* renamed from: b */
    public final Uri f17399b;

    /* renamed from: c */
    public final double f17400c;

    public BinderC7337n7(Drawable drawable, Uri uri, double d) {
        this.f17398a = drawable;
        this.f17399b = uri;
        this.f17400c = d;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    public final double getScale() {
        return this.f17400c;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    public final Uri getUri() throws RemoteException {
        return this.f17399b;
    }

    @Override // p081h.p203i.p204a.p224e.p259j.p260a.AbstractC7398s7
    /* renamed from: y0 */
    public final AbstractC7106b mo20646y0() throws RemoteException {
        return BinderC7110d.m21058a(this.f17398a);
    }
}
