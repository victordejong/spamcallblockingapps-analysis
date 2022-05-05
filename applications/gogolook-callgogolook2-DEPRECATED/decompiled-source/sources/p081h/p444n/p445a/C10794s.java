package p081h.p444n.p445a;

import android.net.NetworkInfo;
import java.io.IOException;
import okhttp3.CacheControl;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import p081h.p444n.p445a.AbstractC10815z;
import p081h.p444n.p445a.C10798u;
/* renamed from: h.n.a.s */
/* loaded from: classes2-dex2jar.jar:h/n/a/s.class */
public class C10794s extends AbstractC10815z {

    /* renamed from: a */
    public final AbstractC10782j f24648a;

    /* renamed from: b */
    public final C10755b0 f24649b;

    /* renamed from: h.n.a.s$a */
    /* loaded from: classes2-dex2jar.jar:h/n/a/s$a.class */
    public static class C10795a extends IOException {
        public C10795a(String str) {
            super(str);
        }
    }

    /* renamed from: h.n.a.s$b */
    /* loaded from: classes2-dex2jar.jar:h/n/a/s$b.class */
    public static final class C10796b extends IOException {

        /* renamed from: a */
        public final int f24650a;

        /* renamed from: b */
        public final int f24651b;

        public C10796b(int i, int i2) {
            super("HTTP " + i);
            this.f24650a = i;
            this.f24651b = i2;
        }
    }

    public C10794s(AbstractC10782j jVar, C10755b0 b0Var) {
        this.f24648a = jVar;
        this.f24649b = b0Var;
    }

    /* renamed from: b */
    public static Request m10614b(C10811x xVar, int i) {
        CacheControl cacheControl;
        if (i == 0) {
            cacheControl = null;
        } else if (EnumC10793r.m10617a(i)) {
            cacheControl = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!EnumC10793r.m10616b(i)) {
                builder.noCache();
            }
            if (!EnumC10793r.m10615c(i)) {
                builder.noStore();
            }
            cacheControl = builder.build();
        }
        Request.Builder builder2 = new Request.Builder();
        builder2.url(xVar.f24705d.toString());
        if (cacheControl != null) {
            builder2.cacheControl(cacheControl);
        }
        return builder2.build();
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public int mo10566a() {
        return 2;
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public AbstractC10815z.C10816a mo10561a(C10811x xVar, int i) throws IOException {
        Response a = this.f24648a.mo10613a(m10614b(xVar, i));
        ResponseBody body = a.body();
        if (a.isSuccessful()) {
            C10798u.EnumC10804e eVar = a.cacheResponse() == null ? C10798u.EnumC10804e.NETWORK : C10798u.EnumC10804e.DISK;
            if (eVar == C10798u.EnumC10804e.DISK && body.contentLength() == 0) {
                body.close();
                throw new C10795a("Received response with 0 content-length header.");
            }
            if (eVar == C10798u.EnumC10804e.NETWORK && body.contentLength() > 0) {
                this.f24649b.m10722a(body.contentLength());
            }
            return new AbstractC10815z.C10816a(body.source(), eVar);
        }
        body.close();
        throw new C10796b(a.code(), xVar.f24704c);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10562a(C10811x xVar) {
        String scheme = xVar.f24705d.getScheme();
        return "http".equals(scheme) || "https".equals(scheme);
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: a */
    public boolean mo10560a(boolean z, NetworkInfo networkInfo) {
        return networkInfo == null || networkInfo.isConnected();
    }

    @Override // p081h.p444n.p445a.AbstractC10815z
    /* renamed from: b */
    public boolean mo10559b() {
        return true;
    }
}
