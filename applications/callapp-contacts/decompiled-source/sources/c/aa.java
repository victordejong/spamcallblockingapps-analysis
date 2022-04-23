package c;

import c.a.c;
import com.mopub.mobileads.VastIconXmlManager;
import java.security.MessageDigest;
import kotlin.Metadata;
import kotlin.a.i;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0015\n\u0002\b\u0007\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u000b\n��\n\u0002\u0010��\n��\n\u0002\u0010\b\n\u0002\b\u000b\n\u0002\u0010\u0005\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\b��\u0018��2\u00020\u0001B\u001d\b��\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007J\b\u0010\r\u001a\u00020\u000eH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0010H\u0016J\u0015\u0010\u0012\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u0010H\u0010¢\u0006\u0002\b\u0014J\u0013\u0010\u0015\u001a\u00020\u00162\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0096\u0002J\r\u0010\u0019\u001a\u00020\u001aH\u0010¢\u0006\u0002\b\u001bJ\b\u0010\u001c\u001a\u00020\u001aH\u0016J\b\u0010\u001d\u001a\u00020\u0010H\u0016J\u001d\u0010\u001e\u001a\u00020\u00012\u0006\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u0001H\u0010¢\u0006\u0002\b J\u0018\u0010!\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J\r\u0010#\u001a\u00020\u0004H\u0010¢\u0006\u0002\b$J\u0015\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001aH\u0010¢\u0006\u0002\b(J\u0018\u0010)\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010\"\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00042\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J(\u0010*\u001a\u00020\u00162\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010\u0017\u001a\u00020\u00012\u0006\u0010,\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0016J\u0010\u0010.\u001a\u00020\u00102\u0006\u0010/\u001a\u000200H\u0016J\u0018\u00101\u001a\u00020\u00012\u0006\u00102\u001a\u00020\u001a2\u0006\u00103\u001a\u00020\u001aH\u0016J\b\u00104\u001a\u00020\u0001H\u0016J\b\u00105\u001a\u00020\u0001H\u0016J\b\u00106\u001a\u00020\u0004H\u0016J\b\u00107\u001a\u00020\u0001H\u0002J\b\u00108\u001a\u00020\u0010H\u0016J\u0010\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<H\u0016J%\u00109\u001a\u00020:2\u0006\u0010=\u001a\u00020>2\u0006\u0010+\u001a\u00020\u001a2\u0006\u0010-\u001a\u00020\u001aH\u0010¢\u0006\u0002\b?J\b\u0010@\u001a\u00020AH\u0002R\u0014\u0010\u0005\u001a\u00020\u0006X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\b\u0010\tR\u001c\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000b¨\u0006B"}, d2 = {"Lokio/SegmentedByteString;", "Lokio/ByteString;", "segments", "", "", "directory", "", "([[B[I)V", "getDirectory$okio", "()[I", "getSegments$okio", "()[[B", "[[B", "asByteBuffer", "Ljava/nio/ByteBuffer;", "base64", "", "base64Url", "digest", "algorithm", "digest$okio", "equals", "", "other", "", "getSize", "", "getSize$okio", "hashCode", "hex", "hmac", "key", "hmac$okio", "indexOf", "fromIndex", "internalArray", "internalArray$okio", "internalGet", "", "pos", "internalGet$okio", "lastIndexOf", "rangeEquals", VastIconXmlManager.OFFSET, "otherOffset", "byteCount", "string", "charset", "Ljava/nio/charset/Charset;", "substring", "beginIndex", "endIndex", "toAsciiLowercase", "toAsciiUppercase", "toByteArray", "toByteString", "toString", "write", "", "out", "Ljava/io/OutputStream;", "buffer", "Lokio/Buffer;", "write$okio", "writeReplace", "Ljava/lang/Object;", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/aa.class */
public final class aa extends i {
    public final transient byte[][] e;
    public final transient int[] f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public aa(byte[][] segments, int[] directory) {
        super(i.f6296c.f6299b);
        p.d(segments, "segments");
        p.d(directory, "directory");
        this.e = segments;
        this.f = directory;
    }

    private final i i() {
        return new i(g());
    }

    private final Object writeReplace() {
        return i();
    }

