package androidx.sqlite.p006db.framework;

import androidx.sqlite.p006db.SupportSQLiteOpenHelper;
/* renamed from: androidx.sqlite.db.framework.FrameworkSQLiteOpenHelperFactory */
/* loaded from: classes-dex2jar.jar:androidx/sqlite/db/framework/FrameworkSQLiteOpenHelperFactory.class */
public final class FrameworkSQLiteOpenHelperFactory implements SupportSQLiteOpenHelper.Factory {
    @Override // androidx.sqlite.p006db.SupportSQLiteOpenHelper.Factory
    public SupportSQLiteOpenHelper create(SupportSQLiteOpenHelper.Configuration configuration) {
        return new FrameworkSQLiteOpenHelper(configuration.context, configuration.name, configuration.callback);
    }
}
