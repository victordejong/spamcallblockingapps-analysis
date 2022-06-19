package p078c.p122d.p123a.p125f0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.SparseArray;
import com.liulishuo.filedownloader.model.C9379a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p078c.p122d.p123a.p125f0.AbstractC2003a;
import p078c.p122d.p123a.p128i0.C2031c;
import p078c.p122d.p123a.p128i0.C2036d;
import p078c.p122d.p123a.p128i0.C2040f;
/* renamed from: c.d.a.f0.d */
/* loaded from: classes2-dex2jar.jar:c/d/a/f0/d.class */
public class C2010d implements AbstractC2003a {

    /* renamed from: a */
    private final SQLiteDatabase f7129a = new C2013e(C2031c.m28262a()).getWritableDatabase();

    /* renamed from: c.d.a.f0.d$a */
    /* loaded from: classes2-dex2jar.jar:c/d/a/f0/d$a.class */
    public class C2011a implements AbstractC2003a.AbstractC2004a {

        /* renamed from: d */
        private final SparseArray<FileDownloadModel> f7130d;

        /* renamed from: e */
        private C2012b f7131e;

        /* renamed from: f */
        private final SparseArray<FileDownloadModel> f7132f;

        /* renamed from: g */
        private final SparseArray<List<C9379a>> f7133g;

        C2011a(C2010d c2010d) {
            this(null, null);
        }

        C2011a(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<C9379a>> sparseArray2) {
            C2010d.this = r5;
            this.f7130d = new SparseArray<>();
            this.f7132f = sparseArray;
            this.f7133g = sparseArray2;
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: E */
        public void mo28301E(int i, FileDownloadModel fileDownloadModel) {
            this.f7130d.put(i, fileDownloadModel);
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: Y */
        public void mo28300Y() {
            C2012b c2012b = this.f7131e;
            if (c2012b != null) {
                c2012b.m28296b();
            }
            int size = this.f7130d.size();
            if (size < 0) {
                return;
            }
            C2010d.this.f7129a.beginTransaction();
            for (int i = 0; i < size; i++) {
                try {
                    int keyAt = this.f7130d.keyAt(i);
                    FileDownloadModel fileDownloadModel = this.f7130d.get(keyAt);
                    C2010d.this.f7129a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(keyAt)});
                    C2010d.this.f7129a.insert("filedownloader", null, fileDownloadModel.m864E());
                    if (fileDownloadModel.m863a() > 1) {
                        List<C9379a> mo28311n = C2010d.this.mo28311n(keyAt);
                        if (mo28311n.size() > 0) {
                            C2010d.this.f7129a.delete("filedownloaderConnection", "id = ?", new String[]{String.valueOf(keyAt)});
                            for (C9379a c9379a : mo28311n) {
                                c9379a.m828i(fileDownloadModel.m859e());
                                C2010d.this.f7129a.insert("filedownloaderConnection", null, c9379a.m825l());
                            }
                        }
                    }
                } finally {
                    C2010d.this.f7129a.endTransaction();
                }
            }
            SparseArray<FileDownloadModel> sparseArray = this.f7132f;
            if (sparseArray != null && this.f7133g != null) {
                int size2 = sparseArray.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    int m859e = this.f7132f.valueAt(i2).m859e();
                    List<C9379a> mo28311n2 = C2010d.this.mo28311n(m859e);
                    if (mo28311n2 != null && mo28311n2.size() > 0) {
                        this.f7133g.put(m859e, mo28311n2);
                    }
                }
            }
            C2010d.this.f7129a.setTransactionSuccessful();
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            C2012b c2012b = new C2012b();
            this.f7131e = c2012b;
            return c2012b;
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: u */
        public void mo28299u(FileDownloadModel fileDownloadModel) {
        }

        @Override // p078c.p122d.p123a.p125f0.AbstractC2003a.AbstractC2004a
        /* renamed from: z */
        public void mo28298z(FileDownloadModel fileDownloadModel) {
            SparseArray<FileDownloadModel> sparseArray = this.f7132f;
            if (sparseArray != null) {
                sparseArray.put(fileDownloadModel.m859e(), fileDownloadModel);
            }
        }
    }

    /* renamed from: c.d.a.f0.d$b */
    /* loaded from: classes2-dex2jar.jar:c/d/a/f0/d$b.class */
    class C2012b implements Iterator<FileDownloadModel> {

        /* renamed from: d */
        private final Cursor f7135d;

        /* renamed from: e */
        private final List<Integer> f7136e = new ArrayList();

        /* renamed from: f */
        private int f7137f;

        C2012b() {
            C2010d.this = r6;
            this.f7135d = r6.f7129a.rawQuery("SELECT * FROM filedownloader", null);
        }

        /* renamed from: a */
        public FileDownloadModel next() {
            FileDownloadModel m28305t = C2010d.m28305t(this.f7135d);
            this.f7137f = m28305t.m859e();
            return m28305t;
        }

        /* renamed from: b */
        void m28296b() {
            this.f7135d.close();
            if (!this.f7136e.isEmpty()) {
                String join = TextUtils.join(", ", this.f7136e);
                if (C2036d.f7151a) {
                    C2036d.m28253a(this, "delete %s", join);
                }
                C2010d.this.f7129a.execSQL(C2040f.m28206o("DELETE FROM %s WHERE %s IN (%s);", "filedownloader", "_id", join));
                C2010d.this.f7129a.execSQL(C2040f.m28206o("DELETE FROM %s WHERE %s IN (%s);", "filedownloaderConnection", "id", join));
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f7135d.moveToNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f7136e.add(Integer.valueOf(this.f7137f));
        }
    }

