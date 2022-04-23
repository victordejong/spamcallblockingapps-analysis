package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.upstream.cache.j;
import com.google.android.exoplayer2.util.af;
import com.google.android.exoplayer2.util.x;
import com.google.common.collect.ay;
import com.google.common.collect.z;
import com.mopub.common.Constants;
import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.Key;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i.class */
public final class i {

    /* renamed from: a  reason: collision with root package name */
    final HashMap<String, h> f22166a;

    /* renamed from: b  reason: collision with root package name */
    final SparseArray<String> f22167b;

    /* renamed from: c  reason: collision with root package name */
    c f22168c;

    /* renamed from: d  reason: collision with root package name */
    c f22169d;
    private final SparseBooleanArray e;
    private final SparseBooleanArray f;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$a.class */
    static final class a implements c {

        /* renamed from: a  reason: collision with root package name */
        private static final String[] f22170a = {"id", "key", "metadata"};

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.exoplayer2.database.a f22171b;

        /* renamed from: c  reason: collision with root package name */
        private final SparseArray<h> f22172c = new SparseArray<>();

        /* renamed from: d  reason: collision with root package name */
        private String f22173d;
        private String e;

        public a(com.google.android.exoplayer2.database.a aVar) {
            this.f22171b = aVar;
        }

        private static String a(String str) {
            return "ExoPlayerCacheIndex".concat(String.valueOf(str));
        }

