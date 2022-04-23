package p573f.p577r;

import java.util.Iterator;
/* renamed from: f.r.y */
/* loaded from: classes2-dex2jar.jar:f/r/y.class */
public abstract class AbstractC9990y implements Iterator<Float> {
    /* renamed from: a */
    public abstract float mo1661a();

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // java.util.Iterator
    public final Float next() {
        return Float.valueOf(mo1661a());
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
