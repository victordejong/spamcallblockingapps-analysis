package com.callapp.contacts.framework.dao;

import android.database.Cursor;
import android.net.Uri;
import android.os.CancellationSignal;
import com.callapp.contacts.framework.dao.column.Column;
import com.callapp.contacts.manager.Singletons;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.task.Task;
import com.callapp.contacts.util.CLog;
import com.callapp.contacts.util.IoUtils;
import com.callapp.framework.util.StringUtils;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/framework/dao/ContentQuery.class */
public class ContentQuery extends BaseWhereSupport<Cursor> {

    /* renamed from: a  reason: collision with root package name */
    public int f14388a;
    private Uri e;
    private Uri.Builder f;
    private CancellationSignal g;

    /* renamed from: c  reason: collision with root package name */
    private final List<String> f14390c = new ArrayList();

    /* renamed from: d  reason: collision with root package name */
    private final StringBuilder f14391d = new StringBuilder();

    /* renamed from: b  reason: collision with root package name */
    public int f14389b = 0;

    public ContentQuery(Uri uri) {
        this.e = uri;
    }

    public static ContentQuery a(Uri uri) {
        return new ContentQuery(uri);
    }

    public static ContentInsert b(Uri uri) {
        return new ContentInsert(uri);
    }

    public static ContentUpdate c(Uri uri) {
        return new ContentUpdate(uri);
    }

    public static ContentDelete d(Uri uri) {
        return new ContentDelete(uri);
    }

    public final ContentQuery a(long j) {
        getUriBuilder().appendEncodedPath(Long.toString(j));
        return this;
    }

    public final ContentQuery a(Column<?> column) {
        this.f14390c.add(column.f14402a);
        return this;
    }

    public final <T> ContentQuery a(Column<T> column, Collection<T> collection) {
        a(true, (Column) column, (Collection) collection);
        return this;
    }

    public final ContentQuery a(String str) {
        getUriBuilder().appendEncodedPath(str);
        return this;
    }

