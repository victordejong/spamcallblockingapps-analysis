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
/* renamed from: com.dropbox.core.android.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b.class */
public final class C8567b extends SecureRandom {

    /* renamed from: a */
    private static final byte[] f30500a = m25330e();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.android.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b$a.class */
    public static final class C8568a extends Provider {
        public C8568a() {
            super("LinuxPRNG", 1.0d, "A Linux-specific random number provider that uses /dev/urandom");
            put("SecureRandom.SHA1PRNG", C8569b.class.getName());
            put("SecureRandom.SHA1PRNG ImplementedIn", "Software");
        }
    }

    /* renamed from: com.dropbox.core.android.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/android/b$b.class */
    public static class C8569b extends SecureRandomSpi {

        /* renamed from: a */
        private static final File f30501a = new File("/dev/urandom");

        /* renamed from: b */
        private static final Object f30502b = new Object();

        /* renamed from: c */
        private static DataInputStream f30503c;

        /* renamed from: d */
        private static OutputStream f30504d;

        /* renamed from: e */
        private boolean f30505e;

        /* renamed from: a */
        private static DataInputStream m25329a() {
            DataInputStream dataInputStream;
            synchronized (f30502b) {
                if (f30503c == null) {
                    try {
                        f30503c = new DataInputStream(new FileInputStream(f30501a));
                    } catch (IOException e) {
                        throw new SecurityException("Failed to open " + f30501a + " for reading", e);
                    }
                }
                dataInputStream = f30503c;
            }
            return dataInputStream;
        }

        /* renamed from: b */
        private static OutputStream m25328b() throws IOException {
            OutputStream outputStream;
            synchronized (f30502b) {
                if (f30504d == null) {
                    f30504d = new FileOutputStream(f30501a);
                }
                outputStream = f30504d;
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
            DataInputStream m25329a;
            if (!this.f30505e) {
                engineSetSeed(C8567b.m25332c());
            }
            try {
                synchronized (f30502b) {
                    m25329a = m25329a();
                }
                synchronized (m25329a) {
                    m25329a.readFully(bArr);
                }
            } catch (IOException e) {
                throw new SecurityException("Failed to read from " + f30501a, e);
            }
        }

        @Override // java.security.SecureRandomSpi
        protected void engineSetSeed(byte[] bArr) {
            OutputStream m25328b;
            try {
                synchronized (f30502b) {
                    m25328b = m25328b();
                }
                m25328b.write(bArr);
                m25328b.flush();
            } catch (IOException e) {
                String simpleName = C8569b.class.getSimpleName();
                Log.w(simpleName, "Failed to mix seed into " + f30501a);
            } finally {
                this.f30505e = true;
            }
        }
    }

    private C8567b() {
        super(new C8569b(), new C8568a());
    }

    /* renamed from: a */
    public static SecureRandom m25334a() {
        return Build.VERSION.SDK_INT > 18 ? new SecureRandom() : new C8567b();
    }

    /* renamed from: c */
    public static byte[] m25332c() {
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            dataOutputStream.writeLong(System.currentTimeMillis());
            dataOutputStream.writeLong(System.nanoTime());
            dataOutputStream.writeInt(Process.myPid());
            dataOutputStream.writeInt(Process.myUid());
            dataOutputStream.write(f30500a);
            dataOutputStream.close();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new SecurityException("Failed to generate seed", e);
        }
    }

    /* renamed from: d */
    private static String m25331d() {
        try {
            return (String) Build.class.getField("SERIAL").get(null);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: e */
    private static byte[] m25330e() {
        StringBuilder sb = new StringBuilder();
        String str = Build.FINGERPRINT;
        if (str != null) {
            sb.append(str);
        }
        String m25331d = m25331d();
        if (m25331d != null) {
            sb.append(m25331d);
        }
        try {
            return sb.toString().getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 encoding not supported");
        }
    }
}
