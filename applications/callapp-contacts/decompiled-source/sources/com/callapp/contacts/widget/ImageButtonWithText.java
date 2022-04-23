package com.callapp.contacts.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatImageButton;
import com.callapp.contacts.activity.settings.Language;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.framework.util.StringUtils;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/widget/ImageButtonWithText.class */
public class ImageButtonWithText extends AppCompatImageButton {

    /* renamed from: a  reason: collision with root package name */
    private String f16509a;

    /* renamed from: b  reason: collision with root package name */
    private int f16510b = 0;

    /* renamed from: c  reason: collision with root package name */
    private int f16511c = 0;

    /* renamed from: d  reason: collision with root package name */
    private Paint f16512d = new Paint();

    public ImageButtonWithText(Context context) {
        super(context);
        a();
    }

    public ImageButtonWithText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a();
    }

    public ImageButtonWithText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a();
    }

    private void a() {
        this.f16512d.setStyle(Paint.Style.FILL);
        this.f16512d.setColor(Color.argb(255, 161, 161, 161));
        this.f16512d.setTextSize(getContext().getResources().getDimension(2131165528));
        this.f16512d.setAntiAlias(true);
        this.f16512d.setTypeface(Typeface.MONOSPACE);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!StringUtils.b((CharSequence) this.f16509a)) {
            return;
        }
        if (Prefs.bA.get() == Language.ARABIC || Prefs.bA.get() == Language.HEBREW) {
            char[] cArr = new char[1];
            float[] fArr = new float[this.f16509a.length()];
            float f = this.f16510b;
            this.f16512d.getTextWidths(this.f16509a, fArr);
            float f2 = f * 0.45f;
            for (int length = this.f16509a.length(); length > 0; length--) {
                int i = length - 1;
                cArr[0] = this.f16509a.charAt(i);
                canvas.drawText(cArr, 0, 1, f2, this.f16511c * 0.45f, this.f16512d);
                f2 = f2 + fArr[i] + 1.0f;
            }
            return;
        }
        canvas.drawText(this.f16509a, this.f16510b * 0.45f, this.f16511c * 0.45f, this.f16512d);
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f16510b = i;
        this.f16511c = i2;
    }

    public void setLabel(String str) {
        this.f16509a = str.trim();
    }
}
