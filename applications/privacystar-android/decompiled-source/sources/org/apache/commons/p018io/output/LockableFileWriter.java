package org.apache.commons.p018io.output;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.p018io.Charsets;
import org.apache.commons.p018io.FileUtils;
import org.apache.commons.p018io.IOUtils;
/* renamed from: org.apache.commons.io.output.LockableFileWriter */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/output/LockableFileWriter.class */
public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    public LockableFileWriter(File file, String str) throws IOException {
        this(file, str, false, (String) null);
    }

    public LockableFileWriter(File file, String str, boolean z, String str2) throws IOException {
        this(file, Charsets.toCharset(str), z, str2);
    }

    public LockableFileWriter(File file, Charset charset) throws IOException {
        this(file, charset, false, (String) null);
    }

    public LockableFileWriter(File file, Charset charset, boolean z, String str) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (absoluteFile.isDirectory()) {
            throw new IOException("File specified is a directory");
        }
        File file2 = new File(str == null ? System.getProperty("java.io.tmpdir") : str);
        FileUtils.forceMkdir(file2);
        testLockDir(file2);
        this.lockFile = new File(file2, absoluteFile.getName() + LCK);
        createLock();
        this.out = initWriter(absoluteFile, charset, z);
    }

    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this(file, Charset.defaultCharset(), z, str);
    }

    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }

    private void createLock() throws IOException {
        synchronized (LockableFileWriter.class) {
            try {
                if (!this.lockFile.createNewFile()) {
                    throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
                }
                this.lockFile.deleteOnExit();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    private Writer initWriter(File file, Charset charset, boolean z) throws IOException {
        FileOutputStream fileOutputStream;
        IOException e;
        RuntimeException e2;
        boolean exists = file.exists();
        try {
            fileOutputStream = new FileOutputStream(file.getAbsolutePath(), z);
            try {
                return new OutputStreamWriter(fileOutputStream, Charsets.toCharset(charset));
            } catch (IOException e3) {
                e = e3;
                IOUtils.closeQuietly((Writer) null);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                FileUtils.deleteQuietly(this.lockFile);
                if (!exists) {
                    FileUtils.deleteQuietly(file);
                }
                throw e;
            } catch (RuntimeException e4) {
                e2 = e4;
                IOUtils.closeQuietly((Writer) null);
                IOUtils.closeQuietly((OutputStream) fileOutputStream);
                FileUtils.deleteQuietly(this.lockFile);
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

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            throw new IOException("Could not find lockDir: " + file.getAbsolutePath());
        } else if (!file.canWrite()) {
            throw new IOException("Could not write to lockDir: " + file.getAbsolutePath());
        }
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } finally {
            this.lockFile.delete();
        }
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