    /* renamed from: t */
    public static FileDownloadModel m28305t(Cursor cursor) {
        FileDownloadModel fileDownloadModel = new FileDownloadModel();
        fileDownloadModel.m842x(cursor.getInt(cursor.getColumnIndex("_id")));
        fileDownloadModel.m865D(cursor.getString(cursor.getColumnIndex("url")));
        String string = cursor.getString(cursor.getColumnIndex("path"));
        boolean z = true;
        if (cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) != 1) {
            z = false;
        }
        fileDownloadModel.m841z(string, z);
        fileDownloadModel.m867B((byte) cursor.getShort(cursor.getColumnIndex("status")));
        fileDownloadModel.m868A(cursor.getLong(cursor.getColumnIndex("sofar")));
        fileDownloadModel.m866C(cursor.getLong(cursor.getColumnIndex("total")));
        fileDownloadModel.m844v(cursor.getString(cursor.getColumnIndex("errMsg")));
        fileDownloadModel.m845u(cursor.getString(cursor.getColumnIndex("etag")));
        fileDownloadModel.m843w(cursor.getString(cursor.getColumnIndex("filename")));
        fileDownloadModel.m846t(cursor.getInt(cursor.getColumnIndex("connectionCount")));
        return fileDownloadModel;
    }

    /* renamed from: w */
    private void m28302w(int i, ContentValues contentValues) {
        this.f7129a.update("filedownloader", contentValues, "_id = ? ", new String[]{String.valueOf(i)});
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: a */
    public void mo28324a(int i) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: b */
    public AbstractC2003a.AbstractC2004a mo28323b() {
        return new C2011a(this);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: c */
    public void mo28322c(int i, Throwable th) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) 5);
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public void clear() {
        this.f7129a.delete("filedownloader", null, null);
        this.f7129a.delete("filedownloaderConnection", null, null);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: d */
    public void mo28321d(int i, long j) {
        remove(i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: e */
    public void mo28320e(int i, String str, long j, long j2, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j));
        contentValues.put("total", Long.valueOf(j2));
        contentValues.put("etag", str);
        contentValues.put("connectionCount", Integer.valueOf(i2));
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: f */
    public void mo28319f(int i, int i2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j));
        this.f7129a.update("filedownloaderConnection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2)});
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: g */
    public void mo28318g(C9379a c9379a) {
        this.f7129a.insert("filedownloaderConnection", null, c9379a.m825l());
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: h */
    public void mo28317h(int i) {
        SQLiteDatabase sQLiteDatabase = this.f7129a;
        sQLiteDatabase.execSQL("DELETE FROM filedownloaderConnection WHERE id = " + i);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: i */
    public void mo28316i(int i) {
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: j */
    public void mo28315j(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            C2036d.m28245i(this, "update but model == null!", new Object[0]);
        } else if (mo28310o(fileDownloadModel.m859e()) == null) {
            m28304u(fileDownloadModel);
        } else {
            this.f7129a.update("filedownloader", fileDownloadModel.m864E(), "_id = ? ", new String[]{String.valueOf(fileDownloadModel.m859e())});
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: k */
    public void mo28314k(int i, Throwable th, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) -1);
        contentValues.put("sofar", Long.valueOf(j));
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: l */
    public void mo28313l(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 3);
        contentValues.put("sofar", Long.valueOf(j));
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: m */
    public void mo28312m(int i, long j, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 2);
        contentValues.put("total", Long.valueOf(j));
        contentValues.put("etag", str);
        contentValues.put("filename", str2);
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: n */
    public List<C9379a> mo28311n(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            Cursor rawQuery = this.f7129a.rawQuery(C2040f.m28206o("SELECT * FROM %s WHERE %s = ?", "filedownloaderConnection", "id"), new String[]{Integer.toString(i)});
            while (true) {
                cursor = rawQuery;
                if (!rawQuery.moveToNext()) {
                    rawQuery.close();
                    return arrayList;
                }
                C9379a c9379a = new C9379a();
                c9379a.m828i(i);
                c9379a.m827j(rawQuery.getInt(rawQuery.getColumnIndex("connectionIndex")));
                c9379a.m826k(rawQuery.getLong(rawQuery.getColumnIndex("startOffset")));
                c9379a.m830g(rawQuery.getLong(rawQuery.getColumnIndex("currentOffset")));
                c9379a.m829h(rawQuery.getLong(rawQuery.getColumnIndex("endOffset")));
                arrayList.add(c9379a);
            }
        } catch (Throwable th) {
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: o */
    public FileDownloadModel mo28310o(int i) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = this.f7129a.rawQuery(C2040f.m28206o("SELECT * FROM %s WHERE %s = ?", "filedownloader", "_id"), new String[]{Integer.toString(i)});
            try {
                if (!cursor.moveToNext()) {
                    cursor.close();
                    return null;
                }
                FileDownloadModel m28305t = m28305t(cursor);
                cursor.close();
                return m28305t;
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            cursor = null;
        }
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: p */
    public void mo28309p(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i2));
        this.f7129a.update("filedownloader", contentValues, "_id = ? ", new String[]{Integer.toString(i)});
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    /* renamed from: q */
    public void mo28308q(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) -2);
        contentValues.put("sofar", Long.valueOf(j));
        m28302w(i, contentValues);
    }

    @Override // p078c.p122d.p123a.p125f0.AbstractC2003a
    public boolean remove(int i) {
        boolean z = true;
        if (this.f7129a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(i)}) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public void m28304u(FileDownloadModel fileDownloadModel) {
        this.f7129a.insert("filedownloader", null, fileDownloadModel.m864E());
    }

    /* renamed from: v */
    public AbstractC2003a.AbstractC2004a m28303v(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<C9379a>> sparseArray2) {
        return new C2011a(sparseArray, sparseArray2);
    }
}
