package p131c.p161d.p266c.p269c;

import com.google.common.collect.Range;
import java.lang.Comparable;
import java.util.Set;
/* renamed from: c.d.c.c.q0 */
/* loaded from: classes2-dex2jar.jar:c/d/c/c/q0.class */
public interface AbstractC5016q0<C extends Comparable> {
    Set<Range<C>> asRanges();

    AbstractC5016q0<C> complement();

    boolean encloses(Range<C> range);

    boolean isEmpty();

    void removeAll(AbstractC5016q0<C> q0Var);
}
