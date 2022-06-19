package org.bouncycastle.util;
/* loaded from: classes3-dex2jar.jar:org/bouncycastle/util/StoreException.class */
public class StoreException extends RuntimeException {

    /* renamed from: _e */
    private Throwable f7680_e;

    public StoreException(String str, Throwable th) {
        super(str);
        this.f7680_e = th;
    }

    @Override // java.lang.Throwable
    public Throwable getCause() {
        return this.f7680_e;
    }
}
