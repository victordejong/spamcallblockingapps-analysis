package kotlin.p530f;

import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p534a.AbstractC18481a;
import kotlin.p525d.C18348c;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0010\u001c\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\b\u0016\u0018�� \u00172\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0017B\u001f\b��\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0004\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002¢\u0006\u0002\u0010\u0006J\u0013\u0010\r\u001a\u00020\u000e2\b\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0096\u0002J\b\u0010\u0011\u001a\u00020\u0002H\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\t\u0010\u0013\u001a\u00020\u0014H\u0096\u0002J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0011\u0010\u0007\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0002¢\u0006\b\n��\u001a\u0004\b\f\u0010\t¨\u0006\u0018"}, m4298d2 = {"Lkotlin/ranges/IntProgression;", "", "", EventConstants.START, "endInclusive", "step", "(III)V", "first", "getFirst", "()I", "last", "getLast", "getStep", "equals", "", "other", "", "hashCode", "isEmpty", "iterator", "Lkotlin/collections/IntIterator;", "toString", "", "Companion", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.f.a */
/* loaded from: classes5-dex2jar.jar:kotlin/f/a.class */
public class C18358a implements Iterable<Integer>, AbstractC18481a {

    /* renamed from: d */
    public static final C18359a f63458d = new C18359a(null);

    /* renamed from: a */
    public final int f63459a;

    /* renamed from: b */
    public final int f63460b;

    /* renamed from: c */
    public final int f63461c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u0006¨\u0006\t"}, m4298d2 = {"Lkotlin/ranges/IntProgression$Companion;", "", "()V", "fromClosedRange", "Lkotlin/ranges/IntProgression;", "rangeStart", "", "rangeEnd", "step", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
    /* renamed from: kotlin.f.a$a */
    /* loaded from: classes5-dex2jar.jar:kotlin/f/a$a.class */
    public static final class C18359a {
        private C18359a() {
        }

        public /* synthetic */ C18359a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static C18358a m4060a(int i, int i2, int i3) {
            return new C18358a(i, i2, i3);
        }
    }

    public C18358a(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 == Integer.MIN_VALUE) {
                throw new IllegalArgumentException("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            }
            this.f63459a = i;
            this.f63460b = C18348c.m4068a(i, i2, i3);
            this.f63461c = i3;
            return;
        }
        throw new IllegalArgumentException("Step must be non-zero.");
    }

    /* renamed from: a */
    public boolean mo4058a() {
        return this.f63461c > 0 ? this.f63459a > this.f63460b : this.f63459a < this.f63460b;
    }

    public boolean equals(Object obj) {
        if (obj instanceof C18358a) {
            if (mo4058a() && ((C18358a) obj).mo4058a()) {
                return true;
            }
            C18358a c18358a = (C18358a) obj;
            return this.f63459a == c18358a.f63459a && this.f63460b == c18358a.f63460b && this.f63461c == c18358a.f63461c;
        }
        return false;
    }

    public int hashCode() {
        if (mo4058a()) {
            return -1;
        }
        return (((this.f63459a * 31) + this.f63460b) * 31) + this.f63461c;
    }

    @Override // java.lang.Iterable
    public /* synthetic */ Iterator<Integer> iterator() {
        return new C18360b(this.f63459a, this.f63460b, this.f63461c);
    }

    public String toString() {
        StringBuilder sb;
        int i;
        if (this.f63461c > 0) {
            sb = new StringBuilder();
            sb.append(this.f63459a);
            sb.append("..");
            sb.append(this.f63460b);
            sb.append(" step ");
            i = this.f63461c;
        } else {
            sb = new StringBuilder();
            sb.append(this.f63459a);
            sb.append(" downTo ");
            sb.append(this.f63460b);
            sb.append(" step ");
            i = -this.f63461c;
        }
        sb.append(i);
        return sb.toString();
    }
}
