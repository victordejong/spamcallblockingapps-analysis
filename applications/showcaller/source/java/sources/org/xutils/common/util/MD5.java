package org.xutils.common.util;

import java.io.File;
import java.io.FileInputStream;
import java.io.UnsupportedEncodingException;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes2-dex2jar.jar:org/xutils/common/util/MD5.class */
public final class MD5 {

    /* renamed from: a */
    private static final char[] f40607a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    private MD5() {
    }

    public static String md5(File file) {
        FileChannel fileChannel;
        NoSuchAlgorithmException e;
        FileInputStream fileInputStream;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            FileInputStream fileInputStream2 = new FileInputStream(file);
            fileChannel = null;
            FileChannel fileChannel2 = null;
            try {
                FileChannel channel = fileInputStream2.getChannel();
                messageDigest.update(channel.map(FileChannel.MapMode.READ_ONLY, 0L, file.length()));
                fileChannel = channel;
                fileChannel2 = channel;
                byte[] digest = messageDigest.digest();
                IOUtil.closeQuietly(fileInputStream2);
                IOUtil.closeQuietly(channel);
                return toHexString(digest);
            } catch (NoSuchAlgorithmException e2) {
                e = e2;
                fileChannel = fileChannel2;
                fileInputStream = fileInputStream2;
                try {
                    throw new RuntimeException(e);
                } catch (Throwable th) {
                    th = th;
                    IOUtil.closeQuietly(fileInputStream);
                    IOUtil.closeQuietly(fileChannel);
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                fileInputStream = fileInputStream2;
                IOUtil.closeQuietly(fileInputStream);
                IOUtil.closeQuietly(fileChannel);
                throw th;
            }
        } catch (NoSuchAlgorithmException e3) {
            e = e3;
            fileChannel = null;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
            fileChannel = null;
        }
    }

    public static String md5(String str) {
        try {
            return toHexString(MessageDigest.getInstance("MD5").digest(str.getBytes("UTF-8")));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }

    public static String toHexString(byte[] bArr) {
        if (bArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        for (byte b : bArr) {
            char[] cArr = f40607a;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }
}
