package com.huawei.hms.availableupdate;

import com.huawei.hms.support.log.HMSLog;
import com.huawei.hms.utils.IOUtils;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.OutputStream;
import java.io.RandomAccessFile;
/* renamed from: com.huawei.hms.availableupdate.c */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/availableupdate/c.class */
public class C2252c extends OutputStream {

    /* renamed from: a */
    public RandomAccessFile f7299a;

    public C2252c(File file, int i) {
        try {
            RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rwd");
            this.f7299a = randomAccessFile;
            randomAccessFile.setLength(i);
        } catch (FileNotFoundException e) {
            HMSLog.m37195e("RandomFileOutputStream", "create  file stream failed");
        } catch (IOException e2) {
            IOUtils.closeQuietly(this.f7299a);
            HMSLog.m37195e("RandomFileOutputStream", "create  file stream failed");
        }
    }

    /* renamed from: a */
    public void m38155a(long j) throws IOException {
        RandomAccessFile randomAccessFile = this.f7299a;
        if (randomAccessFile != null) {
            randomAccessFile.seek(j);
        }
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        RandomAccessFile randomAccessFile = this.f7299a;
        if (randomAccessFile != null) {
            randomAccessFile.close();
        }
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        write(new byte[]{(byte) i}, 0, 1);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        RandomAccessFile randomAccessFile = this.f7299a;
        if (randomAccessFile != null) {
            randomAccessFile.write(bArr, i, i2);
        }
    }
}
