package p000;

import android.widget.CompoundButton;
import p193e.p194a.p619d.p620a.C11041v;
/* renamed from: m */
/* loaded from: classes2-dex2jar.jar:m.class */
public final class C25350m implements CompoundButton.OnCheckedChangeListener {

    /* renamed from: a */
    public final /* synthetic */ int f70764a;

    /* renamed from: b */
    public final /* synthetic */ Object f70765b;

    public C25350m(int i, Object obj) {
        this.f70764a = i;
        this.f70765b = obj;
    }

    @Override // android.widget.CompoundButton.OnCheckedChangeListener
    public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
        int i = this.f70764a;
        if (i == 0) {
            ((C11041v) this.f70765b).mo23920e(z);
        } else if (i != 1) {
            throw null;
        } else {
            ((C11041v) this.f70765b).mo23918h(z);
        }
    }
}
