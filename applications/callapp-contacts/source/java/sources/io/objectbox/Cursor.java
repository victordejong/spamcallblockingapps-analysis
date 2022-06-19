package io.objectbox;

import io.objectbox.exception.DbException;
import io.objectbox.p502b.AbstractC17950c;
import io.objectbox.relation.ToMany;
import java.io.Closeable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes5-dex2jar.jar:io/objectbox/Cursor.class */
public abstract class Cursor<T> implements Closeable {
    static boolean LOG_READ_NOT_CLOSED = false;
    protected static final int PUT_FLAG_COMPLETE = 2;
    protected static final int PUT_FLAG_FIRST = 1;
    static boolean TRACK_CREATION_STACK;
    public final BoxStore boxStoreForEntities;
    protected boolean closed;
    private final Throwable creationThrowable;
    protected final long cursor;
    protected final AbstractC17957c<T> entityInfo;
    protected final boolean readOnly;

    /* renamed from: tx */
    protected final Transaction f62699tx;

    public Cursor(Transaction transaction, long j, AbstractC17957c<T> abstractC17957c, BoxStore boxStore) {
        C17978g<T>[] allProperties;
        if (transaction != null) {
            this.f62699tx = transaction;
            this.readOnly = transaction.f62703d;
            this.cursor = j;
            this.entityInfo = abstractC17957c;
            this.boxStoreForEntities = boxStore;
            for (C17978g<T> c17978g : abstractC17957c.getAllProperties()) {
                if (!c17978g.f62816k) {
                    int propertyId = getPropertyId(c17978g.f62813h);
                    if (c17978g.f62808c <= 0) {
                        throw new IllegalStateException("Illegal property ID " + c17978g.f62808c + " for " + c17978g.toString());
                    } else if (c17978g.f62808c != propertyId) {
                        throw new DbException(c17978g.toString() + " does not match ID in DB: " + propertyId);
                    } else {
                        c17978g.f62816k = true;
                    }
                }
            }
            this.creationThrowable = TRACK_CREATION_STACK ? new Throwable() : null;
            nativeSetBoxStoreForEntities(j, boxStore);
            return;
        }
        throw new IllegalArgumentException("Transaction is null");
    }

    protected static native long collect002033(long j, long j2, int i, int i2, long j3, int i3, long j4, int i4, float f, int i5, float f2, int i6, float f3, int i7, double d, int i8, double d2, int i9, double d3);

    public static native long collect004000(long j, long j2, int i, int i2, long j3, int i3, long j4, int i4, long j5, int i5, long j6);

    public static native long collect313311(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, byte[] bArr, int i6, long j3, int i7, long j4, int i8, long j5, int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f, int i16, double d);

    public static native long collect400000(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, String str4);

    protected static native long collect430000(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, String str4, int i6, byte[] bArr, int i7, byte[] bArr2, int i8, byte[] bArr3);

    static native boolean nativeDeleteEntity(long j, long j2);

    static native Object nativeFirstEntity(long j);

    static native Object nativeGetEntity(long j, long j2);

    static native long nativeLookupKeyUsingIndex(long j, int i, String str);

    static native Object nativeNextEntity(long j);

