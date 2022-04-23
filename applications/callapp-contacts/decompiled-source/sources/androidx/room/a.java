package androidx.room;

import androidx.sqlite.db.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:androidx/room/a.class */
public abstract class a<T> extends o {
    public a(h hVar) {
        super(hVar);
    }

    protected abstract void bind(e eVar, T t);

    /* JADX WARN: Multi-variable type inference failed */
    public final void insert(Iterable<? extends T> iterable) {
        e acquire = acquire();
        try {
            Iterator<? extends T> it2 = iterable.iterator();
            while (it2.hasNext()) {
                bind(acquire, it2.next());
                acquire.b();
            }
        } finally {
            release(acquire);
        }
    }

    public final void insert(T t) {
        e acquire = acquire();
        try {
            bind(acquire, t);
            acquire.b();
        } finally {
            release(acquire);
        }
    }

    public final void insert(T[] tArr) {
        e acquire = acquire();
        try {
            for (T t : tArr) {
                bind(acquire, t);
                acquire.b();
            }
        } finally {
            release(acquire);
        }
    }

    public final long insertAndReturnId(T t) {
        e acquire = acquire();
        try {
            bind(acquire, t);
            return acquire.b();
        } finally {
            release(acquire);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final long[] insertAndReturnIdsArray(Collection<? extends T> collection) {
        e acquire = acquire();
        try {
            long[] jArr = new long[collection.size()];
            int i = 0;
            Iterator<? extends T> it2 = collection.iterator();
            while (it2.hasNext()) {
                bind(acquire, it2.next());
                jArr[i] = acquire.b();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    public final long[] insertAndReturnIdsArray(T[] tArr) {
        e acquire = acquire();
        try {
            long[] jArr = new long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                jArr[i] = acquire.b();
                i++;
            }
            return jArr;
        } finally {
            release(acquire);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Long[] insertAndReturnIdsArrayBox(Collection<? extends T> collection) {
        e acquire = acquire();
        try {
            Long[] lArr = new Long[collection.size()];
            int i = 0;
            Iterator<? extends T> it2 = collection.iterator();
            while (it2.hasNext()) {
                bind(acquire, it2.next());
                lArr[i] = Long.valueOf(acquire.b());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    public final Long[] insertAndReturnIdsArrayBox(T[] tArr) {
        e acquire = acquire();
        try {
            Long[] lArr = new Long[tArr.length];
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                lArr[i] = Long.valueOf(acquire.b());
                i++;
            }
            return lArr;
        } finally {
            release(acquire);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final List<Long> insertAndReturnIdsList(Collection<? extends T> collection) {
        e acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(collection.size());
            int i = 0;
            Iterator<? extends T> it2 = collection.iterator();
            while (it2.hasNext()) {
                bind(acquire, it2.next());
                arrayList.add(i, Long.valueOf(acquire.b()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }

    public final List<Long> insertAndReturnIdsList(T[] tArr) {
        e acquire = acquire();
        try {
            ArrayList arrayList = new ArrayList(tArr.length);
            int i = 0;
            for (T t : tArr) {
                bind(acquire, t);
                arrayList.add(i, Long.valueOf(acquire.b()));
                i++;
            }
            return arrayList;
        } finally {
            release(acquire);
        }
    }
}
