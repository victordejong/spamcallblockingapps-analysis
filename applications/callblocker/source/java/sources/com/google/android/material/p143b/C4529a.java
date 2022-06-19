package com.google.android.material.p143b;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.p026h.C0595u;
import com.google.android.material.C4492a;
import com.google.android.material.internal.C4697g;
import com.google.android.material.internal.C4702i;
import com.google.android.material.p156n.C4718c;
import com.google.android.material.p156n.C4719d;
import com.google.android.material.p159q.C4736g;
import java.lang.ref.WeakReference;
/* renamed from: com.google.android.material.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/material/b/a.class */
public class C4529a extends Drawable implements C4697g.AbstractC4699a {

    /* renamed from: a */
    private static final int f19653a = C4492a.C4503k.Widget_MaterialComponents_Badge;

    /* renamed from: b */
    private static final int f19654b = C4492a.C4494b.badgeStyle;

    /* renamed from: c */
    private final WeakReference<Context> f19655c;

    /* renamed from: g */
    private final float f19659g;

    /* renamed from: h */
    private final float f19660h;

    /* renamed from: i */
    private final float f19661i;

    /* renamed from: j */
    private final C4530a f19662j;

    /* renamed from: k */
    private float f19663k;

    /* renamed from: l */
    private float f19664l;

    /* renamed from: m */
    private int f19665m;

    /* renamed from: n */
    private float f19666n;

    /* renamed from: o */
    private float f19667o;

    /* renamed from: p */
    private float f19668p;

    /* renamed from: q */
    private WeakReference<View> f19669q;

    /* renamed from: r */
    private WeakReference<ViewGroup> f19670r;

    /* renamed from: f */
    private final Rect f19658f = new Rect();

    /* renamed from: d */
    private final C4736g f19656d = new C4736g();

    /* renamed from: e */
    private final C4697g f19657e = new C4697g(this);

    /* renamed from: com.google.android.material.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/material/b/a$a.class */
    public static final class C4530a implements Parcelable {
        public static final Parcelable.Creator<C4530a> CREATOR = new Parcelable.Creator<C4530a>() { // from class: com.google.android.material.b.a.a.1
            /* renamed from: a */
            public C4530a createFromParcel(Parcel parcel) {
                return new C4530a(parcel);
            }

            /* renamed from: a */
            public C4530a[] newArray(int i) {
                return new C4530a[i];
            }
        };

        /* renamed from: a */
        private int f19671a;

        /* renamed from: b */
        private int f19672b;

        /* renamed from: c */
        private int f19673c;

        /* renamed from: d */
        private int f19674d;

        /* renamed from: e */
        private int f19675e;

        /* renamed from: f */
        private CharSequence f19676f;

        /* renamed from: g */
        private int f19677g;

        /* renamed from: h */
        private int f19678h;

        public C4530a(Context context) {
            this.f19673c = 255;
            this.f19674d = -1;
            this.f19672b = new C4719d(context, C4492a.C4503k.TextAppearance_MaterialComponents_Badge).f20414b.getDefaultColor();
            this.f19676f = context.getString(C4492a.C4502j.mtrl_badge_numberless_content_description);
            this.f19677g = C4492a.C4501i.mtrl_badge_content_description;
        }

