package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.v */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/v.class */
abstract class AbstractBinderC6248v extends AbstractBinderC6221t {

    /* renamed from: e */
    private static final WeakReference<byte[]> f19733e = new WeakReference<>(null);

    /* renamed from: f */
    private WeakReference<byte[]> f19734f = f19733e;

    public AbstractBinderC6248v(byte[] bArr) {
        super(bArr);
    }

    @Override // com.google.android.gms.common.AbstractBinderC6221t
    /* renamed from: J0 */
    public final byte[] mo16759J0() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f19734f.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo16758a3();
                this.f19734f = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: a3 */
    protected abstract byte[] mo16758a3();
}
