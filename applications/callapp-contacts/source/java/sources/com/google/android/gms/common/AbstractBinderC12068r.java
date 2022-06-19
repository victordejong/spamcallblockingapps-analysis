package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.r */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/r.class */
abstract class AbstractBinderC12068r extends AbstractBinderC12066p {

    /* renamed from: b */
    private static final WeakReference<byte[]> f39585b = new WeakReference<>(null);

    /* renamed from: a */
    private WeakReference<byte[]> f39586a = f39585b;

    public AbstractBinderC12068r(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: c */
    protected abstract byte[] mo19074c();

    @Override // com.google.android.gms.common.AbstractBinderC12066p
    /* renamed from: d */
    public final byte[] mo19073d() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f39586a.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo19074c();
                this.f39586a = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
