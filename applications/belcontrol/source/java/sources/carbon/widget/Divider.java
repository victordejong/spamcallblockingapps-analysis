package carbon.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
/* loaded from: classes-dex2jar.jar:carbon/widget/Divider.class */
public class Divider extends View {

    /* renamed from: a */
    public int f2255a = 0;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Divider(android.content.Context r6) {
        /*
            r5 = this;
            int r0 = h80.carbon_dividerStyle
            r7 = r0
            r0 = r5
            r1 = r6
            r2 = 0
            r3 = r7
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = 0
            r0.f2255a = r1
            r0 = r5
            r1 = 0
            r2 = r7
            int r3 = o80.carbon_Divider
            r0.m5379a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: carbon.widget.Divider.<init>(android.content.Context):void");
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public Divider(android.content.Context r6, android.util.AttributeSet r7) {
        /*
            r5 = this;
            int r0 = h80.carbon_dividerStyle
            r8 = r0
            r0 = r5
            r1 = r6
            r2 = r7
            r3 = r8
            r0.<init>(r1, r2, r3)
            r0 = r5
            r1 = 0
            r0.f2255a = r1
            r0 = r5
            r1 = r7
            r2 = r8
            int r3 = o80.carbon_Divider
            r0.m5379a(r1, r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: carbon.widget.Divider.<init>(android.content.Context, android.util.AttributeSet):void");
    }

    public Divider(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m5379a(attributeSet, i, o80.carbon_Divider);
    }

    /* renamed from: a */
    public void m5379a(AttributeSet attributeSet, int i, int i2) {
        TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, p80.Divider, i, i2);
        this.f2255a = obtainStyledAttributes.getInt(p80.Divider_android_orientation, 0);
        obtainStyledAttributes.recycle();
    }

    @Override // android.view.View
    public void onMeasure(int i, int i2) {
        int i3;
        int i4;
        super.onMeasure(i, i2);
        if (this.f2255a == 0) {
            i4 = getMeasuredWidth();
            i3 = getContext().getResources().getDimensionPixelSize(j80.carbon_dividerHeight);
        } else {
            i4 = getContext().getResources().getDimensionPixelSize(j80.carbon_dividerHeight);
            i3 = getMeasuredHeight();
        }
        setMeasuredDimension(i4, i3);
    }
}
