package p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.mopub.common.Constants;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p1727n3.p1789g0.C26232y;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1599d1.AbstractC24250b;
import p193e.p1577m.p1578a.p1596c.p1599d1.C24249a;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24773d0;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24774e;
import p193e.p1577m.p1578a.p1596c.p1636q1.C24802w;
/* renamed from: e.m.a.c.p1.h0.o */
/* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/o.class */
public class C24723o {

    /* renamed from: a */
    public final HashMap<String, C24722n> f69281a;

    /* renamed from: b */
    public final SparseArray<String> f69282b;

    /* renamed from: c */
    public final SparseBooleanArray f69283c;

    /* renamed from: d */
    public final SparseBooleanArray f69284d;

    /* renamed from: e */
    public AbstractC24726c f69285e;

    /* renamed from: f */
    public AbstractC24726c f69286f;

    /* renamed from: e.m.a.c.p1.h0.o$a */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/o$a.class */
    public static final class C24724a implements AbstractC24726c {

        /* renamed from: e */
        public static final String[] f69287e = {"id", AnalyticsConstants.KEY, "metadata"};

        /* renamed from: a */
        public final AbstractC24250b f69288a;

        /* renamed from: b */
        public final SparseArray<C24722n> f69289b = new SparseArray<>();

        /* renamed from: c */
        public String f69290c;

        /* renamed from: d */
        public String f69291d;

