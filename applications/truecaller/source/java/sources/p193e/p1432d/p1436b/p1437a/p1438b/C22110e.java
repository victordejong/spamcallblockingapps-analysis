package p193e.p1432d.p1436b.p1437a.p1438b;

import com.truecaller.log.AssertionUtil;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.Objects;
/* renamed from: e.d.b.a.b.e */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/e.class */
public class C22110e implements Cloneable {

    /* renamed from: a */
    public int f61425a;

    /* renamed from: b */
    public byte[] f61426b;

    public C22110e(int i, byte[] bArr) {
        Objects.requireNonNull(bArr, "EncodedStringValue: Text-string is null.");
        this.f61425a = i;
        byte[] bArr2 = new byte[bArr.length];
        this.f61426b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }

    public C22110e(String str) {
        AssertionUtil.AlwaysFatal.isNotNull(str, "EncodedStringValue: Text-string is null");
        this.f61425a = 106;
        try {
            this.f61426b = str.getBytes(C22108c.m8797a(106));
        } catch (UnsupportedEncodingException e) {
            this.f61426b = str.getBytes();
        }
    }

    /* renamed from: a */
    public void m8796a(byte[] bArr) {
        AssertionUtil.AlwaysFatal.isNotNull(bArr, "Text-string is null.");
        if (this.f61426b == null) {
            byte[] bArr2 = new byte[bArr.length];
            this.f61426b = bArr2;
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            byteArrayOutputStream.write(this.f61426b);
            byteArrayOutputStream.write(bArr);
            this.f61426b = byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            e.printStackTrace();
            throw new NullPointerException("appendTextString: failed when write a new Text-string");
        }
    }

    /* renamed from: b */
    public String m8795b() {
        int i = this.f61425a;
        if (i == 0) {
            return new String(this.f61426b);
        }
        try {
            return new String(this.f61426b, C22108c.m8797a(i));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(this.f61426b, "iso-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return new String(this.f61426b);
            }
        }
    }

    /* renamed from: c */
    public byte[] m8794c() {
        byte[] bArr = this.f61426b;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public Object clone() throws CloneNotSupportedException {
        super.clone();
        byte[] bArr = this.f61426b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        try {
            return new C22110e(this.f61425a, bArr2);
        } catch (Exception e) {
            String str = "failed to clone an EncodedStringValue: " + this;
            e.printStackTrace();
            throw new CloneNotSupportedException(e.getMessage());
        }
    }

    /* renamed from: e */
    public void m8793e(byte[] bArr) {
        AssertionUtil.AlwaysFatal.isNotNull(bArr, "EncodedStringValue: Text-string is null.");
        byte[] bArr2 = new byte[bArr.length];
        this.f61426b = bArr2;
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
    }
}
