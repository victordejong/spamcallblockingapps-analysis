package androidx.room;

import androidx.sqlite.p082db.SupportSQLiteOpenHelper;
import java.io.File;
/* renamed from: androidx.room.n */
/* loaded from: classes-dex2jar.jar:androidx/room/n.class */
final class C2763n implements SupportSQLiteOpenHelper.AbstractC2782b {

    /* renamed from: a */
    private final String f10480a;

    /* renamed from: b */
    private final File f10481b;

    /* renamed from: c */
    private final SupportSQLiteOpenHelper.AbstractC2782b f10482c;

    public C2763n(String str, File file, SupportSQLiteOpenHelper.AbstractC2782b abstractC2782b) {
        this.f10480a = str;
        this.f10481b = file;
        this.f10482c = abstractC2782b;
    }

    @Override // androidx.sqlite.p082db.SupportSQLiteOpenHelper.AbstractC2782b
    /* renamed from: a */
    public final SupportSQLiteOpenHelper mo39489a(SupportSQLiteOpenHelper.Configuration configuration) {
        return new C2762m(configuration.context, this.f10480a, this.f10481b, configuration.callback.f10531a, this.f10482c.mo39489a(configuration));
    }
}
