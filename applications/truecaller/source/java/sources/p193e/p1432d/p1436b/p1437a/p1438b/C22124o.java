package p193e.p1432d.p1436b.p1437a.p1438b;

import android.net.Uri;
import android.util.SparseArray;
import com.truecaller.log.AssertionUtil;
import io.agora.rtc.Constants;
import java.util.Objects;
/* renamed from: e.d.b.a.b.o */
/* loaded from: classes-dex2jar.jar:e/d/b/a/b/o.class */
public class C22124o {

    /* renamed from: e */
    public static final byte[] f61455e = "from-data".getBytes();

    /* renamed from: f */
    public static final byte[] f61456f = "attachment".getBytes();

    /* renamed from: g */
    public static final byte[] f61457g = "inline".getBytes();

    /* renamed from: a */
    public SparseArray<Object> f61458a;

    /* renamed from: b */
    public Uri f61459b = null;

    /* renamed from: c */
    public byte[] f61460c = null;

    /* renamed from: d */
    public int f61461d = 0;

    public C22124o() {
        this.f61458a = null;
        this.f61458a = new SparseArray<>();
    }

    /* renamed from: a */
    public int m8747a() {
        Integer num = (Integer) this.f61458a.get(Constants.ERR_WATERMARK_READ);
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* renamed from: b */
    public byte[] m8746b() {
        return (byte[]) this.f61458a.get(192);
    }

    /* renamed from: c */
    public byte[] m8745c() {
        return (byte[]) this.f61458a.get(142);
    }

    /* renamed from: d */
    public byte[] m8744d() {
        return (byte[]) this.f61458a.get(145);
    }

    /* renamed from: e */
    public byte[] m8743e() {
        return (byte[]) this.f61458a.get(Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT);
    }

    /* renamed from: f */
    public byte[] m8742f() {
        return (byte[]) this.f61458a.get(Constants.ERR_PUBLISH_STREAM_CDN_ERROR);
    }

    /* renamed from: g */
    public void m8741g(int i) {
        this.f61458a.put(Constants.ERR_WATERMARK_READ, Integer.valueOf(i));
    }

    /* renamed from: h */
    public void m8740h(byte[] bArr) {
        Objects.requireNonNull(bArr, "null content-disposition");
        this.f61458a.put(197, bArr);
    }

    /* renamed from: i */
    public void m8739i(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Content-Id may not be null or empty.");
        }
        AssertionUtil.AlwaysFatal.isFalse(bArr.length == 0, "Content-Id may not be null or empty.");
        if (bArr.length > 1 && ((char) bArr[0]) == '<' && ((char) bArr[bArr.length - 1]) == '>') {
            this.f61458a.put(192, bArr);
            return;
        }
        int length = bArr.length + 2;
        byte[] bArr2 = new byte[length];
        bArr2[0] = (byte) 60;
        bArr2[length - 1] = (byte) 62;
        System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
        this.f61458a.put(192, bArr2);
    }

    /* renamed from: j */
    public void m8738j(byte[] bArr) {
        Objects.requireNonNull(bArr, "null content-location");
        this.f61458a.put(142, bArr);
    }

    /* renamed from: k */
    public void m8737k(byte[] bArr) {
        Objects.requireNonNull(bArr, "null content-type");
        this.f61458a.put(145, bArr);
    }
}
