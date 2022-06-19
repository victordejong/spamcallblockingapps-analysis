package p223r7;

import java.nio.ByteOrder;
import p148k7.C3371t;
import p223r7.C4232f;
/* renamed from: r7.e */
/* loaded from: classes2-dex2jar.jar:r7/e.class */
public class C4231e implements C3371t.AbstractC3373b<byte[]> {

    /* renamed from: a */
    public final /* synthetic */ C4232f.C4233a f13248a;

    public C4231e(C4232f.C4233a c4233a) {
        this.f13248a = c4233a;
    }

    @Override // p148k7.C3371t.AbstractC3373b
    /* renamed from: a */
    public void mo1263a(byte[] bArr) {
        byte[] bArr2 = bArr;
        C4232f.C4233a c4233a = this.f13248a;
        if (c4233a.f13252b) {
            C4232f.this.f13250k.update(bArr2, 0, 2);
        }
        this.f13248a.f13254d.m2335a(C4232f.m1266p(bArr2, 0, ByteOrder.LITTLE_ENDIAN) & 65535, new C4230d(this));
    }
}
