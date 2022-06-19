package p000;

import android.widget.CompoundButton;
import p193e.p194a.p682e.p684b.p694n.C13000h;
/* renamed from: g */
/* loaded from: classes2-dex2jar.jar:g.class */
public final class C25277g implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ int f70711a;

    /* renamed from: b */
    public final /* synthetic */ Object f70712b;

    public C25277g(int i, Object obj) {
        this.f70711a = i;
        this.f70712b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.f70711a;
        if (i == 0) {
            ((C13000h) this.f70712b).m22274OA().mo22230J6(z);
        } else if (i == 1) {
            ((C13000h) this.f70712b).m22274OA().mo22222Yf(z);
        } else if (i != 2) {
            throw null;
        } else {
            ((C13000h) this.f70712b).m22274OA().mo22212wg(z);
        }
    }
}
