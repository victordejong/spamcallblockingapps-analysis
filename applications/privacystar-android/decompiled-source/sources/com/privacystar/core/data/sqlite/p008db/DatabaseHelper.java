package com.privacystar.core.data.sqlite.p008db;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.privacystar.core.PSApplication;
import com.privacystar.core.data.sqlite.p008db.block_history.BlockHistoryContract;
import com.privacystar.core.data.sqlite.p008db.block_list.BlockListContract;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsContract;
import com.privacystar.core.data.sqlite.p008db.blocking_options.BlockingOptionsHelper;
import com.privacystar.core.data.sqlite.p008db.caller_id.CallerIdContract;
import com.privacystar.core.data.sqlite.p008db.event_control.EventControlContract;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsContract;
import com.privacystar.core.data.sqlite.p008db.exclusions.ExclusionsHelper;
import com.privacystar.core.data.sqlite.p008db.messages.MessagesContract;
import com.privacystar.core.data.sqlite.p008db.offenders.OffendersContract;
import com.privacystar.core.data.sqlite.p008db.subscription.SubscriptionContract;
import com.privacystar.core.util.Text;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import timber.log.Timber;
/* renamed from: com.privacystar.core.data.sqlite.db.DatabaseHelper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/data/sqlite/db/DatabaseHelper.class */
public class DatabaseHelper extends SQLiteOpenHelper {
    private static final String DATABASE_NAME = "PSDatabase";
    private static final int DATABASE_VERSION = 11;
    private static final String SQL_ATTEMPT_MESSAGE = "Attempted to execute SQL: %s";
    private static DatabaseHelper sInstance;

    private DatabaseHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 11);
    }

    public static DatabaseHelper getInstance() {
        DatabaseHelper instance;
        synchronized (DatabaseHelper.class) {
            try {
                instance = getInstance(PSApplication.context());
            } catch (Throwable th) {
                throw th;
            }
        }
        return instance;
    }

    public static DatabaseHelper getInstance(Context context) {
        DatabaseHelper databaseHelper;
        synchronized (DatabaseHelper.class) {
            try {
                if (sInstance == null) {
                    Timber.m37d("DatabaseHelper instance requested for the first time, creating singleton.", new Object[0]);
                    sInstance = new DatabaseHelper(context.getApplicationContext());
                }
                databaseHelper = sInstance;
            } catch (Throwable th) {
                throw th;
            }
        }
        return databaseHelper;
    }

    public static long sqlDateStringToLong(String str) {
        if (Text.isBlank(str)) {
            return 0L;
        }
        try {
            return new SimpleDateFormat("yyyy-MM-dd HH:mm:ss", Locale.getDefault()).parse(str).getTime();
        } catch (ParseException e) {
            Timber.m23w(e, "couldn't parse datetime out of SQLite field.", new Object[0]);
            return 0L;
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onConfigure(SQLiteDatabase sQLiteDatabase) {
        super.onConfigure(sQLiteDatabase);
        Timber.m37d("Configuring database %s. Enabling Foreign Key Constraints.", DATABASE_NAME);
        sQLiteDatabase.setForeignKeyConstraintsEnabled(true);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        Timber.m37d("Setting up database %s from onCreate().", DATABASE_NAME);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockListContract.BlockListEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(BlockListContract.BlockListEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockHistoryContract.BlockHistoryEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(BlockHistoryContract.BlockHistoryEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, SubscriptionContract.SubscriptionEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(SubscriptionContract.SubscriptionEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, MessagesContract.MessagesEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(MessagesContract.MessagesEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, CallerIdContract.CallerIdEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(CallerIdContract.CallerIdEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, ExclusionsContract.ExclusionsEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(ExclusionsContract.ExclusionsEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockingOptionsContract.BlockingOptionsEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(BlockingOptionsContract.BlockingOptionsEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, EventControlContract.EventControlEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(EventControlContract.EventControlEntry.SQL_CREATE_TABLE);
        Timber.m37d(SQL_ATTEMPT_MESSAGE, OffendersContract.OffendersEntry.SQL_CREATE_TABLE);
        sQLiteDatabase.execSQL(OffendersContract.OffendersEntry.SQL_CREATE_TABLE);
        ExclusionsHelper.getInstance().initializeExclusionData(sQLiteDatabase);
        BlockingOptionsHelper.getInstance().initializeBlockingOptions(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Timber.m37d("Downgrading database %s from %d --> %d.", DATABASE_NAME, Integer.valueOf(i), Integer.valueOf(i2));
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        Timber.m37d("Upgrading database %s from %d --> %d.", DATABASE_NAME, Integer.valueOf(i), Integer.valueOf(i2));
        if (i != i2) {
            Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockListContract.BlockListEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(BlockListContract.BlockListEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockHistoryContract.BlockHistoryEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(BlockHistoryContract.BlockHistoryEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockHistoryContract.BlockHistoryEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(BlockHistoryContract.BlockHistoryEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, SubscriptionContract.SubscriptionEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(SubscriptionContract.SubscriptionEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, MessagesContract.MessagesEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(MessagesContract.MessagesEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, CallerIdContract.CallerIdEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(CallerIdContract.CallerIdEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, ExclusionsContract.ExclusionsEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(ExclusionsContract.ExclusionsEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, BlockingOptionsContract.BlockingOptionsEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(BlockingOptionsContract.BlockingOptionsEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, EventControlContract.EventControlEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(EventControlContract.EventControlEntry.SQL_DROP_TABLE);
            Timber.m37d(SQL_ATTEMPT_MESSAGE, OffendersContract.OffendersEntry.SQL_DROP_TABLE);
            sQLiteDatabase.execSQL(OffendersContract.OffendersEntry.SQL_DROP_TABLE);
            onCreate(sQLiteDatabase);
        }
    }
}
