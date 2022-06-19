package p193e.p1451f.p1452a;

import p193e.p1451f.p1452a.AbstractC22239j;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22606e;
import p193e.p1451f.p1452a.p1476r.p1478l.C22602c;
/* renamed from: e.f.a.j */
/* loaded from: classes-dex2jar.jar:e/f/a/j.class */
public abstract class AbstractC22239j<CHILD extends AbstractC22239j<CHILD, TranscodeType>, TranscodeType> implements Cloneable {

    /* renamed from: a */
    public AbstractC22606e<? super TranscodeType> f61790a = (AbstractC22606e<? super TranscodeType>) C22602c.f62618b;

    /* renamed from: a */
    public final CHILD m8402a() {
        try {
            return (CHILD) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public Object clone() throws CloneNotSupportedException {
        try {
            return (AbstractC22239j) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }
}
