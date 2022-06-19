package p020b.p041h.p050l.p051f0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: b.h.l.f0.a */
/* loaded from: classes-dex2jar.jar:b/h/l/f0/a.class */
public final class C1632a extends ClickableSpan {

    /* renamed from: d */
    private final int f6262d;

    /* renamed from: e */
    private final C1634c f6263e;

    /* renamed from: f */
    private final int f6264f;

    public C1632a(int i, C1634c c1634c, int i2) {
        this.f6262d = i;
        this.f6263e = c1634c;
        this.f6264f = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f6262d);
        this.f6263e.m29503R(this.f6264f, bundle);
    }
}
