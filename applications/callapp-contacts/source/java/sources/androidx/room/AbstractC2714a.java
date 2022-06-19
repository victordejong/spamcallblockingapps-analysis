package androidx.room;

import androidx.sqlite.p082db.AbstractC2795e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* renamed from: androidx.room.a */
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public abstract class AbstractC2714a<T> extends AbstractC2764o {
    public AbstractC2714a(AbstractC2748h abstractC2748h) {
        super(abstractC2748h);
    }

    protected abstract void bind(AbstractC2795e abstractC2795e, T t);

    public final void insert(Iterable<? extends T> iterable) {
        AbstractC2795e acquire = acquire();
        try {
            for (T t : iterable) {
                bind(acquire, t);
                acquire.mo39881b();
            }
        } finally {
            release(acquire);
        }
    }

    public final void insert(T t) {
        AbstractC2795e acquire = acquire();
        try {
            bind(acquire, t);
            acquire.mo39881b();
        } finally {
            release(acquire);
        }
    }

    public final void insert(T[] tArr) {
        AbstractC2795e acquire = acquire();
        try {
            for (T t : tArr) {
                bind(acquire, t);
                acquire.mo39881b();
            }
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T t) {
        AbstractC2795e acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.mo39881b();
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(Collection<? extends T> collection) {
        AbstractC2795e acquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                jArr[i] = acquire.mo39881b();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(T[] tArr) {
        AbstractC2795e acquire = acquire();
        try {
            long[] jArr = new long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                jArr[i] = acquire.mo39881b();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> collection) {
        AbstractC2795e acquire = acquire();
        try {
            Long[] lArr = new Long[collection.size()];
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                lArr[i] = Long.valueOf(acquire.mo39881b());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(T[] tArr) {
        AbstractC2795e acquire = acquire();
        try {
            Long[] lArr = new Long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                lArr[i] = Long.valueOf(acquire.mo39881b());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(Collection<? extends T> collection) {
        AbstractC2795e acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            int i = 0;
            for (T t : collection) {
                bind(acquire, t);
                arrayList.add(i, Long.valueOf(acquire.mo39881b()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(T[] tArr) {
        AbstractC2795e acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(tArr.length);
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                arrayList.add(i, Long.valueOf(acquire.mo39881b()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }
}
