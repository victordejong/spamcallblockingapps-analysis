package androidx.room;

import androidx.sqlite.db.SupportSQLiteOpenHelper;
import java.io.File;
/* loaded from: classes-dex2jar.jar:androidx/room/n.class */
final class n implements SupportSQLiteOpenHelper.b {

    /* renamed from: a  reason: collision with root package name */
    private final String f5597a;

    /* renamed from: b  reason: collision with root package name */
    private final File f5598b;

    /* renamed from: c  reason: collision with root package name */
    private final SupportSQLiteOpenHelper.b f5599c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(String str, File file, SupportSQLiteOpenHelper.b bVar) {
        this.f5597a = str;
        this.f5598b = file;
        this.f5599c = bVar;
    }

    @Override // androidx.sqlite.db.SupportSQLiteOpenHelper.b
    public final SupportSQLiteOpenHelper a(SupportSQLiteOpenHelper.Configuration configuration) {
        return new m(configuration.context, this.f5597a, this.f5598b, configuration.callback.f5627a, this.f5599c.a(configuration));
    }
}
