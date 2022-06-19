package com.google.android.exoplayer2.upstream.cache;

import android.util.SparseArray;
import com.google.android.exoplayer2.upstream.cache.Cache;
import com.google.android.exoplayer2.util.Assertions;
import com.google.android.exoplayer2.util.AtomicFile;
import com.google.android.exoplayer2.util.ReusableBufferedOutputStream;
import com.google.android.exoplayer2.util.Util;
import java.io.BufferedInputStream;
import java.io.Closeable;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStream;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Random;
import java.util.Set;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/CachedContentIndex.class */
public class CachedContentIndex {
    public static final String FILE_NAME = "cached_content_index.exi";
    private static final int FLAG_ENCRYPTED_INDEX = 1;
    private static final int VERSION = 2;
    private final AtomicFile atomicFile;
    private ReusableBufferedOutputStream bufferedOutputStream;
    private boolean changed;
    private final Cipher cipher;
    private final boolean encrypt;
    private final SparseArray<String> idToKey;
    private final HashMap<String, CachedContent> keyToContent;
    private final SecretKeySpec secretKeySpec;

    public CachedContentIndex(File file) {
        this(file, null);
    }

    public CachedContentIndex(File file, byte[] bArr) {
        this(file, bArr, bArr != null);
    }

    public CachedContentIndex(File file, byte[] bArr, boolean z) {
        this.encrypt = z;
        if (bArr != null) {
            Assertions.checkArgument(bArr.length == 16);
            try {
                this.cipher = getCipher();
                this.secretKeySpec = new SecretKeySpec(bArr, "AES");
            } catch (NoSuchAlgorithmException | NoSuchPaddingException e) {
                throw new IllegalStateException(e);
            }
        } else {
            Assertions.checkState(!z);
            this.cipher = null;
            this.secretKeySpec = null;
        }
        this.keyToContent = new HashMap<>();
        this.idToKey = new SparseArray<>();
        this.atomicFile = new AtomicFile(new File(file, FILE_NAME));
    }

    private void add(CachedContent cachedContent) {
        this.keyToContent.put(cachedContent.key, cachedContent);
        this.idToKey.put(cachedContent.f3614id, cachedContent.key);
    }

    private CachedContent addNew(String str) {
        CachedContent cachedContent = new CachedContent(getNewId(this.idToKey), str);
        add(cachedContent);
        this.changed = true;
        return cachedContent;
    }

    private static Cipher getCipher() {
        if (Util.SDK_INT == 18) {
            try {
                return Cipher.getInstance("AES/CBC/PKCS5PADDING", "BC");
            } catch (Throwable th) {
            }
        }
        return Cipher.getInstance("AES/CBC/PKCS5PADDING");
    }

    public static int getNewId(SparseArray<String> sparseArray) {
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
        return i;
    }

