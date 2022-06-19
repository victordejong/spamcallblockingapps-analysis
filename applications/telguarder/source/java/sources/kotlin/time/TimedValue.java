package kotlin.time;

import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��*\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0087\b\u0018��*\u0004\b��\u0010\u00012\u00020\u0002B\u0018\u0012\u0006\u0010\u0003\u001a\u00028��\u0012\u0006\u0010\u0004\u001a\u00020\u0005ø\u0001��¢\u0006\u0002\u0010\u0006J\u000e\u0010\r\u001a\u00028��HÆ\u0003¢\u0006\u0002\u0010\u000bJ\u0016\u0010\u000e\u001a\u00020\u0005HÆ\u0003ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u000f\u0010\bJ-\u0010\u0010\u001a\b\u0012\u0004\u0012\u00028��0��2\b\b\u0002\u0010\u0003\u001a\u00028��2\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001ø\u0001��¢\u0006\u0004\b\u0011\u0010\u0012J\u0013\u0010\u0013\u001a\u00020\u00142\b\u0010\u0015\u001a\u0004\u0018\u00010\u0002HÖ\u0003J\t\u0010\u0016\u001a\u00020\u0017HÖ\u0001J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001R\u0019\u0010\u0004\u001a\u00020\u0005ø\u0001��ø\u0001\u0001¢\u0006\n\n\u0002\u0010\t\u001a\u0004\b\u0007\u0010\bR\u0013\u0010\u0003\u001a\u00028��¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u001a"}, m400d2 = {"Lkotlin/time/TimedValue;", "T", "", "value", "duration", "Lkotlin/time/Duration;", "(Ljava/lang/Object;DLkotlin/jvm/internal/DefaultConstructorMarker;)V", "getDuration-UwyO8pc", "()D", "D", "getValue", "()Ljava/lang/Object;", "Ljava/lang/Object;", "component1", "component2", "component2-UwyO8pc", "copy", "copy-RFiDyg4", "(Ljava/lang/Object;D)Lkotlin/time/TimedValue;", "equals", "", "other", "hashCode", "", "toString", "", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/time/TimedValue.class */
public final class TimedValue<T> {
    private final double duration;
    private final T value;

    private TimedValue(T t, double d) {
        this.value = t;
        this.duration = d;
    }

    public /* synthetic */ TimedValue(Object obj, double d, DefaultConstructorMarker defaultConstructorMarker) {
        this(obj, d);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v7, types: [double] */
    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.time.TimedValue] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* renamed from: copy-RFiDyg4$default */
    public static /* synthetic */ TimedValue m5596copyRFiDyg4$default(TimedValue timedValue, Object obj, double d, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = ((TimedValue) timedValue).value;
        }
        ?? r7 = d;
        if ((i & 2) != 0) {
            r7 = ((TimedValue) timedValue).duration;
        }
        return timedValue.m5598copyRFiDyg4(obj, r7);
    }

    public final T component1() {
        return this.value;
    }

    /* renamed from: component2-UwyO8pc */
    public final double m5597component2UwyO8pc() {
        return this.duration;
    }

    /* renamed from: copy-RFiDyg4 */
    public final TimedValue<T> m5598copyRFiDyg4(T t, double d) {
        return new TimedValue<>(t, d);
    }

    public boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof TimedValue)) {
                return false;
            }
            TimedValue timedValue = (TimedValue) obj;
            return Intrinsics.areEqual(this.value, timedValue.value) && Double.compare(this.duration, timedValue.duration) == 0;
        }
        return true;
    }

    /* renamed from: getDuration-UwyO8pc */
    public final double m5599getDurationUwyO8pc() {
        return this.duration;
    }

    public final T getValue() {
        return this.value;
    }

    public int hashCode() {
        T t = this.value;
        int hashCode = t != null ? t.hashCode() : 0;
        long doubleToLongBits = Double.doubleToLongBits(this.duration);
        return (hashCode * 31) + ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32)));
    }

    public String toString() {
        return "TimedValue(value=" + this.value + ", duration=" + Duration.m5577toStringimpl(this.duration) + ")";
    }
}
