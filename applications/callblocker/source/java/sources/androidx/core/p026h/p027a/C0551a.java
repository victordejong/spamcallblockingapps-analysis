package androidx.core.p026h.p027a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: androidx.core.h.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/h/a/a.class */
public final class C0551a extends ClickableSpan {

    /* renamed from: a */
    private final int f2017a;

    /* renamed from: b */
    private final C0553c f2018b;

    /* renamed from: c */
    private final int f2019c;

    public C0551a(int i, C0553c c0553c, int i2) {
        this.f2017a = i;
        this.f2018b = c0553c;
        this.f2019c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f2017a);
        this.f2018b.m20524a(this.f2019c, bundle);
    }
}
