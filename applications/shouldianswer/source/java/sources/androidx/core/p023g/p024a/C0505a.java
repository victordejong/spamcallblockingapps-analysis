package androidx.core.p023g.p024a;

import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* renamed from: androidx.core.g.a.a */
/* loaded from: classes-dex2jar.jar:androidx/core/g/a/a.class */
public final class C0505a extends ClickableSpan {

    /* renamed from: a */
    private final int f1807a;

    /* renamed from: b */
    private final C0510d f1808b;

    /* renamed from: c */
    private final int f1809c;

    public C0505a(int i, C0510d c0510d, int i2) {
        this.f1807a = i;
        this.f1808b = c0510d;
        this.f1809c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1807a);
        this.f1808b.m6454a(this.f1809c, bundle);
    }
}
