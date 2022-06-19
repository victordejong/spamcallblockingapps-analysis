package p166m3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatCheckBox;
import me.zhanghai.android.materialprogressbar.C3681R;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p262v3.C4634p;
import p304z3.C5071c;
/* renamed from: m3.a */
/* loaded from: classes-dex2jar.jar:m3/a.class */
public class C3639a extends AppCompatCheckBox {

    /* renamed from: g */
    public static final int[][] f11917g = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: e */
    public ColorStateList f11918e;

    /* renamed from: f */
    public boolean f11919f;

    public C3639a(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, C3681R.attr.checkboxStyle, 2131887074), attributeSet, C3681R.attr.checkboxStyle);
        Context context2 = getContext();
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11040u, C3681R.attr.checkboxStyle, 2131887074, new int[0]);
        if (m687d.hasValue(0)) {
            setButtonTintList(C5071c.m72a(context2, m687d, 0));
        }
        this.f11919f = m687d.getBoolean(1, false);
        m687d.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f11918e == null) {
            int[][] iArr = f11917g;
            int[] iArr2 = new int[iArr.length];
            int m2619t = C3102d.m2619t(this, C3681R.attr.colorControlActivated);
            int m2619t2 = C3102d.m2619t(this, 2130968849);
            int m2619t3 = C3102d.m2619t(this, 2130968833);
            iArr2[0] = C3102d.m2650B(m2619t2, m2619t, 1.0f);
            iArr2[1] = C3102d.m2650B(m2619t2, m2619t3, 0.54f);
            iArr2[2] = C3102d.m2650B(m2619t2, m2619t3, 0.38f);
            iArr2[3] = C3102d.m2650B(m2619t2, m2619t3, 0.38f);
            this.f11918e = new ColorStateList(iArr, iArr2);
        }
        return this.f11918e;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f11919f || getButtonTintList() != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f11919f = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
