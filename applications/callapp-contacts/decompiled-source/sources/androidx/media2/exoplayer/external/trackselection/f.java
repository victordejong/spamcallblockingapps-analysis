package androidx.media2.exoplayer.external.trackselection;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/trackselection/f.class */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public final int f3983a;

    /* renamed from: b  reason: collision with root package name */
    public final e[] f3984b;

    /* renamed from: c  reason: collision with root package name */
    private int f3985c;

    public f(e... eVarArr) {
        this.f3984b = eVarArr;
        this.f3983a = eVarArr.length;
    }

    public final e[] a() {
        return (e[]) this.f3984b.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return Arrays.equals(this.f3984b, ((f) obj).f3984b);
    }

    public final int hashCode() {
        if (this.f3985c == 0) {
            this.f3985c = Arrays.hashCode(this.f3984b) + 527;
        }
        return this.f3985c;
    }
}
