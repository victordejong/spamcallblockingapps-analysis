package com.truecaller.p183ui.view;

import android.content.Context;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
/* renamed from: com.truecaller.ui.view.TintedTextView */
/* loaded from: classes15-dex2jar.jar:com/truecaller/ui/view/TintedTextView.class */
public class TintedTextView extends AppCompatTextView {

    /* renamed from: f */
    public int f15934f = 0;

    public TintedTextView(Context context) {
        super(context, null);
        setupPaint(getCurrentTextColor());
    }

    public TintedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        setupPaint(getCurrentTextColor());
    }

    private void setupPaint(int i) {
        if (this.f15934f == i) {
            return;
        }
        Paint paint = new Paint(1);
        paint.setColorFilter(new PorterDuffColorFilter(i, PorterDuff.Mode.SRC_IN));
        this.f15934f = i;
        setLayerType(2, paint);
    }

    @Override // android.widget.TextView
    public void setTextColor(int i) {
        super.setTextColor(Color.argb(255, Color.red(i), Color.blue(i), Color.green(i)));
        setupPaint(i);
    }
}
