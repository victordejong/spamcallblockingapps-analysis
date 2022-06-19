package p177n3;

import android.annotation.TargetApi;
import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
import com.google.android.material.chip.C1724a;
import com.google.android.material.chip.Chip;
/* renamed from: n3.a */
/* loaded from: classes-dex2jar.jar:n3/a.class */
public class C3714a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ Chip f12101a;

    public C3714a(Chip chip) {
        this.f12101a = chip;
    }

    @Override // android.view.ViewOutlineProvider
    @TargetApi(21)
    public void getOutline(View view, Outline outline) {
        C1724a c1724a = this.f12101a.f6409e;
        if (c1724a != null) {
            c1724a.getOutline(outline);
        } else {
            outline.setAlpha(0.0f);
        }
    }
}
