package androidx.core.database.sqlite;

import android.database.sqlite.SQLiteDatabase;
import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import p626l.p641z.p642c.AbstractC15118l;
import p626l.p641z.p643d.C15148j;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u001c\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a;\u0010��\u001a\u0002H\u0001\"\u0004\b��\u0010\u0001*\u00020\u00022\b\b\u0002\u0010\u0003\u001a\u00020\u00042\u0017\u0010\u0005\u001a\u0013\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u0002H\u00010\u0006¢\u0006\u0002\b\u0007H\u0086\b¢\u0006\u0002\u0010\b¨\u0006\t"}, m815d2 = {"transaction", ExifInterface.GPS_DIRECTION_TRUE, "Landroid/database/sqlite/SQLiteDatabase;", "exclusive", "", "body", "Lkotlin/Function1;", "Lkotlin/ExtensionFunctionType;", "(Landroid/database/sqlite/SQLiteDatabase;ZLkotlin/jvm/functions/Function1;)Ljava/lang/Object;", "core-ktx_release"}, m814k = 2, m813mv = {1, 1, 15})
/* loaded from: classes-dex2jar.jar:androidx/core/database/sqlite/SQLiteDatabaseKt.class */
public final class SQLiteDatabaseKt {
    public static final <T> T transaction(SQLiteDatabase sQLiteDatabase, boolean z, AbstractC15118l<? super SQLiteDatabase, ? extends T> lVar) {
        C15149k.m377b(sQLiteDatabase, "$this$transaction");
        C15149k.m377b(lVar, "body");
        if (z) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            T t = (T) lVar.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            C15148j.m389b(1);
            sQLiteDatabase.endTransaction();
            C15148j.m390a(1);
            return t;
        } catch (Throwable th) {
            C15148j.m389b(1);
            sQLiteDatabase.endTransaction();
            C15148j.m390a(1);
            throw th;
        }
    }

    public static /* synthetic */ Object transaction$default(SQLiteDatabase sQLiteDatabase, boolean z, AbstractC15118l lVar, int i, Object obj) {
        if ((i & 1) != 0) {
            z = true;
        }
        C15149k.m377b(sQLiteDatabase, "$this$transaction");
        C15149k.m377b(lVar, "body");
        if (z) {
            sQLiteDatabase.beginTransaction();
        } else {
            sQLiteDatabase.beginTransactionNonExclusive();
        }
        try {
            Object invoke = lVar.invoke(sQLiteDatabase);
            sQLiteDatabase.setTransactionSuccessful();
            C15148j.m389b(1);
            sQLiteDatabase.endTransaction();
            C15148j.m390a(1);
            return invoke;
        } catch (Throwable th) {
            C15148j.m389b(1);
            sQLiteDatabase.endTransaction();
            C15148j.m390a(1);
            throw th;
        }
    }
}
