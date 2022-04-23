package p092e.p096e.p097a.p099e0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.text.TextUtils;
import android.util.SparseArray;
import com.callerid.block.bean.EZBlackList;
import com.liulishuo.filedownloader.model.C2774a;
import com.liulishuo.filedownloader.model.FileDownloadModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p092e.p096e.p097a.p099e0.AbstractC3026a;
import p092e.p096e.p097a.p102h0.C3056c;
import p092e.p096e.p097a.p102h0.C3062d;
import p092e.p096e.p097a.p102h0.C3066f;
/* renamed from: e.e.a.e0.d */
/* loaded from: classes2-dex2jar.jar:e/e/a/e0/d.class */
public class C3033d implements AbstractC3026a {

    /* renamed from: a */
    private final SQLiteDatabase f12660a = new C3036e(C3056c.m426a()).getWritableDatabase();

    /* renamed from: e.e.a.e0.d$a */
    /* loaded from: classes2-dex2jar.jar:e/e/a/e0/d$a.class */
    public class C3034a implements AbstractC3026a.AbstractC3027a {

        /* renamed from: b */
        private final SparseArray<FileDownloadModel> f12661b;

        /* renamed from: c */
        private C3035b f12662c;

        /* renamed from: d */
        private final SparseArray<FileDownloadModel> f12663d;

        /* renamed from: e */
        private final SparseArray<List<C2774a>> f12664e;

        C3034a(C3033d dVar) {
            this(null, null);
        }

        C3034a(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<C2774a>> sparseArray2) {
            this.f12661b = new SparseArray<>();
            this.f12663d = sparseArray;
            this.f12664e = sparseArray2;
        }

        @Override // java.lang.Iterable
        public Iterator<FileDownloadModel> iterator() {
            C3035b bVar = new C3035b();
            this.f12662c = bVar;
            return bVar;
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: m */
        public void mo477m(FileDownloadModel fileDownloadModel) {
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: o */
        public void mo476o(FileDownloadModel fileDownloadModel) {
            SparseArray<FileDownloadModel> sparseArray = this.f12663d;
            if (sparseArray != null) {
                sparseArray.put(fileDownloadModel.m1813e(), fileDownloadModel);
            }
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: s */
        public void mo475s() {
            C3035b bVar = this.f12662c;
            if (bVar != null) {
                bVar.m472c();
            }
            int size = this.f12661b.size();
            if (size >= 0) {
                C3033d.this.f12660a.beginTransaction();
                for (int i = 0; i < size; i++) {
                    try {
                        int keyAt = this.f12661b.keyAt(i);
                        FileDownloadModel fileDownloadModel = this.f12661b.get(keyAt);
                        C3033d.this.f12660a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(keyAt)});
                        C3033d.this.f12660a.insert("filedownloader", null, fileDownloadModel.m1818G());
                        if (fileDownloadModel.m1817a() > 1) {
                            List<C2774a> n = C3033d.this.mo487n(keyAt);
                            if (n.size() > 0) {
                                C3033d.this.f12660a.delete("filedownloaderConnection", "id = ?", new String[]{String.valueOf(keyAt)});
                                for (C2774a aVar : n) {
                                    aVar.m1783i(fileDownloadModel.m1813e());
                                    C3033d.this.f12660a.insert("filedownloaderConnection", null, aVar.m1780l());
                                }
                            }
                        }
                    } catch (Throwable th) {
                        C3033d.this.f12660a.endTransaction();
                        throw th;
                    }
                }
                SparseArray<FileDownloadModel> sparseArray = this.f12663d;
                if (!(sparseArray == null || this.f12664e == null)) {
                    int size2 = sparseArray.size();
                    for (int i2 = 0; i2 < size2; i2++) {
                        int e = this.f12663d.valueAt(i2).m1813e();
                        List<C2774a> n2 = C3033d.this.mo487n(e);
                        if (n2 != null && n2.size() > 0) {
                            this.f12664e.put(e, n2);
                        }
                    }
                }
                C3033d.this.f12660a.setTransactionSuccessful();
                C3033d.this.f12660a.endTransaction();
            }
        }

        @Override // p092e.p096e.p097a.p099e0.AbstractC3026a.AbstractC3027a
        /* renamed from: v */
        public void mo474v(int i, FileDownloadModel fileDownloadModel) {
            this.f12661b.put(i, fileDownloadModel);
        }
    }

