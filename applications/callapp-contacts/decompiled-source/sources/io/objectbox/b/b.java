package io.objectbox.b;

import io.objectbox.BoxStore;
import io.objectbox.Cursor;
import io.objectbox.Transaction;
/* loaded from: classes5-dex2jar.jar:io/objectbox/b/b.class */
public interface b<T> {
    Cursor<T> createCursor(Transaction transaction, long j, BoxStore boxStore);
}
