package com.android.contacts.miniwidget;

import android.content.ContentProvider;
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
import android.util.Log;
import com.android.contacts.activities.ContactDetailCallogActivity;
import com.android.contacts.util.SpeedDialList;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidgetProvider.class */
public class ContactsWidgetProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    public static final Uri f1929a = Uri.parse("content://com.asus.contactsminiwidget.provider/contact_in_widget");

    /* renamed from: b  reason: collision with root package name */
    private static final UriMatcher f1930b;
    private static final HashMap<String, String> c;
    private Context d;
    private a e;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/miniwidget/ContactsWidgetProvider$a.class */
    private final class a extends SQLiteOpenHelper {
        public a(Context context) {
            super(context, "my_db", (SQLiteDatabase.CursorFactory) null, 2);
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onCreate(SQLiteDatabase sQLiteDatabase) {
            sQLiteDatabase.execSQL("CREATE TABLE contact_in_widget (id INTEGER primary key autoincrement,  widget_id INTEGER,  isSim INTEGER,  contact_id INTEGER,  name_raw_contact_id INTEGER,  sort_key_primary text,  display_name_primary text,  sort_key_alternative text,  display_name_alternative text,  raw_version INTEGER,  select_in_edit_contacts INTEGER,  action INTEGER,  contact_order INTEGER NOT NULL DEFAULT 0,  data text)");
        }

        @Override // android.database.sqlite.SQLiteOpenHelper
        public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
            Log.i("ContactsWidgetProvider", "Upgrading from version " + i + " to " + i2);
            int i3 = i;
            if (i < 2) {
                sQLiteDatabase.execSQL("ALTER TABLE contact_in_widget ADD COLUMN raw_version INTEGER NOT NULL DEFAULT 0;");
                i3 = 2;
            }
            if (i3 != i2) {
                throw new IllegalStateException("error upgrading the database to version " + i2);
            }
        }
    }

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        uriMatcher.addURI("com.asus.contactsminiwidget.provider", "contact_in_widget", 1);
        uriMatcher.addURI("com.asus.contactsminiwidget.provider", "contact_in_widget/#", 2);
        f1930b = uriMatcher;
        HashMap<String, String> hashMap = new HashMap<>();
        hashMap.put("id", "rowid AS id");
        hashMap.put("widget_id", "widget_id");
        hashMap.put(SpeedDialList.Columns.ISSIM, SpeedDialList.Columns.ISSIM);
        hashMap.put("id", "rowid AS id");
        hashMap.put(ContactDetailCallogActivity.EXTRA_CONTACT_ID, ContactDetailCallogActivity.EXTRA_CONTACT_ID);
        hashMap.put("name_raw_contact_id", "name_raw_contact_id");
        hashMap.put("display_name_alternative", "display_name_alternative");
        hashMap.put("select_in_edit_contacts", "select_in_edit_contacts");
        hashMap.put("action", "action");
        hashMap.put("contact_order", "contact_order");
        hashMap.put("data", "data");
        hashMap.put("sort_key_alternative", "sort_key_alternative");
        hashMap.put("sort_key_primary", "sort_key_primary");
        hashMap.put("display_name_primary", "display_name_primary");
        hashMap.put("raw_version", "raw_version");
        c = hashMap;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.e.getWritableDatabase();
        switch (f1930b.match(uri)) {
            case 1:
                int delete = writableDatabase.delete("contact_in_widget", str, strArr);
                getContext().getContentResolver().notifyChange(uri, null);
                return delete;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        switch (f1930b.match(uri)) {
            case 1:
                return "vnd.android.cursor.item/vnd.ed.contact_in_widget";
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        if (f1930b.match(uri) != 1) {
            throw new IllegalArgumentException("Unknown URI " + uri);
        }
        long insert = this.e.getWritableDatabase().insert("contact_in_widget", null, contentValues != null ? new ContentValues(contentValues) : new ContentValues());
        if (insert > 0) {
            Uri withAppendedId = ContentUris.withAppendedId(f1929a, insert);
            getContext().getContentResolver().notifyChange(withAppendedId, null);
            return withAppendedId;
        }
        throw new SQLException("Failed to insert row into " + uri);
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.d = getContext();
        this.e = new a(this.d);
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        SQLiteQueryBuilder sQLiteQueryBuilder = new SQLiteQueryBuilder();
        switch (f1930b.match(uri)) {
            case 1:
                sQLiteQueryBuilder.setTables("contact_in_widget");
                sQLiteQueryBuilder.setProjectionMap(c);
                break;
            case 2:
                long parseId = ContentUris.parseId(uri);
                sQLiteQueryBuilder.setTables("contact_in_widget");
                sQLiteQueryBuilder.setProjectionMap(c);
                str = str + " widget_id=" + parseId;
                break;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
        Cursor query = sQLiteQueryBuilder.query(this.e.getReadableDatabase(), strArr, str, strArr2, null, null, str2);
        query.setNotificationUri(getContext().getContentResolver(), uri);
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        SQLiteDatabase writableDatabase = this.e.getWritableDatabase();
        switch (f1930b.match(uri)) {
            case 1:
                int update = writableDatabase.update("contact_in_widget", contentValues, str, strArr);
                getContext().getContentResolver().notifyChange(uri, null);
                return update;
            default:
                throw new IllegalArgumentException("Unknown URI " + uri);
        }
    }
}