    /* renamed from: e.e.a.e0.d$b */
    /* loaded from: classes2-dex2jar.jar:e/e/a/e0/d$b.class */
    class C3035b implements Iterator<FileDownloadModel> {

        /* renamed from: b */
        private final Cursor f12666b;

        /* renamed from: c */
        private final List<Integer> f12667c = new ArrayList();

        /* renamed from: d */
        private int f12668d;

        C3035b() {
            this.f12666b = C3033d.this.f12660a.rawQuery("SELECT * FROM filedownloader", null);
        }

        /* renamed from: b */
        public FileDownloadModel next() {
            FileDownloadModel t = C3033d.m481t(this.f12666b);
            this.f12668d = t.m1813e();
            return t;
        }

        /* renamed from: c */
        void m472c() {
            this.f12666b.close();
            if (!this.f12667c.isEmpty()) {
                String join = TextUtils.join(", ", this.f12667c);
                if (C3062d.f12682a) {
                    C3062d.m414a(this, "delete %s", join);
                }
                C3033d.this.f12660a.execSQL(C3066f.m367o("DELETE FROM %s WHERE %s IN (%s);", "filedownloader", EZBlackList.f4115ID, join));
                C3033d.this.f12660a.execSQL(C3066f.m367o("DELETE FROM %s WHERE %s IN (%s);", "filedownloaderConnection", "id", join));
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f12666b.moveToNext();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f12667c.add(Integer.valueOf(this.f12668d));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: t */
    public static FileDownloadModel m481t(Cursor cursor) {
        FileDownloadModel fileDownloadModel = new FileDownloadModel();
        fileDownloadModel.m1796z(cursor.getInt(cursor.getColumnIndex(EZBlackList.f4115ID)));
        fileDownloadModel.m1819F(cursor.getString(cursor.getColumnIndex("url")));
        String string = cursor.getString(cursor.getColumnIndex("path"));
        boolean z = true;
        if (cursor.getShort(cursor.getColumnIndex("pathAsDirectory")) != 1) {
            z = false;
        }
        fileDownloadModel.m1823B(string, z);
        fileDownloadModel.m1821D((byte) cursor.getShort(cursor.getColumnIndex("status")));
        fileDownloadModel.m1822C(cursor.getLong(cursor.getColumnIndex("sofar")));
        fileDownloadModel.m1820E(cursor.getLong(cursor.getColumnIndex("total")));
        fileDownloadModel.m1798x(cursor.getString(cursor.getColumnIndex("errMsg")));
        fileDownloadModel.m1799w(cursor.getString(cursor.getColumnIndex("etag")));
        fileDownloadModel.m1797y(cursor.getString(cursor.getColumnIndex("filename")));
        fileDownloadModel.m1800v(cursor.getInt(cursor.getColumnIndex("connectionCount")));
        return fileDownloadModel;
    }

    /* renamed from: w */
    private void m478w(int i, ContentValues contentValues) {
        this.f12660a.update("filedownloader", contentValues, "_id = ? ", new String[]{String.valueOf(i)});
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: a */
    public void mo500a(int i) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: b */
    public void mo499b(C2774a aVar) {
        this.f12660a.insert("filedownloaderConnection", null, aVar.m1780l());
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: c */
    public void mo498c(int i) {
        SQLiteDatabase sQLiteDatabase = this.f12660a;
        sQLiteDatabase.execSQL("DELETE FROM filedownloaderConnection WHERE id = " + i);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public void clear() {
        this.f12660a.delete("filedownloader", null, null);
        this.f12660a.delete("filedownloaderConnection", null, null);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: d */
    public AbstractC3026a.AbstractC3027a mo497d() {
        return new C3034a(this);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: e */
    public void mo496e(int i, Throwable th) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) 5);
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: f */
    public void mo495f(int i) {
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: g */
    public void mo494g(int i, long j) {
        remove(i);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: h */
    public void mo493h(FileDownloadModel fileDownloadModel) {
        if (fileDownloadModel == null) {
            C3062d.m406i(this, "update but model == null!", new Object[0]);
        } else if (mo486o(fileDownloadModel.m1813e()) != null) {
            this.f12660a.update("filedownloader", fileDownloadModel.m1818G(), "_id = ? ", new String[]{String.valueOf(fileDownloadModel.m1813e())});
        } else {
            m480u(fileDownloadModel);
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: i */
    public void mo492i(int i, Throwable th, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("errMsg", th.toString());
        contentValues.put("status", (Byte) (byte) -1);
        contentValues.put("sofar", Long.valueOf(j));
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: j */
    public void mo491j(int i, String str, long j, long j2, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("sofar", Long.valueOf(j));
        contentValues.put("total", Long.valueOf(j2));
        contentValues.put("etag", str);
        contentValues.put("connectionCount", Integer.valueOf(i2));
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: k */
    public void mo490k(int i, int i2, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("currentOffset", Long.valueOf(j));
        this.f12660a.update("filedownloaderConnection", contentValues, "id = ? AND connectionIndex = ?", new String[]{Integer.toString(i), Integer.toString(i2)});
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: l */
    public void mo489l(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 3);
        contentValues.put("sofar", Long.valueOf(j));
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: m */
    public void mo488m(int i, long j, String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) 2);
        contentValues.put("total", Long.valueOf(j));
        contentValues.put("etag", str);
        contentValues.put("filename", str2);
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: n */
    public List<C2774a> mo487n(int i) {
        ArrayList arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            cursor = this.f12660a.rawQuery(C3066f.m367o("SELECT * FROM %s WHERE %s = ?", "filedownloaderConnection", "id"), new String[]{Integer.toString(i)});
            while (true) {
                cursor = cursor;
                if (!cursor.moveToNext()) {
                    break;
                }
                C2774a aVar = new C2774a();
                aVar.m1783i(i);
                aVar.m1782j(cursor.getInt(cursor.getColumnIndex("connectionIndex")));
                aVar.m1781k(cursor.getLong(cursor.getColumnIndex("startOffset")));
                aVar.m1785g(cursor.getLong(cursor.getColumnIndex("currentOffset")));
                aVar.m1784h(cursor.getLong(cursor.getColumnIndex("endOffset")));
                arrayList.add(aVar);
            }
            return arrayList;
        } finally {
            if (cursor != null) {
                cursor.close();
            }
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: o */
    public FileDownloadModel mo486o(int i) {
        Throwable th;
        Cursor cursor;
        try {
            cursor = this.f12660a.rawQuery(C3066f.m367o("SELECT * FROM %s WHERE %s = ?", "filedownloader", EZBlackList.f4115ID), new String[]{Integer.toString(i)});
        } catch (Throwable th2) {
            th = th2;
            cursor = null;
        }
        try {
            if (cursor.moveToNext()) {
                FileDownloadModel t = m481t(cursor);
                if (cursor != null) {
                    cursor.close();
                }
                return t;
            } else if (cursor == null) {
                return null;
            } else {
                cursor.close();
                return null;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
                cursor.close();
            }
            throw th;
        }
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: p */
    public void mo485p(int i, int i2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("connectionCount", Integer.valueOf(i2));
        this.f12660a.update("filedownloader", contentValues, "_id = ? ", new String[]{Integer.toString(i)});
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    /* renamed from: q */
    public void mo484q(int i, long j) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("status", (Byte) (byte) -2);
        contentValues.put("sofar", Long.valueOf(j));
        m478w(i, contentValues);
    }

    @Override // p092e.p096e.p097a.p099e0.AbstractC3026a
    public boolean remove(int i) {
        boolean z = true;
        if (this.f12660a.delete("filedownloader", "_id = ?", new String[]{String.valueOf(i)}) == 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: u */
    public void m480u(FileDownloadModel fileDownloadModel) {
        this.f12660a.insert("filedownloader", null, fileDownloadModel.m1818G());
    }

    /* renamed from: v */
    public AbstractC3026a.AbstractC3027a m479v(SparseArray<FileDownloadModel> sparseArray, SparseArray<List<C2774a>> sparseArray2) {
        return new C3034a(sparseArray, sparseArray2);
    }
}
