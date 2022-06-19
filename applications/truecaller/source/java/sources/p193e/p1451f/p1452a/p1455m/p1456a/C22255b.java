package p193e.p1451f.p1452a.p1455m.p1456a;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map;
import java.util.Objects;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.C22262e;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
import p193e.p1451f.p1452a.p1457n.p1464p.C22423g;
import p193e.p1451f.p1452a.p1480t.C22614c;
import u3.f;
import u3.g;
import u3.g0;
import u3.k0;
import u3.l0;
/* renamed from: e.f.a.m.a.b */
/* loaded from: classes-dex2jar.jar:e/f/a/m/a/b.class */
public class C22255b implements AbstractC22274d<InputStream>, g {

    /* renamed from: a */
    public final f.a f61873a;

    /* renamed from: b */
    public final C22423g f61874b;

    /* renamed from: c */
    public InputStream f61875c;

    /* renamed from: d */
    public l0 f61876d;

    /* renamed from: e */
    public AbstractC22274d.AbstractC22275a<? super InputStream> f61877e;

    /* renamed from: f */
    public volatile f f61878f;

    public C22255b(f.a aVar, C22423g c22423g) {
        this.f61873a = aVar;
        this.f61874b = c22423g;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: a */
    public Class<InputStream> mo8220a() {
        return InputStream.class;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: b */
    public void mo8219b() {
        try {
            InputStream inputStream = this.f61875c;
            if (inputStream != null) {
                inputStream.close();
            }
        } catch (IOException e) {
        }
        l0 l0Var = this.f61876d;
        if (l0Var != null) {
            l0Var.close();
        }
        this.f61877e = null;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: c */
    public EnumC22258a mo8218c() {
        return EnumC22258a.REMOTE;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    public void cancel() {
        f fVar = this.f61878f;
        if (fVar != null) {
            fVar.cancel();
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: d */
    public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super InputStream> abstractC22275a) {
        g0.a aVar = new g0.a();
        aVar.i(this.f61874b.m8237d());
        for (Map.Entry<String, String> entry : this.f61874b.f62259b.mo8236a().entrySet()) {
            aVar.a(entry.getKey(), entry.getValue());
        }
        g0 b = aVar.b();
        this.f61877e = abstractC22275a;
        this.f61878f = this.f61873a.a(b);
        this.f61878f.M1(this);
    }

    public void onFailure(f fVar, IOException iOException) {
        Log.isLoggable("OkHttpFetcher", 3);
        this.f61877e.mo8230f(iOException);
    }

    public void onResponse(f fVar, k0 k0Var) {
        this.f61876d = k0Var.h;
        if (!k0Var.j()) {
            this.f61877e.mo8230f(new C22262e(k0Var.d, k0Var.e));
            return;
        }
        l0 l0Var = this.f61876d;
        Objects.requireNonNull(l0Var, "Argument must not be null");
        C22614c c22614c = new C22614c(this.f61876d.b(), l0Var.k());
        this.f61875c = c22614c;
        this.f61877e.mo8231e(c22614c);
    }
}
