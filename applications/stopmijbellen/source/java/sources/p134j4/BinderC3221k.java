package p134j4;

import android.os.Bundle;
import android.os.ParcelFileDescriptor;
import p220r4.C4203l;
/* renamed from: j4.k */
/* loaded from: classes-dex2jar.jar:j4/k.class */
public final class BinderC3221k extends BinderC3213i {

    /* renamed from: c */
    public final /* synthetic */ int f10857c;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ BinderC3221k(C3238p c3238p, C4203l c4203l, int i) {
        super(c3238p, c4203l);
        this.f10857c = i;
    }

    @Override // p134j4.BinderC3213i, p189o4.AbstractC3867f0
    /* renamed from: d */
    public void mo1753d(Bundle bundle, Bundle bundle2) {
        switch (this.f10857c) {
            case 0:
                this.f10823b.f10913d.m1747c(this.f10822a);
                C3238p.f10908g.m1507e("onGetChunkFileDescriptor", new Object[0]);
                this.f10822a.m1293b((ParcelFileDescriptor) bundle.getParcelable("chunk_file_descriptor"));
                return;
            default:
                this.f10823b.f10913d.m1747c(this.f10822a);
                C3238p.f10908g.m1507e("onGetChunkFileDescriptor", new Object[0]);
                return;
        }
    }
}
