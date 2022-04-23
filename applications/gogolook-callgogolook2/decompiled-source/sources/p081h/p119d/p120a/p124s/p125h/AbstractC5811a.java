package p081h.p119d.p120a.p124s.p125h;

import android.content.res.AssetManager;
import android.util.Log;
import java.io.IOException;
import p081h.p119d.p120a.EnumC5779n;
/* renamed from: h.d.a.s.h.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/h/a.class */
public abstract class AbstractC5811a<T> implements AbstractC5813c<T> {

    /* renamed from: a */
    public final String f14656a;

    /* renamed from: b */
    public final AssetManager f14657b;

    /* renamed from: c */
    public T f14658c;

    public AbstractC5811a(AssetManager assetManager, String str) {
        this.f14657b = assetManager;
        this.f14656a = str;
    }

    /* renamed from: a */
    public abstract T mo24304a(AssetManager assetManager, String str) throws IOException;

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public T mo24058a(EnumC5779n nVar) throws Exception {
        this.f14658c = mo24304a(this.f14657b, this.f14656a);
        return this.f14658c;
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    /* renamed from: a */
    public void mo24059a() {
        T t = this.f14658c;
        if (t != null) {
            try {
                mo24302a((AbstractC5811a<T>) t);
            } catch (IOException e) {
                Log.isLoggable("AssetUriFetcher", 2);
            }
        }
    }

    /* renamed from: a */
    public abstract void mo24302a(T t) throws IOException;

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public void cancel() {
    }

    @Override // p081h.p119d.p120a.p124s.p125h.AbstractC5813c
    public String getId() {
        return this.f14656a;
    }
}
