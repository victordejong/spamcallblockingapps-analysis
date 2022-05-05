package p065f.p066a.p068b.p069a.p070r;

import androidx.media2.exoplayer.external.extractor.p007ts.PsExtractor;
import java.util.HashMap;
import java.util.Map;
/* renamed from: f.a.b.a.r.p */
/* loaded from: classes-dex2jar.jar:f/a/b/a/r/p.class */
public class C4282p {

    /* renamed from: c */
    public static final byte[] f10352c = "from-data".getBytes();

    /* renamed from: d */
    public static final byte[] f10353d = "attachment".getBytes();

    /* renamed from: e */
    public static final byte[] f10354e = "inline".getBytes();

    /* renamed from: a */
    public Map<Integer, Object> f10355a;

    /* renamed from: b */
    public byte[] f10356b = null;

    public C4282p() {
        this.f10355a = null;
        this.f10355a = new HashMap();
    }

    /* renamed from: a */
    public void m29109a(int i) {
        this.f10355a.put(129, Integer.valueOf(i));
    }

    /* renamed from: a */
    public void m29108a(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(197, bArr);
            return;
        }
        throw new NullPointerException("null content-disposition");
    }

    /* renamed from: a */
    public byte[] m29110a() {
        return (byte[]) this.f10355a.get(Integer.valueOf((int) PsExtractor.AUDIO_STREAM));
    }

    /* renamed from: b */
    public void m29106b(byte[] bArr) {
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("Content-Id may not be null or empty.");
        } else if (bArr.length > 1 && ((char) bArr[0]) == '<' && ((char) bArr[bArr.length - 1]) == '>') {
            this.f10355a.put(Integer.valueOf((int) PsExtractor.AUDIO_STREAM), bArr);
        } else {
            byte[] bArr2 = new byte[bArr.length + 2];
            bArr2[0] = (byte) 60;
            bArr2[bArr2.length - 1] = (byte) 62;
            System.arraycopy(bArr, 0, bArr2, 1, bArr.length);
            this.f10355a.put(Integer.valueOf((int) PsExtractor.AUDIO_STREAM), bArr2);
        }
    }

    /* renamed from: b */
    public byte[] m29107b() {
        return (byte[]) this.f10355a.get(142);
    }

    /* renamed from: c */
    public void m29104c(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(142, bArr);
            return;
        }
        throw new NullPointerException("null content-location");
    }

    /* renamed from: c */
    public byte[] m29105c() {
        return (byte[]) this.f10355a.get(200);
    }

    /* renamed from: d */
    public void m29102d(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(200, bArr);
            return;
        }
        throw new NullPointerException("null content-transfer-encoding");
    }

    /* renamed from: d */
    public byte[] m29103d() {
        return (byte[]) this.f10355a.get(145);
    }

    /* renamed from: e */
    public void m29100e(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(145, bArr);
            return;
        }
        throw new NullPointerException("null content-type");
    }

    /* renamed from: e */
    public byte[] m29101e() {
        return (byte[]) this.f10355a.get(152);
    }

    /* renamed from: f */
    public void m29098f(byte[] bArr) {
        if (bArr != null) {
            this.f10356b = new byte[bArr.length];
            System.arraycopy(bArr, 0, this.f10356b, 0, bArr.length);
        }
    }

    /* renamed from: f */
    public byte[] m29099f() {
        return (byte[]) this.f10355a.get(151);
    }

    /* renamed from: g */
    public void m29097g(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(152, bArr);
            return;
        }
        throw new NullPointerException("null content-id");
    }

    /* renamed from: h */
    public void m29096h(byte[] bArr) {
        if (bArr != null) {
            this.f10355a.put(151, bArr);
            return;
        }
        throw new NullPointerException("null content-id");
    }
}
