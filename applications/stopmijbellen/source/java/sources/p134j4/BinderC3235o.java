package p134j4;

import android.os.Bundle;
import p220r4.C4203l;
/* renamed from: j4.o */
/* loaded from: classes-dex2jar.jar:j4/o.class */
public final class BinderC3235o extends BinderC3213i {

    /* renamed from: c */
    public final int f10891c;

    /* renamed from: d */
    public final String f10892d;

    /* renamed from: e */
    public final int f10893e;

    /* renamed from: f */
    public final /* synthetic */ C3238p f10894f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC3235o(C3238p c3238p, C4203l c4203l, int i, String str, int i2) {
        super(c3238p, c4203l);
        this.f10894f = c3238p;
        this.f10891c = i;
        this.f10892d = str;
        this.f10893e = i2;
    }

    @Override // p134j4.BinderC3213i, p189o4.AbstractC3867f0
    public final void zzd(Bundle bundle) {
        this.f10894f.f10913d.m1747c(this.f10822a);
        C3238p.f10908g.m1509c("onError(%d), retrying notifyModuleCompleted...", Integer.valueOf(bundle.getInt("error_code")));
        int i = this.f10893e;
        if (i > 0) {
            this.f10894f.m2518h(this.f10891c, this.f10892d, i - 1);
        }
    }
}
