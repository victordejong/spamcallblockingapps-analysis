package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* renamed from: com.google.android.gms.common.q */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/q.class */
abstract class AbstractBinderC2682q extends AbstractBinderC2680o {

    /* renamed from: b */
    private static final WeakReference<byte[]> f7447b = new WeakReference<>(null);

    /* renamed from: a */
    private WeakReference<byte[]> f7448a = f7447b;

    public AbstractBinderC2682q(byte[] bArr) {
        super(bArr);
    }

    @Override // com.google.android.gms.common.AbstractBinderC2680o
    /* renamed from: c */
    public final byte[] mo13898c() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f7448a.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo13805d();
                this.f7448a = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: d */
    protected abstract byte[] mo13805d();
}
