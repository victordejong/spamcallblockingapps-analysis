package p131c.p161d.p170b.p224d.p252g.p255c;

import com.google.android.gms.internal.clearcut.zzbb;
import com.google.android.gms.internal.clearcut.zzbi;
import com.google.android.gms.internal.clearcut.zzbn;
/* renamed from: c.d.b.d.g.c.t */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/c/t.class */
public final class C4414t {

    /* renamed from: a */
    public final zzbn f16633a;

    /* renamed from: b */
    public final byte[] f16634b;

    public C4414t(int i) {
        byte[] bArr = new byte[i];
        this.f16634b = bArr;
        this.f16633a = zzbn.m10820a(bArr);
    }

    public /* synthetic */ C4414t(int i, C4399q qVar) {
        this(i);
    }

    /* renamed from: a */
    public final zzbb m25640a() {
        if (this.f16633a.mo10751b() == 0) {
            return new zzbi(this.f16634b);
        }
        throw new IllegalStateException("Did not write as much data as expected.");
    }

    /* renamed from: b */
    public final zzbn m25639b() {
        return this.f16633a;
    }
}
