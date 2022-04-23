package p081h.p203i.p204a.p224e.p235d;

import java.lang.ref.WeakReference;
/* renamed from: h.i.a.e.d.z */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/d/z.class */
public abstract class AbstractBinderC7103z extends AbstractBinderC7101x {

    /* renamed from: c */
    public static final WeakReference<byte[]> f17220c = new WeakReference<>(null);

    /* renamed from: b */
    public WeakReference<byte[]> f17221b = f17220c;

    public AbstractBinderC7103z(byte[] bArr) {
        super(bArr);
    }

    @Override // p081h.p203i.p204a.p224e.p235d.AbstractBinderC7101x
    /* renamed from: G0 */
    public final byte[] mo21077G0() {
        byte[] bArr;
        synchronized (this) {
            byte[] bArr2 = this.f17221b.get();
            bArr = bArr2;
            if (bArr2 == null) {
                bArr = mo21076a();
                this.f17221b = new WeakReference<>(bArr);
            }
        }
        return bArr;
    }

    /* renamed from: a */
    public abstract byte[] mo21076a();
}
