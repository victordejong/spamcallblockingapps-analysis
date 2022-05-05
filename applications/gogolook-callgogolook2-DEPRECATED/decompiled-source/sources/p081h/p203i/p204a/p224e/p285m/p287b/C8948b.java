package p081h.p203i.p204a.p224e.p285m.p287b;

import android.os.Bundle;
import com.google.android.gms.measurement.internal.zzaa;
import java.util.Iterator;
/* renamed from: h.i.a.e.m.b.b */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/b.class */
public final class C8948b implements Iterator<String> {

    /* renamed from: a */
    public Iterator<String> f20224a;

    /* renamed from: b */
    public final /* synthetic */ zzaa f20225b;

    public C8948b(zzaa zzaaVar) {
        Bundle bundle;
        this.f20225b = zzaaVar;
        bundle = this.f20225b.f7146a;
        this.f20224a = bundle.keySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f20224a.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f20224a.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