    @Override // c.i
    public final i a(String algorithm) {
        p.d(algorithm, "algorithm");
        MessageDigest instance = MessageDigest.getInstance(algorithm);
        int length = this.e.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            int[] iArr = this.f;
            int i3 = iArr[length + i];
            int i4 = iArr[i];
            instance.update(this.e[i], i3, i4 - i2);
            i++;
            i2 = i4;
        }
        byte[] digest = instance.digest();
        p.b(digest, "digest.digest()");
        return new i(digest);
    }

    @Override // c.i
    public final void a(f buffer, int i) {
        p.d(buffer, "buffer");
        int i2 = i + 0;
        int a2 = c.a(this, 0);
        int i3 = 0;
        while (i3 < i2) {
            int i4 = a2 == 0 ? 0 : this.f[a2 - 1];
            int[] iArr = this.f;
            int i5 = iArr[a2];
            int i6 = iArr[this.e.length + a2];
            int min = Math.min(i2, (i5 - i4) + i4) - i3;
            int i7 = i6 + (i3 - i4);
            y yVar = new y(this.e[a2], i7, i7 + min, true, false);
            if (buffer.f6288a == null) {
                yVar.g = yVar;
                yVar.f = yVar.g;
                buffer.f6288a = yVar.f;
            } else {
                y yVar2 = buffer.f6288a;
                p.a(yVar2);
                y yVar3 = yVar2.g;
                p.a(yVar3);
                yVar3.a(yVar);
            }
            i3 += min;
            a2++;
        }
        buffer.f6289b += f();
    }

    @Override // c.i
    public final boolean a(int i, byte[] other, int i2, int i3) {
        p.d(other, "other");
        if (i < 0 || i > f() - i3 || i2 < 0 || i2 > other.length - i3) {
            return false;
        }
        int i4 = i3 + i;
        int a2 = c.a(this, i);
        int i5 = i;
        while (i5 < i4) {
            int i6 = a2 == 0 ? 0 : this.f[a2 - 1];
            int[] iArr = this.f;
            int i7 = iArr[a2];
            int i8 = iArr[this.e.length + a2];
            int min = Math.min(i4, (i7 - i6) + i6) - i5;
            if (!c.a(this.e[a2], i8 + (i5 - i6), other, i2, min)) {
                return false;
            }
            i2 += min;
            i5 += min;
            a2++;
        }
        return true;
    }

    @Override // c.i
    public final boolean a(i other, int i) {
        p.d(other, "other");
        if (f() - i < 0) {
            return false;
        }
        int i2 = i + 0;
        int a2 = c.a(this, 0);
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = a2 == 0 ? 0 : this.f[a2 - 1];
            int[] iArr = this.f;
            int i6 = iArr[a2];
            int i7 = iArr[this.e.length + a2];
            int min = Math.min(i2, (i6 - i5) + i5) - i3;
            if (!other.a(i4, this.e[a2], i7 + (i3 - i5), min)) {
                return false;
            }
            i4 += min;
            i3 += min;
            a2++;
        }
        return true;
    }

    @Override // c.i
    public final byte b(int i) {
        c.a(this.f[this.e.length - 1], i, 1L);
        int a2 = c.a(this, i);
        int i2 = a2 == 0 ? 0 : this.f[a2 - 1];
        int[] iArr = this.f;
        byte[][] bArr = this.e;
        return bArr[a2][(i - i2) + iArr[bArr.length + a2]];
    }

    @Override // c.i
    public final String c() {
        return i().c();
    }

    @Override // c.i
    public final String d() {
        return i().d();
    }

    @Override // c.i
    public final i e() {
        return i().e();
    }

    @Override // c.i
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return iVar.f() == f() && a(iVar, f());
    }

    @Override // c.i
    public final int f() {
        return this.f[this.e.length - 1];
    }

    @Override // c.i
    public final byte[] g() {
        byte[] bArr = new byte[f()];
        int length = this.e.length;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (i < length) {
            int[] iArr = this.f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            int i6 = i5 - i2;
            i.a(this.e[i], bArr, i3, i4, i4 + i6);
            i3 += i6;
            i++;
            i2 = i5;
        }
        return bArr;
    }

    @Override // c.i
    public final byte[] h() {
        return g();
    }

    @Override // c.i
    public final int hashCode() {
        int a2 = a();
        if (a2 != 0) {
            return a2;
        }
        int length = this.e.length;
        int i = 0;
        int i2 = 0;
        int i3 = 1;
        while (i < length) {
            int[] iArr = this.f;
            int i4 = iArr[length + i];
            int i5 = iArr[i];
            byte[] bArr = this.e[i];
            for (int i6 = i4; i6 < (i5 - i2) + i4; i6++) {
                i3 = (i3 * 31) + bArr[i6];
            }
            i++;
            i2 = i5;
        }
        a(i3);
        return i3;
    }

    @Override // c.i
    public final String toString() {
        return i().toString();
    }
}