        protected C4530a(Parcel parcel) {
            this.f19673c = 255;
            this.f19674d = -1;
            this.f19671a = parcel.readInt();
            this.f19672b = parcel.readInt();
            this.f19673c = parcel.readInt();
            this.f19674d = parcel.readInt();
            this.f19675e = parcel.readInt();
            this.f19676f = parcel.readString();
            this.f19677g = parcel.readInt();
            this.f19678h = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f19671a);
            parcel.writeInt(this.f19672b);
            parcel.writeInt(this.f19673c);
            parcel.writeInt(this.f19674d);
            parcel.writeInt(this.f19675e);
            parcel.writeString(this.f19676f.toString());
            parcel.writeInt(this.f19677g);
            parcel.writeInt(this.f19678h);
        }
    }

    private C4529a(Context context) {
        this.f19655c = new WeakReference<>(context);
        C4702i.m2822b(context);
        Resources resources = context.getResources();
        this.f19659g = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_badge_radius);
        this.f19661i = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_badge_long_text_horizontal_padding);
        this.f19660h = resources.getDimensionPixelSize(C4492a.C4496d.mtrl_badge_with_text_radius);
        this.f19657e.m2843a().setTextAlign(Paint.Align.CENTER);
        this.f19662j = new C4530a(context);
        m3717f(C4492a.C4503k.TextAppearance_MaterialComponents_Badge);
    }

    /* renamed from: a */
    private static int m3734a(Context context, TypedArray typedArray, int i) {
        return C4718c.m2784a(context, typedArray, i).getDefaultColor();
    }

    /* renamed from: a */
    public static C4529a m3735a(Context context) {
        return m3732a(context, null, f19654b, f19653a);
    }

    /* renamed from: a */
    private static C4529a m3732a(Context context, AttributeSet attributeSet, int i, int i2) {
        C4529a c4529a = new C4529a(context);
        c4529a.m3724b(context, attributeSet, i, i2);
        return c4529a;
    }

    /* renamed from: a */
    public static C4529a m3731a(Context context, C4530a c4530a) {
        C4529a c4529a = new C4529a(context);
        c4529a.m3728a(c4530a);
        return c4529a;
    }

    /* renamed from: a */
    private void m3733a(Context context, Rect rect, View view) {
        switch (this.f19662j.f19678h) {
            case 8388691:
            case 8388693:
                this.f19664l = rect.bottom;
                break;
            case 8388692:
            default:
                this.f19664l = rect.top;
                break;
        }
        if (m3723c() <= 9) {
            this.f19666n = !m3726b() ? this.f19659g : this.f19660h;
            this.f19668p = this.f19666n;
            this.f19667o = this.f19666n;
        } else {
            this.f19666n = this.f19660h;
            this.f19668p = this.f19666n;
            this.f19667o = (this.f19657e.m2836a(m3715h()) / 2.0f) + this.f19661i;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m3726b() ? C4492a.C4496d.mtrl_badge_text_horizontal_edge_offset : C4492a.C4496d.mtrl_badge_horizontal_edge_offset);
        switch (this.f19662j.f19678h) {
            case 8388659:
            case 8388691:
                this.f19663k = C0595u.m20320g(view) == 0 ? dimensionPixelSize + (rect.left - this.f19667o) : (rect.right + this.f19667o) - dimensionPixelSize;
                return;
            default:
                this.f19663k = C0595u.m20320g(view) == 0 ? (rect.right + this.f19667o) - dimensionPixelSize : dimensionPixelSize + (rect.left - this.f19667o);
                return;
        }
    }

    /* renamed from: a */
    private void m3730a(Canvas canvas) {
        Rect rect = new Rect();
        String m3715h = m3715h();
        this.f19657e.m2843a().getTextBounds(m3715h, 0, m3715h.length(), rect);
        canvas.drawText(m3715h, this.f19663k, (rect.height() / 2) + this.f19664l, this.f19657e.m2843a());
    }

    /* renamed from: a */
    private void m3728a(C4530a c4530a) {
        m3720d(c4530a.f19675e);
        if (c4530a.f19674d != -1) {
            m3722c(c4530a.f19674d);
        }
        m3736a(c4530a.f19671a);
        m3725b(c4530a.f19672b);
        m3719e(c4530a.f19678h);
    }

    /* renamed from: a */
    private void m3727a(C4719d c4719d) {
        Context context;
        if (this.f19657e.m2834b() == c4719d || (context = this.f19655c.get()) == null) {
            return;
        }
        this.f19657e.m2838a(c4719d, context);
        m3716g();
    }

    /* renamed from: b */
    private void m3724b(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m2825a = C4702i.m2825a(context, attributeSet, C4492a.C4504l.Badge, i, i2, new int[0]);
        m3720d(m2825a.getInt(C4492a.C4504l.Badge_maxCharacterCount, 4));
        if (m2825a.hasValue(C4492a.C4504l.Badge_number)) {
            m3722c(m2825a.getInt(C4492a.C4504l.Badge_number, 0));
        }
        m3736a(m3734a(context, m2825a, C4492a.C4504l.Badge_backgroundColor));
        if (m2825a.hasValue(C4492a.C4504l.Badge_badgeTextColor)) {
            m3725b(m3734a(context, m2825a, C4492a.C4504l.Badge_badgeTextColor));
        }
        m3719e(m2825a.getInt(C4492a.C4504l.Badge_badgeGravity, 8388661));
        m2825a.recycle();
    }

    /* renamed from: f */
    private void m3717f(int i) {
        Context context = this.f19655c.get();
        if (context == null) {
            return;
        }
        m3727a(new C4719d(context, i));
    }

    /* renamed from: g */
    private void m3716g() {
        Context context = this.f19655c.get();
        View view = this.f19669q != null ? this.f19669q.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f19658f);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        ViewGroup viewGroup = this.f19670r != null ? this.f19670r.get() : null;
        if (viewGroup != null || C4532b.f19679a) {
            ViewGroup viewGroup2 = viewGroup;
            if (viewGroup == null) {
                viewGroup2 = (ViewGroup) view.getParent();
            }
            viewGroup2.offsetDescendantRectToMyCoords(view, rect2);
        }
        m3733a(context, rect2, view);
        C4532b.m3696a(this.f19658f, this.f19663k, this.f19664l, this.f19667o, this.f19668p);
        this.f19656d.m2690o(this.f19666n);
        if (rect.equals(this.f19658f)) {
            return;
        }
        this.f19656d.setBounds(this.f19658f);
    }

    /* renamed from: h */
    private String m3715h() {
        String string;
        if (m3723c() <= this.f19665m) {
            string = Integer.toString(m3723c());
        } else {
            Context context = this.f19655c.get();
            string = context == null ? "" : context.getString(C4492a.C4502j.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.f19665m), "+");
        }
        return string;
    }

    /* renamed from: i */
    private void m3714i() {
        this.f19665m = ((int) Math.pow(10.0d, m3721d() - 1.0d)) - 1;
    }

    /* renamed from: a */
    public C4530a m3737a() {
        return this.f19662j;
    }

    /* renamed from: a */
    public void m3736a(int i) {
        this.f19662j.f19671a = i;
        ColorStateList valueOf = ColorStateList.valueOf(i);
        if (this.f19656d.m2742M() != valueOf) {
            this.f19656d.m2697f(valueOf);
            invalidateSelf();
        }
    }

    /* renamed from: a */
    public void m3729a(View view, ViewGroup viewGroup) {
        this.f19669q = new WeakReference<>(view);
        this.f19670r = new WeakReference<>(viewGroup);
        m3716g();
        invalidateSelf();
    }

    /* renamed from: b */
    public void m3725b(int i) {
        this.f19662j.f19672b = i;
        if (this.f19657e.m2843a().getColor() != i) {
            this.f19657e.m2843a().setColor(i);
            invalidateSelf();
        }
    }

    /* renamed from: b */
    public boolean m3726b() {
        return this.f19662j.f19674d != -1;
    }

    /* renamed from: c */
    public int m3723c() {
        return !m3726b() ? 0 : this.f19662j.f19674d;
    }

    /* renamed from: c */
    public void m3722c(int i) {
        int max = Math.max(0, i);
        if (this.f19662j.f19674d != max) {
            this.f19662j.f19674d = max;
            this.f19657e.m2835a(true);
            m3716g();
            invalidateSelf();
        }
    }

    /* renamed from: d */
    public int m3721d() {
        return this.f19662j.f19675e;
    }

    /* renamed from: d */
    public void m3720d(int i) {
        if (this.f19662j.f19675e != i) {
            this.f19662j.f19675e = i;
            m3714i();
            this.f19657e.m2835a(true);
            m3716g();
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f19656d.draw(canvas);
        if (!m3726b()) {
            return;
        }
        m3730a(canvas);
    }

    @Override // com.google.android.material.internal.C4697g.AbstractC4699a
    /* renamed from: e */
    public void mo2833e() {
        invalidateSelf();
    }

    /* renamed from: e */
    public void m3719e(int i) {
        if (this.f19662j.f19678h != i) {
            this.f19662j.f19678h = i;
            if (this.f19669q == null || this.f19669q.get() == null) {
                return;
            }
            m3729a(this.f19669q.get(), this.f19670r != null ? this.f19670r.get() : null);
        }
    }

    /* renamed from: f */
    public CharSequence m3718f() {
        String str;
        if (!isVisible()) {
            str = null;
        } else if (!m3726b()) {
            str = this.f19662j.f19676f;
        } else if (this.f19662j.f19677g > 0) {
            Context context = this.f19655c.get();
            str = context == null ? null : context.getResources().getQuantityString(this.f19662j.f19677g, m3723c(), Integer.valueOf(m3723c()));
        } else {
            str = null;
        }
        return str;
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f19662j.f19673c;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f19658f.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f19658f.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C4697g.AbstractC4699a
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f19662j.f19673c = i;
        this.f19657e.m2843a().setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }
}
