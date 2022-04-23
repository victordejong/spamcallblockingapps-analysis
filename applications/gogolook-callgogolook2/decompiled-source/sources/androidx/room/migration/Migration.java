package androidx.room.migration;

import androidx.annotation.NonNull;
import androidx.sqlite.p008db.SupportSQLiteDatabase;
/* loaded from: classes-dex2jar.jar:androidx/room/migration/Migration.class */
public abstract class Migration {
    public final int endVersion;
    public final int startVersion;

    public Migration(int i, int i2) {
        this.startVersion = i;
        this.endVersion = i2;
    }

    public abstract void migrate(@NonNull SupportSQLiteDatabase supportSQLiteDatabase);
}