    static native boolean nativeSeek(long j, long j2);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [io.objectbox.relation.ToMany] */
    /* JADX WARN: Type inference failed for: r0v74, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r0v78, types: [java.lang.Object[]] */
    public <TARGET> void checkApplyToManyToDb(List<TARGET> list, Class<TARGET> cls) {
        TARGET[] targetArr;
        Object[] objArr;
        ArrayList arrayList;
        TARGET[] array;
        Object[] objArr2;
        if (list instanceof ToMany) {
            ?? r0 = (ToMany) list;
            if (!r0.m4587a()) {
                return;
            }
            Cursor<TARGET> relationTargetCursor = getRelationTargetCursor(cls);
            try {
                boolean z = r0.f62861b.f62894i != 0;
                AbstractC17950c<TARGET> idGetter = r0.f62861b.f62887b.getIdGetter();
                synchronized (r0) {
                    targetArr = null;
                    if (z) {
                        for (TARGET target : r0.f62862c.keySet()) {
                            if (idGetter.getId(target) == 0) {
                                r0.f62864e.add(target);
                            }
                        }
                        if (r0.f62866g) {
                            r0.f62865f.addAll(r0.f62863d.keySet());
                        }
                        if (!r0.f62862c.isEmpty()) {
                            objArr2 = r0.f62862c.keySet().toArray();
                            r0.f62862c.clear();
                        } else {
                            objArr2 = null;
                        }
                        if (!r0.f62863d.isEmpty()) {
                            ArrayList arrayList2 = new ArrayList(r0.f62863d.keySet());
                            r0.f62863d.clear();
                            objArr = objArr2;
                            arrayList = arrayList2;
                        } else {
                            objArr = objArr2;
                            arrayList = null;
                        }
                    } else {
                        arrayList = null;
                        objArr = null;
                    }
                    array = r0.f62865f.isEmpty() ? null : r0.f62865f.toArray();
                    r0.f62865f.clear();
                    if (!r0.f62864e.isEmpty()) {
                        targetArr = r0.f62864e.toArray();
                    }
                    r0.f62864e.clear();
                }
                if (array != null) {
                    for (TARGET target2 : array) {
                        long id = idGetter.getId(target2);
                        if (id != 0) {
                            relationTargetCursor.deleteEntity(id);
                        }
                    }
                }
                if (targetArr != null) {
                    for (TARGET target3 : targetArr) {
                        relationTargetCursor.put(target3);
                    }
                }
                if (z) {
                    long id2 = r0.f62861b.f62886a.getIdGetter().getId(r0.f62860a);
                    if (id2 == 0) {
                        throw new IllegalStateException("Source entity has no ID (should have been put before)");
                    }
                    if (arrayList != null) {
                        r0.m4584a(this, id2, arrayList, idGetter);
                    }
                    if (objArr != null) {
                        r0.m4583a(this, id2, objArr, idGetter);
                    }
                }
                if (relationTargetCursor == null) {
                    return;
                }
                relationTargetCursor.close();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    if (relationTargetCursor != null) {
                        try {
                            relationTargetCursor.close();
                        } catch (Throwable th3) {
                            th.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.closed) {
                this.closed = true;
                Transaction transaction = this.f62699tx;
                if (transaction != null && !transaction.f62702c.f62689m) {
                    nativeDestroy(this.cursor);
                }
            }
        }
    }

    public long count(long j) {
        return nativeCount(this.cursor, j);
    }

    public void deleteAll() {
        nativeDeleteAll(this.cursor);
    }

    public boolean deleteEntity(long j) {
        return nativeDeleteEntity(this.cursor, j);
    }

    protected void finalize() throws Throwable {
        if (!this.closed) {
            if (!this.readOnly || LOG_READ_NOT_CLOSED) {
                System.err.println("Cursor was not closed.");
                if (this.creationThrowable != null) {
                    System.err.println("Cursor was initially created here:");
                    this.creationThrowable.printStackTrace();
                }
                System.err.flush();
            }
            close();
            super.finalize();
        }
    }

    public T first() {
        return (T) nativeFirstEntity(this.cursor);
    }

    public T get(long j) {
        return (T) nativeGetEntity(this.cursor, j);
    }

    public List<T> getAll() {
        return nativeGetAllEntities(this.cursor);
    }

    public List<T> getBacklinkEntities(int i, C17978g<?> c17978g, long j) {
        try {
            return nativeGetBacklinkEntities(this.cursor, i, c17978g.m4652b(), j);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Please check if the given property belongs to a valid @Relation: ".concat(String.valueOf(c17978g)), e);
        }
    }

    long[] getBacklinkIds(int i, C17978g<?> c17978g, long j) {
        try {
            return nativeGetBacklinkIds(this.cursor, i, c17978g.m4652b(), j);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Please check if the given property belongs to a valid @Relation: ".concat(String.valueOf(c17978g)), e);
        }
    }

    public AbstractC17957c<T> getEntityInfo() {
        return this.entityInfo;
    }

    public abstract long getId(T t);

    public int getPropertyId(String str) {
        return nativePropertyId(this.cursor, str);
    }

    public List<T> getRelationEntities(int i, int i2, long j, boolean z) {
        return nativeGetRelationEntities(this.cursor, i, i2, j, z);
    }

    public long[] getRelationIds(int i, int i2, long j, boolean z) {
        return nativeGetRelationIds(this.cursor, i, i2, j, z);
    }

    public <TARGET> Cursor<TARGET> getRelationTargetCursor(Class<TARGET> cls) {
        AbstractC17957c<T> m4730c = this.boxStoreForEntities.m4730c(cls);
        return (Cursor<T>) m4730c.getCursorFactory().createCursor(this.f62699tx, nativeGetCursorFor(this.cursor, m4730c.getEntityId()), this.boxStoreForEntities);
    }

    public Transaction getTx() {
        return this.f62699tx;
    }

    public long internalHandle() {
        return this.cursor;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean isObsolete() {
        Transaction transaction = this.f62699tx;
        return transaction.f62704e != transaction.f62702c.f62691o;
    }

    long lookupKeyUsingIndex(int i, String str) {
        return nativeLookupKeyUsingIndex(this.cursor, i, str);
    }

    public void modifyRelations(int i, long j, long[] jArr, boolean z) {
        nativeModifyRelations(this.cursor, i, j, jArr, z);
    }

    public void modifyRelationsSingle(int i, long j, long j2, boolean z) {
        nativeModifyRelationsSingle(this.cursor, i, j, j2, z);
    }

    native long nativeCount(long j, long j2);

    native void nativeDeleteAll(long j);

    native void nativeDestroy(long j);

    native List<T> nativeGetAllEntities(long j);

    native List<T> nativeGetBacklinkEntities(long j, int i, int i2, long j2);

    native long[] nativeGetBacklinkIds(long j, int i, int i2, long j2);

    native long nativeGetCursorFor(long j, int i);

    native List<T> nativeGetRelationEntities(long j, int i, int i2, long j2, boolean z);

    native long[] nativeGetRelationIds(long j, int i, int i2, long j2, boolean z);

    native void nativeModifyRelations(long j, int i, long j2, long[] jArr, boolean z);

    native void nativeModifyRelationsSingle(long j, int i, long j2, long j3, boolean z);

    native int nativePropertyId(long j, String str);

    native long nativeRenew(long j);

    native void nativeSetBoxStoreForEntities(long j, Object obj);

    public T next() {
        return (T) nativeNextEntity(this.cursor);
    }

    public abstract long put(T t);

    public void renew() {
        nativeRenew(this.cursor);
    }

    public boolean seek(long j) {
        return nativeSeek(this.cursor, j);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("Cursor ");
        sb.append(Long.toString(this.cursor, 16));
        sb.append(isClosed() ? "(closed)" : "");
        return sb.toString();
    }
}
