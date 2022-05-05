package io.reactivex.schedulers;

import io.reactivex.annotations.NonNull;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/schedulers/Timed.class */
public final class Timed<T> {

    /* renamed from: a */
    final T f19686a;

    /* renamed from: b */
    final long f19687b;

    /* renamed from: c */
    final TimeUnit f19688c;

    public Timed(@NonNull T t, long j, @NonNull TimeUnit timeUnit) {
        this.f19686a = t;
        this.f19687b = j;
        ObjectHelper.m4363e(timeUnit, "unit is null");
        this.f19688c = timeUnit;
    }

    /* renamed from: a */
    public long m3226a() {
        return this.f19687b;
    }

    @NonNull
    /* renamed from: b */
    public T m3225b() {
        return this.f19686a;
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (obj instanceof Timed) {
            Timed timed = (Timed) obj;
            z = false;
            if (ObjectHelper.m4365c(this.f19686a, timed.f19686a)) {
                z = false;
                if (this.f19687b == timed.f19687b) {
                    z = false;
                    if (ObjectHelper.m4365c(this.f19688c, timed.f19688c)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    public int hashCode() {
        T t = this.f19686a;
        int hashCode = t != null ? t.hashCode() : 0;
        long j = this.f19687b;
        return (((hashCode * 31) + ((int) (j ^ (j >>> 31)))) * 31) + this.f19688c.hashCode();
    }

    public String toString() {
        return "Timed[time=" + this.f19687b + ", unit=" + this.f19688c + ", value=" + this.f19686a + "]";
    }
}
