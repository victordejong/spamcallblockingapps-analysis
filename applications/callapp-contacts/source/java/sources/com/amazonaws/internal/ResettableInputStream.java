package com.amazonaws.internal;

import com.amazonaws.AmazonClientException;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
/* loaded from: classes-dex2jar.jar:com/amazonaws/internal/ResettableInputStream.class */
public class ResettableInputStream extends ReleasableInputStream {

    /* renamed from: a */
    private static final Log f12086a = LogFactory.m38584a(ResettableInputStream.class);

    /* renamed from: b */
    private final File f12087b;

    /* renamed from: c */
    private final FileInputStream f12088c;

    /* renamed from: d */
    private final FileChannel f12089d;

    /* renamed from: e */
    private long f12090e;

    public ResettableInputStream(File file) throws IOException {
        this(new FileInputStream(file), file);
    }

    public ResettableInputStream(FileInputStream fileInputStream) throws IOException {
        this(fileInputStream, null);
    }

    private ResettableInputStream(FileInputStream fileInputStream, File file) throws IOException {
        super(fileInputStream);
        this.f12087b = file;
        this.f12088c = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.f12089d = channel;
        this.f12090e = channel.position();
    }

    /* renamed from: a */
    public static ResettableInputStream m38606a(FileInputStream fileInputStream) {
        return m38605b(fileInputStream);
    }

    /* renamed from: b */
    private static ResettableInputStream m38605b(FileInputStream fileInputStream) {
        try {
            return new ResettableInputStream(fileInputStream);
        } catch (IOException e) {
            throw new AmazonClientException(null, e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        abortIfNeeded();
        return this.f12088c.available();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        abortIfNeeded();
        try {
            this.f12090e = this.f12089d.position();
            Log log = f12086a;
            if (!log.mo38588d()) {
                return;
            }
            log.mo38596a("File input stream marked at position " + this.f12090e);
        } catch (IOException e) {
            throw new AmazonClientException("Failed to mark the file position", e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return true;
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        abortIfNeeded();
        return this.f12088c.read();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        abortIfNeeded();
        return this.f12088c.read(bArr, i, i2);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        abortIfNeeded();
        this.f12089d.position(this.f12090e);
        Log log = f12086a;
        if (log.mo38588d()) {
            log.mo38596a("Reset to position " + this.f12090e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        abortIfNeeded();
        return this.f12088c.skip(j);
    }
}
