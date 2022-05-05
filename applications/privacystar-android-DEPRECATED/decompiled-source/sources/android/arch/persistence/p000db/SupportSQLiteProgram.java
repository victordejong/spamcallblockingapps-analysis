package android.arch.persistence.p000db;

import java.io.Closeable;
/* renamed from: android.arch.persistence.db.SupportSQLiteProgram */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/SupportSQLiteProgram.class */
public interface SupportSQLiteProgram extends Closeable {
    void bindBlob(int i, byte[] bArr);

    void bindDouble(int i, double d);

    void bindLong(int i, long j);

    void bindNull(int i);

    void bindString(int i, String str);

    void clearBindings();
}
