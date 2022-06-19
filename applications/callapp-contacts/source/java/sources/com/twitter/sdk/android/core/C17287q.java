package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* renamed from: com.twitter.sdk.android.core.q */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/q.class */
final class C17287q extends ContextWrapper {

    /* renamed from: a */
    private final String f61069a;

    /* renamed from: b */
    private final String f61070b;

    public C17287q(Context context, String str, String str2) {
        super(context);
        this.f61070b = str;
        this.f61069a = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getCacheDir() {
        return new File(super.getCacheDir(), this.f61069a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f61069a);
        file.mkdirs();
        return new File(file, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f61069a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f61069a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getFilesDir() {
        return new File(super.getFilesDir(), this.f61069a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SharedPreferences getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(this.f61070b + ":" + str, i);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str), cursorFactory);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SQLiteDatabase openOrCreateDatabase(String str, int i, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
        return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(str).getPath(), cursorFactory, databaseErrorHandler);
    }
}
