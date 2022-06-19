package p1727n3.p1751c0;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import p1727n3.p1781e0.p1782a.AbstractC26154f;
/* renamed from: n3.c0.k */
/* loaded from: classes-dex2jar.jar:n3/c0/k.class */
public abstract class AbstractC25663k<T> extends AbstractC25646c0 {
    public AbstractC25663k(AbstractC25677q abstractC25677q) {
        super(abstractC25677q);
    }

    public abstract void bind(AbstractC26154f abstractC26154f, T t);

    public final void insert(Iterable<? extends T> iterable) {
        AbstractC26154f acquire = acquire();
        try {
            for (T t : iterable) {
                bind(acquire, t);
                acquire.m2672A1();
            }
        } finally {
            release(acquire);
        }
    }

    public final void insert(T t) {
        AbstractC26154f acquire = acquire();
        try {
            bind(acquire, t);
            acquire.m2672A1();
        } finally {
            release(acquire);
        }
    }

    public final void insert(T[] tArr) {
        AbstractC26154f acquire = acquire();
        try {
            for (T t : tArr) {
                bind(acquire, t);
                acquire.m2672A1();
            }
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T t) {
        AbstractC26154f acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.m2672A1();
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<? extends T> collection) {
        AbstractC26154f acquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                jArr[i] = acquire.m2672A1();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(T[] tArr) {
        AbstractC26154f acquire = acquire();
        try {
            long[] jArr = new long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                jArr[i] = acquire.m2672A1();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> collection) {
        AbstractC26154f acquire = acquire();
        try {
            Long[] lArr = new Long[collection.size()];
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                lArr[i] = Long.valueOf(acquire.m2672A1());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(T[] tArr) {
        AbstractC26154f acquire = acquire();
        try {
            Long[] lArr = new Long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                lArr[i] = Long.valueOf(acquire.m2672A1());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<? extends T> collection) {
        AbstractC26154f acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                arrayList.add(i, Long.valueOf(acquire.m2672A1()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(T[] tArr) {
        AbstractC26154f acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(tArr.length);
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                arrayList.add(i, Long.valueOf(acquire.m2672A1()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }
}
