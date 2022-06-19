package androidx.media2.exoplayer.external.trackselection;

import java.util.Arrays;
/* renamed from: androidx.media2.exoplayer.external.trackselection.f */
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/f.class */
public final class C1943f {

    /* renamed from: a */
    public final int f7820a;

    /* renamed from: b */
    public final AbstractC1940e[] f7821b;

    /* renamed from: c */
    private int f7822c;

    public C1943f(AbstractC1940e... abstractC1940eArr) {
        this.f7821b = abstractC1940eArr;
        this.f7820a = abstractC1940eArr.length;
    }

    /* renamed from: a */
    public final AbstractC1940e[] m41821a() {
        return (AbstractC1940e[]) this.f7821b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.f7821b, ((C1943f) obj).f7821b);
        }
        return false;
    }

    public final int hashCode() {
        if (this.f7822c == 0) {
            this.f7822c = Arrays.hashCode(this.f7821b) + 527;
        }
        return this.f7822c;
    }
}
