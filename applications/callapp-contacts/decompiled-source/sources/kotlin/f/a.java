package kotlin.f;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.d.c;
import kotlin.jvm.internal.DefaultConstructorMarker;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, d2 = {"Lkotlin/ranges/IntProgression;", "", "", EventConstants.START, "endInclusive", "step", "(III)V", "first", "getFirst", "()I", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/IntIterator;", "toString", "", "Companion", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes5-dex2jar.jar:kotlin/f/a.class */
public class a implements Iterable<Integer>, kotlin.jvm.internal.a.a {

    /* renamed from: d  reason: collision with root package name */
    public static final C0610a f36663d = new C0610a(null);

    /* renamed from: a  reason: collision with root package name */
    public final int f36664a;

    /* renamed from: b  reason: collision with root package name */
    public final int f36665b;

    /* renamed from: c  reason: collision with root package name */
    public final int f36666c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¨\u0006\t"}, d2 = {"Lkotlin/ranges/IntProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/IntProgression;", "rangeStart", "", "rangeEnd", "step", "kotlin-stdlib"}, k = 1, mv = {1, 4, 1})
    /* renamed from: kotlin.f.a$a  reason: collision with other inner class name */
    /* loaded from: classes5-dex2jar.jar:kotlin/f/a$a.class */
    public static final class C0610a {
        private C0610a() {
        }

        public /* synthetic */ C0610a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static a a(int i, int i2, int i3) {
            return new a(i, i2, i3);
        }
    }

    public a(int i, int i2, int i3) {
        if (i3 == 0) {
            throw new IllegalArgumentException("Step must be non-zero.");
        } else if (i3 != Integer.MIN_VALUE) {
            this.f36664a = i;
            this.f36665b = c.a(i, i2, i3);
            this.f36666c = i3;
        } else {
            throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
        }
    }

    public boolean a() {
        return this.f36666c > 0 ? this.f36664a > this.f36665b : this.f36664a < this.f36665b;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof a)) {
            return false;
        }
        if (a() && ((a) obj).a()) {
            return true;
        }
        a aVar = (a) obj;
        return this.f36664a == aVar.f36664a && this.f36665b == aVar.f36665b && this.f36666c == aVar.f36666c;
    }

    public int hashCode() {
        if (a()) {
            return -1;
        }
        return (((this.f36664a * 31) + this.f36665b) * 31) + this.f36666c;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Integer> iterator() {
        return new b(this.f36664a, this.f36665b, this.f36666c);
    }

    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f36666c > 0) {
            sb = new StringBuilder();
            sb.append(this.f36664a);
            sb.append("..");
            sb.append(this.f36665b);
            sb.append(" step ");
            i = this.f36666c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f36664a);
            sb.append(" downTo ");
            sb.append(this.f36665b);
            sb.append(" step ");
            i = -this.f36666c;
        }
        sb.append(i);
        return sb.toString();
    }
}
