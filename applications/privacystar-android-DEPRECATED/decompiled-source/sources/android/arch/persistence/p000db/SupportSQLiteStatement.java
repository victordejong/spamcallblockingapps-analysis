package android.arch.persistence.p000db;
/* renamed from: android.arch.persistence.db.SupportSQLiteStatement */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/SupportSQLiteStatement.class */
public interface SupportSQLiteStatement extends SupportSQLiteProgram {
    void execute();

    long executeInsert();

    int executeUpdateDelete();

    long simpleQueryForLong();

    String simpleQueryForString();
}
