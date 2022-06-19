package kotlin.time;

import java.util.concurrent.TimeUnit;
import kotlin.Metadata;
import kotlin.jvm.internal.LongCompanionObject;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"�� \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\t\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u001a\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0002ø\u0001��¢\u0006\u0004\b\t\u0010\nJ\u001b\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0086\u0002ø\u0001��¢\u0006\u0004\b\f\u0010\nJ\b\u0010\r\u001a\u00020\u0004H\u0014R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n��\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u000e"}, m400d2 = {"Lkotlin/time/TestTimeSource;", "Lkotlin/time/AbstractLongTimeSource;", "()V", "reading", "", "overflow", "", "duration", "Lkotlin/time/Duration;", "overflow-LRDsOJo", "(D)V", "plusAssign", "plusAssign-LRDsOJo", "read", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/time/TestTimeSource.class */
public final class TestTimeSource extends AbstractLongTimeSource {
    private long reading;

    public TestTimeSource() {
        super(TimeUnit.NANOSECONDS);
    }

    /* renamed from: overflow-LRDsOJo */
    private final void m5590overflowLRDsOJo(double d) {
        throw new IllegalStateException("TestTimeSource will overflow if its reading " + this.reading + "ns is advanced by " + Duration.m5577toStringimpl(d) + '.');
    }

    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v23, types: [long] */
    /* renamed from: plusAssign-LRDsOJo */
    public final void m5591plusAssignLRDsOJo(double d) {
        char c;
        double m5571toDoubleimpl = Duration.m5571toDoubleimpl(d, getUnit());
        long j = (long) m5571toDoubleimpl;
        if (j == Long.MIN_VALUE || j == LongCompanionObject.MAX_VALUE) {
            double d2 = this.reading + m5571toDoubleimpl;
            if (d2 > ((double) LongCompanionObject.MAX_VALUE) || d2 < Long.MIN_VALUE) {
                m5590overflowLRDsOJo(d);
            }
            c = (long) d2;
        } else {
            long j2 = this.reading;
            ?? r0 = j2 + j;
            c = r0;
            if ((j ^ j2) >= 0) {
                c = r0;
                if ((j2 ^ r0) < 0) {
                    m5590overflowLRDsOJo(d);
                    c = r0;
                }
            }
        }
        this.reading = c;
    }

    @Override // kotlin.time.AbstractLongTimeSource
    protected long read() {
        return this.reading;
    }
}
