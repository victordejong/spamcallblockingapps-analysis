package p599h;

import java.io.Closeable;
import java.io.IOException;
import java.nio.charset.Charset;
import p599h.p600d0.C10109c;
import p610i.AbstractC10264e;
import p610i.C10260c;
/* renamed from: h.b0 */
/* loaded from: classes2-dex2jar.jar:h/b0.class */
public abstract class AbstractC10095b0 implements Closeable {

    /* renamed from: h.b0$a */
    /* loaded from: classes2-dex2jar.jar:h/b0$a.class */
    public class C10096a extends AbstractC10095b0 {

        /* renamed from: a */
        public final /* synthetic */ C10240u f37250a;

        /* renamed from: b */
        public final /* synthetic */ long f37251b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC10264e f37252c;

        public C10096a(C10240u uVar, long j, AbstractC10264e eVar) {
            this.f37250a = uVar;
            this.f37251b = j;
            this.f37252c = eVar;
        }

        @Override // p599h.AbstractC10095b0
        /* renamed from: b */
        public long mo1302b() {
            return this.f37251b;
        }

        @Override // p599h.AbstractC10095b0
        /* renamed from: c */
        public C10240u mo1301c() {
            return this.f37250a;
        }

        @Override // p599h.AbstractC10095b0
        /* renamed from: d */
        public AbstractC10264e mo1300d() {
            return this.f37252c;
        }
    }

    /* renamed from: a */
    public static AbstractC10095b0 m1507a(C10240u uVar, long j, AbstractC10264e eVar) {
        if (eVar != null) {
            return new C10096a(uVar, j, eVar);
        }
        throw new NullPointerException("source == null");
    }

    /* renamed from: a */
    public static AbstractC10095b0 m1506a(C10240u uVar, byte[] bArr) {
        C10260c cVar = new C10260c();
        cVar.write(bArr);
        return m1507a(uVar, bArr.length, cVar);
    }

    /* renamed from: a */
    public final Charset m1508a() {
        C10240u c = mo1301c();
        return c != null ? c.m894a(C10109c.f37322i) : C10109c.f37322i;
    }

    /* renamed from: b */
    public abstract long mo1302b();

    /* renamed from: c */
    public abstract C10240u mo1301c();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        C10109c.m1463a(mo1300d());
    }

    /* renamed from: d */
    public abstract AbstractC10264e mo1300d();

    /* renamed from: e */
    public final String m1505e() throws IOException {
        AbstractC10264e d = mo1300d();
        try {
            return d.mo722a(C10109c.m1465a(d, m1508a()));
        } finally {
            C10109c.m1463a(d);
        }
    }
}
