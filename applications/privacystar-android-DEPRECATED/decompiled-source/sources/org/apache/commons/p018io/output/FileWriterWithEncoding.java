package org.apache.commons.p018io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import java.nio.charset.CharsetEncoder;
import org.apache.commons.p018io.FileUtils;
import org.apache.commons.p018io.IOUtils;
/* renamed from: org.apache.commons.io.output.FileWriterWithEncoding */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/FileWriterWithEncoding.class */
public class FileWriterWithEncoding extends Writer {
    private final Writer out;

    public FileWriterWithEncoding(File file, String str) throws IOException {
        this(file, str, false);
    }

    public FileWriterWithEncoding(File file, String str, boolean z) throws IOException {
        this.out = initWriter(file, str, z);
    }

    public FileWriterWithEncoding(File file, Charset charset) throws IOException {
        this(file, charset, false);
    }

    public FileWriterWithEncoding(File file, Charset charset, boolean z) throws IOException {
        this.out = initWriter(file, charset, z);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder) throws IOException {
        this(file, charsetEncoder, false);
    }

    public FileWriterWithEncoding(File file, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this.out = initWriter(file, charsetEncoder, z);
    }

    public FileWriterWithEncoding(String str, String str2) throws IOException {
        this(new File(str), str2, false);
    }

    public FileWriterWithEncoding(String str, String str2, boolean z) throws IOException {
        this(new File(str), str2, z);
    }

    public FileWriterWithEncoding(String str, Charset charset) throws IOException {
        this(new File(str), charset, false);
    }

    public FileWriterWithEncoding(String str, Charset charset, boolean z) throws IOException {
        this(new File(str), charset, z);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder) throws IOException {
        this(new File(str), charsetEncoder, false);
    }

    public FileWriterWithEncoding(String str, CharsetEncoder charsetEncoder, boolean z) throws IOException {
        this(new File(str), charsetEncoder, z);
    }

    private static Writer initWriter(File file, Object obj, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        IOException e;
        RuntimeException e2;
        if (file == null) {
            throw new NullPointerException("File is missing");
        } else if (obj == null) {
            throw new NullPointerException("Encoding is missing");
        } else {
            boolean exists = file.exists();
            try {
                fileOutputStream = new FileOutputStream(file, z);
                try {
                    return obj instanceof Charset ? new OutputStreamWriter(fileOutputStream, (Charset) obj) : obj instanceof CharsetEncoder ? new OutputStreamWriter(fileOutputStream, (CharsetEncoder) obj) : new OutputStreamWriter(fileOutputStream, (String) obj);
                } catch (IOException e3) {
                    e = e3;
                    IOUtils.closeQuietly((Writer) null);
                    IOUtils.closeQuietly((OutputStream) fileOutputStream);
                    if (!exists) {
                        FileUtils.deleteQuietly(file);
                    }
                    throw e;
                } catch (RuntimeException e4) {
                    e2 = e4;
                    IOUtils.closeQuietly((Writer) null);
                    IOUtils.closeQuietly((OutputStream) fileOutputStream);
                    if (!exists) {
                        FileUtils.deleteQuietly(file);
                    }
                    throw e2;
                }
            } catch (IOException e5) {
                e = e5;
                fileOutputStream = null;
            } catch (RuntimeException e6) {
                e2 = e6;
                fileOutputStream = null;
            }
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.out.close();
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }
}
