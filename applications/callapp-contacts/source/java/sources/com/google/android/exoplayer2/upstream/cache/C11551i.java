package com.google.android.exoplayer2.upstream.cache;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.android.exoplayer2.database.AbstractC10926a;
import com.google.android.exoplayer2.database.C10928c;
import com.google.android.exoplayer2.database.DatabaseIOException;
import com.google.android.exoplayer2.upstream.cache.AbstractC11555j;
import com.google.android.exoplayer2.util.C11593a;
import com.google.android.exoplayer2.util.C11599af;
import com.google.android.exoplayer2.util.C11601b;
import com.google.android.exoplayer2.util.C11631x;
import com.google.common.collect.AbstractC15493ay;
import com.google.common.collect.AbstractC15566z;
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
/* renamed from: com.google.android.exoplayer2.upstream.cache.i */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i.class */
public final class C11551i {

    /* renamed from: a */
    final HashMap<String, C11549h> f38455a;

    /* renamed from: b */
    final SparseArray<String> f38456b;

    /* renamed from: c */
    AbstractC11554c f38457c;

    /* renamed from: d */
    AbstractC11554c f38458d;

    /* renamed from: e */
    private final SparseBooleanArray f38459e;

    /* renamed from: f */
    private final SparseBooleanArray f38460f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.upstream.cache.i$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$a.class */
    public static final class C11552a implements AbstractC11554c {

        /* renamed from: a */
        private static final String[] f38461a = {"id", "key", "metadata"};

        /* renamed from: b */
        private final AbstractC10926a f38462b;

        /* renamed from: c */
        private final SparseArray<C11549h> f38463c = new SparseArray<>();

        /* renamed from: d */
        private String f38464d;

        /* renamed from: e */
        private String f38465e;

        public C11552a(AbstractC10926a abstractC10926a) {
            this.f38462b = abstractC10926a;
        }

        /* renamed from: a */
        private static String m20146a(String str) {
            return "ExoPlayerCacheIndex".concat(String.valueOf(str));
        }

        /* renamed from: a */
        private void m20149a(SQLiteDatabase sQLiteDatabase) throws DatabaseIOException {
            C10928c.m21927a(sQLiteDatabase, 1, (String) C11593a.m20020b(this.f38464d));
            m20147a(sQLiteDatabase, (String) C11593a.m20020b(this.f38465e));
            sQLiteDatabase.execSQL("CREATE TABLE " + this.f38465e + " (id INTEGER PRIMARY KEY NOT NULL,key TEXT NOT NULL,metadata BLOB NOT NULL)");
        }

        /* renamed from: a */
        private void m20148a(SQLiteDatabase sQLiteDatabase, C11549h c11549h) throws IOException {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            C11551i.m20158a(c11549h.f38452e, new DataOutputStream(byteArrayOutputStream));
            byte[] byteArray = byteArrayOutputStream.toByteArray();
            ContentValues contentValues = new ContentValues();
            contentValues.put("id", Integer.valueOf(c11549h.f38448a));
            contentValues.put("key", c11549h.f38449b);
            contentValues.put("metadata", byteArray);
            sQLiteDatabase.replaceOrThrow((String) C11593a.m20020b(this.f38465e), null, contentValues);
        }

