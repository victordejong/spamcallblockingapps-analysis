package com.google.android.gms.common;

import java.lang.ref.WeakReference;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/r.class */
abstract class r extends p {

    /* renamed from: b  reason: collision with root package name */
    private static final WeakReference<byte[]> f22919b = new WeakReference<>(null);

    /* renamed from: a  reason: collision with root package name */
    private WeakReference<byte[]> f22920a = f22919b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(byte[] bArr) {
        super(bArr);
    }

    protected abstract byte[] c();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.common.p
    public final byte[] d() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f22920a.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = c();
                this.f22920a = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }
}
