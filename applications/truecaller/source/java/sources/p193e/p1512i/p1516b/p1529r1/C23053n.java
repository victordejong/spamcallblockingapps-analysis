package p193e.p1512i.p1516b.p1529r1;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.criteo.publisher.advancednative.ImageLoader;
import com.squareup.picasso.Picasso;
import java.net.URL;
import java.util.Objects;
import p193e.p1512i.p1516b.p1536w1.AbstractC23146a;
import s1.z.c.l;
/* renamed from: e.i.b.r1.n */
/* loaded from: classes-dex2jar.jar:e/i/b/r1/n.class */
public final class C23053n implements ImageLoader {

    /* renamed from: a */
    public final Picasso f63852a;

    /* renamed from: b */
    public final AbstractC23146a f63853b;

    public C23053n(Picasso picasso, AbstractC23146a abstractC23146a) {
        l.f(picasso, "picasso");
        l.f(abstractC23146a, "asyncResources");
        this.f63852a = picasso;
        this.f63853b = abstractC23146a;
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public void loadImageInto(URL url, ImageView imageView, Drawable drawable) {
        l.f(url, "imageUrl");
        l.f(imageView, "imageView");
        AbstractC23146a abstractC23146a = this.f63853b;
        a aVar = new a(this, url, drawable, imageView);
        Objects.requireNonNull(abstractC23146a);
        l.f(aVar, "resourceHandler");
        AbstractC23146a.C23147a c23147a = new AbstractC23146a.C23147a();
        try {
            aVar.d(c23147a);
        } catch (Throwable th) {
            c23147a.m7466a();
            throw th;
        }
    }

    @Override // com.criteo.publisher.advancednative.ImageLoader
    public void preload(URL url) {
        l.f(url, "imageUrl");
        this.f63852a.m36039e(url.toString()).b();
    }
}
