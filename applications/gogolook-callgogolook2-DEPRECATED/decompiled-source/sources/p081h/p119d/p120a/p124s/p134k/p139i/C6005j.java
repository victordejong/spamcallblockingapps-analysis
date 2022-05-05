package p081h.p119d.p120a.p124s.p134k.p139i;

import android.graphics.Bitmap;
import android.util.Log;
import java.io.IOException;
import java.io.OutputStream;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p122q.C5799c;
import p081h.p119d.p120a.p122q.C5800d;
import p081h.p119d.p120a.p123r.C5801a;
import p081h.p119d.p120a.p124s.AbstractC5809f;
import p081h.p119d.p120a.p124s.AbstractC5810g;
import p081h.p119d.p120a.p124s.p126i.AbstractC5848l;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.C5952d;
import p081h.p119d.p120a.p124s.p134k.p135e.C5955c;
import p081h.p119d.p120a.p149y.C6092d;
/* renamed from: h.d.a.s.k.i.j */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/j.class */
public class C6005j implements AbstractC5809f<C5988b> {

    /* renamed from: d */
    public static final C6006a f14980d = new C6006a();

    /* renamed from: a */
    public final C5796a.AbstractC5797a f14981a;

    /* renamed from: b */
    public final AbstractC5856c f14982b;

    /* renamed from: c */
    public final C6006a f14983c;

    /* renamed from: h.d.a.s.k.i.j$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/j$a.class */
    public static class C6006a {
        /* renamed from: a */
        public C5796a m24042a(C5796a.AbstractC5797a aVar) {
            return new C5796a(aVar);
        }

        /* renamed from: a */
        public C5801a m24044a() {
            return new C5801a();
        }

        /* renamed from: a */
        public AbstractC5848l<Bitmap> m24043a(Bitmap bitmap, AbstractC5856c cVar) {
            return new C5955c(bitmap, cVar);
        }

        /* renamed from: b */
        public C5800d m24041b() {
            return new C5800d();
        }
    }

    public C6005j(AbstractC5856c cVar) {
        this(cVar, f14980d);
    }

    public C6005j(AbstractC5856c cVar, C6006a aVar) {
        this.f14982b = cVar;
        this.f14981a = new C5987a(cVar);
        this.f14983c = aVar;
    }

    /* renamed from: a */
    public final C5796a m24046a(byte[] bArr) {
        C5800d b = this.f14983c.m24041b();
        b.m24358a(bArr);
        C5799c c = b.m24356c();
        C5796a a = this.f14983c.m24042a(this.f14981a);
        a.m24372a(c, bArr);
        a.m24377a();
        return a;
    }

    /* renamed from: a */
    public final AbstractC5848l<Bitmap> m24048a(Bitmap bitmap, AbstractC5810g<Bitmap> gVar, C5988b bVar) {
        AbstractC5848l<Bitmap> a = this.f14983c.m24043a(bitmap, this.f14982b);
        AbstractC5848l<Bitmap> a2 = gVar.mo832a(a, bVar.getIntrinsicWidth(), bVar.getIntrinsicHeight());
        if (!a.equals(a2)) {
            a.mo24036b();
        }
        return a2;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: a */
    public boolean mo24027a(AbstractC5848l<C5988b> lVar, OutputStream outputStream) {
        long a = C6092d.m23879a();
        C5988b bVar = lVar.get();
        AbstractC5810g<Bitmap> e = bVar.m24079e();
        if (e instanceof C5952d) {
            return m24045a(bVar.m24082b(), outputStream);
        }
        C5796a a2 = m24046a(bVar.m24082b());
        C5801a a3 = this.f14983c.m24044a();
        if (!a3.m24339a(outputStream)) {
            return false;
        }
        for (int i = 0; i < a2.m24369d(); i++) {
            AbstractC5848l<Bitmap> a4 = m24048a(a2.m24366g(), e, bVar);
            try {
                if (!a3.m24340a(a4.get())) {
                    a4.mo24036b();
                    return false;
                }
                a3.m24336b(a2.m24376a(a2.m24370c()));
                a2.m24377a();
                a4.mo24036b();
            } catch (Throwable th) {
                a4.mo24036b();
                throw th;
            }
        }
        boolean b = a3.m24337b();
        if (Log.isLoggable("GifEncoder", 2)) {
            String str = "Encoded gif with " + a2.m24369d() + " frames and " + bVar.m24082b().length + " bytes in " + C6092d.m23878a(a) + " ms";
        }
        return b;
    }

    /* renamed from: a */
    public final boolean m24045a(byte[] bArr, OutputStream outputStream) {
        boolean z;
        try {
            outputStream.write(bArr);
            z = true;
        } catch (IOException e) {
            Log.isLoggable("GifEncoder", 3);
            z = false;
        }
        return z;
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5805b
    public String getId() {
        return "";
    }
}
