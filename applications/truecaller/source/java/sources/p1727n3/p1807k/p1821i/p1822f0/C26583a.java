package p1727n3.p1807k.p1821i.p1822f0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: n3.k.i.f0.a */
/* loaded from: classes-dex2jar.jar:n3/k/i/f0/a.class */
public final class C26583a extends ClickableSpan {

    /* renamed from: a */
    public final int f74459a;

    /* renamed from: b */
    public final C26584b f74460b;

    /* renamed from: c */
    public final int f74461c;

    public C26583a(int i, C26584b c26584b, int i2) {
        this.f74459a = i;
        this.f74460b = c26584b;
        this.f74461c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f74459a);
        C26584b c26584b = this.f74460b;
        c26584b.f74463a.performAction(this.f74461c, bundle);
    }
}
