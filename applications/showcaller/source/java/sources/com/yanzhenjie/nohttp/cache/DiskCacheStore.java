package com.yanzhenjie.nohttp.cache;

import android.content.Context;
import android.text.TextUtils;
import com.yanzhenjie.nohttp.Logger;
import com.yanzhenjie.nohttp.tools.Encryption;
import com.yanzhenjie.nohttp.tools.IOUtils;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/cache/DiskCacheStore.class */
public class DiskCacheStore extends BasicCacheStore {
    private String mCacheDirectory;
    private Encryption mEncryption;
    private Lock mLock;

    public DiskCacheStore(Context context) {
        this(context, context.getCacheDir().getAbsolutePath());
    }

    public DiskCacheStore(Context context, String str) {
        super(context);
        if (!TextUtils.isEmpty(str)) {
            this.mLock = new ReentrantLock();
            this.mEncryption = new Encryption(DiskCacheStore.class.getSimpleName());
            this.mCacheDirectory = str;
            return;
        }
        throw new IllegalArgumentException("The cacheDirectory can't be null.");
    }

    private String decrypt(String str) {
        return this.mEncryption.decrypt(str);
    }

    private String encrypt(String str) {
        return this.mEncryption.encrypt(str);
    }

    private boolean initialize() {
        return IOUtils.createFolder(this.mCacheDirectory);
    }

    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public boolean clear() {
        this.mLock.lock();
        try {
            return IOUtils.delFileOrFolder(this.mCacheDirectory);
        } finally {
            this.mLock.unlock();
        }
    }

    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public CacheEntity get(String str) {
        Throwable th;
        BufferedReader bufferedReader;
        Exception e;
        this.mLock.lock();
        String uniqueKey = uniqueKey(str);
        try {
            try {
                if (!TextUtils.isEmpty(uniqueKey)) {
                    File file = new File(this.mCacheDirectory, uniqueKey);
                    if (file.exists() && !file.isDirectory()) {
                        CacheEntity cacheEntity = new CacheEntity();
                        bufferedReader = new BufferedReader(new FileReader(file));
                        try {
                            cacheEntity.setResponseHeadersJson(decrypt(bufferedReader.readLine()));
                            cacheEntity.setDataBase64(decrypt(bufferedReader.readLine()));
                            cacheEntity.setLocalExpireString(decrypt(bufferedReader.readLine()));
                            IOUtils.closeQuietly(bufferedReader);
                            this.mLock.unlock();
                            return cacheEntity;
                        } catch (Exception e2) {
                            e = e2;
                            BufferedReader bufferedReader2 = bufferedReader;
                            File file2 = new File(this.mCacheDirectory, uniqueKey);
                            BufferedReader bufferedReader3 = bufferedReader;
                            IOUtils.delFileOrFolder(file2);
                            BufferedReader bufferedReader4 = bufferedReader;
                            Logger.m566e((Throwable) e);
                            IOUtils.closeQuietly(bufferedReader);
                            this.mLock.unlock();
                            return null;
                        }
                    }
                }
                IOUtils.closeQuietly((Closeable) null);
                this.mLock.unlock();
                return null;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly((Closeable) null);
                this.mLock.unlock();
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedReader = null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly((Closeable) null);
            this.mLock.unlock();
            throw th;
        }
    }

    @Override // com.yanzhenjie.nohttp.tools.CacheStore
    public boolean remove(String str) {
        this.mLock.lock();
        try {
            return IOUtils.delFileOrFolder(new File(this.mCacheDirectory, uniqueKey(str)));
        } finally {
            this.mLock.unlock();
        }
    }

    public CacheEntity replace(String str, CacheEntity cacheEntity) {
        Throwable th;
        Exception e;
        BufferedWriter bufferedWriter;
        this.mLock.lock();
        String uniqueKey = uniqueKey(str);
        try {
            try {
                if (TextUtils.isEmpty(uniqueKey) || cacheEntity == null) {
                    IOUtils.closeQuietly((Closeable) null);
                } else {
                    initialize();
                    File file = new File(this.mCacheDirectory, uniqueKey);
                    IOUtils.createNewFile(file);
                    BufferedWriter bufferedWriter2 = new BufferedWriter(new FileWriter(file));
                    try {
                        bufferedWriter2.write(encrypt(cacheEntity.getResponseHeadersJson()));
                        bufferedWriter2.newLine();
                        bufferedWriter2.write(encrypt(cacheEntity.getDataBase64()));
                        bufferedWriter2.newLine();
                        bufferedWriter2.write(encrypt(cacheEntity.getLocalExpireString()));
                        bufferedWriter2.flush();
                        bufferedWriter2.close();
                        IOUtils.closeQuietly(bufferedWriter2);
                    } catch (Exception e2) {
                        bufferedWriter = bufferedWriter2;
                        e = e2;
                        BufferedWriter bufferedWriter3 = bufferedWriter;
                        File file2 = new File(this.mCacheDirectory, uniqueKey);
                        BufferedWriter bufferedWriter4 = bufferedWriter;
                        IOUtils.delFileOrFolder(file2);
                        BufferedWriter bufferedWriter5 = bufferedWriter;
                        Logger.m566e((Throwable) e);
                        IOUtils.closeQuietly(bufferedWriter);
                        this.mLock.unlock();
                        return null;
                    }
                }
                this.mLock.unlock();
                return cacheEntity;
            } catch (Throwable th2) {
                th = th2;
                IOUtils.closeQuietly((Closeable) null);
                this.mLock.unlock();
                throw th;
            }
        } catch (Exception e3) {
            e = e3;
            bufferedWriter = null;
        } catch (Throwable th3) {
            th = th3;
            IOUtils.closeQuietly((Closeable) null);
            this.mLock.unlock();
            throw th;
        }
    }
}
