package com.facebook.stetho.inspector.database;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import java.io.File;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/database/DatabaseConnectionProvider.class */
public interface DatabaseConnectionProvider {
    SQLiteDatabase openDatabase(File file) throws SQLiteException;
}
