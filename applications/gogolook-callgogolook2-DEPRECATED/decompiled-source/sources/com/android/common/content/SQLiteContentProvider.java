package com.android.common.content;

import android.content.ContentProvider;
import android.content.ContentProviderOperation;
import android.content.ContentProviderResult;
import android.content.ContentValues;
import android.content.Context;
import android.content.OperationApplicationException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteTransactionListener;
import android.net.Uri;
import java.util.ArrayList;
/* loaded from: classes-dex2jar.jar:com/android/common/content/SQLiteContentProvider.class */
public abstract class SQLiteContentProvider extends ContentProvider implements SQLiteTransactionListener {

    /* renamed from: a */
    public SQLiteOpenHelper f824a;

    /* renamed from: b */
    public volatile boolean f825b;

    /* renamed from: c */
    public SQLiteDatabase f826c;

    /* renamed from: d */
    public final ThreadLocal<Boolean> f827d = new ThreadLocal<>();

    /* renamed from: a */
    public abstract int m37017a(Uri uri, ContentValues contentValues, String str, String[] strArr);

    /* renamed from: a */
    public abstract int m37016a(Uri uri, String str, String[] strArr);

    /* renamed from: a */
    public abstract SQLiteOpenHelper m37019a(Context context);

    /* renamed from: a */
    public abstract Uri m37018a(Uri uri, ContentValues contentValues);

    /* renamed from: a */
    public final boolean m37020a() {
        return this.f827d.get() != null && this.f827d.get().booleanValue();
    }

    @Override // android.content.ContentProvider
    public ContentProviderResult[] applyBatch(ArrayList<ContentProviderOperation> arrayList) throws OperationApplicationException {
        this.f826c = this.f824a.getWritableDatabase();
        this.f826c.beginTransactionWithListener(this);
        try {
            this.f827d.set(true);
            int size = arrayList.size();
            ContentProviderResult[] contentProviderResultArr = new ContentProviderResult[size];
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            while (i < size) {
                int i4 = i2 + 1;
                if (i4 <= m37014c()) {
                    ContentProviderOperation contentProviderOperation = arrayList.get(i);
                    i2 = i4;
                    i3 = i3;
                    if (i > 0) {
                        i2 = i4;
                        i3 = i3;
                        if (contentProviderOperation.isYieldAllowed()) {
                            boolean z = this.f825b;
                            i3 = i3;
                            if (this.f826c.yieldIfContendedSafely(4000L)) {
                                this.f826c = this.f824a.getWritableDatabase();
                                this.f825b = z;
                                i3++;
                            }
                            i2 = 0;
                        }
                    }
                    contentProviderResultArr[i] = contentProviderOperation.apply(this, contentProviderResultArr, i);
                    i++;
                } else {
                    throw new OperationApplicationException("Too many content provider operations between yield points. The maximum number of operations per yield point is 500", i3);
                }
            }
            this.f826c.setTransactionSuccessful();
            return contentProviderResultArr;
        } finally {
            this.f827d.set(Boolean.valueOf(false));
            this.f826c.endTransaction();
            m37011f();
        }
    }

    /* renamed from: b */
    public void m37015b() {
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        int length = contentValuesArr.length;
        this.f826c = this.f824a.getWritableDatabase();
        this.f826c.beginTransactionWithListener(this);
        for (ContentValues contentValues : contentValuesArr) {
            try {
                if (m37018a(uri, contentValues) != null) {
                    this.f825b = true;
                }
                boolean z = this.f825b;
                SQLiteDatabase sQLiteDatabase = this.f826c;
                this.f826c.yieldIfContendedSafely();
                this.f826c = sQLiteDatabase;
                this.f825b = z;
            } catch (Throwable th) {
                this.f826c.endTransaction();
                throw th;
            }
        }
        this.f826c.setTransactionSuccessful();
        this.f826c.endTransaction();
        m37011f();
        return length;
    }

    /* renamed from: c */
    public int m37014c() {
        return 500;
    }

    /* renamed from: d */
    public abstract void m37013d();

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        int i;
        if (!m37020a()) {
            this.f826c = this.f824a.getWritableDatabase();
            this.f826c.beginTransactionWithListener(this);
            try {
                i = m37016a(uri, str, strArr);
                if (i > 0) {
                    this.f825b = true;
                }
                this.f826c.setTransactionSuccessful();
                this.f826c.endTransaction();
                m37011f();
            } catch (Throwable th) {
                this.f826c.endTransaction();
                throw th;
            }
        } else {
            int a = m37016a(uri, str, strArr);
            i = a;
            if (a > 0) {
                this.f825b = true;
                i = a;
            }
        }
        return i;
    }

    /* renamed from: e */
    public void m37012e() {
    }

    /* renamed from: f */
    public void m37011f() {
        if (this.f825b) {
            this.f825b = false;
            m37013d();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        Uri uri2;
        if (!m37020a()) {
            this.f826c = this.f824a.getWritableDatabase();
            this.f826c.beginTransactionWithListener(this);
            try {
                uri2 = m37018a(uri, contentValues);
                if (uri2 != null) {
                    this.f825b = true;
                }
                this.f826c.setTransactionSuccessful();
                this.f826c.endTransaction();
                m37011f();
            } catch (Throwable th) {
                this.f826c.endTransaction();
                throw th;
            }
        } else {
            Uri a = m37018a(uri, contentValues);
            uri2 = a;
            if (a != null) {
                this.f825b = true;
                uri2 = a;
            }
        }
        return uri2;
    }

    @Override // android.database.sqlite.SQLiteTransactionListener
    public void onBegin() {
        m37012e();
    }

    @Override // android.database.sqlite.SQLiteTransactionListener
    public void onCommit() {
        m37015b();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f824a = m37019a(getContext());
        return true;
    }

    @Override // android.database.sqlite.SQLiteTransactionListener
    public void onRollback() {
    }

    /* JADX WARN: Finally extract failed */
    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        int i;
        if (!m37020a()) {
            this.f826c = this.f824a.getWritableDatabase();
            this.f826c.beginTransactionWithListener(this);
            try {
                i = m37017a(uri, contentValues, str, strArr);
                if (i > 0) {
                    this.f825b = true;
                }
                this.f826c.setTransactionSuccessful();
                this.f826c.endTransaction();
                m37011f();
            } catch (Throwable th) {
                this.f826c.endTransaction();
                throw th;
            }
        } else {
            int a = m37017a(uri, contentValues, str, strArr);
            i = a;
            if (a > 0) {
                this.f825b = true;
                i = a;
            }
        }
        return i;
    }
}
