package androidx.sqlite.db.a;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/a/c.class */
public final class c implements SupportSQLiteOpenHelper.b {
    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.b
    public final SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
        return new b(configuration.context, configuration.name, configuration.callback, configuration.useNoBackupDirectory);
    }
}
