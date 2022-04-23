package io.objectbox;

import io.objectbox.b.c;
import io.objectbox.exception.DbException;
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
    protected final c<T> entityInfo;
    protected final boolean readOnly;
    protected final Transaction tx;

    public Cursor(Transaction transaction, long j, c<T> cVar, BoxStore boxStore) {
        g<T>[] allProperties;
        if (transaction != null) {
            this.tx = transaction;
            this.readOnly = transaction.f36184d;
            this.cursor = j;
            this.entityInfo = cVar;
            this.boxStoreForEntities = boxStore;
            for (g<T> gVar : cVar.getAllProperties()) {
                if (!gVar.k) {
                    int propertyId = getPropertyId(gVar.h);
                    if (gVar.f36237c <= 0) {
                        throw new IllegalStateException("Illegal property ID " + gVar.f36237c + " for " + gVar.toString());
                    } else if (gVar.f36237c == propertyId) {
                        gVar.k = true;
                    } else {
                        throw new DbException(gVar.toString() + " does not match ID in DB: " + propertyId);
                    }
                }
            }
            this.creationThrowable = TRACK_CREATION_STACK ? new Throwable() : null;
            nativeSetBoxStoreForEntities(j, boxStore);
            return;
        }
        throw new IllegalArgumentException("Transaction is null");
    }

    protected static native long collect002033(long j, long j2, int i, int i2, long j3, int i3, long j4, int i4, float f, int i5, float f2, int i6, float f3, int i7, double d2, int i8, double d3, int i9, double d4);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native long collect004000(long j, long j2, int i, int i2, long j3, int i3, long j4, int i4, long j5, int i5, long j6);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native long collect313311(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, byte[] bArr, int i6, long j3, int i7, long j4, int i8, long j5, int i9, int i10, int i11, int i12, int i13, int i14, int i15, float f, int i16, double d2);

    /* JADX INFO: Access modifiers changed from: protected */
    public static native long collect400000(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, String str4);

    protected static native long collect430000(long j, long j2, int i, int i2, String str, int i3, String str2, int i4, String str3, int i5, String str4, int i6, byte[] bArr, int i7, byte[] bArr2, int i8, byte[] bArr3);

    static native boolean nativeDeleteEntity(long j, long j2);

    static native Object nativeFirstEntity(long j);

    static native Object nativeGetEntity(long j, long j2);

    static native long nativeLookupKeyUsingIndex(long j, int i, String str);

    static native Object nativeNextEntity(long j);

    static native boolean nativeSeek(long j, long j2);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    public <TARGET> void checkApplyToManyToDb(List<TARGET> list, Class<TARGET> cls) {
        Object[] objArr;
        Object[] objArr2;
        ArrayList arrayList;
        Object[] array;
        Object[] objArr3;
        if (list instanceof ToMany) {
            ToMany toMany = (ToMany) list;
            if (toMany.a()) {
                Cursor<TARGET> relationTargetCursor = getRelationTargetCursor(cls);
                try {
                    boolean z = toMany.f36268b.i != 0;
                    c<TARGET> idGetter = toMany.f36268b.f36276b.getIdGetter();
                    synchronized (toMany) {
                        objArr = null;
                        if (z) {
                            for (TARGET target : toMany.f36269c.keySet()) {
                                if (idGetter.getId(target) == 0) {
                                    toMany.e.add(target);
                                }
                            }
                            if (toMany.g) {
                                toMany.f.addAll(toMany.f36270d.keySet());
                            }
                            if (!toMany.f36269c.isEmpty()) {
                                objArr3 = toMany.f36269c.keySet().toArray();
                                toMany.f36269c.clear();
                            } else {
                                objArr3 = null;
                            }
                            if (!toMany.f36270d.isEmpty()) {
                                arrayList = new ArrayList(toMany.f36270d.keySet());
                                toMany.f36270d.clear();
                                objArr2 = objArr3;
                            } else {
                                objArr2 = objArr3;
                                arrayList = null;
                            }
                        } else {
                            arrayList = null;
                            objArr2 = null;
                        }
                        array = toMany.f.isEmpty() ? null : toMany.f.toArray();
                        toMany.f.clear();
                        if (!toMany.e.isEmpty()) {
                            objArr = toMany.e.toArray();
                        }
                        toMany.e.clear();
                    }
                    if (array != null) {
                        for (Object obj : array) {
                            long id = idGetter.getId((TARGET) obj);
                            if (id != 0) {
                                relationTargetCursor.deleteEntity(id);
                            }
                        }
                    }
                    if (objArr != null) {
                        for (Object obj2 : objArr) {
                            relationTargetCursor.put((TARGET) obj2);
                        }
                    }
                    if (z) {
                        long id2 = toMany.f36268b.f36275a.getIdGetter().getId(toMany.f36267a);
                        if (id2 != 0) {
                            if (arrayList != null) {
                                toMany.a((Cursor<?>) this, id2, (List) arrayList, (c) idGetter);
                            }
                            if (objArr2 != null) {
                                toMany.a((Cursor<?>) this, id2, objArr2, (c) idGetter);
                            }
                        } else {
                            throw new IllegalStateException("Source entity has no ID (should have been put before)");
                        }
                    }
                    if (relationTargetCursor != null) {
                        relationTargetCursor.close();
                    }
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
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this) {
            if (!this.closed) {
                this.closed = true;
                Transaction transaction = this.tx;
                if (transaction != null && !transaction.f36183c.m) {
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

    /* JADX INFO: Access modifiers changed from: package-private */
    public List<T> getBacklinkEntities(int i, g<?> gVar, long j) {
        try {
            return nativeGetBacklinkEntities(this.cursor, i, gVar.b(), j);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Please check if the given property belongs to a valid @Relation: ".concat(String.valueOf(gVar)), e);
        }
    }

    long[] getBacklinkIds(int i, g<?> gVar, long j) {
        try {
            return nativeGetBacklinkIds(this.cursor, i, gVar.b(), j);
        } catch (IllegalArgumentException e) {
            throw new IllegalArgumentException("Please check if the given property belongs to a valid @Relation: ".concat(String.valueOf(gVar)), e);
        }
    }

    public c<T> getEntityInfo() {
        return this.entityInfo;
    }

    /* JADX INFO: Access modifiers changed from: protected */
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

    /* JADX INFO: Access modifiers changed from: protected */
    public <TARGET> Cursor<TARGET> getRelationTargetCursor(Class<TARGET> cls) {
        c<T> c2 = this.boxStoreForEntities.c(cls);
        return (Cursor<T>) c2.getCursorFactory().createCursor(this.tx, nativeGetCursorFor(this.cursor, c2.getEntityId()), this.boxStoreForEntities);
    }

    public Transaction getTx() {
        return this.tx;
    }

    public long internalHandle() {
        return this.cursor;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean isObsolete() {
        Transaction transaction = this.tx;
        return transaction.e != transaction.f36183c.o;
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
