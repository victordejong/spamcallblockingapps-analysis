package p174n0;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: n0.a */
/* loaded from: classes-dex2jar.jar:n0/a.class */
public final class C3693a extends ClickableSpan {

    /* renamed from: a */
    public final int f12066a;

    /* renamed from: b */
    public final C3694b f12067b;

    /* renamed from: c */
    public final int f12068c;

    public C3693a(int i, C3694b c3694b, int i2) {
        this.f12066a = i;
        this.f12067b = c3694b;
        this.f12068c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f12066a);
        C3694b c3694b = this.f12067b;
        c3694b.f12070a.performAction(this.f12068c, bundle);
    }
}
