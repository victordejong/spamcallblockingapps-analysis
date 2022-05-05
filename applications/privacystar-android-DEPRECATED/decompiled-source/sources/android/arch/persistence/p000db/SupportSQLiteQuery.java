package android.arch.persistence.p000db;
/* renamed from: android.arch.persistence.db.SupportSQLiteQuery */
/* loaded from: classes-dex2jar.jar:android/arch/persistence/db/SupportSQLiteQuery.class */
public interface SupportSQLiteQuery {
    void bindTo(SupportSQLiteProgram supportSQLiteProgram);

    int getArgCount();

    String getSql();
}
