package p262v3;

import android.view.View;
import android.view.accessibility.AccessibilityEvent;
import com.google.android.material.internal.CheckableImageButton;
import p163m0.C3546a;
import p174n0.C3694b;
/* renamed from: v3.a */
/* loaded from: classes-dex2jar.jar:v3/a.class */
public class C4600a extends C3546a {

    /* renamed from: d */
    public final /* synthetic */ CheckableImageButton f14192d;

    public C4600a(CheckableImageButton checkableImageButton) {
        this.f14192d = checkableImageButton;
    }

    @Override // p163m0.C3546a
    /* renamed from: c */
    public void mo737c(View view, AccessibilityEvent accessibilityEvent) {
        this.f11715a.onInitializeAccessibilityEvent(view, accessibilityEvent);
        accessibilityEvent.setChecked(this.f14192d.isChecked());
    }

    @Override // p163m0.C3546a
    /* renamed from: d */
    public void mo697d(View view, C3694b c3694b) {
        this.f11715a.onInitializeAccessibilityNodeInfo(view, c3694b.f12070a);
        c3694b.f12070a.setCheckable(this.f14192d.f6712e);
        c3694b.f12070a.setChecked(this.f14192d.isChecked());
    }
}
