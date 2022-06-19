package org.objenesis.p596a.p598b;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import org.objenesis.ObjenesisException;
import org.objenesis.p596a.AbstractC21005a;
/* renamed from: org.objenesis.a.b.c */
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/c.class */
public final class C21011c<T> implements AbstractC21005a<T> {

    /* renamed from: a */
    private final ObjectInputStream f67605a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.objenesis.a.b.c$a */
    /* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/c$a.class */
    public static final class C21012a extends InputStream {

        /* renamed from: d */
        private static final int[] f67606d = {1, 2, 2};

        /* renamed from: f */
        private static byte[] f67607f;

        /* renamed from: g */
        private static byte[] f67608g;

        /* renamed from: e */
        private final byte[][] f67612e;

        /* renamed from: a */
        private int f67609a = 0;

        /* renamed from: c */
        private int f67611c = 0;

        /* renamed from: b */
        private byte[] f67610b = f67607f;

        static {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeShort(-21267);
                dataOutputStream.writeShort(5);
                f67607f = byteArrayOutputStream.toByteArray();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream2);
                dataOutputStream2.writeByte(115);
                dataOutputStream2.writeByte(113);
                dataOutputStream2.writeInt(8257536);
                f67608g = byteArrayOutputStream2.toByteArray();
            } catch (IOException e) {
                throw new Error("IOException: " + e.getMessage());
            }
        }

        /* JADX WARN: Type inference failed for: r1v21, types: [byte[], byte[][]] */
        public C21012a(Class<?> cls) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeByte(115);
                dataOutputStream.writeByte(114);
                dataOutputStream.writeUTF(cls.getName());
                dataOutputStream.writeLong(ObjectStreamClass.lookup(cls).getSerialVersionUID());
                dataOutputStream.writeByte(2);
                dataOutputStream.writeShort(0);
                dataOutputStream.writeByte(120);
                dataOutputStream.writeByte(112);
                this.f67612e = new byte[]{f67607f, byteArrayOutputStream.toByteArray(), f67608g};
            } catch (IOException e) {
                throw new Error("IOException: " + e.getMessage());
            }
        }

        /* renamed from: a */
        private void m139a() {
            this.f67609a = 0;
            int i = f67606d[this.f67611c];
            this.f67611c = i;
            this.f67610b = this.f67612e[i];
        }

        @Override // java.io.InputStream
        public final int available() {
            return Integer.MAX_VALUE;
        }

        @Override // java.io.InputStream
        public final int read() {
            byte[] bArr = this.f67610b;
            int i = this.f67609a;
            int i2 = i + 1;
            this.f67609a = i2;
            byte b = bArr[i];
            if (i2 >= bArr.length) {
                m139a();
            }
            return b;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int i3 = i2;
            int i4 = i;
            int length = this.f67610b.length - this.f67609a;
            while (true) {
                int i5 = length;
                if (i5 > i3) {
                    break;
                }
                System.arraycopy(this.f67610b, this.f67609a, bArr, i4, i5);
                i4 += i5;
                i3 -= i5;
                m139a();
                length = this.f67610b.length - this.f67609a;
            }
            if (i3 > 0) {
                System.arraycopy(this.f67610b, this.f67609a, bArr, i4, i3);
                this.f67609a += i3;
            }
            return i2;
        }
    }

    public C21011c(Class<T> cls) {
        if (!Serializable.class.isAssignableFrom(cls)) {
            throw new ObjenesisException(new NotSerializableException(cls + " not serializable"));
        }
        try {
            this.f67605a = new ObjectInputStream(new C21012a(cls));
        } catch (IOException e) {
            throw new Error("IOException: " + e.getMessage());
        }
    }

    @Override // org.objenesis.p596a.AbstractC21005a
    /* renamed from: a */
    public final T mo133a() {
        try {
            return (T) this.f67605a.readObject();
        } catch (ClassNotFoundException e) {
            throw new Error("ClassNotFoundException: " + e.getMessage());
        } catch (Exception e2) {
            throw new ObjenesisException(e2);
        }
    }
}
