package kotlin.time;

import com.google.firebase.analytics.FirebaseAnalytics;
import kotlin.Metadata;
import kotlin.SinceKotlin;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��.\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\t\b\u0087\b\u0018��*\u0004\b��\u0010\u0001B\u001a\u0012\u0006\u0010\b\u001a\u00028��\u0012\u0006\u0010\t\u001a\u00020\u0004ø\u0001��¢\u0006\u0004\b\u001c\u0010\u001dJ\u0010\u0010\u0002\u001a\u00028��HÆ\u0003¢\u0006\u0004\b\u0002\u0010\u0003J\u0016\u0010\u0007\u001a\u00020\u0004HÆ\u0003ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0005\u0010\u0006J-\u0010\f\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\b\u001a\u00028��2\b\b\u0002\u0010\t\u001a\u00020\u0004HÆ\u0001ø\u0001��¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0010\u001a\u00020\u000f2\b\u0010\u000e\u001a\u0004\u0018\u00010\rHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u0010\u0010\u0013\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0013\u0010\u0014J\u0010\u0010\u0016\u001a\u00020\u0015HÖ\u0001¢\u0006\u0004\b\u0016\u0010\u0017R\u001f\u0010\t\u001a\u00020\u00048\u0006@\u0006ø\u0001��ø\u0001\u0001¢\u0006\f\n\u0004\b\t\u0010\u0018\u001a\u0004\b\u0019\u0010\u0006R\u0019\u0010\b\u001a\u00028��8\u0006@\u0006¢\u0006\f\n\u0004\b\b\u0010\u001a\u001a\u0004\b\u001b\u0010\u0003\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001e"}, d2 = {"Lkotlin/time/TimedValue;", "T", "component1", "()Ljava/lang/Object;", "Lkotlin/time/Duration;", "component2-UwyO8pc", "()D", "component2", FirebaseAnalytics.Param.VALUE, "duration", "copy-RFiDyg4", "(Ljava/lang/Object;D)Lkotlin/time/TimedValue;", "copy", "", "other", "", "equals", "(Ljava/lang/Object;)Z", "", "hashCode", "()I", "", "toString", "()Ljava/lang/String;", "D", "getDuration-UwyO8pc", "Ljava/lang/Object;", "getValue", "<init>", "(Ljava/lang/Object;DLkotlin/jvm/internal/DefaultConstructorMarker;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalTime
/* loaded from: classes2-dex2jar.jar:kotlin/time/TimedValue.class */
public final class TimedValue<T> {

    /* renamed from: a */
    private final T f21072a;

    /* renamed from: b */
    private final double f21073b;

    public boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TimedValue)) {
            return false;
        }
        TimedValue timedValue = (TimedValue) obj;
        return Intrinsics.m1834a(this.f21072a, timedValue.f21072a) && Double.compare(this.f21073b, timedValue.f21073b) == 0;
    }

    public int hashCode() {
        T t = this.f21072a;
        int hashCode = t != null ? t.hashCode() : 0;
        long doubleToLongBits = Double.doubleToLongBits(this.f21073b);
        return (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    @NotNull
    public String toString() {
        return "TimedValue(value=" + this.f21072a + ", duration=" + Duration.m1398q(this.f21073b) + ")";
    }
}
