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

    /* renamed from: a */
    public int f25158a;

    /* renamed from: e */
    private Uri f25162e;

    /* renamed from: f */
    private Uri.Builder f25163f;

    /* renamed from: g */
    private CancellationSignal f25164g;

    /* renamed from: c */
    private final List<String> f25160c = new ArrayList();

    /* renamed from: d */
    private final StringBuilder f25161d = new StringBuilder();

    /* renamed from: b */
    public int f25159b = 0;

    public ContentQuery(Uri uri) {
        this.f25162e = uri;
    }

    /* renamed from: a */
    public static ContentQuery m29028a(Uri uri) {
        return new ContentQuery(uri);
    }

    /* renamed from: b */
    public static ContentInsert m29016b(Uri uri) {
        return new ContentInsert(uri);
    }

    /* renamed from: c */
    public static ContentUpdate m29010c(Uri uri) {
        return new ContentUpdate(uri);
    }

    /* renamed from: d */
    public static ContentDelete m29007d(Uri uri) {
        return new ContentDelete(uri);
    }

    /* renamed from: a */
    public final ContentQuery m29029a(long j) {
        getUriBuilder().appendEncodedPath(Long.toString(j));
        return this;
    }

    /* renamed from: a */
    public final ContentQuery m29023a(Column<?> column) {
        this.f25160c.add(column.f25180a);
        return this;
    }

    /* renamed from: a */
    public final <T> ContentQuery m29022a(Column<T> column, Collection<T> collection) {
        m29034a(true, (Column) column, (Collection) collection);
        return this;
    }

    /* renamed from: a */
    public final ContentQuery m29021a(String str) {
        getUriBuilder().appendEncodedPath(str);
        return this;
    }

    /* renamed from: a */
    public final ContentQuery m29020a(String str, boolean z) {
        if (!this.f25160c.contains(StringUtils.m26021i(str, org.apache.commons.lang3.StringUtils.SPACE))) {
            m29008c(str);
        }
        if (this.f25161d.length() != 0) {
            this.f25161d.append(", ");
        }
        this.f25161d.append(str);
        this.f25161d.append(z ? " ASC" : " DESC");
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: a */
    public final ContentQuery m29018a(Column... columnArr) {
        for (Column column : columnArr) {
            m29023a(column);
        }
        return this;
    }

    /* renamed from: a */
    public final ContentQuery m29017a(String... strArr) {
        for (String str : strArr) {
            m29008c(str);
        }
        return this;
    }

    /* renamed from: a */
    public final <T> T m29025a(RowCallback<T> rowCallback, T t) {
        Cursor cursor;
        Throwable th;
        this.f25158a = 1;
        try {
            Cursor b = m29039b();
            T t2 = null;
            if (b != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f25168a = b;
                    t2 = null;
                    if (b.moveToNext()) {
                        t2 = rowCallback.onRow(rowContext);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursor = b;
                    IoUtils.m27517a(cursor);
                    throw th;
                }
            }
            IoUtils.m27517a(b);
            return t2 == null ? t : t2;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public final <T> Collection<T> m29019a(Collection<T> collection, RowCallback<T> rowCallback) {
        Cursor cursor;
        Throwable th;
        try {
            Cursor b = m29039b();
            if (b != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f25168a = b;
                    while (b.moveToNext()) {
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
                    cursor = b;
                    IoUtils.m27517a(cursor);
                    throw th;
                }
            }
            IoUtils.m27517a(b);
            return collection;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public final <T> List<T> m29026a(RowCallback<T> rowCallback) {
        Cursor cursor;
        Throwable th;
        ArrayList arrayList = new ArrayList();
        try {
            cursor = m29039b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f25168a = cursor;
                    while (cursor.moveToNext()) {
                        T onRow = rowCallback.onRow(rowContext);
                        if (onRow != null) {
                            arrayList.add(onRow);
                        }
                    }
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.m27517a(cursor);
                    throw th;
                }
            }
            IoUtils.m27517a(cursor);
            return arrayList;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: a */
    public final boolean m29024a(RowVisitor rowVisitor) {
        Cursor cursor;
        Throwable th;
        try {
            cursor = m29039b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f25168a = cursor;
                    do {
                        if (cursor.moveToNext()) {
                            rowVisitor.onRow(rowContext);
                        }
                    } while (!rowContext.f25169b);
                    IoUtils.m27517a(cursor);
                    return true;
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.m27517a(cursor);
                    throw th;
                }
            }
            IoUtils.m27517a(cursor);
            return false;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    /* renamed from: b */
    public final <T> ContentQuery m29014b(Column<T> column, String str, T t) {
        m29037a(column, str, t);
        return this;
    }

    /* renamed from: b */
    public final ContentQuery m29013b(String str) {
        getUriBuilder().appendPath(str);
        return this;
    }

    /* renamed from: b */
    public final ContentQuery m29012b(String str, String str2, String str3) {
        m29036a(str, str2, str3);
        return this;
    }

    /* renamed from: b */
    public final <T> List<T> m29015b(RowCallback<T> rowCallback) {
        return (List) m29019a(new ArrayList(), rowCallback);
    }

    /* renamed from: c */
    public final ContentQuery m29008c(String str) {
        this.f25160c.add(str);
        return this;
    }

    /* renamed from: c */
    public final <T> T m29009c(RowCallback<T> rowCallback) {
        Cursor cursor;
        Throwable th;
        T onRow;
        try {
            cursor = m29039b();
            if (cursor != null) {
                try {
                    RowContext rowContext = new RowContext();
                    rowContext.f25168a = cursor;
                    do {
                        if (cursor.moveToNext()) {
                            onRow = rowCallback.onRow(rowContext);
                            if (rowContext.f25169b) {
                                break;
                            }
                        }
                    } while (onRow == null);
                    IoUtils.m27517a(cursor);
                    return onRow;
                } catch (Throwable th2) {
                    th = th2;
                    IoUtils.m27517a(cursor);
                    throw th;
                }
            }
            IoUtils.m27517a(cursor);
            return null;
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // com.callapp.contacts.framework.dao.BaseWhereSupport
    /* renamed from: c */
    final /* synthetic */ Cursor mo29004c(String str, String[] strArr) {
        Cursor cursor;
        String str2;
        StringBuilder sb = this.f25161d;
        StringBuilder sb2 = sb;
        if (this.f25158a > 0) {
            if (sb.length() == 0) {
                sb.append("1");
            }
            sb2 = new StringBuilder(sb);
            sb2.append(" LIMIT ");
            sb2.append(this.f25158a);
        }
        String sb3 = sb2.length() > 0 ? sb2.toString() : null;
        List<String> list = this.f25160c;
        String[] strArr2 = (String[]) list.toArray(new String[list.size()]);
        if (this.f25159b > 0) {
            this.f25164g = new CancellationSignal();
            new Task() { // from class: com.callapp.contacts.framework.dao.ContentQuery.1
                @Override // com.callapp.contacts.manager.task.Task
                public void doTask() {
                    if (!ContentQuery.this.f25164g.isCanceled()) {
                        ContentQuery.this.f25164g.cancel();
                    }
                }
            }.schedule(this.f25159b);
        } else {
            this.f25164g = null;
        }
        if (Prefs.f26657n.get().booleanValue()) {
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
            Cursor query = Singletons.get().getApplication().getContentResolver().query(getUri(), strArr2, str, strArr, sb3, this.f25164g);
            CLog.m27610a(ContentQuery.class, "executeWithWhereClause this=%s whereClause=%s %s time=%s", toString(), str, str2, Long.toString(System.currentTimeMillis() - currentTimeMillis));
            cursor = query;
        } else {
            cursor = Singletons.get().getApplication().getContentResolver().query(getUri(), strArr2, str, strArr, sb3, this.f25164g);
        }
        return cursor;
    }

    @Override // com.callapp.contacts.framework.dao.BaseStatement
    /* renamed from: c */
    protected final boolean mo29011c() {
        if (isNumTriesOK() && this.f25158a == 1) {
            this.f25158a = 0;
            return true;
        }
        return false;
    }

    public Integer getCount() {
        Cursor cursor;
        Throwable th;
        try {
            cursor = m29039b();
            if (cursor == null) {
                IoUtils.m27517a(cursor);
                return null;
            }
            try {
                int count = cursor.getCount();
                IoUtils.m27517a(cursor);
                return Integer.valueOf(count);
            } catch (RuntimeException e) {
                IoUtils.m27517a(cursor);
                return null;
            } catch (Throwable th2) {
                th = th2;
                IoUtils.m27517a(cursor);
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
        Uri.Builder builder = this.f25163f;
        if (builder != null) {
            this.f25162e = builder.build();
            this.f25163f = null;
        }
        return this.f25162e;
    }

    public Uri.Builder getUriBuilder() {
        if (this.f25163f == null) {
            this.f25163f = this.f25162e.buildUpon();
        }
        return this.f25163f;
    }

    public String toString() {
        return "ContentQuery{columns=" + this.f25160c + ", orderBy=" + ((Object) this.f25161d) + ", limit=" + this.f25158a + ", uri=" + this.f25162e + ", uriBuilder=" + this.f25163f + '}';
    }
}
