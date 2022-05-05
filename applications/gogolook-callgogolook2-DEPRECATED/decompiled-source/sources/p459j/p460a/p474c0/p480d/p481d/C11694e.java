package p459j.p460a.p474c0.p480d.p481d;

import android.util.Log;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
/* renamed from: j.a.c0.d.d.e */
/* loaded from: classes2-dex2jar.jar:j/a/c0/d/d/e.class */
public class C11694e implements Cloneable {

    /* renamed from: a */
    public int f26229a;

    /* renamed from: b */
    public byte[] f26230b;

    public C11694e(int i, String str) {
        if (str != null) {
            this.f26229a = i;
            try {
                this.f26230b = str.getBytes(C11692c.m8593a(i));
            } catch (UnsupportedEncodingException e) {
                Log.e("EncodedStringValue", "Input encoding " + i + " must be supported.", e);
                this.f26230b = str.getBytes();
            }
        } else {
            throw new NullPointerException("EncodedStringValue: Text-string is null");
        }
    }

    public C11694e(int i, byte[] bArr) {
        if (bArr != null) {
            this.f26229a = i;
            this.f26230b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f26230b, 0, bArr.length);
            return;
        }
        throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }

    public C11694e(String str) {
        this(106, str);
    }

    public C11694e(byte[] bArr) {
        this(106, bArr);
    }

    /* renamed from: a */
    public static C11694e m8591a(C11694e eVar) {
        if (eVar == null) {
            return null;
        }
        return new C11694e(eVar.f26229a, eVar.f26230b);
    }

    /* renamed from: a */
    public static C11694e[] m8590a(String[] strArr) {
        int length = strArr.length;
        if (length <= 0) {
            return null;
        }
        C11694e[] eVarArr = new C11694e[length];
        for (int i = 0; i < length; i++) {
            eVarArr[i] = new C11694e(strArr[i]);
        }
        return eVarArr;
    }

    /* renamed from: b */
    public void m8589b(byte[] bArr) {
        if (bArr == null) {
            throw new NullPointerException("Text-string is null.");
        } else if (this.f26230b == null) {
            this.f26230b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f26230b, 0, bArr.length);
        } else {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byteArrayOutputStream.write(this.f26230b);
                byteArrayOutputStream.write(bArr);
                this.f26230b = byteArrayOutputStream.toByteArray();
            } catch (IOException e) {
                e.printStackTrace();
                throw new NullPointerException("appendTextString: failed when write a new Text-string");
            }
        }
    }

    /* renamed from: c */
    public void m8588c(byte[] bArr) {
        if (bArr != null) {
            this.f26230b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f26230b, 0, bArr.length);
            return;
        }
        throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }

    public Object clone() throws CloneNotSupportedException {
        super.clone();
        byte[] bArr = this.f26230b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        try {
            return new C11694e(this.f26229a, bArr2);
        } catch (Exception e) {
            Log.e("EncodedStringValue", "failed to clone an EncodedStringValue: " + this);
            e.printStackTrace();
            throw new CloneNotSupportedException(e.getMessage());
        }
    }

    /* renamed from: d */
    public int m8587d() {
        return this.f26229a;
    }

    /* renamed from: e */
    public String m8586e() {
        int i = this.f26229a;
        if (i == 0) {
            return new String(this.f26230b);
        }
        try {
            return new String(this.f26230b, C11692c.m8593a(i));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(this.f26230b, "iso-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return new String(this.f26230b);
            }
        }
    }

    /* renamed from: f */
    public byte[] m8585f() {
        byte[] bArr = this.f26230b;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
