package androidx.room;

import androidx.sqlite.p006db.SupportSQLiteProgram;
import androidx.sqlite.p006db.SupportSQLiteQuery;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
/* loaded from: classes-dex2jar.jar:androidx/room/RoomSQLiteQuery.class */
public class RoomSQLiteQuery implements SupportSQLiteQuery, SupportSQLiteProgram {
    private static final int BLOB = 5;
    static final int DESIRED_POOL_SIZE = 10;
    private static final int DOUBLE = 3;
    private static final int LONG = 2;
    private static final int NULL = 1;
    static final int POOL_LIMIT = 15;
    private static final int STRING = 4;
    static final TreeMap<Integer, RoomSQLiteQuery> sQueryPool = new TreeMap<>();
    int mArgCount;
    private final int[] mBindingTypes;
    final byte[][] mBlobBindings;
    final int mCapacity;
    final double[] mDoubleBindings;
    final long[] mLongBindings;
    private volatile String mQuery;
    final String[] mStringBindings;

    /* JADX WARN: Type inference failed for: r1v10, types: [byte[], byte[][]] */
    private RoomSQLiteQuery(int i) {
        this.mCapacity = i;
        int i2 = i + 1;
        this.mBindingTypes = new int[i2];
        this.mLongBindings = new long[i2];
        this.mDoubleBindings = new double[i2];
        this.mStringBindings = new String[i2];
        this.mBlobBindings = new byte[i2];
    }

    public static RoomSQLiteQuery acquire(String str, int i) {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            Map.Entry<Integer, RoomSQLiteQuery> ceilingEntry = treeMap.ceilingEntry(Integer.valueOf(i));
            if (ceilingEntry == null) {
                RoomSQLiteQuery roomSQLiteQuery = new RoomSQLiteQuery(i);
                roomSQLiteQuery.init(str, i);
                return roomSQLiteQuery;
            }
            treeMap.remove(ceilingEntry.getKey());
            RoomSQLiteQuery value = ceilingEntry.getValue();
            value.init(str, i);
            return value;
        }
    }

    public static RoomSQLiteQuery copyFrom(SupportSQLiteQuery supportSQLiteQuery) {
        RoomSQLiteQuery acquire = acquire(supportSQLiteQuery.getSql(), supportSQLiteQuery.getArgCount());
        supportSQLiteQuery.bindTo(new SupportSQLiteProgram() { // from class: androidx.room.RoomSQLiteQuery.1
            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void bindBlob(int i, byte[] bArr) {
                RoomSQLiteQuery.this.bindBlob(i, bArr);
            }

            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void bindDouble(int i, double d) {
                RoomSQLiteQuery.this.bindDouble(i, d);
            }

            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void bindLong(int i, long j) {
                RoomSQLiteQuery.this.bindLong(i, j);
            }

            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void bindNull(int i) {
                RoomSQLiteQuery.this.bindNull(i);
            }

            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void bindString(int i, String str) {
                RoomSQLiteQuery.this.bindString(i, str);
            }

            @Override // androidx.sqlite.p006db.SupportSQLiteProgram
            public void clearBindings() {
                RoomSQLiteQuery.this.clearBindings();
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }
        });
        return acquire;
    }

    private static void prunePoolLocked() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        if (treeMap.size() > 15) {
            Iterator<Integer> it = treeMap.descendingKeySet().iterator();
            for (int size = treeMap.size() - 10; size > 0; size--) {
                it.next();
                it.remove();
            }
        }
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void bindBlob(int i, byte[] bArr) {
        this.mBindingTypes[i] = 5;
        this.mBlobBindings[i] = bArr;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void bindDouble(int i, double d) {
        this.mBindingTypes[i] = 3;
        this.mDoubleBindings[i] = d;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void bindLong(int i, long j) {
        this.mBindingTypes[i] = 2;
        this.mLongBindings[i] = j;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void bindNull(int i) {
        this.mBindingTypes[i] = 1;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void bindString(int i, String str) {
        this.mBindingTypes[i] = 4;
        this.mStringBindings[i] = str;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public void bindTo(SupportSQLiteProgram supportSQLiteProgram) {
        for (int i = 1; i <= this.mArgCount; i++) {
            int i2 = this.mBindingTypes[i];
            if (i2 == 1) {
                supportSQLiteProgram.bindNull(i);
            } else if (i2 == 2) {
                supportSQLiteProgram.bindLong(i, this.mLongBindings[i]);
            } else if (i2 == 3) {
                supportSQLiteProgram.bindDouble(i, this.mDoubleBindings[i]);
            } else if (i2 == 4) {
                supportSQLiteProgram.bindString(i, this.mStringBindings[i]);
            } else if (i2 == 5) {
                supportSQLiteProgram.bindBlob(i, this.mBlobBindings[i]);
            }
        }
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteProgram
    public void clearBindings() {
        Arrays.fill(this.mBindingTypes, 1);
        Arrays.fill(this.mStringBindings, (Object) null);
        Arrays.fill(this.mBlobBindings, (Object) null);
        this.mQuery = null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    public void copyArgumentsFrom(RoomSQLiteQuery roomSQLiteQuery) {
        int argCount = roomSQLiteQuery.getArgCount() + 1;
        System.arraycopy(roomSQLiteQuery.mBindingTypes, 0, this.mBindingTypes, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mLongBindings, 0, this.mLongBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mStringBindings, 0, this.mStringBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mBlobBindings, 0, this.mBlobBindings, 0, argCount);
        System.arraycopy(roomSQLiteQuery.mDoubleBindings, 0, this.mDoubleBindings, 0, argCount);
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public int getArgCount() {
        return this.mArgCount;
    }

    @Override // androidx.sqlite.p006db.SupportSQLiteQuery
    public String getSql() {
        return this.mQuery;
    }

    void init(String str, int i) {
        this.mQuery = str;
        this.mArgCount = i;
    }

    public void release() {
        TreeMap<Integer, RoomSQLiteQuery> treeMap = sQueryPool;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.mCapacity), this);
            prunePoolLocked();
        }
    }
}
