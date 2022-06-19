package p193e.p1451f.p1452a.p1457n.p1466q.p1467d;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import java.io.IOException;
import p193e.p1451f.p1452a.p1457n.AbstractC22269k;
import p193e.p1451f.p1452a.p1457n.C22267i;
import p193e.p1451f.p1452a.p1457n.p1460o.AbstractC22394w;
import p193e.p1451f.p1452a.p1457n.p1460o.p1461b0.AbstractC22303d;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.AbstractC22529b;
import p193e.p1451f.p1452a.p1457n.p1466q.p1469f.C22531e;
/* renamed from: e.f.a.n.q.d.x */
/* loaded from: classes-dex2jar.jar:e/f/a/n/q/d/x.class */
public class C22522x implements AbstractC22269k<Uri, Bitmap> {

    /* renamed from: a */
    public final C22531e f62416a;

    /* renamed from: b */
    public final AbstractC22303d f62417b;

    public C22522x(C22531e c22531e, AbstractC22303d abstractC22303d) {
        this.f62416a = c22531e;
        this.f62417b = abstractC22303d;
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: a */
    public boolean mo8147a(Uri uri, C22267i c22267i) throws IOException {
        return "android.resource".equals(uri.getScheme());
    }

    @Override // p193e.p1451f.p1452a.p1457n.AbstractC22269k
    /* renamed from: b */
    public AbstractC22394w<Bitmap> mo8146b(Uri uri, int i, int i2, C22267i c22267i) throws IOException {
        AbstractC22394w<Bitmap> abstractC22394w;
        AbstractC22394w m8159c = this.f62416a.m8159c(uri);
        if (m8159c == null) {
            abstractC22394w = null;
        } else {
            abstractC22394w = C22515o.m8179a(this.f62417b, (Drawable) ((AbstractC22529b) m8159c).get(), i, i2);
        }
        return abstractC22394w;
    }
}
