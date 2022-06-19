package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dxh.class */
public final class dxh implements dwj {

    /* renamed from: d */
    long f47945d;

    /* renamed from: e */
    long f47946e;

    /* renamed from: h */
    private dxe f47949h;

    /* renamed from: i */
    private ByteBuffer f47950i;

    /* renamed from: j */
    private ShortBuffer f47951j;

    /* renamed from: l */
    private boolean f47953l;

    /* renamed from: b */
    float f47943b = 1.0f;

    /* renamed from: c */
    float f47944c = 1.0f;

    /* renamed from: f */
    private int f47947f = -1;

    /* renamed from: g */
    private int f47948g = -1;

    /* renamed from: k */
    private ByteBuffer f47952k = f47795a;

    public dxh() {
        ByteBuffer byteBuffer = f47795a;
        this.f47950i = byteBuffer;
        this.f47951j = byteBuffer.asShortBuffer();
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final void mo15518a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasRemaining()) {
            ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
            int remaining = byteBuffer.remaining();
            this.f47945d += remaining;
            dxe dxeVar = this.f47949h;
            int remaining2 = asShortBuffer.remaining() / dxeVar.f47912a;
            int i = dxeVar.f47912a;
            dxeVar.m15530a(remaining2);
            asShortBuffer.get(dxeVar.f47914c, dxeVar.f47918g * dxeVar.f47912a, ((i * remaining2) << 1) / 2);
            dxeVar.f47918g += remaining2;
            dxeVar.m15531a();
            byteBuffer.position(byteBuffer.position() + remaining);
        }
        int i2 = (this.f47949h.f47919h * this.f47947f) << 1;
        if (i2 > 0) {
            if (this.f47950i.capacity() < i2) {
                ByteBuffer order = ByteBuffer.allocateDirect(i2).order(ByteOrder.nativeOrder());
                this.f47950i = order;
                this.f47951j = order.asShortBuffer();
            } else {
                this.f47950i.clear();
                this.f47951j.clear();
            }
            dxe dxeVar2 = this.f47949h;
            ShortBuffer shortBuffer = this.f47951j;
            int min = Math.min(shortBuffer.remaining() / dxeVar2.f47912a, dxeVar2.f47919h);
            shortBuffer.put(dxeVar2.f47915d, 0, dxeVar2.f47912a * min);
            dxeVar2.f47919h -= min;
            System.arraycopy(dxeVar2.f47915d, min * dxeVar2.f47912a, dxeVar2.f47915d, 0, dxeVar2.f47919h * dxeVar2.f47912a);
            this.f47946e += i2;
            this.f47950i.limit(i2);
            this.f47952k = this.f47950i;
        }
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15520a() {
        return Math.abs(this.f47943b - 1.0f) >= 0.01f || Math.abs(this.f47944c - 1.0f) >= 0.01f;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: a */
    public final boolean mo15519a(int i, int i2, int i3) throws zzii {
        if (i3 == 2) {
            if (this.f47948g == i && this.f47947f == i2) {
                return false;
            }
            this.f47948g = i;
            this.f47947f = i2;
            return true;
        }
        throw new zzii(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: b */
    public final int mo15517b() {
        return this.f47947f;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: c */
    public final void mo15516c() {
        dxe dxeVar = this.f47949h;
        int i = dxeVar.f47918g;
        int i2 = dxeVar.f47919h + ((int) ((((i / (dxeVar.f47916e / dxeVar.f47917f)) + dxeVar.f47920i) / dxeVar.f47917f) + 0.5f));
        dxeVar.m15530a((dxeVar.f47913b * 2) + i);
        for (int i3 = 0; i3 < dxeVar.f47913b * 2 * dxeVar.f47912a; i3++) {
            dxeVar.f47914c[(dxeVar.f47912a * i) + i3] = (short) 0;
        }
        dxeVar.f47918g += dxeVar.f47913b * 2;
        dxeVar.m15531a();
        if (dxeVar.f47919h > i2) {
            dxeVar.f47919h = i2;
        }
        dxeVar.f47918g = 0;
        dxeVar.f47921j = 0;
        dxeVar.f47920i = 0;
        this.f47953l = true;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: d */
    public final ByteBuffer mo15515d() {
        ByteBuffer byteBuffer = this.f47952k;
        this.f47952k = f47795a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: e */
    public final boolean mo15514e() {
        if (this.f47953l) {
            dxe dxeVar = this.f47949h;
            return dxeVar == null || dxeVar.f47919h == 0;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: f */
    public final void mo15513f() {
        dxe dxeVar = new dxe(this.f47948g, this.f47947f);
        this.f47949h = dxeVar;
        dxeVar.f47916e = this.f47943b;
        this.f47949h.f47917f = this.f47944c;
        this.f47952k = f47795a;
        this.f47945d = 0L;
        this.f47946e = 0L;
        this.f47953l = false;
    }

    @Override // com.google.android.gms.internal.ads.dwj
    /* renamed from: g */
    public final void mo15512g() {
        this.f47949h = null;
        ByteBuffer byteBuffer = f47795a;
        this.f47950i = byteBuffer;
        this.f47951j = byteBuffer.asShortBuffer();
        this.f47952k = f47795a;
        this.f47947f = -1;
        this.f47948g = -1;
        this.f47945d = 0L;
        this.f47946e = 0L;
        this.f47953l = false;
    }
}
