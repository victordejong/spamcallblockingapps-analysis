package p092c;

import com.mopub.mobileads.VastIconXmlManager;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.p518a.C18273i;
import p092c.p093a.C3186c;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u001d\b��\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010¢\u0006\u0002\b\u001bJ\b\u0010\u001c\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010¢\u0006\u0002\b J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010¢\u0006\u0002\b$J\u0015\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001aH\u0010¢\u0006\u0002\b(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\b\u00104\u001a\u00020\u0001H\u0016J\b\u00105\u001a\u00020\u0001H\u0016J\b\u00106\u001a\u00020\u0004H\u0016J\b\u00107\u001a\u00020\u0001H\u0002J\b\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010¢\u0006\u0002\b?J\b\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006B"}, m4298d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "segments", "", "", "directory", "", "([[B[I)V", "getDirectory$okio", "()[I", "getSegments$okio", "()[[B", "[[B", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "", "base64Url", "digest", "algorithm", "digest$okio", "equals", "", "other", "", "getSize", "", "getSize$okio", "hashCode", "hex", "hmac", "key", "hmac$okio", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "", "pos", "internalGet$okio", "lastIndexOf", "rangeEquals", VastIconXmlManager.OFFSET, "otherOffset", "byteCount", "string", "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toByteString", "toString", "write", "", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeReplace", "Ljava/lang/Object;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.aa */
/* loaded from: classes-dex2jar.jar:c/aa.class */
public final class C3187aa extends C3208i {

    /* renamed from: e */
    public final transient byte[][] f11564e;

    /* renamed from: f */
    public final transient int[] f11565f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3187aa(byte[][] segments, int[] directory) {
        super(C3208i.f11582c.f11585b);
        C18524p.m3840d(segments, "segments");
        C18524p.m3840d(directory, "directory");
        this.f11564e = segments;
        this.f11565f = directory;
    }

    /* renamed from: i */
    private final C3208i m39232i() {
        return new C3208i(mo39172g());
    }

    private final Object writeReplace() {
        return m39232i();
    }

    @Override // p092c.C3208i
    /* renamed from: a */
    public final C3208i mo39181a(String algorithm) {
        C18524p.m3840d(algorithm, "algorithm");
        MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
        int length = this.f11564e.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i >= length) {
                byte[] digest = messageDigest.digest();
                C18524p.m3843b(digest, "digest.digest()");
                return new C3208i(digest);
            }
            int[] iArr = this.f11565f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            messageDigest.update(this.f11564e[i], i4, i5 - i3);
            i++;
            i2 = i5;
        }
    }

    @Override // p092c.C3208i
    /* renamed from: a */
    public final void mo39184a(C3202f buffer, int i) {
        C18524p.m3840d(buffer, "buffer");
        int i2 = i + 0;
        int m39234a = C3186c.m39234a(this, 0);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = m39234a == 0 ? 0 : this.f11565f[m39234a - 1];
            int[] iArr = this.f11565f;
            int i5 = iArr[m39234a];
            int i6 = iArr[this.f11564e.length + m39234a];
            int min = Math.min(i2, (i5 - i4) + i4) - i3;
            int i7 = i6 + (i3 - i4);
            C3229y c3229y = new C3229y(this.f11564e[m39234a], i7, i7 + min, true, false);
            if (buffer.f11571a == null) {
                c3229y.f11640g = c3229y;
                c3229y.f11639f = c3229y.f11640g;
                buffer.f11571a = c3229y.f11639f;
            } else {
                C3229y c3229y2 = buffer.f11571a;
                C18524p.m3851a(c3229y2);
                C3229y c3229y3 = c3229y2.f11640g;
                C18524p.m3851a(c3229y3);
                c3229y3.m39103a(c3229y);
            }
            i3 += min;
            m39234a++;
        }
        buffer.f11572b += mo39173f();
    }

    @Override // p092c.C3208i
    /* renamed from: a */
    public final boolean mo39185a(int i, byte[] other, int i2, int i3) {
        C18524p.m3840d(other, "other");
        if (i < 0 || i > mo39173f() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int i5 = i;
        int m39234a = C3186c.m39234a(this, i);
        while (i5 < i4) {
            int i6 = m39234a == 0 ? 0 : this.f11565f[m39234a - 1];
            int[] iArr = this.f11565f;
            int i7 = iArr[m39234a];
            int i8 = iArr[this.f11564e.length + m39234a];
            int min = Math.min(i4, (i7 - i6) + i6) - i5;
            if (!C3195c.m39225a(this.f11564e[m39234a], i8 + (i5 - i6), other, i2, min)) {
                return false;
            }
            i2 += min;
            i5 += min;
            m39234a++;
        }
        return true;
    }

    @Override // p092c.C3208i
    /* renamed from: a */
    public final boolean mo39182a(C3208i other, int i) {
        C18524p.m3840d(other, "other");
        if (mo39173f() - i < 0) {
            return false;
        }
        int i2 = i + 0;
        int m39234a = C3186c.m39234a(this, 0);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = m39234a == 0 ? 0 : this.f11565f[m39234a - 1];
            int[] iArr = this.f11565f;
            int i6 = iArr[m39234a];
            int i7 = iArr[this.f11564e.length + m39234a];
            int min = Math.min(i2, (i6 - i5) + i5) - i3;
            if (!other.mo39185a(i4, this.f11564e[m39234a], i7 + (i3 - i5), min)) {
                return false;
            }
            i4 += min;
            i3 += min;
            m39234a++;
        }
        return true;
    }

    @Override // p092c.C3208i
    /* renamed from: b */
    public final byte mo39178b(int i) {
        C3195c.m39226a(this.f11565f[this.f11564e.length - 1], i, 1L);
        int m39234a = C3186c.m39234a(this, i);
        int i2 = m39234a == 0 ? 0 : this.f11565f[m39234a - 1];
        int[] iArr = this.f11565f;
        byte[][] bArr = this.f11564e;
        return bArr[m39234a][(i - i2) + iArr[bArr.length + m39234a]];
    }

    @Override // p092c.C3208i
    /* renamed from: c */
    public final String mo39176c() {
        return m39232i().mo39176c();
    }

    @Override // p092c.C3208i
    /* renamed from: d */
    public final String mo39175d() {
        return m39232i().mo39175d();
    }

    @Override // p092c.C3208i
    /* renamed from: e */
    public final C3208i mo39174e() {
        return m39232i().mo39174e();
    }

    @Override // p092c.C3208i
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C3208i)) {
            return false;
        }
        C3208i c3208i = (C3208i) obj;
        return c3208i.mo39173f() == mo39173f() && mo39182a(c3208i, mo39173f());
    }

    @Override // p092c.C3208i
    /* renamed from: f */
    public final int mo39173f() {
        return this.f11565f[this.f11564e.length - 1];
    }

    @Override // p092c.C3208i
    /* renamed from: g */
    public final byte[] mo39172g() {
        byte[] bArr = new byte[mo39173f()];
        int length = this.f11564e.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f11565f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            C18273i.m4223a(this.f11564e[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // p092c.C3208i
    /* renamed from: h */
    public final byte[] mo39171h() {
        return mo39172g();
    }

    @Override // p092c.C3208i
    public final int hashCode() {
        int a = m39187a();
        if (a != 0) {
            return a;
        }
        int length = this.f11564e.length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int[] iArr = this.f11565f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            byte[] bArr = this.f11564e[i];
            for (int i6 = i4; i6 < (i5 - i2) + i4; i6++) {
                i3 = (i3 * 31) + bArr[i6];
            }
            i++;
            i2 = i5;
        }
        m39186a(i3);
        return i3;
    }

    @Override // p092c.C3208i
    public final String toString() {
        return m39232i().toString();
    }
}
