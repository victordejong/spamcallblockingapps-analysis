package com.freshchat.consumer.sdk.p057j.p058a;

import com.freshchat.consumer.sdk.p057j.C1732x;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedInputStream;
import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.Writer;
import java.lang.reflect.Array;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.a.b */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/b.class */
public final class C1579b implements Closeable {
    private static final Charset UTF_8 = Charset.forName(StringConstant.UTF8);

    /* renamed from: nR */
    private final File f4264nR;

    /* renamed from: nS */
    private final File f4265nS;

    /* renamed from: nT */
    private final File f4266nT;

    /* renamed from: nU */
    private final int f4267nU;

    /* renamed from: ol */
    private final long f4268ol;

    /* renamed from: om */
    private final int f4269om;

    /* renamed from: oo */
    private Writer f4271oo;

    /* renamed from: qF */
    private int f4273qF;

    /* renamed from: on */
    private long f4270on = 0;

    /* renamed from: op */
    private final LinkedHashMap<String, C1582b> f4272op = new LinkedHashMap<>(0, 0.75f, true);

    /* renamed from: qG */
    private long f4274qG = 0;

    /* renamed from: qH */
    private final ExecutorService f4275qH = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());

    /* renamed from: qI */
    private final Callable<Void> f4276qI = new CallableC1584c(this);

    /* renamed from: com.freshchat.consumer.sdk.j.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/b$a.class */
    public final class C1580a {

        /* renamed from: rG */
        private final C1582b f4278rG;

        /* renamed from: rH */
        private boolean f4279rH;

        /* renamed from: com.freshchat.consumer.sdk.j.a.b$a$a */
        /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/b$a$a.class */
        public class C1581a extends FilterOutputStream {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            private C1581a(OutputStream outputStream) {
                super(outputStream);
                C1580a.this = r4;
            }

            public /* synthetic */ C1581a(C1580a c1580a, OutputStream outputStream, CallableC1584c callableC1584c) {
                this(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException e) {
                    C1580a.this.f4279rH = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException e) {
                    C1580a.this.f4279rH = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException e) {
                    C1580a.this.f4279rH = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException e) {
                    C1580a.this.f4279rH = true;
                }
            }
        }

        private C1580a(C1582b c1582b) {
            C1579b.this = r4;
            this.f4278rG = c1582b;
        }

        public /* synthetic */ C1580a(C1579b c1579b, C1582b c1582b, CallableC1584c callableC1584c) {
            this(c1582b);
        }

        public void abort() throws IOException {
            C1579b.this.m40460a(this, false);
        }

        public void commit() throws IOException {
            if (!this.f4279rH) {
                C1579b.this.m40460a(this, true);
                return;
            }
            C1579b.this.m40460a(this, false);
            C1579b.this.remove(this.f4278rG.key);
        }

        /* renamed from: x */
        public OutputStream m40436x(int i) throws IOException {
            C1581a c1581a;
            synchronized (C1579b.this) {
                if (this.f4278rG.f4284rL != this) {
                    throw new IllegalStateException();
                }
                c1581a = new C1581a(this, new FileOutputStream(this.f4278rG.m40422z(i)), null);
            }
            return c1581a;
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.b$b */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/b$b.class */
    public final class C1582b {
        private final String key;

        /* renamed from: rJ */
        private final long[] f4282rJ;

        /* renamed from: rK */
        private boolean f4283rK;

        /* renamed from: rL */
        private C1580a f4284rL;

        /* renamed from: rM */
        private long f4285rM;

        private C1582b(String str) {
            C1579b.this = r4;
            this.key = str;
            this.f4282rJ = new long[r4.f4269om];
        }

        public /* synthetic */ C1582b(C1579b c1579b, String str, CallableC1584c callableC1584c) {
            this(str);
        }

        /* renamed from: b */
        public void m40429b(String[] strArr) throws IOException {
            if (strArr.length == C1579b.this.f4269om) {
                for (int i = 0; i < strArr.length; i++) {
                    try {
                        this.f4282rJ[i] = Long.parseLong(strArr[i]);
                    } catch (NumberFormatException e) {
                        throw m40427c(strArr);
                    }
                }
                return;
            }
            throw m40427c(strArr);
        }

        /* renamed from: c */
        private IOException m40427c(String[] strArr) throws IOException {
            StringBuilder m8728C = C22128a.m8728C("unexpected journal line: ");
            m8728C.append(Arrays.toString(strArr));
            throw new IOException(m8728C.toString());
        }

        /* renamed from: jW */
        public String m40424jW() throws IOException {
            long[] jArr;
            StringBuilder sb = new StringBuilder();
            for (long j : this.f4282rJ) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        /* renamed from: y */
        public File m40423y(int i) {
            return new File(C1579b.this.f4264nR, C22128a.m8614i(new StringBuilder(), this.key, StringConstant.DOT, i));
        }

        /* renamed from: z */
        public File m40422z(int i) {
            File file = C1579b.this.f4264nR;
            return new File(file, this.key + StringConstant.DOT + i + ".tmp");
        }
    }

    /* renamed from: com.freshchat.consumer.sdk.j.a.b$c */
    /* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a/b$c.class */
    public final class C1583c implements Closeable {
        private final String key;

        /* renamed from: rM */
        private final long f4287rM;

        /* renamed from: rN */
        private final InputStream[] f4288rN;

        private C1583c(String str, long j, InputStream[] inputStreamArr) {
            C1579b.this = r5;
            this.key = str;
            this.f4287rM = j;
            this.f4288rN = inputStreamArr;
        }

        public /* synthetic */ C1583c(C1579b c1579b, String str, long j, InputStream[] inputStreamArr, CallableC1584c callableC1584c) {
            this(str, j, inputStreamArr);
        }

        /* renamed from: ad */
        public InputStream m40421ad(int i) {
            return this.f4288rN[i];
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            for (InputStream inputStream : this.f4288rN) {
                C1579b.closeQuietly(inputStream);
            }
        }
    }

    private C1579b(File file, int i, int i2, long j) {
        this.f4264nR = file;
        this.f4267nU = i;
        this.f4265nS = new File(file, "journal");
        this.f4266nT = new File(file, "journal.tmp");
        this.f4269om = i2;
        this.f4268ol = j;
    }

    /* renamed from: a */
    private C1580a m40455a(String str, long j) throws IOException {
        synchronized (this) {
            m40439jU();
            m40449bG(str);
            C1582b c1582b = this.f4272op.get(str);
            if (j == -1 || (c1582b != null && c1582b.f4285rM == j)) {
                if (c1582b == null) {
                    c1582b = new C1582b(this, str, null);
                    this.f4272op.put(str, c1582b);
                } else if (c1582b.f4284rL != null) {
                    return null;
                }
                C1580a c1580a = new C1580a(this, c1582b, null);
                c1582b.f4284rL = c1580a;
                Writer writer = this.f4271oo;
                writer.write("DIRTY " + str + '\n');
                this.f4271oo.flush();
                return c1580a;
            }
            return null;
        }
    }

    /* renamed from: a */
    public static C1579b m40456a(File file, int i, int i2, long j) throws IOException {
        if (j > 0) {
            if (i2 <= 0) {
                throw new IllegalArgumentException("valueCount <= 0");
            }
            C1579b c1579b = new C1579b(file, i, i2, j);
            if (c1579b.f4265nS.exists()) {
                try {
                    c1579b.m40443jQ();
                    c1579b.m40442jR();
                    c1579b.f4271oo = new BufferedWriter(new FileWriter(c1579b.f4265nS, true), 8192);
                    return c1579b;
                } catch (IOException e) {
                    c1579b.delete();
                }
            }
            file.mkdirs();
            C1579b c1579b2 = new C1579b(file, i, i2, j);
            c1579b2.m40441jS();
            return c1579b2;
        }
        throw new IllegalArgumentException("maxSize <= 0");
    }

    /* renamed from: a */
    public void m40460a(C1580a c1580a, boolean z) throws IOException {
        synchronized (this) {
            C1582b c1582b = c1580a.f4278rG;
            if (c1582b.f4284rL != c1580a) {
                throw new IllegalStateException();
            }
            int i = 0;
            if (z) {
                i = 0;
                if (!c1582b.f4283rK) {
                    int i2 = 0;
                    while (true) {
                        i = 0;
                        if (i2 >= this.f4269om) {
                            break;
                        } else if (!c1582b.m40422z(i2).exists()) {
                            c1580a.abort();
                            throw new IllegalStateException("edit didn't create file " + i2);
                        } else {
                            i2++;
                        }
                    }
                }
            }
            while (i < this.f4269om) {
                File m40422z = c1582b.m40422z(i);
                if (!z) {
                    m40453b(m40422z);
                } else if (m40422z.exists()) {
                    File m40423y = c1582b.m40423y(i);
                    m40422z.renameTo(m40423y);
                    long j = c1582b.f4282rJ[i];
                    long length = m40423y.length();
                    c1582b.f4282rJ[i] = length;
                    this.f4270on = (this.f4270on - j) + length;
                }
                i++;
            }
            this.f4273qF++;
            c1582b.f4284rL = null;
            if (c1582b.f4283rK || z) {
                c1582b.f4283rK = true;
                this.f4271oo.write("CLEAN " + c1582b.key + c1582b.m40424jW() + '\n');
                if (z) {
                    long j2 = this.f4274qG;
                    this.f4274qG = 1 + j2;
                    c1582b.f4285rM = j2;
                }
            } else {
                this.f4272op.remove(c1582b.key);
                this.f4271oo.write("REMOVE " + c1582b.key + '\n');
            }
            if (this.f4270on > this.f4268ol || m40440jT()) {
                this.f4275qH.submit(this.f4276qI);
            }
        }
    }

    /* renamed from: b */
    private static void m40453b(File file) throws IOException {
        C1732x.m39781f(file);
    }

    /* renamed from: bD */
    private void m40452bD(String str) throws IOException {
        String[] split = str.split(StringConstant.SPACE);
        if (split.length >= 2) {
            String str2 = split[1];
            if (split[0].equals("REMOVE") && split.length == 2) {
                this.f4272op.remove(str2);
                return;
            }
            C1582b c1582b = this.f4272op.get(str2);
            C1582b c1582b2 = c1582b;
            if (c1582b == null) {
                c1582b2 = new C1582b(this, str2, null);
                this.f4272op.put(str2, c1582b2);
            }
            if (split[0].equals("CLEAN") && split.length == this.f4269om + 2) {
                c1582b2.f4283rK = true;
                c1582b2.f4284rL = null;
                c1582b2.m40429b((String[]) copyOfRange(split, 2, split.length));
                return;
            } else if (split[0].equals("DIRTY") && split.length == 2) {
                c1582b2.f4284rL = new C1580a(this, c1582b2, null);
                return;
            } else if (split[0].equals("READ") && split.length == 2) {
                return;
            } else {
                throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
            }
        }
        throw new IOException(C22128a.m8543z2("unexpected journal line: ", str));
    }

    /* renamed from: bG */
    private void m40449bG(String str) {
        if (str.contains(StringConstant.SPACE) || str.contains(StringConstant.NEW_LINE) || str.contains("\r")) {
            throw new IllegalArgumentException(C22128a.m8725C2("keys must not contain spaces or newlines: \"", str, "\""));
        }
    }

    /* renamed from: c */
    public static String m40447c(InputStream inputStream) throws IOException {
        StringBuilder sb = new StringBuilder(80);
        while (true) {
            int read = inputStream.read();
            if (read != -1) {
                if (read == 10) {
                    int length = sb.length();
                    if (length > 0) {
                        int i = length - 1;
                        if (sb.charAt(i) == '\r') {
                            sb.setLength(i);
                        }
                    }
                    return sb.toString();
                }
                sb.append((char) read);
            } else {
                throw new EOFException();
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    private static <T> T[] copyOfRange(T[] tArr, int i, int i2) {
        int length = tArr.length;
        if (i <= i2) {
            if (i < 0 || i > length) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = i2 - i;
            int min = Math.min(i3, length - i);
            T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), i3));
            System.arraycopy(tArr, i, tArr2, 0, min);
            return tArr2;
        }
        throw new IllegalArgumentException();
    }

    public static void deleteContents(File file) throws IOException {
        C1732x.m39782e(file);
    }

    /* renamed from: jQ */
    private void m40443jQ() throws IOException {
        BufferedInputStream bufferedInputStream = new BufferedInputStream(new FileInputStream(this.f4265nS), 8192);
        try {
            String m40447c = m40447c(bufferedInputStream);
            String m40447c2 = m40447c(bufferedInputStream);
            String m40447c3 = m40447c(bufferedInputStream);
            String m40447c4 = m40447c(bufferedInputStream);
            String m40447c5 = m40447c(bufferedInputStream);
            if (!"libcore.io.DiskLruCache".equals(m40447c) || !"1".equals(m40447c2) || !Integer.toString(this.f4267nU).equals(m40447c3) || !Integer.toString(this.f4269om).equals(m40447c4) || !"".equals(m40447c5)) {
                throw new IOException("unexpected journal header: [" + m40447c + ", " + m40447c2 + ", " + m40447c4 + ", " + m40447c5 + "]");
            }
            while (true) {
                try {
                    m40452bD(m40447c(bufferedInputStream));
                } catch (EOFException e) {
                    return;
                }
            }
        } finally {
            closeQuietly(bufferedInputStream);
        }
    }

    /* renamed from: jR */
    private void m40442jR() throws IOException {
        m40453b(this.f4266nT);
        Iterator<C1582b> it = this.f4272op.values().iterator();
        while (it.hasNext()) {
            C1582b next = it.next();
            if (next.f4284rL == null) {
                for (int i = 0; i < this.f4269om; i++) {
                    this.f4270on += next.f4282rJ[i];
                }
            } else {
                next.f4284rL = null;
                for (int i2 = 0; i2 < this.f4269om; i2++) {
                    m40453b(next.m40423y(i2));
                    m40453b(next.m40422z(i2));
                }
                it.remove();
            }
        }
    }

    /* renamed from: jS */
    public void m40441jS() throws IOException {
        synchronized (this) {
            Writer writer = this.f4271oo;
            if (writer != null) {
                writer.close();
            }
            BufferedWriter bufferedWriter = new BufferedWriter(new FileWriter(this.f4266nT), 8192);
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write("1");
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f4267nU));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(Integer.toString(this.f4269om));
            bufferedWriter.write(StringConstant.NEW_LINE);
            bufferedWriter.write(StringConstant.NEW_LINE);
            for (C1582b c1582b : this.f4272op.values()) {
                bufferedWriter.write(c1582b.f4284rL != null ? "DIRTY " + c1582b.key + '\n' : "CLEAN " + c1582b.key + c1582b.m40424jW() + '\n');
            }
            bufferedWriter.close();
            this.f4266nT.renameTo(this.f4265nS);
            this.f4271oo = new BufferedWriter(new FileWriter(this.f4265nS, true), 8192);
        }
    }

    /* renamed from: jT */
    public boolean m40440jT() {
        int i = this.f4273qF;
        return i >= 2000 && i >= this.f4272op.size();
    }

    /* renamed from: jU */
    private void m40439jU() {
        if (this.f4271oo != null) {
            return;
        }
        throw new IllegalStateException("cache is closed");
    }

    public void trimToSize() throws IOException {
        while (this.f4270on > this.f4268ol) {
            remove(this.f4272op.entrySet().iterator().next().getKey());
        }
    }

    /* renamed from: bE */
    public C1583c m40451bE(String str) throws IOException {
        synchronized (this) {
            m40439jU();
            m40449bG(str);
            C1582b c1582b = this.f4272op.get(str);
            if (c1582b == null) {
                return null;
            }
            if (!c1582b.f4283rK) {
                return null;
            }
            InputStream[] inputStreamArr = new InputStream[this.f4269om];
            for (int i = 0; i < this.f4269om; i++) {
                try {
                    inputStreamArr[i] = new FileInputStream(c1582b.m40423y(i));
                } catch (FileNotFoundException e) {
                    return null;
                }
            }
            this.f4273qF++;
            this.f4271oo.append((CharSequence) ("READ " + str + '\n'));
            if (m40440jT()) {
                this.f4275qH.submit(this.f4276qI);
            }
            return new C1583c(this, str, c1582b.f4285rM, inputStreamArr, null);
        }
    }

    /* renamed from: bF */
    public C1580a m40450bF(String str) throws IOException {
        return m40455a(str, -1L);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this) {
            if (this.f4271oo == null) {
                return;
            }
            Iterator it = new ArrayList(this.f4272op.values()).iterator();
            while (it.hasNext()) {
                C1582b c1582b = (C1582b) it.next();
                if (c1582b.f4284rL != null) {
                    c1582b.f4284rL.abort();
                }
            }
            trimToSize();
            this.f4271oo.close();
            this.f4271oo = null;
        }
    }

    public void delete() throws IOException {
        close();
        deleteContents(this.f4264nR);
    }

    public void flush() throws IOException {
        synchronized (this) {
            m40439jU();
            trimToSize();
            this.f4271oo.flush();
        }
    }

    public boolean isClosed() {
        return this.f4271oo == null;
    }

    public boolean remove(String str) throws IOException {
        synchronized (this) {
            m40439jU();
            m40449bG(str);
            C1582b c1582b = this.f4272op.get(str);
            if (c1582b != null && c1582b.f4284rL == null) {
                for (int i = 0; i < this.f4269om; i++) {
                    File m40423y = c1582b.m40423y(i);
                    if (!m40423y.delete()) {
                        throw new IOException("failed to delete " + m40423y);
                    }
                    this.f4270on -= c1582b.f4282rJ[i];
                    c1582b.f4282rJ[i] = 0;
                }
                this.f4273qF++;
                this.f4271oo.append((CharSequence) ("REMOVE " + str + '\n'));
                this.f4272op.remove(str);
                if (m40440jT()) {
                    this.f4275qH.submit(this.f4276qI);
                }
                return true;
            }
            return false;
        }
    }
}
