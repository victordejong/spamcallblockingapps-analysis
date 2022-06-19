package p193e.p1577m.p1578a.p1642f.p1667l.p1668a;

import com.google.android.gms.measurement.internal.zzas;
import java.util.Iterator;
/* renamed from: e.m.a.f.l.a.h */
/* loaded from: classes3-dex2jar.jar:e/m/a/f/l/a/h.class */
public final class C25058h implements Iterator {

    /* renamed from: a */
    public final Iterator f70110a;

    /* renamed from: b */
    public final /* synthetic */ zzas f70111b;

    public C25058h(zzas zzasVar) {
        this.f70111b = zzasVar;
        this.f70110a = zzasVar.a.keySet().iterator();
    }

    /* renamed from: a */
    public final String next() {
        return (String) this.f70110a.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f70110a.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
