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

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6636a = LogFactory.a(ResettableInputStream.class);

    /* renamed from: b  reason: collision with root package name */
    private final File f6637b;

    /* renamed from: c  reason: collision with root package name */
    private final FileInputStream f6638c;

    /* renamed from: d  reason: collision with root package name */
    private final FileChannel f6639d;
    private long e;

    public ResettableInputStream(File file) throws IOException {
        this(new FileInputStream(file), file);
    }

    public ResettableInputStream(FileInputStream fileInputStream) throws IOException {
        this(fileInputStream, null);
    }

    private ResettableInputStream(FileInputStream fileInputStream, File file) throws IOException {
        super(fileInputStream);
        this.f6637b = file;
        this.f6638c = fileInputStream;
        FileChannel channel = fileInputStream.getChannel();
        this.f6639d = channel;
        this.e = channel.position();
    }

    public static ResettableInputStream a(FileInputStream fileInputStream) {
        return b(fileInputStream);
    }

    private static ResettableInputStream b(FileInputStream fileInputStream) {
        try {
            return new ResettableInputStream(fileInputStream);
        } catch (IOException e) {
            throw new AmazonClientException(null, e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        abortIfNeeded();
        return this.f6638c.available();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        abortIfNeeded();
        try {
            this.e = this.f6639d.position();
            Log log = f6636a;
            if (log.d()) {
                log.a("File input stream marked at position " + this.e);
            }
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
        return this.f6638c.read();
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        abortIfNeeded();
        return this.f6638c.read(bArr, i, i2);
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        abortIfNeeded();
        this.f6639d.position(this.e);
        Log log = f6636a;
        if (log.d()) {
            log.a("Reset to position " + this.e);
        }
    }

    @Override // com.amazonaws.internal.SdkFilterInputStream, java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        abortIfNeeded();
        return this.f6638c.skip(j);
    }
}
