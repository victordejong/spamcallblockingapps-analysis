package com.privacystar.core.data.providers.custom.whitelabel;

import android.content.ContentProvider;
import android.content.ContentResolver;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteQueryBuilder;
import android.net.Uri;
import com.google.android.gms.actions.SearchIntents;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0010\u0011\n\u0002\b\u0004\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\b\u0018�� \u001b2\u00020\u0001:\u0002\u001b\u001cB\u0005¢\u0006\u0002\u0010\u0002J/\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fH\u0016¢\u0006\u0002\u0010\rJ\u0012\u0010\u000e\u001a\u0004\u0018\u00010\n2\u0006\u0010\u0007\u001a\u00020\bH\u0016J\u001c\u0010\u000f\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u0011H\u0016J\b\u0010\u0012\u001a\u00020\u0013H\u0016JK\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0006\u0010\u0007\u001a\u00020\b2\u000e\u0010\u0016\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\f2\b\u0010\t\u001a\u0004\u0018\u00010\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\f2\b\u0010\u0017\u001a\u0004\u0018\u00010\nH\u0016¢\u0006\u0002\u0010\u0018J9\u0010\u0019\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\b\u0010\u0010\u001a\u0004\u0018\u00010\u00112\b\u0010\t\u001a\u0004\u0018\u00010\n2\u000e\u0010\u000b\u001a\n\u0012\u0004\u0012\u00020\n\u0018\u00010\fH\u0016¢\u0006\u0002\u0010\u001aR\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u001d"}, m254d2 = {"Lcom/privacystar/core/data/providers/custom/whitelabel/WLProvider;", "Landroid/content/ContentProvider;", "()V", "db", "Landroid/database/sqlite/SQLiteDatabase;", "delete", "", "uri", "Landroid/net/Uri;", "selection", "", "selectionArgs", "", "(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I", "getType", "insert", "values", "Landroid/content/ContentValues;", "onCreate", "", SearchIntents.EXTRA_QUERY, "Landroid/database/Cursor;", "projection", "sortOrder", "(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;", "update", "(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I", "Companion", "DatabaseHelper", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/whitelabel/WLProvider.class */
public final class WLProvider extends ContentProvider {
    @NotNull
    public static final String CREATE_DB_TABLE = " CREATE TABLE wl_table (id INTEGER PRIMARY KEY AUTOINCREMENT,  token TEXT NOT NULL);";
    @NotNull
    public static final String DATABASE_NAME = "whitelabelDB";
    public static final int DATABASE_VERSION = 1;
    @NotNull
    public static final String TABLE_NAME = "wl_table";
    public static final int uriCode = 1;

    /* renamed from: db */
    private SQLiteDatabase f266db;
    public static final Companion Companion = new Companion(null);
    @NotNull
    private static final UriMatcher uriMatcher = new UriMatcher(-1);

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0080T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0007X\u0080T¢\u0006\u0002\n��R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\f\u0010\r¨\u0006\u000e"}, m254d2 = {"Lcom/privacystar/core/data/providers/custom/whitelabel/WLProvider$Companion;", "", "()V", "CREATE_DB_TABLE", "", "DATABASE_NAME", "DATABASE_VERSION", "", "TABLE_NAME", "uriCode", "uriMatcher", "Landroid/content/UriMatcher;", "getUriMatcher$app_core", "()Landroid/content/UriMatcher;", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/whitelabel/WLProvider$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final UriMatcher getUriMatcher$app_core() {
            return WLProvider.uriMatcher;
        }
    }

    @Metadata(m256bv = {1, 0, 3}, m255d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0002\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0010\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\bH\u0016J \u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u000bH\u0016¨\u0006\r"}, m254d2 = {"Lcom/privacystar/core/data/providers/custom/whitelabel/WLProvider$DatabaseHelper;", "Landroid/database/sqlite/SQLiteOpenHelper;", "context", "Landroid/content/Context;", "(Landroid/content/Context;)V", "onCreate", "", "db", "Landroid/database/sqlite/SQLiteDatabase;", "onUpgrade", "oldVersion", "", "newVersion", "app-core"}, m253k = 1, m252mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/providers/custom/whitelabel/WLProvider$DatabaseHelper.class */
    private static final class DatabaseHelper extends SQLiteOpenHelper {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public DatabaseHelper(@NotNull Context context) {
            super(context, "whitelabelDB", (SQLiteDatabase.CursorFactory) null, 1);
            Intrinsics.checkParameterIsNotNull(context, "context");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onCreate(@NotNull SQLiteDatabase db) {
            Intrinsics.checkParameterIsNotNull(db, "db");
            db.execSQL(WLProvider.CREATE_DB_TABLE);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public void onUpgrade(@NotNull SQLiteDatabase db, int i, int i2) {
            Intrinsics.checkParameterIsNotNull(db, "db");
            db.execSQL("DROP TABLE IF EXISTS wl_table");
            onCreate(db);
        }
    }

    static {
        uriMatcher.addURI("com.privacystar.android.spg", "wl_table", 1);
        uriMatcher.addURI("com.privacystar.android.spg", "wl_table/*", 1);
    }

    @Override // android.content.ContentProvider
    public int delete(@NotNull Uri uri, @Nullable String str, @Nullable String[] strArr) {
        ContentResolver contentResolver;
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        if (uriMatcher.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        SQLiteDatabase sQLiteDatabase = this.f266db;
        if (sQLiteDatabase == null) {
            Intrinsics.throwNpe();
        }
        int delete = sQLiteDatabase.delete("wl_table", str, strArr);
        Context context = getContext();
        if (!(context == null || (contentResolver = context.getContentResolver()) == null)) {
            contentResolver.notifyChange(uri, null);
        }
        return delete;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public String getType(@NotNull Uri uri) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        if (uriMatcher.match(uri) == 1) {
            return "vnd.android.cursor.dir/wl_table";
        }
        throw new IllegalArgumentException("Unsupported URI: " + uri);
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Uri insert(@NotNull Uri uri, @Nullable ContentValues contentValues) {
        ContentResolver contentResolver;
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        SQLiteDatabase sQLiteDatabase = this.f266db;
        if (sQLiteDatabase == null) {
            Intrinsics.throwNpe();
        }
        long insert = sQLiteDatabase.insert("wl_table", "", contentValues);
        if (insert > 0) {
            Uri withAppendedId = ContentUris.withAppendedId(WLContract.INSTANCE.getRSContentUri(), insert);
            Intrinsics.checkExpressionValueIsNotNull(withAppendedId, "ContentUris.withAppended…getRSContentUri(), rowID)");
            Context context = getContext();
            if (!(context == null || (contentResolver = context.getContentResolver()) == null)) {
                contentResolver.notifyChange(withAppendedId, null);
            }
            return withAppendedId;
        }
        throw new SQLException("Failed to add a record into " + uri);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        boolean z = false;
        if (context == null) {
            return false;
        }
        this.f266db = new DatabaseHelper(context).getWritableDatabase();
        if (this.f266db != null) {
            z = true;
        }
        return z;
    }

    @Override // android.content.ContentProvider
    @Nullable
    public Cursor query(@NotNull Uri uri, @Nullable String[] strArr, @Nullable String str, @Nullable String[] strArr2, @Nullable String str2) {
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        if (str2 == null) {
            str2 = "";
        }
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        sQLiteQueryBuilder.setTables("wl_table");
        boolean z = true;
        if (uriMatcher.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        sQLiteQueryBuilder.setProjectionMap(new HashMap());
        if (str2.length() != 0) {
            z = false;
        }
        if (z) {
            str2 = "id";
        }
        Cursor query = sQLiteQueryBuilder.query(this.f266db, strArr, str, strArr2, null, null, str2);
        Context context = getContext();
        if (context == null) {
            Intrinsics.throwNpe();
        }
        query.setNotificationUri(context.getContentResolver(), uri);
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(@NotNull Uri uri, @Nullable ContentValues contentValues, @Nullable String str, @Nullable String[] strArr) {
        ContentResolver contentResolver;
        Intrinsics.checkParameterIsNotNull(uri, "uri");
        if (uriMatcher.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        SQLiteDatabase sQLiteDatabase = this.f266db;
        if (sQLiteDatabase == null) {
            Intrinsics.throwNpe();
        }
        int update = sQLiteDatabase.update("wl_table", contentValues, str, strArr);
        Context context = getContext();
        if (!(context == null || (contentResolver = context.getContentResolver()) == null)) {
            contentResolver.notifyChange(uri, null);
        }
        return update;
    }
}
