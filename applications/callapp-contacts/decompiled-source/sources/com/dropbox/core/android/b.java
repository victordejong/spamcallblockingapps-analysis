package com.dropbox.core.android;

import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.security.Provider;
import java.security.SecureRandom;
import java.security.SecureRandomSpi;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b.class */
public final class b extends SecureRandom {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f17735a = e();

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b$a.class */
    static final class a extends Provider {
        public a() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", C0353b.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    /* renamed from: com.dropbox.core.android.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b$b.class */
    public static class C0353b extends SecureRandomSpi {

        /* renamed from: a  reason: collision with root package name */
        private static final File f17736a = new File("/dev/urandom");

        /* renamed from: b  reason: collision with root package name */
        private static final Object f17737b = new Object();

        /* renamed from: c  reason: collision with root package name */
        private static DataInputStream f17738c;

        /* renamed from: d  reason: collision with root package name */
        private static OutputStream f17739d;
        private boolean e;

        private static DataInputStream a() {
            DataInputStream dataInputStream;
            synchronized (f17737b) {
                if (f17738c == null) {
                    try {
                        f17738c = new DataInputStream(new FileInputStream(f17736a));
                    } catch (IOException e) {
                        throw new SecurityException("Failed to open " + f17736a + " for reading", e);
                    }
                }
                dataInputStream = f17738c;
            }
            return dataInputStream;
        }

        private static OutputStream b() throws IOException {
            OutputStream outputStream;
            synchronized (f17737b) {
                if (f17739d == null) {
                    f17739d = new FileOutputStream(f17736a);
                }
                outputStream = f17739d;
            }
            return outputStream;
        }

        @Override // java.security.SecureRandomSpi
        protected byte[] engineGenerateSeed(int i) {
            byte[] bArr = new byte[i];
            engineNextBytes(bArr);
            return bArr;
        }

        @Override // java.security.SecureRandomSpi
        protected void engineNextBytes(byte[] bArr) {
            DataInputStream a2;
            if (!this.e) {
                engineSetSeed(b.c());
            }
            try {
                synchronized (f17737b) {
                    a2 = a();
                }
                synchronized (a2) {
                    a2.readFully(bArr);
                }
            } catch (IOException e) {
                throw new SecurityException("Failed to read from " + f17736a, e);
            }
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            OutputStream b2;
            try {
                synchronized (f17737b) {
                    b2 = b();
                }
                b2.write(bArr);
                b2.flush();
            } catch (IOException e) {
                String simpleName = C0353b.class.getSimpleName();
                Log.w(simpleName, "Failed to mix seed into " + f17736a);
            } finally {
                this.e = true;
            }
        }
    }

    private b() {
        super(new C0353b(), new a());
    }

    public static SecureRandom a() {
        return Build.VERSION.SDK_INT > 18 ? new SecureRandom() : new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static byte[] c() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(f17735a);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new SecurityException("Failed to generate seed", e);
        }
    }

    private static String d() {
        try {
            return (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception e) {
            return null;
        }
    }

    private static byte[] e() {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String d2 = d();
        if (d2 != null) {
            sb.append(d2);
        }
        try {
            return sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }
}
