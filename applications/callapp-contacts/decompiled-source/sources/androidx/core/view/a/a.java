package androidx.core.view.a;

import android.os.Build;
import android.os.Bundle;
import android.text.style.ClickableSpan;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/view/a/a.class */
public final class a extends ClickableSpan {

    /* renamed from: a  reason: collision with root package name */
    private final int f1954a;

    /* renamed from: b  reason: collision with root package name */
    private final c f1955b;

    /* renamed from: c  reason: collision with root package name */
    private final int f1956c;

    public a(int i, c cVar, int i2) {
        this.f1954a = i;
        this.f1955b = cVar;
        this.f1956c = i2;
    }

    @Override // android.text.style.ClickableSpan
    public final void onClick(View view) {
        Bundle bundle = new Bundle();
        bundle.putInt("ACCESSIBILITY_CLICKABLE_SPAN_ID", this.f1954a);
        c cVar = this.f1955b;
        int i = this.f1956c;
        if (Build.VERSION.SDK_INT >= 16) {
            cVar.f1959a.performAction(i, bundle);
        }
    }
}