    private boolean readFile() {
        Throwable th;
        BufferedInputStream bufferedInputStream;
        DataInputStream dataInputStream;
        DataInputStream dataInputStream2;
        DataInputStream dataInputStream3 = null;
        DataInputStream dataInputStream4 = null;
        try {
            bufferedInputStream = new BufferedInputStream(this.atomicFile.openRead());
            dataInputStream = new DataInputStream(bufferedInputStream);
            dataInputStream4 = dataInputStream;
        } catch (IOException e) {
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            int readInt = dataInputStream.readInt();
            if (readInt < 0 || readInt > 2) {
                Util.closeQuietly(dataInputStream);
                return false;
            }
            if ((dataInputStream.readInt() & 1) == 0) {
                dataInputStream2 = dataInputStream;
                if (this.encrypt) {
                    this.changed = true;
                    dataInputStream2 = dataInputStream;
                }
            } else if (this.cipher == null) {
                Util.closeQuietly(dataInputStream);
                return false;
            } else {
                byte[] bArr = new byte[16];
                dataInputStream.readFully(bArr);
                try {
                    this.cipher.init(2, this.secretKeySpec, new IvParameterSpec(bArr));
                    dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, this.cipher));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e2) {
                    throw new IllegalStateException(e2);
                }
            }
            int readInt2 = dataInputStream2.readInt();
            int i = 0;
            for (int i2 = 0; i2 < readInt2; i2++) {
                CachedContent readFromStream = CachedContent.readFromStream(readInt, dataInputStream2);
                DataInputStream dataInputStream5 = dataInputStream2;
                add(readFromStream);
                DataInputStream dataInputStream6 = dataInputStream2;
                i += readFromStream.headerHashCode(readInt);
            }
            int readInt3 = dataInputStream2.readInt();
            DataInputStream dataInputStream7 = dataInputStream2;
            boolean z = dataInputStream2.read() == -1;
            if (readInt3 != i || !z) {
                Util.closeQuietly(dataInputStream2);
                return false;
            }
            Util.closeQuietly(dataInputStream2);
            return true;
        } catch (IOException e3) {
            dataInputStream3 = dataInputStream;
            if (dataInputStream3 == null) {
                return false;
            }
            Util.closeQuietly(dataInputStream3);
            return false;
        } catch (Throwable th3) {
            th = th3;
            if (dataInputStream4 != null) {
                Util.closeQuietly(dataInputStream4);
            }
            throw th;
        }
    }

    private void writeFile() {
        DataOutputStream dataOutputStream;
        Throwable th;
        DataOutputStream dataOutputStream2;
        IOException e;
        DataOutputStream dataOutputStream3;
        DataOutputStream dataOutputStream4 = null;
        try {
            try {
                OutputStream startWrite = this.atomicFile.startWrite();
                ReusableBufferedOutputStream reusableBufferedOutputStream = this.bufferedOutputStream;
                if (reusableBufferedOutputStream == null) {
                    this.bufferedOutputStream = new ReusableBufferedOutputStream(startWrite);
                } else {
                    reusableBufferedOutputStream.reset(startWrite);
                }
                dataOutputStream3 = new DataOutputStream(this.bufferedOutputStream);
            } catch (IOException e2) {
                e = e2;
                dataOutputStream2 = null;
            }
        } catch (Throwable th2) {
            dataOutputStream = dataOutputStream4;
            th = th2;
        }
        try {
            dataOutputStream3.writeInt(2);
            dataOutputStream3.writeInt(this.encrypt ? 1 : 0);
            DataOutputStream dataOutputStream5 = dataOutputStream3;
            if (this.encrypt) {
                byte[] bArr = new byte[16];
                new Random().nextBytes(bArr);
                dataOutputStream3.write(bArr);
                try {
                    this.cipher.init(1, this.secretKeySpec, new IvParameterSpec(bArr));
                    dataOutputStream3.flush();
                    dataOutputStream5 = new DataOutputStream(new CipherOutputStream(this.bufferedOutputStream, this.cipher));
                } catch (InvalidAlgorithmParameterException | InvalidKeyException e3) {
                    throw new IllegalStateException(e3);
                }
            }
            DataOutputStream dataOutputStream6 = dataOutputStream5;
            dataOutputStream5.writeInt(this.keyToContent.size());
            DataOutputStream dataOutputStream7 = dataOutputStream5;
            int i = 0;
            for (CachedContent cachedContent : this.keyToContent.values()) {
                DataOutputStream dataOutputStream8 = dataOutputStream5;
                DataOutputStream dataOutputStream9 = dataOutputStream5;
                cachedContent.writeToStream(dataOutputStream5);
                DataOutputStream dataOutputStream10 = dataOutputStream5;
                i += cachedContent.headerHashCode(2);
            }
            dataOutputStream5.writeInt(i);
            DataOutputStream dataOutputStream11 = dataOutputStream5;
            this.atomicFile.endWrite(dataOutputStream5);
            Util.closeQuietly((Closeable) null);
        } catch (IOException e4) {
            e = e4;
            dataOutputStream2 = dataOutputStream3;
            DataOutputStream dataOutputStream12 = dataOutputStream2;
            dataOutputStream4 = dataOutputStream2;
            throw new Cache.CacheException(e);
        } catch (Throwable th3) {
            th = th3;
            dataOutputStream = dataOutputStream3;
            Util.closeQuietly(dataOutputStream);
            throw th;
        }
    }

    public void applyContentMetadataMutations(String str, ContentMetadataMutations contentMetadataMutations) {
        if (getOrAdd(str).applyMetadataMutations(contentMetadataMutations)) {
            this.changed = true;
        }
    }

    public int assignIdForKey(String str) {
        return getOrAdd(str).f3614id;
    }

    public CachedContent get(String str) {
        return this.keyToContent.get(str);
    }

    public Collection<CachedContent> getAll() {
        return this.keyToContent.values();
    }

    public ContentMetadata getContentMetadata(String str) {
        CachedContent cachedContent = get(str);
        return cachedContent != null ? cachedContent.getMetadata() : DefaultContentMetadata.EMPTY;
    }

    public String getKeyForId(int i) {
        return this.idToKey.get(i);
    }

    public Set<String> getKeys() {
        return this.keyToContent.keySet();
    }

    public CachedContent getOrAdd(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        CachedContent cachedContent2 = cachedContent;
        if (cachedContent == null) {
            cachedContent2 = addNew(str);
        }
        return cachedContent2;
    }

    public void load() {
        Assertions.checkState(!this.changed);
        if (!readFile()) {
            this.atomicFile.delete();
            this.keyToContent.clear();
            this.idToKey.clear();
        }
    }

    public void maybeRemove(String str) {
        CachedContent cachedContent = this.keyToContent.get(str);
        if (cachedContent == null || !cachedContent.isEmpty() || cachedContent.isLocked()) {
            return;
        }
        this.keyToContent.remove(str);
        this.idToKey.remove(cachedContent.f3614id);
        this.changed = true;
    }

    public void removeEmpty() {
        int size = this.keyToContent.size();
        String[] strArr = new String[size];
        this.keyToContent.keySet().toArray(strArr);
        for (int i = 0; i < size; i++) {
            maybeRemove(strArr[i]);
        }
    }

    public void store() {
        if (!this.changed) {
            return;
        }
        writeFile();
        this.changed = false;
    }
}
