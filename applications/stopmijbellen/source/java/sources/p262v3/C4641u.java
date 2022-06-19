package p262v3;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
@SuppressLint({"AppCompatCustomView"})
/* renamed from: v3.u */
/* loaded from: classes-dex2jar.jar:v3/u.class */
public class C4641u extends ImageButton {

    /* renamed from: a */
    public int f14333a = getVisibility();

    public C4641u(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public C4641u(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    /* renamed from: b */
    public final void m683b(int i, boolean z) {
        super.setVisibility(i);
        if (z) {
            this.f14333a = i;
        }
    }

    public final int getUserSetVisibility() {
        return this.f14333a;
    }

    @Override // android.widget.ImageView, android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        this.f14333a = i;
    }
}
