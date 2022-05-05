package p459j.p460a.p474c0.p475c.p479z;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.RectF;
import android.net.Uri;
import android.os.CancellationSignal;
import android.util.Size;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import p459j.p460a.p474c0.p475c.p479z.AbstractC11667n;
import p459j.p460a.p474c0.p475c.p479z.C11683x;
import p459j.p460a.p474c0.p499h.C12151d;
import p459j.p460a.p474c0.p499h.C12242z;
import p459j.p460a.p474c0.p499h.p500x0.C12227c;
/* renamed from: j.a.c0.c.z.m */
/* loaded from: classes2-dex2jar.jar:j/a/c0/c/z/m.class */
public abstract class AbstractC11666m<D extends AbstractC11667n> implements AbstractC11672r<AbstractC11669o> {

    /* renamed from: a */
    public final Context f26181a;

    /* renamed from: b */
    public final D f26182b;

    /* renamed from: c */
    public int f26183c;

    public AbstractC11666m(Context context, D d) {
        this.f26181a = context;
        this.f26182b = d;
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: a */
    public int mo8662a() {
        return 3;
    }

    @RequiresApi(api = 29)
    /* renamed from: a */
    public AbstractC11669o m8689a(Uri uri, Size size, @Nullable CancellationSignal cancellationSignal) throws IOException {
        return new C11659h(getKey(), this.f26181a.getContentResolver().loadThumbnail(uri, size, cancellationSignal), this.f26183c);
    }

    /* renamed from: a */
    public final AbstractC11669o m8688a(AbstractC11669o oVar) {
        D d = this.f26182b;
        if (!d.f26189f || !(oVar instanceof C11659h)) {
            return oVar;
        }
        int i = d.f26184a;
        int i2 = d.f26185b;
        Bitmap n = oVar.mo8676n();
        Bitmap a = m8686e().m8631a(i, i2);
        RectF rectF = new RectF(0.0f, 0.0f, i, i2);
        RectF rectF2 = new RectF(0.0f, 0.0f, n.getWidth(), n.getHeight());
        D d2 = this.f26182b;
        int i3 = d2.f26190g;
        C12242z.m6558a(n, new Canvas(a), rectF2, rectF, null, i3 != 0, i3, d2.f26191h);
        return new C11659h(getKey(), a, oVar.mo8674p());
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: a */
    public final AbstractC11669o mo8661a(List<AbstractC11672r<AbstractC11669o>> list) throws IOException {
        C12151d.m7002b();
        return m8688a(mo8603b(list));
    }

    /* renamed from: b */
    public AbstractC11669o mo8603b(List<AbstractC11672r<AbstractC11669o>> list) throws IOException {
        if (this.f26182b.m8683b() || !mo8640i()) {
            Bitmap j = mo8639j();
            if (j != null) {
                return new C11659h(getKey(), j, this.f26183c);
            }
            throw new RuntimeException("failed decoding bitmap");
        }
        C11665l a = C11665l.m8690a(getKey(), mo8641g());
        if (a != null) {
            return a;
        }
        throw new RuntimeException("Error decoding gif");
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: b */
    public C11670p<AbstractC11669o> mo8660b() {
        return AbstractC11671q.m8665b().m8663c(mo8602f());
    }

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    /* renamed from: c */
    public AbstractC11673s<AbstractC11669o> mo8659c() {
        return this.f26182b;
    }

    /* renamed from: d */
    public Bitmap mo8687d() throws IOException {
        return null;
    }

    /* renamed from: e */
    public C11683x.C11684a m8686e() {
        return AbstractC11671q.m8665b().m8664b(mo8602f());
    }

    /* renamed from: f */
    public int mo8602f() {
        return 1;
    }

    /* renamed from: g */
    public abstract InputStream mo8641g() throws FileNotFoundException;

    @Override // p459j.p460a.p474c0.p475c.p479z.AbstractC11672r
    public String getKey() {
        return this.f26182b.mo8684a();
    }

    /* renamed from: h */
    public boolean mo8685h() {
        return false;
    }

    /* renamed from: i */
    public boolean mo8640i() throws FileNotFoundException {
        return C12242z.m6552b(mo8641g());
    }

    /* renamed from: j */
    public Bitmap mo8639j() throws IOException {
        InputStream g;
        D d = this.f26182b;
        boolean z = d.f26186c == -1 || d.f26187d == -1;
        if (mo8685h()) {
            Bitmap d2 = mo8687d();
            if (d2 != null && z) {
                this.f26182b.mo8643a(d2.getWidth(), d2.getHeight());
            }
            return d2;
        }
        this.f26183c = C12242z.m6555a(mo8641g());
        BitmapFactory.Options a = C11683x.m8636a(false, 0, 0);
        if (z) {
            g = mo8641g();
            if (g != null) {
                try {
                    a.inJustDecodeBounds = true;
                    BitmapFactory.decodeStream(g, null, a);
                    if (C12227c.m6665g(this.f26183c).f27534d) {
                        this.f26182b.mo8643a(a.outHeight, a.outWidth);
                    } else {
                        this.f26182b.mo8643a(a.outWidth, a.outHeight);
                    }
                } finally {
                }
            } else {
                throw new FileNotFoundException();
            }
        } else {
            D d3 = this.f26182b;
            a.outWidth = d3.f26186c;
            a.outHeight = d3.f26187d;
        }
        C12242z a2 = C12242z.m6564a();
        D d4 = this.f26182b;
        a.inSampleSize = a2.m6557a(a, d4.f26184a, d4.f26185b);
        C12151d.m6999b(a.inSampleSize > 0);
        g = mo8641g();
        if (g != null) {
            try {
                a.inJustDecodeBounds = false;
                C11683x.C11684a e = m8686e();
                return e == null ? BitmapFactory.decodeStream(g, null, a) : e.m8627a(g, a, ((a.outWidth + a.inSampleSize) - 1) / a.inSampleSize, ((a.outHeight + a.inSampleSize) - 1) / a.inSampleSize);
            } finally {
            }
        } else {
            throw new FileNotFoundException();
        }
    }
}
