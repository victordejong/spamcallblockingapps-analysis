package org.objenesis.a.b;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.io.Serializable;
import org.objenesis.ObjenesisException;
/* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/c.class */
public final class c<T> implements org.objenesis.a.a<T> {

    /* renamed from: a  reason: collision with root package name */
    private final ObjectInputStream f39379a;

    /* loaded from: classes5-dex2jar.jar:org/objenesis/a/b/c$a.class */
    static final class a extends InputStream {

        /* renamed from: d  reason: collision with root package name */
        private static final int[] f39380d = {1, 2, 2};
        private static byte[] f;
        private static byte[] g;
        private final byte[][] e;

        /* renamed from: a  reason: collision with root package name */
        private int f39381a = 0;

        /* renamed from: c  reason: collision with root package name */
        private int f39383c = 0;

        /* renamed from: b  reason: collision with root package name */
        private byte[] f39382b = f;

        static {
            try {
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
                dataOutputStream.writeShort(-21267);
                dataOutputStream.writeShort(5);
                f = byteArrayOutputStream.toByteArray();
                ByteArrayOutputStream byteArrayOutputStream2 = new ByteArrayOutputStream();
                DataOutputStream dataOutputStream2 = new DataOutputStream(byteArrayOutputStream2);
                dataOutputStream2.writeByte(115);
                dataOutputStream2.writeByte(113);
                dataOutputStream2.writeInt(8257536);
                g = byteArrayOutputStream2.toByteArray();
            } catch (IOException e) {
                throw new Error("IOException: " + e.getMessage());
            }
        }

        /* JADX WARN: Type inference failed for: r1v21, types: [byte[], byte[][]] */
        public a(Class<?> cls) {
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
                this.e = new byte[]{f, byteArrayOutputStream.toByteArray(), g};
            } catch (IOException e) {
                throw new Error("IOException: " + e.getMessage());
            }
        }

        private void a() {
            this.f39381a = 0;
            int i = f39380d[this.f39383c];
            this.f39383c = i;
            this.f39382b = this.e[i];
        }

        @Override // java.io.InputStream
        public final int available() {
            return Integer.MAX_VALUE;
        }

        @Override // java.io.InputStream
        public final int read() {
            byte[] bArr = this.f39382b;
            int i = this.f39381a;
            int i2 = i + 1;
            this.f39381a = i2;
            byte b2 = bArr[i];
            if (i2 >= bArr.length) {
                a();
            }
            return b2;
        }

        @Override // java.io.InputStream
        public final int read(byte[] bArr, int i, int i2) {
            int length = this.f39382b.length - this.f39381a;
            int i3 = i2;
            int i4 = i;
            while (length <= i3) {
                System.arraycopy(this.f39382b, this.f39381a, bArr, i4, length);
                i4 += length;
                i3 -= length;
                a();
                length = this.f39382b.length - this.f39381a;
            }
            if (i3 > 0) {
                System.arraycopy(this.f39382b, this.f39381a, bArr, i4, i3);
                this.f39381a += i3;
            }
            return i2;
        }
    }

    public c(Class<T> cls) {
        if (Serializable.class.isAssignableFrom(cls)) {
            try {
                this.f39379a = new ObjectInputStream(new a(cls));
            } catch (IOException e) {
                throw new Error("IOException: " + e.getMessage());
            }
        } else {
            throw new ObjenesisException(new NotSerializableException(cls + " not serializable"));
        }
    }

    @Override // org.objenesis.a.a
    public final T a() {
        try {
            return (T) this.f39379a.readObject();
        } catch (ClassNotFoundException e) {
            throw new Error("ClassNotFoundException: " + e.getMessage());
        } catch (Exception e2) {
            throw new ObjenesisException(e2);
        }
    }
}
