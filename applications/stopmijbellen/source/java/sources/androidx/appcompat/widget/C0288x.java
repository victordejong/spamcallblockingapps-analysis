package androidx.appcompat.widget;

import android.annotation.SuppressLint;
import android.view.View;
import androidx.appcompat.widget.C0290y;
import p151l.AbstractC3424f;
/* renamed from: androidx.appcompat.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
public class C0288x extends AbstractView$OnTouchListenerC0246k0 {

    /* renamed from: j */
    public final /* synthetic */ C0290y.C0294d f1129j;

    /* renamed from: k */
    public final /* synthetic */ C0290y f1130k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0288x(C0290y c0290y, View view, C0290y.C0294d c0294d) {
        super(view);
        this.f1130k = c0290y;
        this.f1129j = c0294d;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
    /* renamed from: b */
    public AbstractC3424f mo8419b() {
        return this.f1129j;
    }

    @Override // androidx.appcompat.widget.AbstractView$OnTouchListenerC0246k0
    @SuppressLint({"SyntheticAccessor"})
    /* renamed from: c */
    public boolean mo8418c() {
        if (!this.f1130k.getInternalPopup().mo8414b()) {
            this.f1130k.m8416b();
            return true;
        }
        return true;
    }
}
