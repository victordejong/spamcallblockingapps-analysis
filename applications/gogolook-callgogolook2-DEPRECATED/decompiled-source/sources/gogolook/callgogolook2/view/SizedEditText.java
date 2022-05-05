package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SizedEditText.class */
public class SizedEditText extends EditText {
    public SizedEditText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m25856a(context);
    }

    public SizedEditText(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m25856a(context);
    }

    /* renamed from: a */
    public static float m25855a(Context context, Float f) {
        return f.floatValue() / context.getResources().getDisplayMetrics().scaledDensity;
    }

    /* renamed from: a */
    public final void m25856a(Context context) {
        if (!isInEditMode()) {
            float a = m25855a(context, Float.valueOf(getTextSize()));
            if (SizedTextView.m25853a(context) == 101) {
                super.setTextSize(a + 2.0f);
            } else if (SizedTextView.m25853a(context) == 102) {
                super.setTextSize(a + 4.0f);
            }
        }
    }

    @Override // android.widget.TextView
    public void setTextSize(float f) {
        if (SizedTextView.m25853a(getContext()) == 101) {
            super.setTextSize(f + 2.0f);
        } else if (SizedTextView.m25853a(getContext()) == 102) {
            super.setTextSize(f + 4.0f);
        } else {
            super.setTextSize(f);
        }
    }
}
