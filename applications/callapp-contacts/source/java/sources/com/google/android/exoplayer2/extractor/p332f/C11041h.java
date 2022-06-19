package com.google.android.exoplayer2.extractor.p332f;

import com.google.android.exoplayer2.util.C11617n;
import com.google.android.exoplayer2.util.C11628u;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.extractor.f.h */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/h.class */
public final class C11041h {

    /* renamed from: com.google.android.exoplayer2.extractor.f.h$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/f/h$a.class */
    public static final class C11042a {

        /* renamed from: a */
        final UUID f35915a;

        /* renamed from: b */
        public final int f35916b;

        /* renamed from: c */
        final byte[] f35917c;

        public C11042a(UUID uuid, int i, byte[] bArr) {
            this.f35915a = uuid;
            this.f35916b = i;
            this.f35917c = bArr;
        }
    }

    private C11041h() {
    }

    /* renamed from: a */
    public static UUID m21607a(byte[] bArr) {
        C11042a m21605b = m21605b(bArr);
        if (m21605b == null) {
            return null;
        }
        return m21605b.f35915a;
    }

    /* renamed from: a */
    public static byte[] m21606a(byte[] bArr, UUID uuid) {
        C11042a m21605b = m21605b(bArr);
        if (m21605b == null) {
            return null;
        }
        if (uuid.equals(m21605b.f35915a)) {
            return m21605b.f35917c;
        }
        C11617n.m19863a("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + m21605b.f35915a + ".");
        return null;
    }

    /* renamed from: b */
    public static C11042a m21605b(byte[] bArr) {
        C11628u c11628u = new C11628u(bArr);
        if (c11628u.f38735c < 32) {
            return null;
        }
        c11628u.m19801d(0);
        if (c11628u.m19792j() != c11628u.m19812a() + 4 || c11628u.m19792j() != 1886614376) {
            return null;
        }
        int m21685a = AbstractC11021a.m21685a(c11628u.m19792j());
        if (m21685a > 1) {
            C11617n.m19863a("PsshAtomUtil", "Unsupported pssh version: ".concat(String.valueOf(m21685a)));
            return null;
        }
        UUID uuid = new UUID(c11628u.m19790l(), c11628u.m19790l());
        if (m21685a == 1) {
            c11628u.m19799e(c11628u.m19787o() * 16);
        }
        int m19787o = c11628u.m19787o();
        if (m19787o != c11628u.m19812a()) {
            return null;
        }
        byte[] bArr2 = new byte[m19787o];
        c11628u.m19807a(bArr2, 0, m19787o);
        return new C11042a(uuid, m21685a, bArr2);
    }
}
