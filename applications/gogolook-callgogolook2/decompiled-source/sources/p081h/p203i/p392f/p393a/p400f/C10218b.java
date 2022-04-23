package p081h.p203i.p392f.p393a.p400f;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.google.maps.android.R$id;
import com.google.maps.android.R$layout;
import com.google.maps.android.R$style;
import com.google.maps.android.p054ui.RotationLayout;
/* renamed from: h.i.f.a.f.b */
/* loaded from: classes2-dex2jar.jar:h/i/f/a/f/b.class */
public class C10218b {

    /* renamed from: a */
    public final Context f23048a;

    /* renamed from: b */
    public ViewGroup f23049b;

    /* renamed from: c */
    public RotationLayout f23050c;

    /* renamed from: d */
    public TextView f23051d;

    /* renamed from: e */
    public int f23052e;

    /* renamed from: f */
    public C10217a f23053f;

    public C10218b(Context context) {
        this.f23048a = context;
        this.f23053f = new C10217a(this.f23048a.getResources());
        this.f23049b = (ViewGroup) LayoutInflater.from(this.f23048a).inflate(R$layout.amu_text_bubble, (ViewGroup) null);
        this.f23050c = (RotationLayout) this.f23049b.getChildAt(0);
        this.f23051d = (TextView) this.f23050c.findViewById(R$id.amu_text);
        m13092b(1);
    }

    /* renamed from: d */
    public static int m13090d(int i) {
        if (i == 3) {
            return -3407872;
        }
        if (i == 4) {
            return -16737844;
        }
        if (i == 5) {
            return -10053376;
        }
        if (i != 6) {
            return i != 7 ? -1 : -30720;
        }
        return -6736948;
    }

    /* renamed from: e */
    public static int m13089e(int i) {
        return (i == 3 || i == 4 || i == 5 || i == 6 || i == 7) ? R$style.amu_Bubble_TextAppearance_Light : R$style.amu_Bubble_TextAppearance_Dark;
    }

    /* renamed from: a */
    public Bitmap m13098a() {
        int makeMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.f23049b.measure(makeMeasureSpec, makeMeasureSpec);
        int measuredWidth = this.f23049b.getMeasuredWidth();
        int measuredHeight = this.f23049b.getMeasuredHeight();
        this.f23049b.layout(0, 0, measuredWidth, measuredHeight);
        int i = this.f23052e;
        if (i == 1 || i == 3) {
            measuredHeight = this.f23049b.getMeasuredWidth();
            measuredWidth = this.f23049b.getMeasuredHeight();
        }
        Bitmap createBitmap = Bitmap.createBitmap(measuredWidth, measuredHeight, Bitmap.Config.ARGB_8888);
        createBitmap.eraseColor(0);
        Canvas canvas = new Canvas(createBitmap);
        int i2 = this.f23052e;
        if (i2 != 0) {
            if (i2 == 1) {
                canvas.translate(measuredWidth, 0.0f);
                canvas.rotate(90.0f);
            } else if (i2 == 2) {
                canvas.rotate(180.0f, measuredWidth / 2, measuredHeight / 2);
            } else {
                canvas.translate(0.0f, measuredHeight);
                canvas.rotate(270.0f);
            }
        }
        this.f23049b.draw(canvas);
        return createBitmap;
    }

    /* renamed from: a */
    public Bitmap m13093a(CharSequence charSequence) {
        TextView textView = this.f23051d;
        if (textView != null) {
            textView.setText(charSequence);
        }
        return m13098a();
    }

    /* renamed from: a */
    public void m13097a(int i) {
        this.f23053f.m13099a(i);
        m13095a(this.f23053f);
    }

    /* renamed from: a */
    public void m13096a(Context context, int i) {
        TextView textView = this.f23051d;
        if (textView != null) {
            textView.setTextAppearance(context, i);
        }
    }

    /* renamed from: a */
    public void m13095a(Drawable drawable) {
        this.f23049b.setBackgroundDrawable(drawable);
        if (drawable != null) {
            Rect rect = new Rect();
            drawable.getPadding(rect);
            this.f23049b.setPadding(rect.left, rect.top, rect.right, rect.bottom);
            return;
        }
        this.f23049b.setPadding(0, 0, 0, 0);
    }

    /* renamed from: a */
    public void m13094a(View view) {
        this.f23050c.removeAllViews();
        this.f23050c.addView(view);
        View findViewById = this.f23050c.findViewById(R$id.amu_text);
        this.f23051d = findViewById instanceof TextView ? (TextView) findViewById : null;
    }

    /* renamed from: b */
    public void m13092b(int i) {
        m13097a(m13090d(i));
        m13096a(this.f23048a, m13089e(i));
    }

    /* renamed from: c */
    public void m13091c(int i) {
        m13096a(this.f23048a, i);
    }
}
