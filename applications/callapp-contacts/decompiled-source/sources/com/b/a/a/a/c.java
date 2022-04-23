package com.b.a.a.a;

import android.support.v4.media.session.PlaybackStateCompat;
import com.b.a.e;
import com.b.a.f;
import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/c.class */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    public boolean f7037a;

    /* renamed from: b  reason: collision with root package name */
    private byte f7038b;

    /* renamed from: c  reason: collision with root package name */
    private byte f7039c;

    /* renamed from: d  reason: collision with root package name */
    private byte f7040d;
    private byte e;
    private byte f;
    private byte g;
    private int h;

    public c() {
    }

    public c(ByteBuffer byteBuffer) {
        long a2 = e.a(byteBuffer);
        this.f7038b = (byte) (((-268435456) & a2) >> 28);
        this.f7039c = (byte) ((201326592 & a2) >> 26);
        this.f7040d = (byte) ((50331648 & a2) >> 24);
        this.e = (byte) ((12582912 & a2) >> 22);
        this.f = (byte) ((3145728 & a2) >> 20);
        this.g = (byte) ((917504 & a2) >> 17);
        this.f7037a = ((PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH & a2) >> 16) > 0;
        this.h = (int) (a2 & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }

    public final void a(ByteBuffer byteBuffer) {
        f.b(byteBuffer, (this.f7038b << 28) | 0 | (this.f7039c << 26) | (this.f7040d << 24) | (this.e << 22) | (this.f << 20) | (this.g << 17) | ((this.f7037a ? 1 : 0) << 16) | this.h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f7039c == cVar.f7039c && this.f7038b == cVar.f7038b && this.h == cVar.h && this.f7040d == cVar.f7040d && this.f == cVar.f && this.e == cVar.e && this.f7037a == cVar.f7037a && this.g == cVar.g;
    }

    public final int hashCode() {
        return (((((((((((((this.f7038b * 31) + this.f7039c) * 31) + this.f7040d) * 31) + this.e) * 31) + this.f) * 31) + this.g) * 31) + (this.f7037a ? 1 : 0)) * 31) + this.h;
    }

    public final String toString() {
        return "SampleFlags{reserved=" + ((int) this.f7038b) + ", isLeading=" + ((int) this.f7039c) + ", depOn=" + ((int) this.f7040d) + ", isDepOn=" + ((int) this.e) + ", hasRedundancy=" + ((int) this.f) + ", padValue=" + ((int) this.g) + ", isDiffSample=" + this.f7037a + ", degradPrio=" + this.h + '}';
    }
}