        /* renamed from: a */
        private static void m20147a(SQLiteDatabase sQLiteDatabase, String str) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS ".concat(String.valueOf(str)));
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20142a(long j) {
            String hexString = Long.toHexString(j);
            this.f38464d = hexString;
            this.f38465e = m20146a(hexString);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20141a(C11549h c11549h) {
            this.f38463c.put(c11549h.f38448a, c11549h);
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20140a(C11549h c11549h, boolean z) {
            if (z) {
                this.f38463c.delete(c11549h.f38448a);
            } else {
                this.f38463c.put(c11549h.f38448a, null);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20139a(HashMap<String, C11549h> hashMap) throws IOException {
            try {
                SQLiteDatabase writableDatabase = this.f38462b.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                m20149a(writableDatabase);
                for (C11549h c11549h : hashMap.values()) {
                    m20148a(writableDatabase, c11549h);
                }
                writableDatabase.setTransactionSuccessful();
                this.f38463c.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20138a(HashMap<String, C11549h> hashMap, SparseArray<String> sparseArray) throws IOException {
            C11593a.m20019b(this.f38463c.size() == 0);
            try {
                if (C10928c.m21926b(this.f38462b.getReadableDatabase(), 1, (String) C11593a.m20020b(this.f38464d)) != 1) {
                    SQLiteDatabase writableDatabase = this.f38462b.getWritableDatabase();
                    writableDatabase.beginTransactionNonExclusive();
                    m20149a(writableDatabase);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                }
                Cursor query = this.f38462b.getReadableDatabase().query((String) C11593a.m20020b(this.f38465e), f38461a, null, null, null, null, null);
                while (query.moveToNext()) {
                    C11549h c11549h = new C11549h(query.getInt(0), query.getString(1), C11551i.m20157a(new DataInputStream(new ByteArrayInputStream(query.getBlob(2)))));
                    hashMap.put(c11549h.f38449b, c11549h);
                    sparseArray.put(c11549h.f38448a, c11549h.f38449b);
                }
                if (query == null) {
                    return;
                }
                query.close();
            } catch (SQLiteException e) {
                hashMap.clear();
                sparseArray.clear();
                throw new DatabaseIOException(e);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final boolean mo20143a() throws DatabaseIOException {
            return C10928c.m21926b(this.f38462b.getReadableDatabase(), 1, (String) C11593a.m20020b(this.f38464d)) != -1;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: b */
        public final void mo20137b() throws DatabaseIOException {
            AbstractC10926a abstractC10926a = this.f38462b;
            String str = (String) C11593a.m20020b(this.f38464d);
            try {
                String m20146a = m20146a(str);
                SQLiteDatabase writableDatabase = abstractC10926a.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                try {
                    if (C11599af.m19988a(writableDatabase, "ExoPlayerVersions")) {
                        writableDatabase.delete("ExoPlayerVersions", "feature = ? AND instance_uid = ?", C10928c.m21928a(1, str));
                    }
                    m20147a(writableDatabase, m20146a);
                    writableDatabase.setTransactionSuccessful();
                    writableDatabase.endTransaction();
                } catch (SQLException e) {
                    throw new DatabaseIOException(e);
                }
            } catch (SQLException e2) {
                throw new DatabaseIOException(e2);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: b */
        public final void mo20136b(HashMap<String, C11549h> hashMap) throws IOException {
            if (this.f38463c.size() == 0) {
                return;
            }
            try {
                SQLiteDatabase writableDatabase = this.f38462b.getWritableDatabase();
                writableDatabase.beginTransactionNonExclusive();
                for (int i = 0; i < this.f38463c.size(); i++) {
                    C11549h valueAt = this.f38463c.valueAt(i);
                    if (valueAt == null) {
                        writableDatabase.delete((String) C11593a.m20020b(this.f38465e), "id = ?", new String[]{Integer.toString(this.f38463c.keyAt(i))});
                    } else {
                        m20148a(writableDatabase, valueAt);
                    }
                }
                writableDatabase.setTransactionSuccessful();
                this.f38463c.clear();
                writableDatabase.endTransaction();
            } catch (SQLException e) {
                throw new DatabaseIOException(e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.google.android.exoplayer2.upstream.cache.i$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$b.class */
    public static final class C11553b implements AbstractC11554c {

        /* renamed from: a */
        private final boolean f38466a;

        /* renamed from: b */
        private final Cipher f38467b;

        /* renamed from: c */
        private final SecretKeySpec f38468c;

        /* renamed from: d */
        private final SecureRandom f38469d;

        /* renamed from: e */
        private final C11601b f38470e;

        /* renamed from: f */
        private boolean f38471f;

        /* renamed from: g */
        private C11631x f38472g;

        public C11553b(File file, byte[] bArr, boolean z) {
            SecretKeySpec secretKeySpec;
            Cipher cipher;
            C11593a.m20019b(bArr != null || !z);
            if (bArr != null) {
                C11593a.m20022a(bArr.length == 16);
                try {
                    Cipher m20151d = C11551i.m20151d();
                    secretKeySpec = new SecretKeySpec(bArr, "AES");
                    cipher = m20151d;
                } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                    throw new IllegalStateException(e);
                }
            } else {
                C11593a.m20022a(!z);
                cipher = null;
                secretKeySpec = null;
            }
            this.f38466a = z;
            this.f38467b = cipher;
            this.f38468c = secretKeySpec;
            this.f38469d = z ? new SecureRandom() : null;
            this.f38470e = new C11601b(file);
        }

        /* renamed from: a */
        private static int m20145a(C11549h c11549h, int i) {
            int i2;
            int hashCode = (c11549h.f38448a * 31) + c11549h.f38449b.hashCode();
            if (i < 2) {
                long m20135a = AbstractC11555j._CC.m20135a(c11549h.f38452e);
                i2 = (hashCode * 31) + ((int) (m20135a ^ (m20135a >>> 32)));
            } else {
                i2 = (hashCode * 31) + c11549h.f38452e.hashCode();
            }
            return i2;
        }

        /* renamed from: b */
        private boolean m20144b(HashMap<String, C11549h> hashMap, SparseArray<String> sparseArray) {
            DataInputStream dataInputStream;
            Throwable th;
            BufferedInputStream bufferedInputStream;
            DataInputStream dataInputStream2;
            DataInputStream dataInputStream3;
            C11557l c11557l;
            if (!this.f38470e.m19913a()) {
                return true;
            }
            DataInputStream dataInputStream4 = null;
            try {
                C11601b c11601b = this.f38470e;
                if (c11601b.f38664b.exists()) {
                    c11601b.f38663a.delete();
                    c11601b.f38664b.renameTo(c11601b.f38663a);
                }
                bufferedInputStream = new BufferedInputStream(new FileInputStream(c11601b.f38663a));
                dataInputStream2 = new DataInputStream(bufferedInputStream);
                dataInputStream4 = dataInputStream2;
            } catch (IOException e) {
                dataInputStream = null;
            } catch (Throwable th2) {
                th = th2;
            }
            try {
                int readInt = dataInputStream2.readInt();
                if (readInt < 0 || readInt > 2) {
                    C11599af.m19977a((Closeable) dataInputStream2);
                    return false;
                }
                if ((dataInputStream2.readInt() & 1) == 0) {
                    dataInputStream3 = dataInputStream2;
                    if (this.f38466a) {
                        this.f38471f = true;
                        dataInputStream3 = dataInputStream2;
                    }
                } else if (this.f38467b == null) {
                    C11599af.m19977a((Closeable) dataInputStream2);
                    return false;
                } else {
                    byte[] bArr = new byte[16];
                    dataInputStream2.readFully(bArr);
                    try {
                        this.f38467b.init(2, (Key) C11599af.m19974a(this.f38468c), new IvParameterSpec(bArr));
                        dataInputStream3 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.f38467b));
                    } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                        throw new IllegalStateException(e2);
                    }
                }
                int readInt2 = dataInputStream3.readInt();
                int i = 0;
                for (int i2 = 0; i2 < readInt2; i2++) {
                    int readInt3 = dataInputStream3.readInt();
                    DataInputStream dataInputStream5 = dataInputStream3;
                    String readUTF = dataInputStream3.readUTF();
                    if (readInt < 2) {
                        long readLong = dataInputStream3.readLong();
                        DataInputStream dataInputStream6 = dataInputStream3;
                        DataInputStream dataInputStream7 = dataInputStream3;
                        C11556k c11556k = new C11556k();
                        DataInputStream dataInputStream8 = dataInputStream3;
                        c11556k.m20131a("exo_len", readLong);
                        DataInputStream dataInputStream9 = dataInputStream3;
                        c11557l = C11557l.f38475a.m20128a(c11556k);
                    } else {
                        c11557l = C11551i.m20157a(dataInputStream3);
                    }
                    DataInputStream dataInputStream10 = dataInputStream3;
                    DataInputStream dataInputStream11 = dataInputStream3;
                    C11549h c11549h = new C11549h(readInt3, readUTF, c11557l);
                    DataInputStream dataInputStream12 = dataInputStream3;
                    hashMap.put(c11549h.f38449b, c11549h);
                    DataInputStream dataInputStream13 = dataInputStream3;
                    sparseArray.put(c11549h.f38448a, c11549h.f38449b);
                    DataInputStream dataInputStream14 = dataInputStream3;
                    i += m20145a(c11549h, readInt);
                }
                int readInt4 = dataInputStream3.readInt();
                DataInputStream dataInputStream15 = dataInputStream3;
                boolean z = dataInputStream3.read() == -1;
                if (readInt4 != i || !z) {
                    C11599af.m19977a((Closeable) dataInputStream3);
                    return false;
                }
                C11599af.m19977a((Closeable) dataInputStream3);
                return true;
            } catch (IOException e3) {
                dataInputStream = dataInputStream2;
                if (dataInputStream == null) {
                    return false;
                }
                C11599af.m19977a((Closeable) dataInputStream);
                return false;
            } catch (Throwable th3) {
                th = th3;
                if (dataInputStream4 != null) {
                    C11599af.m19977a((Closeable) dataInputStream4);
                }
                throw th;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20142a(long j) {
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20141a(C11549h c11549h) {
            this.f38471f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20140a(C11549h c11549h, boolean z) {
            this.f38471f = true;
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20139a(HashMap<String, C11549h> hashMap) throws IOException {
            Throwable th;
            DataOutputStream dataOutputStream = null;
            try {
                OutputStream m19911c = this.f38470e.m19911c();
                C11631x c11631x = this.f38472g;
                if (c11631x == null) {
                    this.f38472g = new C11631x(m19911c);
                } else {
                    c11631x.m19766a(m19911c);
                }
                C11631x c11631x2 = this.f38472g;
                DataOutputStream dataOutputStream2 = new DataOutputStream(c11631x2);
                dataOutputStream = dataOutputStream2;
                try {
                    dataOutputStream2.writeInt(2);
                    dataOutputStream2.writeInt(this.f38466a ? 1 : 0);
                    DataOutputStream dataOutputStream3 = dataOutputStream2;
                    if (this.f38466a) {
                        byte[] bArr = new byte[16];
                        ((SecureRandom) C11599af.m19974a(this.f38469d)).nextBytes(bArr);
                        dataOutputStream2.write(bArr);
                        try {
                            ((Cipher) C11599af.m19974a(this.f38467b)).init(1, (Key) C11599af.m19974a(this.f38468c), new IvParameterSpec(bArr));
                            dataOutputStream2.flush();
                            dataOutputStream3 = new DataOutputStream(new CipherOutputStream(c11631x2, this.f38467b));
                        } catch (InvalidAlgorithmParameterException | InvalidKeyException e) {
                            throw new IllegalStateException(e);
                        }
                    }
                    DataOutputStream dataOutputStream4 = dataOutputStream3;
                    dataOutputStream3.writeInt(hashMap.size());
                    DataOutputStream dataOutputStream5 = dataOutputStream3;
                    int i = 0;
                    for (C11549h c11549h : hashMap.values()) {
                        DataOutputStream dataOutputStream6 = dataOutputStream3;
                        DataOutputStream dataOutputStream7 = dataOutputStream3;
                        dataOutputStream3.writeInt(c11549h.f38448a);
                        DataOutputStream dataOutputStream8 = dataOutputStream3;
                        dataOutputStream3.writeUTF(c11549h.f38449b);
                        DataOutputStream dataOutputStream9 = dataOutputStream3;
                        C11551i.m20158a(c11549h.f38452e, dataOutputStream3);
                        DataOutputStream dataOutputStream10 = dataOutputStream3;
                        i += m20145a(c11549h, 2);
                    }
                    dataOutputStream3.writeInt(i);
                    DataOutputStream dataOutputStream11 = dataOutputStream3;
                    C11601b c11601b = this.f38470e;
                    DataOutputStream dataOutputStream12 = dataOutputStream3;
                    dataOutputStream3.close();
                    DataOutputStream dataOutputStream13 = dataOutputStream3;
                    c11601b.f38664b.delete();
                    C11599af.m19977a((Closeable) null);
                    this.f38471f = false;
                } catch (Throwable th2) {
                    th = th2;
                    C11599af.m19977a((Closeable) dataOutputStream);
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final void mo20138a(HashMap<String, C11549h> hashMap, SparseArray<String> sparseArray) {
            C11593a.m20019b(!this.f38471f);
            if (!m20144b(hashMap, sparseArray)) {
                hashMap.clear();
                sparseArray.clear();
                this.f38470e.m19912b();
            }
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: a */
        public final boolean mo20143a() {
            return this.f38470e.m19913a();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: b */
        public final void mo20137b() {
            this.f38470e.m19912b();
        }

        @Override // com.google.android.exoplayer2.upstream.cache.C11551i.AbstractC11554c
        /* renamed from: b */
        public final void mo20136b(HashMap<String, C11549h> hashMap) throws IOException {
            if (!this.f38471f) {
                return;
            }
            mo20139a(hashMap);
        }
    }

    /* renamed from: com.google.android.exoplayer2.upstream.cache.i$c */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/i$c.class */
    public interface AbstractC11554c {
        /* renamed from: a */
        void mo20142a(long j);

        /* renamed from: a */
        void mo20141a(C11549h c11549h);

        /* renamed from: a */
        void mo20140a(C11549h c11549h, boolean z);

        /* renamed from: a */
        void mo20139a(HashMap<String, C11549h> hashMap) throws IOException;

        /* renamed from: a */
        void mo20138a(HashMap<String, C11549h> hashMap, SparseArray<String> sparseArray) throws IOException;

        /* renamed from: a */
        boolean mo20143a() throws IOException;

        /* renamed from: b */
        void mo20137b() throws IOException;

        /* renamed from: b */
        void mo20136b(HashMap<String, C11549h> hashMap) throws IOException;
    }

    public C11551i(AbstractC10926a abstractC10926a) {
        this(abstractC10926a, null, null, false, false);
    }

    public C11551i(AbstractC10926a abstractC10926a, File file, byte[] bArr, boolean z, boolean z2) {
        C11593a.m20019b((abstractC10926a == null && file == null) ? false : true);
        this.f38455a = new HashMap<>();
        this.f38456b = new SparseArray<>();
        this.f38459e = new SparseBooleanArray();
        this.f38460f = new SparseBooleanArray();
        C11553b c11553b = null;
        C11552a c11552a = abstractC10926a != null ? new C11552a(abstractC10926a) : null;
        c11553b = file != null ? new C11553b(new File(file, "cached_content_index.exi"), bArr, z) : c11553b;
        if (c11552a == null || (c11553b != null && z2)) {
            this.f38457c = (AbstractC11554c) C11599af.m19974a(c11553b);
            this.f38458d = c11552a;
            return;
        }
        this.f38457c = c11552a;
        this.f38458d = c11553b;
    }

    /* renamed from: a */
    static /* synthetic */ C11557l m20157a(DataInputStream dataInputStream) throws IOException {
        int readInt = dataInputStream.readInt();
        HashMap hashMap = new HashMap();
        for (int i = 0; i < readInt; i++) {
            String readUTF = dataInputStream.readUTF();
            int readInt2 = dataInputStream.readInt();
            if (readInt2 < 0) {
                throw new IOException("Invalid value size: ".concat(String.valueOf(readInt2)));
            }
            int min = Math.min(readInt2, (int) Constants.TEN_MB);
            byte[] bArr = C11599af.f38653f;
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
        return new C11557l(hashMap);
    }

    /* renamed from: a */
    static /* synthetic */ void m20158a(C11557l c11557l, DataOutputStream dataOutputStream) throws IOException {
        Set<Map.Entry<String, byte[]>> entrySet = c11557l.f38476b.entrySet();
        dataOutputStream.writeInt(entrySet.size());
        for (Map.Entry<String, byte[]> entry : entrySet) {
            dataOutputStream.writeUTF(entry.getKey());
            byte[] value = entry.getValue();
            dataOutputStream.writeInt(value.length);
            dataOutputStream.write(value);
        }
    }

    /* renamed from: d */
    static Cipher m20151d() throws NoSuchPaddingException, NoSuchAlgorithmException {
        if (C11599af.f38648a == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable th) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    /* renamed from: a */
    public final C11549h m20156a(String str) {
        C11549h c11549h = this.f38455a.get(str);
        C11549h c11549h2 = c11549h;
        if (c11549h == null) {
            SparseArray<String> sparseArray = this.f38456b;
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
            c11549h2 = new C11549h(i, str);
            this.f38455a.put(str, c11549h2);
            this.f38456b.put(i, str);
            this.f38460f.put(i, true);
            this.f38457c.mo20141a(c11549h2);
        }
        return c11549h2;
    }

    /* renamed from: a */
    public final String m20159a(int i) {
        return this.f38456b.get(i);
    }

    /* renamed from: a */
    public final void m20160a() throws IOException {
        this.f38457c.mo20136b(this.f38455a);
        int size = this.f38459e.size();
        for (int i = 0; i < size; i++) {
            this.f38456b.remove(this.f38459e.keyAt(i));
        }
        this.f38459e.clear();
        this.f38460f.clear();
    }

    /* renamed from: b */
    public final C11549h m20154b(String str) {
        return this.f38455a.get(str);
    }

    /* renamed from: b */
    public final Collection<C11549h> m20155b() {
        return Collections.unmodifiableCollection(this.f38455a.values());
    }

    /* renamed from: c */
    public final int m20152c(String str) {
        return m20156a(str).f38448a;
    }

    /* renamed from: c */
    public final void m20153c() {
        AbstractC15493ay it2 = AbstractC15566z.m8658a((Collection) this.f38455a.keySet()).iterator();
        while (it2.hasNext()) {
            m20150d((String) it2.next());
        }
    }

    /* renamed from: d */
    public final void m20150d(String str) {
        C11549h c11549h = this.f38455a.get(str);
        if (c11549h == null || !c11549h.f38450c.isEmpty() || !c11549h.f38451d.isEmpty()) {
            return;
        }
        this.f38455a.remove(str);
        int i = c11549h.f38448a;
        boolean z = this.f38460f.get(i);
        this.f38457c.mo20140a(c11549h, z);
        if (z) {
            this.f38456b.remove(i);
            this.f38460f.delete(i);
            return;
        }
        this.f38456b.put(i, null);
        this.f38459e.put(i, true);
    }
}
