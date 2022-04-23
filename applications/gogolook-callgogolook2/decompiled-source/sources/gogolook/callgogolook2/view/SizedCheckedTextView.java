package gogolook.callgogolook2.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.CheckedTextView;
/* loaded from: classes3-dex2jar.jar:gogolook/callgogolook2/view/SizedCheckedTextView.class */
public class SizedCheckedTextView extends CheckedTextView {
    public SizedCheckedTextView(Context context) {
        super(context);
        float a = m25857a(context, Float.valueOf(getTextSize()));
        if (SizedTextView.m25853a(context) == 101) {
            super.setTextSize(a + 2.0f);
        } else if (SizedTextView.m25853a(context) == 102) {
            super.setTextSize(a + 4.0f);
        }
    }

    public SizedCheckedTextView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        float a = m25857a(context, Float.valueOf(getTextSize()));
        if (SizedTextView.m25853a(context) == 101) {
            super.setTextSize(a + 2.0f);
        } else if (SizedTextView.m25853a(context) == 102) {
            super.setTextSize(a + 4.0f);
        }
    }

    public SizedCheckedTextView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        float a = m25857a(context, Float.valueOf(getTextSize()));
        if (SizedTextView.m25853a(context) == 101) {
            super.setTextSize(a + 2.0f);
        } else if (SizedTextView.m25853a(context) == 102) {
            super.setTextSize(a + 4.0f);
        }
    }

    /* renamed from: a */
    public static float m25857a(Context context, Float f) {
        return f.floatValue() / context.getResources().getDisplayMetrics().scaledDensity;
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
