package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxh.class */
public final class dxh implements dwj {

    /* renamed from: d  reason: collision with root package name */
    long f27364d;
    long e;
    private dxe h;
    private ByteBuffer i;
    private ShortBuffer j;
    private boolean l;

    /* renamed from: b  reason: collision with root package name */
    float f27362b = 1.0f;

    /* renamed from: c  reason: collision with root package name */
    float f27363c = 1.0f;
    private int f = -1;
    private int g = -1;
    private ByteBuffer k = f27308a;

    public dxh() {
        ByteBuffer byteBuffer = f27308a;
        this.i = byteBuffer;
        this.j = byteBuffer.asShortBuffer();
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f27364d += remaining;
            dxe dxeVar = this.h;
            int remaining2 = asShortBuffer.remaining() / dxeVar.f27354a;
            int i = dxeVar.f27354a;
            dxeVar.a(remaining2);
            asShortBuffer.get(dxeVar.f27356c, dxeVar.g * dxeVar.f27354a, ((i * remaining2) << 1) / 2);
            dxeVar.g += remaining2;
            dxeVar.a();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i2 = (this.h.h * this.f) << 1;
        if (i2 > 0) {
            if (this.i.capacity() < i2) {
                ByteBuffer order = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
                this.i = order;
                this.j = order.asShortBuffer();
            } else {
                this.i.clear();
                this.j.clear();
            }
            dxe dxeVar2 = this.h;
            ShortBuffer shortBuffer = this.j;
            int min = Math.min(shortBuffer.remaining() / dxeVar2.f27354a, dxeVar2.h);
            shortBuffer.put(dxeVar2.f27357d, 0, dxeVar2.f27354a * min);
            dxeVar2.h -= min;
            System.arraycopy(dxeVar2.f27357d, min * dxeVar2.f27354a, dxeVar2.f27357d, 0, dxeVar2.h * dxeVar2.f27354a);
            this.e += i2;
            this.i.limit(i2);
            this.k = this.i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a() {
        return Math.abs(this.f27362b - 1.0f) >= 0.01f || Math.abs(this.f27363c - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean a(int i, int i2, int i3) throws zzii {
        if (i3 != 2) {
            throw new zzii(i, i2, i3);
        } else if (this.g == i && this.f == i2) {
            return false;
        } else {
            this.g = i;
            this.f = i2;
            return true;
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final int b() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void c() {
        dxe dxeVar = this.h;
        int i = dxeVar.g;
        int i2 = dxeVar.h + ((int) ((((i / (dxeVar.e / dxeVar.f)) + dxeVar.i) / dxeVar.f) + 0.5f));
        dxeVar.a((dxeVar.f27355b * 2) + i);
        for (int i3 = 0; i3 < dxeVar.f27355b * 2 * dxeVar.f27354a; i3++) {
            dxeVar.f27356c[(dxeVar.f27354a * i) + i3] = (short) 0;
        }
        dxeVar.g += dxeVar.f27355b * 2;
        dxeVar.a();
        if (dxeVar.h > i2) {
            dxeVar.h = i2;
        }
        dxeVar.g = 0;
        dxeVar.j = 0;
        dxeVar.i = 0;
        this.l = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final ByteBuffer d() {
        ByteBuffer byteBuffer = this.k;
        this.k = f27308a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final boolean e() {
        if (!this.l) {
            return false;
        }
        dxe dxeVar = this.h;
        return dxeVar == null || dxeVar.h == 0;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void f() {
        dxe dxeVar = new dxe(this.g, this.f);
        this.h = dxeVar;
        dxeVar.e = this.f27362b;
        this.h.f = this.f27363c;
        this.k = f27308a;
        this.f27364d = 0L;
        this.e = 0L;
        this.l = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    public final void g() {
        this.h = null;
        ByteBuffer byteBuffer = f27308a;
        this.i = byteBuffer;
        this.j = byteBuffer.asShortBuffer();
        this.k = f27308a;
        this.f = -1;
        this.g = -1;
        this.f27364d = 0L;
        this.e = 0L;
        this.l = false;
    }
}
