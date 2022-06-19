package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.RecyclerView;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dmo.class */
final class dmo implements dls {

    /* renamed from: b */
    private int f14833b = -1;

    /* renamed from: c */
    private int f14834c = -1;

    /* renamed from: d */
    private int f14835d = 0;

    /* renamed from: e */
    private ByteBuffer f14836e = f14692a;

    /* renamed from: f */
    private ByteBuffer f14837f = f14692a;

    /* renamed from: g */
    private boolean f14838g;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final void mo9101a(ByteBuffer byteBuffer) {
        int i;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i2 = limit - position;
        switch (this.f14835d) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                i = (i2 / 3) << 1;
                break;
            case 3:
                i = i2 << 1;
                break;
            case 1073741824:
                i = i2 / 2;
                break;
            default:
                throw new IllegalStateException();
        }
        if (this.f14836e.capacity() < i) {
            this.f14836e = ByteBuffer.allocateDirect(i).order(ByteOrder.nativeOrder());
        } else {
            this.f14836e.clear();
        }
        switch (this.f14835d) {
            case RecyclerView.UNDEFINED_DURATION /* -2147483648 */:
                for (int i3 = position; i3 < limit; i3 += 3) {
                    this.f14836e.put(byteBuffer.get(i3 + 1));
                    this.f14836e.put(byteBuffer.get(i3 + 2));
                }
                break;
            case 3:
                for (int i4 = position; i4 < limit; i4++) {
                    this.f14836e.put((byte) 0);
                    this.f14836e.put((byte) ((byteBuffer.get(i4) & 255) - 128));
                }
                break;
            case 1073741824:
                while (position < limit) {
                    this.f14836e.put(byteBuffer.get(position + 2));
                    this.f14836e.put(byteBuffer.get(position + 3));
                    position += 4;
                }
                break;
            default:
                throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        this.f14836e.flip();
        this.f14837f = this.f14836e;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9104a() {
        return (this.f14835d == 0 || this.f14835d == 2) ? false : true;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: a */
    public final boolean mo9102a(int i, int i2, int i3) {
        boolean z;
        if (i3 == 3 || i3 == 2 || i3 == Integer.MIN_VALUE || i3 == 1073741824) {
            if (this.f14833b == i && this.f14834c == i2 && this.f14835d == i3) {
                z = false;
            } else {
                this.f14833b = i;
                this.f14834c = i2;
                this.f14835d = i3;
                if (i3 == 2) {
                    this.f14836e = f14692a;
                }
                z = true;
            }
            return z;
        }
        throw new zzhu(i, i2, i3);
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: b */
    public final int mo9100b() {
        return this.f14834c;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: c */
    public final int mo9098c() {
        return 2;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: d */
    public final void mo9097d() {
        this.f14838g = true;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: e */
    public final ByteBuffer mo9096e() {
        ByteBuffer byteBuffer = this.f14837f;
        this.f14837f = f14692a;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: f */
    public final boolean mo9095f() {
        return this.f14838g && this.f14837f == f14692a;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: g */
    public final void mo9094g() {
        this.f14837f = f14692a;
        this.f14838g = false;
    }

    @Override // com.google.android.gms.internal.ads.dls
    /* renamed from: h */
    public final void mo9093h() {
        mo9094g();
        this.f14836e = f14692a;
        this.f14833b = -1;
        this.f14834c = -1;
        this.f14835d = 0;
    }
}
