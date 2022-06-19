package com.p102b.p103a.p104a.p105a;

import android.support.p008v4.media.session.PlaybackStateCompat;
import com.p102b.p103a.C3515e;
import com.p102b.p103a.C3516f;
import java.nio.ByteBuffer;
import okhttp3.internal.p578ws.WebSocketProtocol;
/* renamed from: com.b.a.a.a.c */
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/c.class */
public final class C3458c {

    /* renamed from: a */
    public boolean f13043a;

    /* renamed from: b */
    private byte f13044b;

    /* renamed from: c */
    private byte f13045c;

    /* renamed from: d */
    private byte f13046d;

    /* renamed from: e */
    private byte f13047e;

    /* renamed from: f */
    private byte f13048f;

    /* renamed from: g */
    private byte f13049g;

    /* renamed from: h */
    private int f13050h;

    public C3458c() {
    }

    public C3458c(ByteBuffer byteBuffer) {
        long m37851a = C3515e.m37851a(byteBuffer);
        this.f13044b = (byte) (((-268435456) & m37851a) >> 28);
        this.f13045c = (byte) ((201326592 & m37851a) >> 26);
        this.f13046d = (byte) ((50331648 & m37851a) >> 24);
        this.f13047e = (byte) ((12582912 & m37851a) >> 22);
        this.f13048f = (byte) ((3145728 & m37851a) >> 20);
        this.f13049g = (byte) ((917504 & m37851a) >> 17);
        this.f13043a = ((PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH & m37851a) >> 16) > 0;
        this.f13050h = (int) (m37851a & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    /* renamed from: a */
    public final void m37934a(ByteBuffer byteBuffer) {
        C3516f.m37835b(byteBuffer, (this.f13044b << 28) | 0 | (this.f13045c << 26) | (this.f13046d << 24) | (this.f13047e << 22) | (this.f13048f << 20) | (this.f13049g << 17) | ((this.f13043a ? 1 : 0) << 16) | this.f13050h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C3458c c3458c = (C3458c) obj;
        return this.f13045c == c3458c.f13045c && this.f13044b == c3458c.f13044b && this.f13050h == c3458c.f13050h && this.f13046d == c3458c.f13046d && this.f13048f == c3458c.f13048f && this.f13047e == c3458c.f13047e && this.f13043a == c3458c.f13043a && this.f13049g == c3458c.f13049g;
    }

    public final int hashCode() {
        return (((((((((((((this.f13044b * 31) + this.f13045c) * 31) + this.f13046d) * 31) + this.f13047e) * 31) + this.f13048f) * 31) + this.f13049g) * 31) + (this.f13043a ? 1 : 0)) * 31) + this.f13050h;
    }

    public final String toString() {
        return "SampleFlags{reserved=" + ((int) this.f13044b) + ", isLeading=" + ((int) this.f13045c) + ", depOn=" + ((int) this.f13046d) + ", isDepOn=" + ((int) this.f13047e) + ", hasRedundancy=" + ((int) this.f13048f) + ", padValue=" + ((int) this.f13049g) + ", isDiffSample=" + this.f13043a + ", degradPrio=" + this.f13050h + '}';
    }
}
