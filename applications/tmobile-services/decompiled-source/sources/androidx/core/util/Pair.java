package androidx.core.util;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/core/util/Pair.class */
public class Pair<F, S> {
    @Nullable

    /* renamed from: a */
    public final F f3206a;
    @Nullable

    /* renamed from: b */
    public final S f3207b;

    public Pair(@Nullable F f, @Nullable S s) {
        this.f3206a = f;
        this.f3207b = s;
    }

    @NonNull
    /* renamed from: a */
    public static <A, B> Pair<A, B> m19344a(@Nullable A a, @Nullable B b) {
        return new Pair<>(a, b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        boolean z = false;
        if (ObjectsCompat.m19346a(pair.f3206a, this.f3206a)) {
            z = false;
            if (ObjectsCompat.m19346a(pair.f3207b, this.f3207b)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        F f = this.f3206a;
        int i = 0;
        int hashCode = f == null ? 0 : f.hashCode();
        S s = this.f3207b;
        if (s != null) {
            i = s.hashCode();
        }
        return hashCode ^ i;
    }

    @NonNull
    public String toString() {
        return "Pair{" + String.valueOf(this.f3206a) + " " + String.valueOf(this.f3207b) + "}";
    }
}
