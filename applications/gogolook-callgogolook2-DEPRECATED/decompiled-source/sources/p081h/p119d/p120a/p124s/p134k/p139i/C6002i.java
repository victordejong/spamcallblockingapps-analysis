package p081h.p119d.p120a.p124s.p134k.p139i;

import android.content.Context;
import android.graphics.Bitmap;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
import p081h.p119d.p120a.p122q.C5796a;
import p081h.p119d.p120a.p122q.C5799c;
import p081h.p119d.p120a.p122q.C5800d;
import p081h.p119d.p120a.p124s.AbstractC5808e;
import p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5856c;
import p081h.p119d.p120a.p124s.p134k.C5952d;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.k.i.i */
/* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/i.class */
public class C6002i implements AbstractC5808e<InputStream, C5988b> {

    /* renamed from: f */
    public static final C6004b f14971f = new C6004b();

    /* renamed from: g */
    public static final C6003a f14972g = new C6003a();

    /* renamed from: a */
    public final Context f14973a;

    /* renamed from: b */
    public final C6004b f14974b;

    /* renamed from: c */
    public final AbstractC5856c f14975c;

    /* renamed from: d */
    public final C6003a f14976d;

    /* renamed from: e */
    public final C5987a f14977e;

    /* renamed from: h.d.a.s.k.i.i$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/i$a.class */
    public static class C6003a {

        /* renamed from: a */
        public final Queue<C5796a> f14978a = C6096h.m23864a(0);

        /* renamed from: a */
        public C5796a m24052a(C5796a.AbstractC5797a aVar) {
            C5796a aVar2;
            synchronized (this) {
                C5796a poll = this.f14978a.poll();
                aVar2 = poll;
                if (poll == null) {
                    aVar2 = new C5796a(aVar);
                }
            }
            return aVar2;
        }

        /* renamed from: a */
        public void m24051a(C5796a aVar) {
            synchronized (this) {
                aVar.m24371b();
                this.f14978a.offer(aVar);
            }
        }
    }

    /* renamed from: h.d.a.s.k.i.i$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/k/i/i$b.class */
    public static class C6004b {

        /* renamed from: a */
        public final Queue<C5800d> f14979a = C6096h.m23864a(0);

        /* renamed from: a */
        public C5800d m24049a(byte[] bArr) {
            C5800d dVar;
            synchronized (this) {
                C5800d poll = this.f14979a.poll();
                dVar = poll;
                if (poll == null) {
                    dVar = new C5800d();
                }
                dVar.m24358a(bArr);
            }
            return dVar;
        }

        /* renamed from: a */
        public void m24050a(C5800d dVar) {
            synchronized (this) {
                dVar.m24360a();
                this.f14979a.offer(dVar);
            }
        }
    }

    public C6002i(Context context, AbstractC5856c cVar) {
        this(context, cVar, f14971f, f14972g);
    }

    public C6002i(Context context, AbstractC5856c cVar, C6004b bVar, C6003a aVar) {
        this.f14973a = context.getApplicationContext();
        this.f14975c = cVar;
        this.f14976d = aVar;
        this.f14977e = new C5987a(cVar);
        this.f14974b = bVar;
    }

    /* renamed from: a */
    public static byte[] m24055a(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(16384);
        try {
            byte[] bArr = new byte[16384];
            while (true) {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                byteArrayOutputStream.write(bArr, 0, read);
            }
            byteArrayOutputStream.flush();
        } catch (IOException e) {
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: a */
    public final Bitmap m24056a(C5796a aVar, C5799c cVar, byte[] bArr) {
        aVar.m24372a(cVar, bArr);
        aVar.m24377a();
        return aVar.m24366g();
    }

    /* renamed from: a  reason: avoid collision after fix types in other method */
    public C5991d mo24025a(InputStream inputStream, int i, int i2) {
        byte[] a = m24055a(inputStream);
        C5800d a2 = this.f14974b.m24049a(a);
        C5796a a3 = this.f14976d.m24052a(this.f14977e);
        try {
            return m24053a(a, i, i2, a2, a3);
        } finally {
            this.f14974b.m24050a(a2);
            this.f14976d.m24051a(a3);
        }
    }

    /* renamed from: a */
    public final C5991d m24053a(byte[] bArr, int i, int i2, C5800d dVar, C5796a aVar) {
        Bitmap a;
        C5799c c = dVar.m24356c();
        if (c.m24362a() <= 0 || c.m24361b() != 0 || (a = m24056a(aVar, c, bArr)) == null) {
            return null;
        }
        return new C5991d(new C5988b(this.f14973a, this.f14977e, this.f14975c, C5952d.m24124a(), i, i2, c, bArr, a));
    }

    @Override // p081h.p119d.p120a.p124s.AbstractC5808e
    public String getId() {
        return "";
    }
}
