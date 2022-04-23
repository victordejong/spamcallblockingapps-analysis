package android.arch.persistence.room.migration;

import android.arch.persistence.p000db.SupportSQLiteDatabase;
import android.support.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:android/arch/persistence/room/migration/Migration.class */
public abstract class Migration {
    public final int endVersion;
    public final int startVersion;

    public Migration(int i, int i2) {
        this.startVersion = i;
        this.endVersion = i2;
    }

    public abstract void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase);
}