    public final ContentQuery a(String str, boolean z) {
        if (!this.f14390c.contains(StringUtils.i(str, org.apache.commons.lang3.StringUtils.SPACE))) {
            c(str);
        }
        if (this.f14391d.length() != 0) {
            this.f14391d.append(", ");
        }
        this.f14391d.append(str);
        this.f14391d.append(z ? " ASC" : " DESC");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ContentQuery a(Column... columnArr) {
        for (Column column : columnArr) {
            a(column);
        }
        return this;
    }

    public final ContentQuery a(String... strArr) {
        for (String str : strArr) {
            c(str);
        }
        return this;
    }

    public final <T> T a(RowCallback<T> rowCallback, T t) {
        Throwable th;
        this.f14388a = 1;
        Cursor cursor = null;
        try {
            Cursor b2 = b();
            T t2 = null;
            if (b2 != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f14395a = b2;
                    t2 = null;
                    if (b2.moveToNext()) {
                        t2 = rowCallback.onRow(rowContext);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = b2;
                    IoUtils.a(cursor);
                    throw th;
                }
            }
            IoUtils.a(b2);
            return t2 == null ? t : t2;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final <T> Collection<T> a(Collection<T> collection, RowCallback<T> rowCallback) {
        Throwable th;
        Cursor cursor = null;
        try {
            Cursor b2 = b();
            if (b2 != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f14395a = b2;
                    while (b2.moveToNext()) {
                        try {
                            T onRow = rowCallback.onRow(rowContext);
                            if (onRow != null) {
                                collection.add(onRow);
                            }
                        } catch (RuntimeException e) {
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = b2;
                    IoUtils.a(cursor);
                    throw th;
                }
            }
            IoUtils.a(b2);
            return collection;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final <T> List<T> a(RowCallback<T> rowCallback) {
        Throwable th;
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f14395a = cursor;
                    while (cursor.moveToNext()) {
                        T onRow = rowCallback.onRow(rowContext);
                        if (onRow != null) {
                            arrayList.add(onRow);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.a(cursor);
                    throw th;
                }
            }
            IoUtils.a(cursor);
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final boolean a(RowVisitor rowVisitor) {
        Throwable th;
        Cursor cursor = null;
        try {
            cursor = b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f14395a = cursor;
                    do {
                        if (cursor.moveToNext()) {
                            rowVisitor.onRow(rowContext);
                        }
                    } while (!rowContext.f14396b);
                    IoUtils.a(cursor);
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.a(cursor);
                    throw th;
                }
            }
            IoUtils.a(cursor);
            return false;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public final <T> ContentQuery b(Column<T> column, String str, T t) {
        a(column, str, t);
        return this;
    }

    public final ContentQuery b(String str) {
        getUriBuilder().appendPath(str);
        return this;
    }

    public final ContentQuery b(String str, String str2, String str3) {
        a(str, str2, str3);
        return this;
    }

    public final <T> List<T> b(RowCallback<T> rowCallback) {
        return (List) a(new ArrayList(), rowCallback);
    }

    public final ContentQuery c(String str) {
        this.f14390c.add(str);
        return this;
    }

    public final <T> T c(RowCallback<T> rowCallback) {
        Throwable th;
        T onRow;
        Cursor cursor = null;
        try {
            cursor = b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f14395a = cursor;
                    do {
                        if (cursor.moveToNext()) {
                            onRow = rowCallback.onRow(rowContext);
                            if (rowContext.f14396b) {
                                break;
                            }
                        }
                    } while (onRow == null);
                    IoUtils.a(cursor);
                    return onRow;
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.a(cursor);
                    throw th;
                }
            }
            IoUtils.a(cursor);
            return null;
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    final /* synthetic */ Cursor c(String str, String[] strArr) {
        Cursor cursor;
        String str2;
        StringBuilder sb = this.f14391d;
        StringBuilder sb2 = sb;
        if (this.f14388a > 0) {
            if (sb.length() == 0) {
                sb.append("1");
            }
            sb2 = new StringBuilder(sb);
            sb2.append(" LIMIT ");
            sb2.append(this.f14388a);
        }
        String sb3 = sb2.length() > 0 ? sb2.toString() : null;
        List<String> list = this.f14390c;
        String[] strArr2 = (String[]) list.toArray(new String[list.size()]);
        if (this.f14389b > 0) {
            this.g = new CancellationSignal();
            new Task() { // from class: com.callapp.contacts.framework.dao.ContentQuery.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (!ContentQuery.this.g.isCanceled()) {
                        ContentQuery.this.g.cancel();
                    }
                }
            }.schedule(this.f14389b);
        } else {
            this.g = null;
        }
        if (Prefs.n.get().booleanValue()) {
            if (strArr == null || strArr.length <= 0) {
                str2 = "";
            } else {
                String str3 = "whereArgs=[%s";
                for (int i = 0; i < strArr.length - 1; i++) {
                    str3 = str3 + ",%s";
                }
                str2 = String.format(str3 + "]", strArr);
            }
            long currentTimeMillis = System.currentTimeMillis();
            cursor = Singletons.get().getApplication().getContentResolver().query(getUri(), strArr2, str, strArr, sb3, this.g);
            CLog.a(ContentQuery.class, "executeWithWhereClause this=%s whereClause=%s %s time=%s", toString(), str, str2, Long.toString(System.currentTimeMillis() - currentTimeMillis));
        } else {
            cursor = Singletons.get().getApplication().getContentResolver().query(getUri(), strArr2, str, strArr, sb3, this.g);
        }
        return cursor;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    protected final boolean c() {
        if (!isNumTriesOK() || this.f14388a != 1) {
            return false;
        }
        this.f14388a = 0;
        return true;
    }

    public Integer getCount() {
        Cursor cursor;
        Throwable th;
        try {
            cursor = b();
            if (cursor == null) {
                IoUtils.a(cursor);
                return null;
            }
            try {
                int count = cursor.getCount();
                IoUtils.a(cursor);
                return Integer.valueOf(count);
            } catch (RuntimeException e) {
                IoUtils.a(cursor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                IoUtils.a(cursor);
                throw th;
            }
        } catch (RuntimeException e2) {
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    public Uri getUri() {
        Uri.Builder builder = this.f;
        if (builder != null) {
            this.e = builder.build();
            this.f = null;
        }
        return this.e;
    }

    public Uri.Builder getUriBuilder() {
        if (this.f == null) {
            this.f = this.e.buildUpon();
        }
        return this.f;
    }

    public String toString() {
        return "ContentQuery{columns=" + this.f14390c + ", orderBy=" + ((Object) this.f14391d) + ", limit=" + this.f14388a + ", uri=" + this.e + ", uriBuilder=" + this.f + '}';
    }
}
