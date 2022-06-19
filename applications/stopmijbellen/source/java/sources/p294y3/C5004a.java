package p294y3;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatRadioButton;
import me.zhanghai.android.materialprogressbar.C3681R;
import p102g4.C2811a;
import p124i4.C3102d;
import p134j4.C3260w0;
import p262v3.C4634p;
import p304z3.C5071c;
/* renamed from: y3.a */
/* loaded from: classes-dex2jar.jar:y3/a.class */
public class C5004a extends AppCompatRadioButton {

    /* renamed from: g */
    public static final int[][] f15247g = {new int[]{16842910, 16842912}, new int[]{16842910, -16842912}, new int[]{-16842910, 16842912}, new int[]{-16842910, -16842912}};

    /* renamed from: e */
    public ColorStateList f15248e;

    /* renamed from: f */
    public boolean f15249f;

    public C5004a(Context context, AttributeSet attributeSet) {
        super(C2811a.m2970a(context, attributeSet, C3681R.attr.radioButtonStyle, 2131887075), attributeSet, C3681R.attr.radioButtonStyle);
        Context context2 = getContext();
        TypedArray m687d = C4634p.m687d(context2, attributeSet, C3260w0.f11041v, C3681R.attr.radioButtonStyle, 2131887075, new int[0]);
        if (m687d.hasValue(0)) {
            setButtonTintList(C5071c.m72a(context2, m687d, 0));
        }
        this.f15249f = m687d.getBoolean(1, false);
        m687d.recycle();
    }

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f15248e == null) {
            int m2619t = C3102d.m2619t(this, C3681R.attr.colorControlActivated);
            int m2619t2 = C3102d.m2619t(this, 2130968833);
            int m2619t3 = C3102d.m2619t(this, 2130968849);
            int[][] iArr = f15247g;
            int[] iArr2 = new int[iArr.length];
            iArr2[0] = C3102d.m2650B(m2619t3, m2619t, 1.0f);
            iArr2[1] = C3102d.m2650B(m2619t3, m2619t2, 0.54f);
            iArr2[2] = C3102d.m2650B(m2619t3, m2619t2, 0.38f);
            iArr2[3] = C3102d.m2650B(m2619t3, m2619t2, 0.38f);
            this.f15248e = new ColorStateList(iArr, iArr2);
        }
        return this.f15248e;
    }

    @Override // android.widget.TextView, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.f15249f || getButtonTintList() != null) {
            return;
        }
        setUseMaterialThemeColors(true);
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f15249f = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
