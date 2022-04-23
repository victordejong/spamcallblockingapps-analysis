package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.util.n;
import com.google.android.exoplayer2.util.u;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/h.class */
public final class h {

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/h$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        final UUID f21064a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21065b;

        /* renamed from: c  reason: collision with root package name */
        final byte[] f21066c;

        public a(UUID uuid, int i, byte[] bArr) {
            this.f21064a = uuid;
            this.f21065b = i;
            this.f21066c = bArr;
        }
    }

    private h() {
    }

    public static UUID a(byte[] bArr) {
        a b2 = b(bArr);
        if (b2 == null) {
            return null;
        }
        return b2.f21064a;
    }

    public static byte[] a(byte[] bArr, UUID uuid) {
        a b2 = b(bArr);
        if (b2 == null) {
            return null;
        }
        if (uuid.equals(b2.f21064a)) {
            return b2.f21066c;
        }
        n.a("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + b2.f21064a + ".");
        return null;
    }

    public static a b(byte[] bArr) {
        u uVar = new u(bArr);
        if (uVar.f22337c < 32) {
            return null;
        }
        uVar.d(0);
        if (uVar.j() != uVar.a() + 4 || uVar.j() != 1886614376) {
            return null;
        }
        int a2 = com.google.android.exoplayer2.extractor.f.a.a(uVar.j());
        if (a2 > 1) {
            n.a("PsshAtomUtil", "Unsupported pssh version: ".concat(String.valueOf(a2)));
            return null;
        }
        UUID uuid = new UUID(uVar.l(), uVar.l());
        if (a2 == 1) {
            uVar.e(uVar.o() * 16);
        }
        int o = uVar.o();
        if (o != uVar.a()) {
            return null;
        }
        byte[] bArr2 = new byte[o];
        uVar.a(bArr2, 0, o);
        return new a(uuid, a2, bArr2);
    }
}
