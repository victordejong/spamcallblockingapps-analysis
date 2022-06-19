package hani.momanii.supernova_emoji_library.Helper;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.Drawable;
import android.text.style.DynamicDrawableSpan;
import java.lang.ref.WeakReference;
/* renamed from: hani.momanii.supernova_emoji_library.Helper.e */
/* loaded from: classes2-dex2jar.jar:hani/momanii/supernova_emoji_library/Helper/e.class */
class C3157e extends DynamicDrawableSpan {

    /* renamed from: b */
    private final Context f13011b;

    /* renamed from: c */
    private final int f13012c;

    /* renamed from: d */
    private final int f13013d;

    /* renamed from: e */
    private final int f13014e;

    /* renamed from: f */
    private int f13015f;

    /* renamed from: g */
    private int f13016g;

    /* renamed from: h */
    private int f13017h;

    /* renamed from: i */
    private Drawable f13018i;

    /* renamed from: j */
    private WeakReference<Drawable> f13019j;

    public C3157e(Context context, int i, int i2, int i3, int i4) {
        super(i3);
        this.f13011b = context;
        this.f13012c = i;
        this.f13013d = i2;
        this.f13015f = i2;
        this.f13016g = i2;
        this.f13014e = i4;
    }

    /* renamed from: a */
    private Drawable m13a() {
        WeakReference<Drawable> weakReference = this.f13019j;
        if (weakReference == null || weakReference.get() == null) {
            this.f13019j = new WeakReference<>(getDrawable());
        }
        return this.f13019j.get();
    }

    @Override // android.text.style.DynamicDrawableSpan, android.text.style.ReplacementSpan
    public void draw(Canvas canvas, CharSequence charSequence, int i, int i2, float f, int i3, int i4, int i5, Paint paint) {
        Drawable m13a = m13a();
        canvas.save();
        int i6 = i5 - m13a.getBounds().bottom;
        if (((DynamicDrawableSpan) this).mVerticalAlignment == 1) {
            i6 = ((i3 + ((i5 - i3) / 2)) - ((m13a.getBounds().bottom - m13a.getBounds().top) / 2)) - this.f13017h;
        }
        canvas.translate(f, i6);
        m13a.draw(canvas);
        canvas.restore();
    }

    @Override // android.text.style.DynamicDrawableSpan
    public Drawable getDrawable() {
        if (this.f13018i == null) {
            try {
                Drawable drawable = this.f13011b.getResources().getDrawable(this.f13012c);
                this.f13018i = drawable;
                int i = this.f13013d;
                this.f13015f = i;
                int intrinsicWidth = (i * drawable.getIntrinsicWidth()) / this.f13018i.getIntrinsicHeight();
                this.f13016g = intrinsicWidth;
                int i2 = this.f13014e;
                int i3 = this.f13015f;
                int i4 = (i2 - i3) / 2;
                this.f13017h = i4;
                this.f13018i.setBounds(0, i4, intrinsicWidth, i3 + i4);
            } catch (Exception e) {
            }
        }
        return this.f13018i;
    }
}
