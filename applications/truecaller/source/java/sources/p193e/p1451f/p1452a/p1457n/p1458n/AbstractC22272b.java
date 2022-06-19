package p193e.p1451f.p1452a.p1457n.p1458n;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;
import p193e.p1451f.p1452a.EnumC22227f;
import p193e.p1451f.p1452a.p1457n.EnumC22258a;
import p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d;
/* renamed from: e.f.a.n.n.b */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/b.class */
public abstract class AbstractC22272b<T> implements AbstractC22274d<T> {

    /* renamed from: a */
    public final String f61905a;

    /* renamed from: b */
    public final AssetManager f61906b;

    /* renamed from: c */
    public T f61907c;

    public AbstractC22272b(AssetManager assetManager, String str) {
        this.f61906b = assetManager;
        this.f61905a = str;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: b */
    public void mo8219b() {
        T t = this.f61907c;
        if (t == null) {
            return;
        }
        try {
            m8357e(t);
        } catch (IOException e) {
        }
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: c */
    public EnumC22258a mo8218c() {
        return EnumC22258a.LOCAL;
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    public void cancel() {
    }

    @Override // p193e.p1451f.p1452a.p1457n.p1458n.AbstractC22274d
    /* renamed from: d */
    public void mo8217d(EnumC22227f enumC22227f, AbstractC22274d.AbstractC22275a<? super T> abstractC22275a) {
        try {
            T m8356f = m8356f(this.f61906b, this.f61905a);
            this.f61907c = m8356f;
            abstractC22275a.mo8231e(m8356f);
        } catch (IOException e) {
            Log.isLoggable("AssetPathFetcher", 3);
            abstractC22275a.mo8230f(e);
        }
    }

    /* renamed from: e */
    public abstract void m8357e(T t) throws IOException;

    /* renamed from: f */
    public abstract T m8356f(AssetManager assetManager, String str) throws IOException;
}
