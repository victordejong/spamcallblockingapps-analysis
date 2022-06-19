package p193e.p1577m.p1578a.p1642f.p1653e;

import java.lang.ref.WeakReference;
/* renamed from: e.m.a.f.e.k */
/* loaded from: classes2-dex2jar.jar:e/m/a/f/e/k.class */
public abstract class AbstractBinderC24989k extends AbstractBinderC24987i {

    /* renamed from: d */
    public static final WeakReference<byte[]> f69946d = new WeakReference<>(null);

    /* renamed from: c */
    public WeakReference<byte[]> f69947c = f69946d;

    public AbstractBinderC24989k(byte[] bArr) {
        super(bArr);
    }

    @Override // p193e.p1577m.p1578a.p1642f.p1653e.AbstractBinderC24987i
    /* renamed from: B1 */
    public final byte[] mo4244B1() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f69947c.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo4243C1();
                this.f69947c = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: C1 */
    public abstract byte[] mo4243C1();
}
