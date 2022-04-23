package p081h.p093b.p099c.p102b;

import android.graphics.Color;
import android.text.TextPaint;
import android.text.style.CharacterStyle;
import android.util.Log;
import androidx.core.view.ViewCompat;
/* renamed from: h.b.c.b.c */
/* loaded from: classes-dex2jar.jar:h/b/c/b/c.class */
public class C5617c extends CharacterStyle {

    /* renamed from: a */
    public int f14039a;

    /* renamed from: b */
    public int f14040b;

    public C5617c(int i, int i2) {
        this.f14039a = i;
        m24999a(i);
        this.f14040b = m24998a(i, i2);
    }

    /* renamed from: a */
    public final int m24998a(int i, int i2) {
        int i3;
        int i4;
        int alpha = Color.alpha(i2);
        int red = Color.red(i2);
        int green = Color.green(i2);
        int blue = Color.blue(i2);
        int i5 = alpha;
        if (alpha == 0) {
            i5 = 128;
        }
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    return ViewCompat.MEASURED_SIZE_MASK;
                }
                Log.e("EditStyledText", "--- getMarqueeColor: got illigal marquee ID.");
                return ViewCompat.MEASURED_SIZE_MASK;
            } else if (green > 128) {
                i3 = green / 2;
                i4 = red;
            } else {
                i3 = (255 - green) / 2;
                i4 = red;
            }
        } else if (red > 128) {
            i4 = red / 2;
            i3 = green;
        } else {
            i4 = (255 - red) / 2;
            i3 = green;
        }
        return Color.argb(i5, i4, i3, blue);
    }

    /* renamed from: a */
    public final boolean m24999a(int i) {
        if (i == 0 || i == 1) {
            return true;
        }
        Log.e("EditStyledTextSpan", "--- Invalid type of MarqueeSpan");
        return false;
    }

    /* renamed from: b */
    public void m24997b(int i) {
        this.f14040b = m24998a(this.f14039a, i);
    }

    @Override // android.text.style.CharacterStyle
    public void updateDrawState(TextPaint textPaint) {
        textPaint.bgColor = this.f14040b;
    }
}
