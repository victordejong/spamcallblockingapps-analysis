package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.SharedPreferences;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import java.io.File;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/q.class */
final class q extends ContextWrapper {

    /* renamed from: a  reason: collision with root package name */
    private final String f35200a;

    /* renamed from: b  reason: collision with root package name */
    private final String f35201b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(Context context, String str, String str2) {
        super(context);
        this.f35201b = str;
        this.f35200a = str2;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getCacheDir() {
        return new File(super.getCacheDir(), this.f35200a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getDatabasePath(String str) {
        File file = new File(super.getDatabasePath(str).getParentFile(), this.f35200a);
        file.mkdirs();
        return new File(file, str);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getExternalCacheDir() {
        return new File(super.getExternalCacheDir(), this.f35200a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getExternalFilesDir(String str) {
        return new File(super.getExternalFilesDir(str), this.f35200a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final File getFilesDir() {
        return new File(super.getFilesDir(), this.f35200a);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final SharedPreferences getSharedPreferences(String str, int i) {
        return super.getSharedPreferences(this.f35201b + ":" + str, i);
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
