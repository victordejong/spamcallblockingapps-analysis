package com.yanzhenjie.nohttp.tools;

import android.os.Build;
import android.os.StatFs;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.CharArrayWriter;
import java.io.Closeable;
import java.io.File;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Reader;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.net.HttpURLConnection;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/yanzhenjie/nohttp/tools/IOUtils.class */
public class IOUtils {
    public static boolean canRead(String str) {
        return new File(str).canRead();
    }

    public static boolean canWrite(String str) {
        return new File(str).canWrite();
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Exception e) {
            }
        }
    }

    public static void closeQuietly(HttpURLConnection httpURLConnection) {
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    public static boolean contentEquals(InputStream inputStream, InputStream inputStream2) {
        BufferedInputStream bufferedInputStream = toBufferedInputStream(inputStream);
        BufferedInputStream bufferedInputStream2 = toBufferedInputStream(inputStream2);
        int read = bufferedInputStream.read();
        while (true) {
            int i = read;
            boolean z = false;
            if (-1 == i) {
                if (bufferedInputStream2.read() == -1) {
                    z = true;
                }
                return z;
            } else if (i != bufferedInputStream2.read()) {
                return false;
            } else {
                read = bufferedInputStream.read();
            }
        }
    }

    public static boolean contentEquals(Reader reader, Reader reader2) {
        BufferedReader bufferedReader = toBufferedReader(reader);
        BufferedReader bufferedReader2 = toBufferedReader(reader2);
        int read = bufferedReader.read();
        while (true) {
            int i = read;
            boolean z = false;
            if (-1 == i) {
                if (bufferedReader2.read() == -1) {
                    z = true;
                }
                return z;
            } else if (i != bufferedReader2.read()) {
                return false;
            } else {
                read = bufferedReader.read();
            }
        }
    }

    public static boolean contentEqualsIgnoreEOL(Reader reader, Reader reader2) {
        String str;
        BufferedReader bufferedReader = toBufferedReader(reader);
        BufferedReader bufferedReader2 = toBufferedReader(reader2);
        String readLine = bufferedReader.readLine();
        String readLine2 = bufferedReader2.readLine();
        while (true) {
            str = readLine2;
            if (readLine == null || str == null || !readLine.equals(str)) {
                break;
            }
            readLine = bufferedReader.readLine();
            readLine2 = bufferedReader2.readLine();
        }
        return readLine != null && (str == null || readLine.equals(str));
    }

    public static boolean createFile(File file) {
        if (file.exists()) {
            if (file.isFile()) {
                return true;
            }
            delFileOrFolder(file);
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            return false;
        }
    }

    public static boolean createFile(String str) {
        if (!TextUtils.isEmpty(str)) {
            return createFile(new File(str));
        }
        return false;
    }

    public static boolean createFolder(File file) {
        if (file.exists()) {
            if (file.isDirectory()) {
                return true;
            }
            file.delete();
        }
        return file.mkdirs();
    }

    public static boolean createFolder(String str) {
        if (!TextUtils.isEmpty(str)) {
            return createFolder(new File(str));
        }
        return false;
    }

    public static boolean createNewFile(File file) {
        if (file.exists()) {
            delFileOrFolder(file);
        }
        try {
            return file.createNewFile();
        } catch (IOException e) {
            return false;
        }
    }

    public static boolean createNewFile(String str) {
        if (!TextUtils.isEmpty(str)) {
            return createNewFile(new File(str));
        }
        return false;
    }

    public static boolean createNewFolder(File file) {
        return delFileOrFolder(file) && createFolder(file);
    }

    public static boolean createNewFolder(String str) {
        return delFileOrFolder(str) && createFolder(str);
    }

    public static boolean delFileOrFolder(File file) {
        if (file == null || !file.exists()) {
            return true;
        }
        if (file.isFile()) {
            file.delete();
            return true;
        } else if (!file.isDirectory()) {
            return true;
        } else {
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    delFileOrFolder(file2);
                }
            }
            file.delete();
            return true;
        }
    }

    public static boolean delFileOrFolder(String str) {
        return delFileOrFolder(new File(str));
    }

    public static void flushQuietly(Flushable flushable) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (Exception e) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [long] */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    public static long getDirSize(String str) {
        char blockSize;
        char availableBlocks;
        try {
            StatFs statFs = new StatFs(str);
            if (Build.VERSION.SDK_INT >= 18) {
                blockSize = statFs.getBlockSizeLong();
                availableBlocks = statFs.getAvailableBlocksLong();
            } else {
                blockSize = statFs.getBlockSize();
                availableBlocks = statFs.getAvailableBlocks();
            }
            return blockSize * availableBlocks;
        } catch (Exception e) {
            return 0L;
        }
    }

    public static List<String> readLines(InputStream inputStream) {
        return readLines(new InputStreamReader(inputStream));
    }

    public static List<String> readLines(InputStream inputStream, String str) {
        return readLines(new InputStreamReader(inputStream, str));
    }

    public static List<String> readLines(Reader reader) {
        BufferedReader bufferedReader = toBufferedReader(reader);
        ArrayList arrayList = new ArrayList();
        String readLine = bufferedReader.readLine();
        while (true) {
            String str = readLine;
            if (str != null) {
                arrayList.add(str);
                readLine = bufferedReader.readLine();
            } else {
                return arrayList;
            }
        }
    }

    public static BufferedInputStream toBufferedInputStream(InputStream inputStream) {
        return inputStream instanceof BufferedInputStream ? (BufferedInputStream) inputStream : new BufferedInputStream(inputStream);
    }

    public static BufferedOutputStream toBufferedOutputStream(OutputStream outputStream) {
        return outputStream instanceof BufferedOutputStream ? (BufferedOutputStream) outputStream : new BufferedOutputStream(outputStream);
    }

    public static BufferedReader toBufferedReader(Reader reader) {
        return reader instanceof BufferedReader ? (BufferedReader) reader : new BufferedReader(reader);
    }

    public static BufferedWriter toBufferedWriter(Writer writer) {
        return writer instanceof BufferedWriter ? (BufferedWriter) writer : new BufferedWriter(writer);
    }

    public static byte[] toByteArray(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        write(inputStream, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(InputStream inputStream, int i) {
        int read;
        if (i < 0) {
            throw new IllegalArgumentException("Size must be equal or greater than zero: " + i);
        }
        int i2 = 0;
        if (i == 0) {
            return new byte[0];
        }
        byte[] bArr = new byte[i];
        while (i2 < i && (read = inputStream.read(bArr, i2, i - i2)) != -1) {
            i2 += read;
        }
        if (i2 == i) {
            return bArr;
        }
        throw new IOException("Unexpected byte count size. current: " + i2 + ", excepted: " + i);
    }

    public static byte[] toByteArray(Reader reader) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        write(reader, byteArrayOutputStream);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(Reader reader, String str) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        write(reader, byteArrayOutputStream, str);
        byteArrayOutputStream.close();
        return byteArrayOutputStream.toByteArray();
    }

    public static byte[] toByteArray(CharSequence charSequence) {
        return charSequence == null ? new byte[0] : charSequence.toString().getBytes();
    }

    public static byte[] toByteArray(CharSequence charSequence, String str) {
        return charSequence == null ? new byte[0] : charSequence.toString().getBytes(str);
    }

    public static char[] toCharArray(InputStream inputStream) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        write(inputStream, charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(InputStream inputStream, String str) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        write(inputStream, charArrayWriter, str);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(Reader reader) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        write(reader, charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static char[] toCharArray(CharSequence charSequence) {
        CharArrayWriter charArrayWriter = new CharArrayWriter();
        write(charSequence, charArrayWriter);
        return charArrayWriter.toCharArray();
    }

    public static InputStream toInputStream(CharSequence charSequence) {
        return new ByteArrayInputStream(charSequence.toString().getBytes());
    }

    public static InputStream toInputStream(CharSequence charSequence, String str) {
        return new ByteArrayInputStream(charSequence.toString().getBytes(str));
    }

    public static String toString(InputStream inputStream) {
        return new String(toByteArray(inputStream));
    }

    public static String toString(InputStream inputStream, String str) {
        return new String(toByteArray(inputStream), str);
    }

    public static String toString(Reader reader) {
        return new String(toByteArray(reader));
    }

    public static String toString(Reader reader, String str) {
        return new String(toByteArray(reader), str);
    }

    public static String toString(byte[] bArr) {
        return new String(bArr);
    }

    public static String toString(byte[] bArr, String str) {
        try {
            return new String(bArr, str);
        } catch (UnsupportedEncodingException e) {
            return new String(bArr);
        }
    }

    public static void write(InputStream inputStream, OutputStream outputStream) {
        byte[] bArr = new byte[4096];
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static void write(InputStream inputStream, OutputStream outputStream, String str) {
        write(new InputStreamReader(inputStream, str), outputStream);
    }

    public static void write(InputStream inputStream, Writer writer) {
        write(new InputStreamReader(inputStream), writer);
    }

    public static void write(InputStream inputStream, Writer writer, String str) {
        write(new InputStreamReader(inputStream, str), writer);
    }

    public static void write(Reader reader, OutputStream outputStream) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream);
        write(reader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void write(Reader reader, OutputStream outputStream, String str) {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(outputStream, str);
        write(reader, outputStreamWriter);
        outputStreamWriter.flush();
    }

    public static void write(Reader reader, Writer writer) {
        char[] cArr = new char[4096];
        while (true) {
            int read = reader.read(cArr);
            if (-1 != read) {
                writer.write(cArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static void write(CharSequence charSequence, OutputStream outputStream) {
        if (charSequence != null) {
            outputStream.write(charSequence.toString().getBytes());
        }
    }

    public static void write(CharSequence charSequence, OutputStream outputStream, String str) {
        if (charSequence != null) {
            outputStream.write(charSequence.toString().getBytes(str));
        }
    }

    public static void write(CharSequence charSequence, Writer writer) {
        if (charSequence != null) {
            writer.write(charSequence.toString());
        }
    }

    public static void write(byte[] bArr, OutputStream outputStream) {
        if (bArr != null) {
            outputStream.write(bArr);
        }
    }

    public static void write(byte[] bArr, Writer writer) {
        if (bArr != null) {
            writer.write(new String(bArr));
        }
    }

    public static void write(byte[] bArr, Writer writer, String str) {
        if (bArr != null) {
            writer.write(new String(bArr, str));
        }
    }

    public static void write(char[] cArr, OutputStream outputStream) {
        if (cArr != null) {
            outputStream.write(new String(cArr).getBytes());
        }
    }

    public static void write(char[] cArr, OutputStream outputStream, String str) {
        if (cArr != null) {
            outputStream.write(new String(cArr).getBytes(str));
        }
    }

    public static void write(char[] cArr, Writer writer) {
        if (cArr != null) {
            writer.write(cArr);
        }
    }
}
