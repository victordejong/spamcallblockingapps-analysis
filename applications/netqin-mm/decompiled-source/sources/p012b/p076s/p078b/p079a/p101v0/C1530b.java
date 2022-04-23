package p012b.p076s.p078b.p079a.p101v0;

import android.net.Uri;
import androidx.media2.exoplayer.external.offline.StreamKey;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import p012b.p076s.p078b.p079a.p101v0.AbstractC1529a;
import p012b.p076s.p078b.p079a.p111z0.C1701v;
/* renamed from: b.s.b.a.v0.b */
/* loaded from: classes-dex2jar.jar:b/s/b/a/v0/b.class */
public final class C1530b<T extends AbstractC1529a<T>> implements C1701v.AbstractC1702a<T> {

    /* renamed from: a */
    public final C1701v.AbstractC1702a<? extends T> f6241a;

    /* renamed from: b */
    public final List<StreamKey> f6242b;

    public C1530b(C1701v.AbstractC1702a<? extends T> aVar, List<StreamKey> list) {
        this.f6241a = aVar;
        this.f6242b = list;
    }

    @Override // p012b.p076s.p078b.p079a.p111z0.C1701v.AbstractC1702a
    /* renamed from: a */
    public T mo32328a(Uri uri, InputStream inputStream) throws IOException {
        AbstractC1529a aVar = (AbstractC1529a) this.f6241a.mo32328a(uri, inputStream);
        List<StreamKey> list = this.f6242b;
        T t = (T) aVar;
        if (list != null) {
            t = list.isEmpty() ? (T) aVar : (T) ((AbstractC1529a) aVar.mo32550a(this.f6242b));
        }
        return t;
    }
}
