package io.objectbox.p502b;

import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
/* renamed from: io.objectbox.b.b */
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/b.class */
public interface AbstractC17949b<T> {
    Cursor<T> createCursor(Transaction transaction, long j, BoxStore boxStore);
}
