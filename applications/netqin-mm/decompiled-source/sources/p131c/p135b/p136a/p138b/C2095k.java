package p131c.p135b.p136a.p138b;

import android.app.Activity;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.applovin.impl.adview.AbstractC6929h;
/* renamed from: c.b.a.b.k */
/* loaded from: classes-dex2jar.jar:c/b/a/b/k.class */
public class C2095k extends FrameLayout {

    /* renamed from: a */
    public final AbstractC6929h f8078a;

    public C2095k(AbstractC6929h.EnumC6930a aVar, Activity activity) {
        super(activity);
        setBackgroundColor(0);
        AbstractC6929h a = AbstractC6929h.m19329a(aVar, activity);
        this.f8078a = a;
        addView(a);
    }

    /* renamed from: a */
    public void m31078a(int i, int i2, int i3, int i4) {
        int i5 = i2 + i + i3;
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = i5;
            layoutParams.width = i5;
        } else {
            setLayoutParams(new FrameLayout.LayoutParams(i5, i5));
        }
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(i, i, i4);
        layoutParams2.setMargins(i3, i3, i3, 0);
        this.f8078a.setLayoutParams(layoutParams2);
        this.f8078a.mo19330a(i);
    }
}
