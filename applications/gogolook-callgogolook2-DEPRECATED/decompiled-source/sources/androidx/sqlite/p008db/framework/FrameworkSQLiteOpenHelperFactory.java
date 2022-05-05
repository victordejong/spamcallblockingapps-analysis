package androidx.sqlite.p008db.framework;

import androidx.annotation.NonNull;
import androidx.sqlite.p008db.SupportSQLiteOpenHelper;
/* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory.class */
public final class FrameworkSQLiteOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @Override // androidx.sqlite.p008db.SupportSQLiteOpenHelper.Factory
    @NonNull
    public SupportSQLiteOpenHelper create(@NonNull SupportSQLiteOpenHelper.Configuration configuration) {
        return new FrameworkSQLiteOpenHelper(configuration.context, configuration.name, configuration.callback, configuration.useNoBackupDirectory);
    }
}