        private void a(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            com.google.android.exoplayer2.database.c.a(sQLiteDatabase, 1, (String) com.google.android.exoplayer2.util.a.b(this.f22173d));
            a(sQLiteDatabase, (String) com.google.android.exoplayer2.util.a.b(this.e));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.e + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        private void a(SQLiteDatabase sQLiteDatabase, h hVar) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            i.a(hVar.e, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(hVar.f22160a));
            contentValues.put("key", hVar.f22161b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((String) com.google.android.exoplayer2.util.a.b(this.e), null, contentValues);
        }

        private static void a(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(String.valueOf(str)));
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(long j) {
            String hexString = Long.toHexString(j);
            this.f22173d = hexString;
            this.e = a(hexString);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(h hVar) {
            this.f22172c.put(hVar.f22160a, hVar);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(h hVar, boolean z) {
            if (z) {
                this.f22172c.delete(hVar.f22160a);
            } else {
                this.f22172c.put(hVar.f22160a, null);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(HashMap<String, h> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.f22171b.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                a(writableDatabase);
                for (h hVar : hashMap.values()) {
                    a(writableDatabase, hVar);
                }
                writableDatabase.setTransactionSuccessful();
                this.f22172c.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(HashMap<String, h> hashMap, SparseArray<String> sparseArray) throws IOException {
            com.google.android.exoplayer2.util.a.b(this.f22172c.size() == 0);
            try {
                if (com.google.android.exoplayer2.database.c.b(this.f22171b.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.b(this.f22173d)) != 1) {
                    SQLiteDatabase writableDatabase = this.f22171b.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    a(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor query = this.f22171b.getReadableDatabase().query((String) com.google.android.exoplayer2.util.a.b(this.e), f22170a, null, null, null, null, null);
                while (query.moveToNext()) {
                    h hVar = new h(query.getInt(0), query.getString(1), i.a(new DataInputStream(new ByteArrayInputStream(query.getBlob(2)))));
                    hashMap.put(hVar.f22161b, hVar);
                    sparseArray.put(hVar.f22160a, hVar.f22161b);
                }
                if (query != null) {
                    query.close();
                }
            } catch (SQLiteException e) {
                hashMap.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final boolean a() throws DatabaseIOException {
            return com.google.android.exoplayer2.database.c.b(this.f22171b.getReadableDatabase(), 1, (String) com.google.android.exoplayer2.util.a.b(this.f22173d)) != -1;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void b() throws DatabaseIOException {
            com.google.android.exoplayer2.database.a aVar = this.f22171b;
            String str = (String) com.google.android.exoplayer2.util.a.b(this.f22173d);
            try {
                String a2 = a(str);
                SQLiteDatabase writableDatabase = aVar.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    if (af.a(writableDatabase, "ExoPlayerVersions")) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", com.google.android.exoplayer2.database.c.a(1, str));
                    }
                    a(writableDatabase, a2);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e) {
                    throw new DatabaseIOException(e);
                }
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void b(HashMap<String, h> hashMap) throws IOException {
            if (this.f22172c.size() != 0) {
                try {
                    SQLiteDatabase writableDatabase = this.f22171b.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    for (int i = 0; i < this.f22172c.size(); i++) {
                        h valueAt = this.f22172c.valueAt(i);
                        if (valueAt == null) {
                            writableDatabase.delete((String) com.google.android.exoplayer2.util.a.b(this.e), "id = ?", new String[]{Integer.toString(this.f22172c.keyAt(i))});
                        } else {
                            a(writableDatabase, valueAt);
                        }
                    }
                    writableDatabase.setTransactionSuccessful();
                    this.f22172c.clear();
                    writableDatabase.endTransaction();
                } catch (SQLException e) {
                    throw new DatabaseIOException(e);
                }
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$b.class */
    static final class b implements c {

        /* renamed from: a  reason: collision with root package name */
        private final boolean f22174a;

        /* renamed from: b  reason: collision with root package name */
        private final Cipher f22175b;

        /* renamed from: c  reason: collision with root package name */
        private final SecretKeySpec f22176c;

        /* renamed from: d  reason: collision with root package name */
        private final SecureRandom f22177d;
        private final com.google.android.exoplayer2.util.b e;
        private boolean f;
        private x g;

        public b(File file, byte[] bArr, boolean z) {
            SecretKeySpec secretKeySpec;
            Cipher cipher;
            boolean z2 = false;
            com.google.android.exoplayer2.util.a.b(bArr != null || !z);
            SecureRandom secureRandom = null;
            if (bArr != null) {
                com.google.android.exoplayer2.util.a.a(bArr.length == 16 ? true : z2);
                try {
                    cipher = i.d();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                com.google.android.exoplayer2.util.a.a(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f22174a = z;
            this.f22175b = cipher;
            this.f22176c = secretKeySpec;
            this.f22177d = z ? new SecureRandom() : secureRandom;
            this.e = new com.google.android.exoplayer2.util.b(file);
        }

        private static int a(h hVar, int i) {
            int i2;
            int hashCode = (hVar.f22160a * 31) + hVar.f22161b.hashCode();
            if (i < 2) {
                long a2 = j._CC.a(hVar.e);
                i2 = (hashCode * 31) + ((int) (a2 ^ (a2 >>> 32)));
            } else {
                i2 = (hashCode * 31) + hVar.e.hashCode();
            }
            return i2;
        }

        private boolean b(HashMap<String, h> hashMap, SparseArray<String> sparseArray) {
            Throwable th;
            BufferedInputStream bufferedInputStream;
            DataInputStream dataInputStream;
            DataInputStream dataInputStream2;
            l lVar;
            if (!this.e.a()) {
                return true;
            }
            DataInputStream dataInputStream3 = null;
            DataInputStream dataInputStream4 = null;
            try {
                com.google.android.exoplayer2.util.b bVar = this.e;
                if (bVar.f22280b.exists()) {
                    bVar.f22279a.delete();
                    bVar.f22280b.renameTo(bVar.f22279a);
                }
                bufferedInputStream = new BufferedInputStream(new FileInputStream(bVar.f22279a));
                dataInputStream = new DataInputStream(bufferedInputStream);
                dataInputStream4 = dataInputStream;
            } catch (IOException e) {
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                int readInt = dataInputStream.readInt();
                if (readInt < 0 || readInt > 2) {
                    af.a((Closeable) dataInputStream);
                    return false;
                }
                if ((dataInputStream.readInt() & 1) == 0) {
                    dataInputStream2 = dataInputStream;
                    if (this.f22174a) {
                        this.f = true;
                        dataInputStream2 = dataInputStream;
                    }
                } else if (this.f22175b == null) {
                    af.a((Closeable) dataInputStream);
                    return false;
                } else {
                    byte[] bArr = new byte[16];
                    dataInputStream.readFully(bArr);
                    try {
                        this.f22175b.init(2, (Key) af.a(this.f22176c), new IvParameterSpec(bArr));
                        dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f22175b));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
                int readInt2 = dataInputStream2.readInt();
                int i = 0;
                for (int i2 = 0; i2 < readInt2; i2++) {
                    int readInt3 = dataInputStream2.readInt();
                    String readUTF = dataInputStream2.readUTF();
                    if (readInt < 2) {
                        long readLong = dataInputStream2.readLong();
                        k kVar = new k();
                        kVar.a("exo_len", readLong);
                        lVar = l.f22180a.a(kVar);
                    } else {
                        lVar = i.a(dataInputStream2);
                    }
                    h hVar = new h(readInt3, readUTF, lVar);
                    hashMap.put(hVar.f22161b, hVar);
                    sparseArray.put(hVar.f22160a, hVar.f22161b);
                    i += a(hVar, readInt);
                }
                int readInt4 = dataInputStream2.readInt();
                boolean z = dataInputStream2.read() == -1;
                if (readInt4 != i || !z) {
                    af.a((Closeable) dataInputStream2);
                    return false;
                }
                af.a((Closeable) dataInputStream2);
                return true;
            } catch (IOException e3) {
                dataInputStream3 = dataInputStream;
                if (dataInputStream3 == null) {
                    return false;
                }
                af.a((Closeable) dataInputStream3);
                return false;
            } catch (Throwable th3) {
                th = th3;
                if (dataInputStream4 != null) {
                    af.a((Closeable) dataInputStream4);
                }
                throw th;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(long j) {
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(h hVar) {
            this.f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(h hVar, boolean z) {
            this.f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(HashMap<String, h> hashMap) throws IOException {
            Throwable th;
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream c2 = this.e.c();
                x xVar = this.g;
                if (xVar == null) {
                    this.g = new x(c2);
                } else {
                    xVar.a(c2);
                }
                x xVar2 = this.g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(xVar2);
                dataOutputStream = dataOutputStream2;
                try {
                    dataOutputStream2.writeInt(2);
                    dataOutputStream2.writeInt(this.f22174a ? 1 : 0);
                    DataOutputStream dataOutputStream3 = dataOutputStream2;
                    if (this.f22174a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) af.a(this.f22177d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) af.a(this.f22175b)).init(1, (Key) af.a(this.f22176c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream3 = new DataOutputStream(new CipherOutputStream(xVar2, this.f22175b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    dataOutputStream3.writeInt(hashMap.size());
                    int i = 0;
                    for (h hVar : hashMap.values()) {
                        dataOutputStream3.writeInt(hVar.f22160a);
                        dataOutputStream3.writeUTF(hVar.f22161b);
                        i.a(hVar.e, dataOutputStream3);
                        i += a(hVar, 2);
                    }
                    dataOutputStream3.writeInt(i);
                    com.google.android.exoplayer2.util.b bVar = this.e;
                    dataOutputStream3.close();
                    bVar.f22280b.delete();
                    af.a((Closeable) null);
                    this.f = false;
                } catch (Throwable th2) {
                    th = th2;
                    af.a((Closeable) dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void a(HashMap<String, h> hashMap, SparseArray<String> sparseArray) {
            com.google.android.exoplayer2.util.a.b(!this.f);
            if (!b(hashMap, sparseArray)) {
                hashMap.clear();
                sparseArray.clear();
                this.e.b();
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final boolean a() {
            return this.e.a();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void b() {
            this.e.b();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.i.c
        public final void b(HashMap<String, h> hashMap) throws IOException {
            if (this.f) {
                a(hashMap);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$c.class */
    public interface c {
        void a(long j);

        void a(h hVar);

        void a(h hVar, boolean z);

        void a(HashMap<String, h> hashMap) throws IOException;

        void a(HashMap<String, h> hashMap, SparseArray<String> sparseArray) throws IOException;

        boolean a() throws IOException;

        void b() throws IOException;

        void b(HashMap<String, h> hashMap) throws IOException;
    }

    public i(com.google.android.exoplayer2.database.a aVar) {
        this(aVar, null, null, false, false);
    }

    public i(com.google.android.exoplayer2.database.a aVar, File file, byte[] bArr, boolean z, boolean z2) {
        com.google.android.exoplayer2.util.a.b((aVar == null && file == null) ? false : true);
        this.f22166a = new HashMap<>();
        this.f22167b = new SparseArray<>();
        this.e = new SparseBooleanArray();
        this.f = new SparseBooleanArray();
        b bVar = null;
        a aVar2 = aVar != null ? new a(aVar) : null;
        bVar = file != null ? new b(new File(file, "cached_content_index.exi"), bArr, z) : bVar;
        if (aVar2 == null || (bVar != null && z2)) {
            this.f22168c = (c) af.a(bVar);
            this.f22169d = aVar2;
            return;
        }
        this.f22168c = aVar2;
        this.f22169d = bVar;
    }

    static /* synthetic */ l a(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 >= 0) {
                int min = Math.min(readInt2, (int) Constants.TEN_MB);
                byte[] bArr = af.f;
                int i2 = 0;
                while (i2 != readInt2) {
                    int i3 = i2 + min;
                    bArr = Arrays.copyOf(bArr, i3);
                    dataInputStream.readFully(bArr, i2, min);
                    min = Math.min(readInt2 - i3, (int) Constants.TEN_MB);
                    i2 = i3;
                }
                hashMap.put(readUTF, bArr);
            } else {
                throw new IOException("Invalid value size: ".concat(String.valueOf(readInt2)));
            }
        }
        return new l(hashMap);
    }

    static /* synthetic */ void a(l lVar, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> entrySet = lVar.f22181b.entrySet();
        dataOutputStream.writeInt(entrySet.size());
        for (Map.Entry<String, byte[]> entry : entrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    static Cipher d() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (af.f22275a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable th) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public final h a(String str) {
        h hVar = this.f22166a.get(str);
        h hVar2 = hVar;
        if (hVar == null) {
            SparseArray<String> sparseArray = this.f22167b;
            int size = sparseArray.size();
            int i = 0;
            int keyAt = size == 0 ? 0 : sparseArray.keyAt(size - 1) + 1;
            int i2 = keyAt;
            if (keyAt < 0) {
                while (i < size && i == sparseArray.keyAt(i)) {
                    i++;
                }
                i2 = i;
            }
            hVar2 = new h(i2, str);
            this.f22166a.put(str, hVar2);
            this.f22167b.put(i2, str);
            this.f.put(i2, true);
            this.f22168c.a(hVar2);
        }
        return hVar2;
    }

    public final String a(int i) {
        return this.f22167b.get(i);
    }

    public final void a() throws IOException {
        this.f22168c.b(this.f22166a);
        int size = this.e.size();
        for (int i = 0; i < size; i++) {
            this.f22167b.remove(this.e.keyAt(i));
        }
        this.e.clear();
        this.f.clear();
    }

    public final h b(String str) {
        return this.f22166a.get(str);
    }

    public final Collection<h> b() {
        return Collections.unmodifiableCollection(this.f22166a.values());
    }

    public final int c(String str) {
        return a(str).f22160a;
    }

    public final void c() {
        ay a2 = z.a((Collection) this.f22166a.keySet()).iterator();
        while (a2.hasNext()) {
            d((String) a2.next());
        }
    }

    public final void d(String str) {
        h hVar = this.f22166a.get(str);
        if (hVar != null && hVar.f22162c.isEmpty() && hVar.f22163d.isEmpty()) {
            this.f22166a.remove(str);
            int i = hVar.f22160a;
            boolean z = this.f.get(i);
            this.f22168c.a(hVar, z);
            if (z) {
                this.f22167b.remove(i);
                this.f.delete(i);
                return;
            }
            this.f22167b.put(i, null);
            this.e.put(i, true);
        }
    }
}