        public C24724a(AbstractC24250b abstractC24250b) {
            this.f69288a = abstractC24250b;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: a */
        public boolean mo4730a() throws C24249a {
            boolean z = true;
            if (C26232y.m2451J0(this.f69288a.getReadableDatabase(), 1, this.f69290c) == -1) {
                z = false;
            }
            return z;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: b */
        public void mo4729b() throws C24249a {
            AbstractC24250b abstractC24250b = this.f69288a;
            String str = this.f69290c;
            try {
                String str2 = "ExoPlayerCacheIndex" + str;
                SQLiteDatabase writableDatabase = abstractC24250b.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    if (C26232y.m2394X1(writableDatabase, "ExoPlayerVersions")) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", new String[]{Integer.toString(1), str});
                    }
                    writableDatabase.execSQL("DROP TABLE IF EXISTS " + str2);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e) {
                    throw new C24249a(e);
                }
            } catch (SQLException e2) {
                throw new C24249a(e2);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: c */
        public void mo4728c(long j) {
            String hexString = Long.toHexString(j);
            this.f69290c = hexString;
            this.f69291d = C22128a.m8543z2("ExoPlayerCacheIndex", hexString);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: d */
        public void mo4727d(HashMap<String, C24722n> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.f69288a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                m4733j(writableDatabase);
                for (C24722n c24722n : hashMap.values()) {
                    m4734i(writableDatabase, c24722n);
                }
                writableDatabase.setTransactionSuccessful();
                this.f69289b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new C24249a(e);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: e */
        public void mo4726e(C24722n c24722n, boolean z) {
            if (z) {
                this.f69289b.delete(c24722n.f69276a);
            } else {
                this.f69289b.put(c24722n.f69276a, null);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: f */
        public void mo4725f(HashMap<String, C24722n> hashMap) throws IOException {
            if (this.f69289b.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f69288a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.f69289b.size(); i++) {
                    C24722n valueAt = this.f69289b.valueAt(i);
                    if (valueAt == null) {
                        writableDatabase.delete(this.f69291d, "id = ?", new String[]{Integer.toString(this.f69289b.keyAt(i))});
                    } else {
                        m4734i(writableDatabase, valueAt);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f69289b.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new C24249a(e);
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: g */
        public void mo4724g(C24722n c24722n) {
            this.f69289b.put(c24722n.f69276a, c24722n);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: h */
        public void mo4723h(HashMap<String, C24722n> hashMap, SparseArray<String> sparseArray) throws IOException {
            C26232y.m2286x(this.f69289b.size() == 0);
            try {
                if (C26232y.m2451J0(this.f69288a.getReadableDatabase(), 1, this.f69290c) != 1) {
                    SQLiteDatabase writableDatabase = this.f69288a.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    m4733j(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor query = this.f69288a.getReadableDatabase().query(this.f69291d, f69287e, null, null, null, null, null);
                while (query.moveToNext()) {
                    int i = query.getInt(0);
                    String string = query.getString(1);
                    C24722n c24722n = new C24722n(i, string, C24723o.m4741a(new DataInputStream(new ByteArrayInputStream(query.getBlob(2)))));
                    hashMap.put(string, c24722n);
                    sparseArray.put(c24722n.f69276a, c24722n.f69277b);
                }
                query.close();
            } catch (SQLiteException e) {
                hashMap.clear();
                sparseArray.clear();
                throw new C24249a(e);
            }
        }

        /* renamed from: i */
        public final void m4734i(SQLiteDatabase sQLiteDatabase, C24722n c24722n) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C24723o.m4740b(c24722n.f69279d, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(c24722n.f69276a));
            contentValues.put(AnalyticsConstants.KEY, c24722n.f69277b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow(this.f69291d, null, contentValues);
        }

        /* renamed from: j */
        public final void m4733j(SQLiteDatabase sQLiteDatabase) throws C24249a {
            C26232y.m2410T1(sQLiteDatabase, 1, this.f69290c, 1);
            String str = this.f69291d;
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS " + str);
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f69291d + StringConstant.SPACE + "(id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }
    }

    /* renamed from: e.m.a.c.p1.h0.o$b */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/o$b.class */
    public static class C24725b implements AbstractC24726c {

        /* renamed from: a */
        public final boolean f69292a;

        /* renamed from: b */
        public final Cipher f69293b;

        /* renamed from: c */
        public final SecretKeySpec f69294c;

        /* renamed from: d */
        public final Random f69295d;

        /* renamed from: e */
        public final C24774e f69296e;

        /* renamed from: f */
        public boolean f69297f;

        /* renamed from: g */
        public C24802w f69298g;

        public C24725b(File file, byte[] bArr, boolean z) {
            Cipher cipher;
            SecretKeySpec secretKeySpec;
            if (bArr != null) {
                C26232y.m2310r(bArr.length == 16);
                try {
                    if (C24773d0.f69427a == 18) {
                        try {
                            cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
                        } catch (Throwable th) {
                        }
                        secretKeySpec = new SecretKeySpec(bArr, "AES");
                    }
                    cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                C26232y.m2310r(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f69292a = z;
            this.f69293b = cipher;
            this.f69294c = secretKeySpec;
            this.f69295d = z ? new Random() : null;
            this.f69296e = new C24774e(file);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: a */
        public boolean mo4730a() {
            return this.f69296e.m4597a();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: b */
        public void mo4729b() {
            C24774e c24774e = this.f69296e;
            c24774e.f69439a.delete();
            c24774e.f69440b.delete();
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: c */
        public void mo4728c(long j) {
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: d */
        public void mo4727d(HashMap<String, C24722n> hashMap) throws IOException {
            Throwable th;
            DataOutputStream dataOutputStream;
            DataOutputStream dataOutputStream2 = null;
            try {
                OutputStream m4595c = this.f69296e.m4595c();
                C24802w c24802w = this.f69298g;
                if (c24802w == null) {
                    this.f69298g = new C24802w(m4595c);
                } else {
                    c24802w.m4507b(m4595c);
                }
                dataOutputStream = new DataOutputStream(this.f69298g);
                dataOutputStream2 = dataOutputStream;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                dataOutputStream.writeInt(2);
                dataOutputStream.writeInt(this.f69292a ? 1 : 0);
                DataOutputStream dataOutputStream3 = dataOutputStream;
                if (this.f69292a) {
                    byte[] bArr = new byte[16];
                    this.f69295d.nextBytes(bArr);
                    dataOutputStream.write(bArr);
                    try {
                        this.f69293b.init(1, this.f69294c, new IvParameterSpec(bArr));
                        dataOutputStream.flush();
                        dataOutputStream3 = new DataOutputStream(new CipherOutputStream(this.f69298g, this.f69293b));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                        throw new IllegalStateException(e);
                    }
                }
                DataOutputStream dataOutputStream4 = dataOutputStream3;
                dataOutputStream3.writeInt(hashMap.size());
                DataOutputStream dataOutputStream5 = dataOutputStream3;
                int i = 0;
                for (C24722n c24722n : hashMap.values()) {
                    DataOutputStream dataOutputStream6 = dataOutputStream3;
                    DataOutputStream dataOutputStream7 = dataOutputStream3;
                    dataOutputStream3.writeInt(c24722n.f69276a);
                    DataOutputStream dataOutputStream8 = dataOutputStream3;
                    dataOutputStream3.writeUTF(c24722n.f69277b);
                    DataOutputStream dataOutputStream9 = dataOutputStream3;
                    C24723o.m4740b(c24722n.f69279d, dataOutputStream3);
                    DataOutputStream dataOutputStream10 = dataOutputStream3;
                    i += m4732i(c24722n, 2);
                }
                dataOutputStream3.writeInt(i);
                DataOutputStream dataOutputStream11 = dataOutputStream3;
                C24774e c24774e = this.f69296e;
                DataOutputStream dataOutputStream12 = dataOutputStream3;
                Objects.requireNonNull(c24774e);
                DataOutputStream dataOutputStream13 = dataOutputStream3;
                dataOutputStream3.close();
                DataOutputStream dataOutputStream14 = dataOutputStream3;
                c24774e.f69440b.delete();
                int i2 = C24773d0.f69427a;
                this.f69297f = false;
            } catch (Throwable th3) {
                th = th3;
                int i3 = C24773d0.f69427a;
                if (dataOutputStream2 != null) {
                    try {
                        dataOutputStream2.close();
                    } catch (IOException e2) {
                    }
                }
                throw th;
            }
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: e */
        public void mo4726e(C24722n c24722n, boolean z) {
            this.f69297f = true;
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: f */
        public void mo4725f(HashMap<String, C24722n> hashMap) throws IOException {
            if (!this.f69297f) {
                return;
            }
            mo4727d(hashMap);
        }

        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: g */
        public void mo4724g(C24722n c24722n) {
            this.f69297f = true;
        }

        /* JADX WARN: Removed duplicated region for block: B:108:0x0287  */
        /* JADX WARN: Removed duplicated region for block: B:128:? A[RETURN, SYNTHETIC] */
        @Override // p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.AbstractC24726c
        /* renamed from: h */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo4723h(java.util.HashMap<java.lang.String, p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24722n> r6, android.util.SparseArray<java.lang.String> r7) {
            /*
                Method dump skipped, instructions count: 704
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p193e.p1577m.p1578a.p1596c.p1634p1.p1635h0.C24723o.C24725b.mo4723h(java.util.HashMap, android.util.SparseArray):void");
        }

        /* renamed from: i */
        public final int m4732i(C24722n c24722n, int i) {
            int i2;
            int i3;
            int hashCode = c24722n.f69277b.hashCode() + (c24722n.f69276a * 31);
            if (i < 2) {
                long m4722a = C24727p.m4722a(c24722n.f69279d);
                i2 = hashCode * 31;
                i3 = (int) (m4722a ^ (m4722a >>> 32));
            } else {
                i2 = hashCode * 31;
                i3 = c24722n.f69279d.hashCode();
            }
            return i2 + i3;
        }

        /* renamed from: j */
        public final C24722n m4731j(int i, DataInputStream dataInputStream) throws IOException {
            C24730s c24730s;
            int readInt = dataInputStream.readInt();
            String readUTF = dataInputStream.readUTF();
            if (i < 2) {
                long readLong = dataInputStream.readLong();
                C24729r c24729r = new C24729r();
                C24729r.m4721a(c24729r, readLong);
                c24730s = C24730s.f69301c.m4720a(c24729r);
            } else {
                c24730s = C24723o.m4741a(dataInputStream);
            }
            return new C24722n(readInt, readUTF, c24730s);
        }
    }

    /* renamed from: e.m.a.c.p1.h0.o$c */
    /* loaded from: classes2-dex2jar.jar:e/m/a/c/p1/h0/o$c.class */
    public interface AbstractC24726c {
        /* renamed from: a */
        boolean mo4730a() throws IOException;

        /* renamed from: b */
        void mo4729b() throws IOException;

        /* renamed from: c */
        void mo4728c(long j);

        /* renamed from: d */
        void mo4727d(HashMap<String, C24722n> hashMap) throws IOException;

        /* renamed from: e */
        void mo4726e(C24722n c24722n, boolean z);

        /* renamed from: f */
        void mo4725f(HashMap<String, C24722n> hashMap) throws IOException;

        /* renamed from: g */
        void mo4724g(C24722n c24722n);

        /* renamed from: h */
        void mo4723h(HashMap<String, C24722n> hashMap, SparseArray<String> sparseArray) throws IOException;
    }

    public C24723o(AbstractC24250b abstractC24250b, File file, byte[] bArr, boolean z, boolean z2) {
        C26232y.m2286x((abstractC24250b == null && file == null) ? false : true);
        this.f69281a = new HashMap<>();
        this.f69282b = new SparseArray<>();
        this.f69283c = new SparseBooleanArray();
        this.f69284d = new SparseBooleanArray();
        C24725b c24725b = null;
        C24724a c24724a = abstractC24250b != null ? new C24724a(abstractC24250b) : null;
        c24725b = file != null ? new C24725b(new File(file, "cached_content_index.exi"), bArr, z) : c24725b;
        if (c24724a == null || (c24725b != null && z2)) {
            this.f69285e = c24725b;
            this.f69286f = c24724a;
            return;
        }
        this.f69285e = c24724a;
        this.f69286f = c24725b;
    }

    /* renamed from: a */
    public static C24730s m4741a(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 < 0) {
                throw new IOException(C22128a.m8611i2("Invalid value size: ", readInt2));
            }
            int min = Math.min(readInt2, (int) Constants.TEN_MB);
            byte[] bArr = C24773d0.f69432f;
            int i2 = 0;
            while (true) {
                int i3 = i2;
                if (i3 != readInt2) {
                    int i4 = i3 + min;
                    bArr = Arrays.copyOf(bArr, i4);
                    dataInputStream.readFully(bArr, i3, min);
                    min = Math.min(readInt2 - i4, (int) Constants.TEN_MB);
                    i2 = i4;
                }
            }
            hashMap.put(readUTF, bArr);
        }
        return new C24730s(hashMap);
    }

    /* renamed from: b */
    public static void m4740b(C24730s c24730s, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> entrySet = c24730s.f69303b.entrySet();
        dataOutputStream.writeInt(entrySet.size());
        for (Map.Entry<String, byte[]> entry : entrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    /* renamed from: c */
    public C24722n m4739c(String str) {
        return this.f69281a.get(str);
    }

    /* renamed from: d */
    public C24722n m4738d(String str) {
        C24722n c24722n = this.f69281a.get(str);
        C24722n c24722n2 = c24722n;
        if (c24722n == null) {
            SparseArray<String> sparseArray = this.f69282b;
            int size = sparseArray.size();
            int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
            int i = keyAt;
            if (keyAt < 0) {
                int i2 = 0;
                while (i2 < size && i2 == sparseArray.keyAt(i2)) {
                    i2++;
                }
                i = i2;
            }
            c24722n2 = new C24722n(i, str, C24730s.f69301c);
            this.f69281a.put(str, c24722n2);
            this.f69282b.put(i, str);
            this.f69284d.put(i, true);
            this.f69285e.mo4724g(c24722n2);
        }
        return c24722n2;
    }

    /* renamed from: e */
    public void m4737e(long j) throws IOException {
        AbstractC24726c abstractC24726c;
        this.f69285e.mo4728c(j);
        AbstractC24726c abstractC24726c2 = this.f69286f;
        if (abstractC24726c2 != null) {
            abstractC24726c2.mo4728c(j);
        }
        if (this.f69285e.mo4730a() || (abstractC24726c = this.f69286f) == null || !abstractC24726c.mo4730a()) {
            this.f69285e.mo4723h(this.f69281a, this.f69282b);
        } else {
            this.f69286f.mo4723h(this.f69281a, this.f69282b);
            this.f69285e.mo4727d(this.f69281a);
        }
        AbstractC24726c abstractC24726c3 = this.f69286f;
        if (abstractC24726c3 != null) {
            abstractC24726c3.mo4729b();
            this.f69286f = null;
        }
    }

    /* renamed from: f */
    public void m4736f(String str) {
        C24722n c24722n = this.f69281a.get(str);
        if (c24722n == null || !c24722n.f69278c.isEmpty() || c24722n.f69280e) {
            return;
        }
        this.f69281a.remove(str);
        int i = c24722n.f69276a;
        boolean z = this.f69284d.get(i);
        this.f69285e.mo4726e(c24722n, z);
        if (z) {
            this.f69282b.remove(i);
            this.f69284d.delete(i);
            return;
        }
        this.f69282b.put(i, null);
        this.f69283c.put(i, true);
    }

    /* renamed from: g */
    public void m4735g() throws IOException {
        this.f69285e.mo4725f(this.f69281a);
        int size = this.f69283c.size();
        for (int i = 0; i < size; i++) {
            this.f69282b.remove(this.f69283c.keyAt(i));
        }
        this.f69283c.clear();
        this.f69284d.clear();
    }
}
