package p065f.p066a.p068b.p069a.p070r;

import android.util.Log;
import com.aotter.net.volley.toolbox.JsonRequest;
import java.io.UnsupportedEncodingException;
/* renamed from: f.a.b.a.r.e */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/e.class */
public class C4271e implements Cloneable {

    /* renamed from: a */
    public int f10336a;

    /* renamed from: b */
    public byte[] f10337b;

    public C4271e(int i, byte[] bArr) {
        if (bArr != null) {
            this.f10336a = i;
            this.f10337b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f10337b, 0, bArr.length);
            return;
        }
        throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }

    public C4271e(String str) {
        try {
            this.f10337b = str.getBytes(JsonRequest.PROTOCOL_CHARSET);
            this.f10336a = 106;
        } catch (UnsupportedEncodingException e) {
            Log.e("EncodedStringValue", "Default encoding must be supported.", e);
        }
    }

    public C4271e(byte[] bArr) {
        this(106, bArr);
    }

    /* renamed from: b */
    public void m29157b(byte[] bArr) {
        if (bArr != null) {
            this.f10337b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f10337b, 0, bArr.length);
            return;
        }
        throw new NullPointerException("EncodedStringValue: Text-string is null.");
    }

    public Object clone() throws CloneNotSupportedException {
        super.clone();
        byte[] bArr = this.f10337b;
        int length = bArr.length;
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        try {
            return new C4271e(this.f10336a, bArr2);
        } catch (Exception e) {
            Log.e("EncodedStringValue", "failed to clone an EncodedStringValue: " + this);
            e.printStackTrace();
            throw new CloneNotSupportedException(e.getMessage());
        }
    }

    /* renamed from: d */
    public int m29156d() {
        return this.f10336a;
    }

    /* renamed from: e */
    public String m29155e() {
        int i = this.f10336a;
        if (i == 0) {
            return new String(this.f10337b);
        }
        try {
            return new String(this.f10337b, C4269c.m29159a(i));
        } catch (UnsupportedEncodingException e) {
            try {
                return new String(this.f10337b, "iso-8859-1");
            } catch (UnsupportedEncodingException e2) {
                return new String(this.f10337b);
            }
        }
    }

    /* renamed from: f */
    public byte[] m29154f() {
        byte[] bArr = this.f10337b;
        byte[] bArr2 = new byte[bArr.length];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }
}
