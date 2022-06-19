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

    /* renamed from: a */
    private String f28722a;

    /* renamed from: b */
    private int f28723b = 0;

    /* renamed from: c */
    private int f28724c = 0;

    /* renamed from: d */
    private Paint f28725d = new Paint();

    public ImageButtonWithText(Context context) {
        super(context);
        m26736a();
    }

    public ImageButtonWithText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m26736a();
    }

    public ImageButtonWithText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m26736a();
    }

    /* renamed from: a */
    private void m26736a() {
        this.f28725d.setStyle(Paint.Style.FILL);
        this.f28725d.setColor(Color.argb(255, 161, 161, 161));
        this.f28725d.setTextSize(getContext().getResources().getDimension(2131165528));
        this.f28725d.setAntiAlias(true);
        this.f28725d.setTypeface(Typeface.MONOSPACE);
    }

    @Override // android.widget.ImageView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (StringUtils.m26045b((CharSequence) this.f28722a)) {
            if (Prefs.f26277bA.get() != Language.ARABIC && Prefs.f26277bA.get() != Language.HEBREW) {
                canvas.drawText(this.f28722a, this.f28723b * 0.45f, this.f28724c * 0.45f, this.f28725d);
                return;
            }
            char[] cArr = new char[1];
            float[] fArr = new float[this.f28722a.length()];
            float f = this.f28723b;
            this.f28725d.getTextWidths(this.f28722a, fArr);
            float f2 = f * 0.45f;
            for (int length = this.f28722a.length(); length > 0; length--) {
                int i = length - 1;
                cArr[0] = this.f28722a.charAt(i);
                canvas.drawText(cArr, 0, 1, f2, this.f28724c * 0.45f, this.f28725d);
                f2 = f2 + fArr[i] + 1.0f;
            }
        }
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        this.f28723b = i;
        this.f28724c = i2;
    }

    public void setLabel(String str) {
        this.f28722a = str.trim();
    }
}
