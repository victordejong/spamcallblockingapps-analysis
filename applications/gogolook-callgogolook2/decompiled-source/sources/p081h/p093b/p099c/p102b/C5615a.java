package p081h.p093b.p099c.p102b;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.text.Spannable;
import android.text.style.ForegroundColorSpan;
import android.util.Log;
/* renamed from: h.b.c.b.a */
/* loaded from: classes-dex2jar.jar:h/b/c/b/a.class */
public class C5615a extends ShapeDrawable {

    /* renamed from: c */
    public static boolean f14035c = false;

    /* renamed from: a */
    public Spannable f14036a;

    /* renamed from: b */
    public int f14037b;

    public C5615a(int i, int i2, Spannable spannable) {
        super(new RectShape());
        this.f14036a = spannable;
        this.f14037b = i2;
        m25001b(i);
        m25003a(i2);
    }

    /* renamed from: a */
    public final C5616b m25004a() {
        Spannable spannable = this.f14036a;
        C5616b[] bVarArr = (C5616b[]) spannable.getSpans(0, spannable.length(), C5616b.class);
        if (bVarArr.length > 0) {
            for (C5616b bVar : bVarArr) {
                if (bVar.getDrawable() == this) {
                    return bVar;
                }
            }
        }
        Log.e("EditStyledTextSpan", "---renewBounds: Couldn't find");
        return null;
    }

    /* renamed from: a */
    public void m25003a(int i) {
        if (f14035c) {
            String str = "--- renewBounds:" + i;
        }
        int i2 = i;
        if (i > 20) {
            i2 = i - 20;
        }
        this.f14037b = i2;
        setBounds(0, 0, i2, 20);
    }

    /* renamed from: b */
    public final void m25002b() {
        C5616b a = m25004a();
        Spannable spannable = this.f14036a;
        ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannable.getSpans(spannable.getSpanStart(a), spannable.getSpanEnd(a), ForegroundColorSpan.class);
        if (f14035c) {
            String str = "--- renewColor:" + foregroundColorSpanArr.length;
        }
        if (foregroundColorSpanArr.length > 0) {
            m25001b(foregroundColorSpanArr[foregroundColorSpanArr.length - 1].getForegroundColor());
        }
    }

    /* renamed from: b */
    public final void m25001b(int i) {
        if (f14035c) {
            String str = "--- renewColor:" + i;
        }
        getPaint().setColor(i);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        m25002b();
        canvas.drawRect(new Rect(0, 9, this.f14037b, 11), getPaint());
    }
}
