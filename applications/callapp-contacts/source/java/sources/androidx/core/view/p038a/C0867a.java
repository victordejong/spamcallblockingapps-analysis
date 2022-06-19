package androidx.core.view.p038a;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: androidx.core.view.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/a.class */
public final class C0867a extends ClickableSpan {

    /* renamed from: a */
    private final int f3640a;

    /* renamed from: b */
    private final C0869c f3641b;

    /* renamed from: c */
    private final int f3642c;

    public C0867a(int i, C0869c c0869c, int i2) {
        this.f3640a = i;
        this.f3641b = c0869c;
        this.f3642c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f3640a);
        C0869c c0869c = this.f3641b;
        int i = this.f3642c;
        if (Build.VERSION.SDK_INT >= 16) {
            c0869c.f3644a.performAction(i, bundle);
        }
    }
}
