package com.truecaller.p183ui.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageView;
import com.truecaller.common.p156ui.C3700R;
/* renamed from: com.truecaller.ui.view.TintedImageView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/TintedImageView.class */
public class TintedImageView extends AppCompatImageView {

    /* renamed from: c */
    public ColorStateList f15933c;

    public TintedImageView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C3700R.styleable.TintedImageView, 0, 0);
        this.f15933c = obtainStyledAttributes.getColorStateList(C3700R.styleable.TintedImageView_imgTint);
        obtainStyledAttributes.recycle();
    }

    /* renamed from: d */
    public final void m34476d() {
        ColorStateList colorStateList = this.f15933c;
        if (colorStateList == null) {
            clearColorFilter();
        } else {
            setColorFilter(colorStateList.getColorForState(getDrawableState(), 0), PorterDuff.Mode.SRC_IN);
        }
    }

    @Override // androidx.appcompat.widget.AppCompatImageView, android.widget.ImageView, android.view.View
    public void drawableStateChanged() {
        super.drawableStateChanged();
        m34476d();
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [int[], int[][]] */
    public void setTint(int i) {
        setTint(new ColorStateList(new int[]{new int[0]}, new int[]{i}));
    }

    public void setTint(ColorStateList colorStateList) {
        this.f15933c = colorStateList;
        m34476d();
    }
}
