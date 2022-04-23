package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbk;
import com.google.android.gms.internal.clearcut.zzco;
import com.mopub.nativeads.MoPubNativeAdPositioning;
/* renamed from: c.d.b.d.g.c.w */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/w.class */
public final class C4427w extends zzbk {

    /* renamed from: a */
    public int f16646a;

    /* renamed from: b */
    public int f16647b;

    /* renamed from: c */
    public int f16648c;

    /* renamed from: d */
    public int f16649d;

    /* renamed from: e */
    public int f16650e;

    public C4427w(byte[] bArr, int i, int i2, boolean z) {
        super();
        this.f16650e = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
        this.f16646a = i2 + i;
        this.f16648c = i;
        this.f16649d = i;
    }

    /* renamed from: a */
    public final int m25629a() {
        return this.f16648c - this.f16649d;
    }

    /* renamed from: b */
    public final int m25628b(int i) throws zzco {
        if (i >= 0) {
            int a = i + m25629a();
            int i2 = this.f16650e;
            if (a <= i2) {
                this.f16650e = a;
                int i3 = this.f16646a + this.f16647b;
                this.f16646a = i3;
                int i4 = i3 - this.f16649d;
                if (i4 > a) {
                    int i5 = i4 - a;
                    this.f16647b = i5;
                    this.f16646a = i3 - i5;
                } else {
                    this.f16647b = 0;
                }
                return i2;
            }
            throw zzco.zzbl();
        }
        throw new zzco("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }
}
