package android.support.p001v4.util;

import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
/* renamed from: android.support.v4.util.Pair */
/* loaded from: classes-dex2jar.jar:android/support/v4/util/Pair.class */
public class Pair<F, S> {
    @Nullable
    public final F first;
    @Nullable
    public final S second;

    public Pair(@Nullable F f, @Nullable S s) {
        this.first = f;
        this.second = s;
    }

    @NonNull
    public static <A, B> Pair<A, B> create(@Nullable A a, @Nullable B b) {
        return new Pair<>(a, b);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Pair)) {
            return false;
        }
        Pair pair = (Pair) obj;
        boolean z = false;
        if (ObjectsCompat.equals(pair.first, this.first)) {
            z = false;
            if (ObjectsCompat.equals(pair.second, this.second)) {
                z = true;
            }
        }
        return z;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = this.first == null ? 0 : this.first.hashCode();
        if (this.second != null) {
            i = this.second.hashCode();
        }
        return hashCode ^ i;
    }

    public String toString() {
        return "Pair{" + String.valueOf(this.first) + " " + String.valueOf(this.second) + "}";
    }
}
