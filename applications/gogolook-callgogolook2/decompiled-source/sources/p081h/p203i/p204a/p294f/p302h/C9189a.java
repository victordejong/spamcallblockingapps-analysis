package p081h.p203i.p204a.p294f.p302h;

import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import androidx.annotation.RestrictTo;
import com.google.android.material.R$styleable;
import com.google.android.material.card.MaterialCardView;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: h.i.a.f.h.a */
/* loaded from: classes2-dex2jar.jar:h/i/a/f/h/a.class */
public class C9189a {

    /* renamed from: a */
    public final MaterialCardView f20943a;

    /* renamed from: b */
    public int f20944b;

    /* renamed from: c */
    public int f20945c;

    public C9189a(MaterialCardView materialCardView) {
        this.f20943a = materialCardView;
    }

    /* renamed from: a */
    public final void m15914a() {
        this.f20943a.setContentPadding(this.f20943a.getContentPaddingLeft() + this.f20945c, this.f20943a.getContentPaddingTop() + this.f20945c, this.f20943a.getContentPaddingRight() + this.f20945c, this.f20943a.getContentPaddingBottom() + this.f20945c);
    }

    /* renamed from: a */
    public void m15913a(TypedArray typedArray) {
        this.f20944b = typedArray.getColor(R$styleable.MaterialCardView_strokeColor, -1);
        this.f20945c = typedArray.getDimensionPixelSize(R$styleable.MaterialCardView_strokeWidth, 0);
        m15911c();
        m15914a();
    }

    /* renamed from: b */
    public final Drawable m15912b() {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setCornerRadius(this.f20943a.getRadius());
        int i = this.f20944b;
        if (i != -1) {
            gradientDrawable.setStroke(this.f20945c, i);
        }
        return gradientDrawable;
    }

    /* renamed from: c */
    public void m15911c() {
        this.f20943a.setForeground(m15912b());
    }
}
