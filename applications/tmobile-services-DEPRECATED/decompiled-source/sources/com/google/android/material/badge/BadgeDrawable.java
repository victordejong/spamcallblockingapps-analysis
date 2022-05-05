package com.google.android.material.badge;

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
import androidx.annotation.AttrRes;
import androidx.annotation.ColorInt;
import androidx.annotation.Dimension;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.PluralsRes;
import androidx.annotation.RestrictTo;
import androidx.annotation.StringRes;
import androidx.annotation.StyleRes;
import androidx.annotation.StyleableRes;
import androidx.core.view.ViewCompat;
import com.google.android.material.C1027R;
import com.google.android.material.internal.TextDrawableHelper;
import com.google.android.material.internal.ThemeEnforcement;
import com.google.android.material.resources.MaterialResources;
import com.google.android.material.resources.TextAppearance;
import com.google.android.material.shape.MaterialShapeDrawable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:com/google/android/material/badge/BadgeDrawable.class */
public class BadgeDrawable extends Drawable implements TextDrawableHelper.TextDrawableDelegate {
    @StyleRes

    /* renamed from: v */
    private static final int f10044v = C1027R.style.Widget_MaterialComponents_Badge;
    @AttrRes

    /* renamed from: w */
    private static final int f10045w = C1027R.attr.badgeStyle;
    @NonNull

    /* renamed from: f */
    private final WeakReference<Context> f10046f;
    @NonNull

    /* renamed from: h */
    private final TextDrawableHelper f10048h;

    /* renamed from: j */
    private final float f10050j;

    /* renamed from: k */
    private final float f10051k;

    /* renamed from: l */
    private final float f10052l;
    @NonNull

    /* renamed from: m */
    private final SavedState f10053m;

    /* renamed from: n */
    private float f10054n;

    /* renamed from: o */
    private float f10055o;

    /* renamed from: p */
    private int f10056p;

    /* renamed from: q */
    private float f10057q;

    /* renamed from: r */
    private float f10058r;

    /* renamed from: s */
    private float f10059s;
    @Nullable

    /* renamed from: t */
    private WeakReference<View> f10060t;
    @Nullable

    /* renamed from: u */
    private WeakReference<ViewGroup> f10061u;
    @NonNull

    /* renamed from: i */
    private final Rect f10049i = new Rect();
    @NonNull

    /* renamed from: g */
    private final MaterialShapeDrawable f10047g = new MaterialShapeDrawable();

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$BadgeGravity.class */
    public @interface BadgeGravity {
    }

    @RestrictTo
    /* loaded from: classes-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState.class */
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.badge.BadgeDrawable.SavedState.1
            @NonNull
            /* renamed from: a */
            public SavedState createFromParcel(@NonNull Parcel parcel) {
                return new SavedState(parcel);
            }

            @NonNull
            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        @ColorInt

        /* renamed from: f */
        private int f10062f;
        @ColorInt

        /* renamed from: g */
        private int f10063g;

        /* renamed from: h */
        private int f10064h;

        /* renamed from: i */
        private int f10065i;

        /* renamed from: j */
        private int f10066j;
        @Nullable

        /* renamed from: k */
        private CharSequence f10067k;
        @PluralsRes

        /* renamed from: l */
        private int f10068l;
        @StringRes

        /* renamed from: m */
        private int f10069m;

        /* renamed from: n */
        private int f10070n;
        @Dimension

        /* renamed from: o */
        private int f10071o;
        @Dimension

        /* renamed from: p */
        private int f10072p;

        public SavedState(@NonNull Context context) {
            this.f10064h = 255;
            this.f10065i = -1;
            this.f10063g = new TextAppearance(context, C1027R.style.TextAppearance_MaterialComponents_Badge).f10986b.getDefaultColor();
            this.f10067k = context.getString(C1027R.string.mtrl_badge_numberless_content_description);
            this.f10068l = C1027R.plurals.mtrl_badge_content_description;
            this.f10069m = C1027R.string.mtrl_exceed_max_badge_number_content_description;
        }

        protected SavedState(@NonNull Parcel parcel) {
            this.f10064h = 255;
            this.f10065i = -1;
            this.f10062f = parcel.readInt();
            this.f10063g = parcel.readInt();
            this.f10064h = parcel.readInt();
            this.f10065i = parcel.readInt();
            this.f10066j = parcel.readInt();
            this.f10067k = parcel.readString();
            this.f10068l = parcel.readInt();
            this.f10070n = parcel.readInt();
            this.f10071o = parcel.readInt();
            this.f10072p = parcel.readInt();
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.f10062f);
            parcel.writeInt(this.f10063g);
            parcel.writeInt(this.f10064h);
            parcel.writeInt(this.f10065i);
            parcel.writeInt(this.f10066j);
            parcel.writeString(this.f10067k.toString());
            parcel.writeInt(this.f10068l);
            parcel.writeInt(this.f10070n);
            parcel.writeInt(this.f10071o);
            parcel.writeInt(this.f10072p);
        }
    }

    private BadgeDrawable(@NonNull Context context) {
        this.f10046f = new WeakReference<>(context);
        ThemeEnforcement.m9450c(context);
        Resources resources = context.getResources();
        this.f10050j = resources.getDimensionPixelSize(C1027R.dimen.mtrl_badge_radius);
        this.f10052l = resources.getDimensionPixelSize(C1027R.dimen.mtrl_badge_long_text_horizontal_padding);
        this.f10051k = resources.getDimensionPixelSize(C1027R.dimen.mtrl_badge_with_text_radius);
        TextDrawableHelper textDrawableHelper = new TextDrawableHelper(this);
        this.f10048h = textDrawableHelper;
        textDrawableHelper.m9459e().setTextAlign(Paint.Align.CENTER);
        this.f10053m = new SavedState(context);
        m10601w(C1027R.style.TextAppearance_MaterialComponents_Badge);
    }

    /* renamed from: A */
    private void m10623A() {
        this.f10056p = ((int) Math.pow(10.0d, m10615i() - 1.0d)) - 1;
    }

    /* renamed from: b */
    private void m10622b(@NonNull Context context, @NonNull Rect rect, @NonNull View view) {
        int i = this.f10053m.f10070n;
        if (i == 8388691 || i == 8388693) {
            this.f10055o = rect.bottom - this.f10053m.f10072p;
        } else {
            this.f10055o = rect.top + this.f10053m.f10072p;
        }
        if (m10614j() <= 9) {
            float f = !m10612l() ? this.f10050j : this.f10051k;
            this.f10057q = f;
            this.f10059s = f;
            this.f10058r = f;
        } else {
            float f2 = this.f10051k;
            this.f10057q = f2;
            this.f10059s = f2;
            this.f10058r = (this.f10048h.m9458f(m10617g()) / 2.0f) + this.f10052l;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m10612l() ? C1027R.dimen.mtrl_badge_text_horizontal_edge_offset : C1027R.dimen.mtrl_badge_horizontal_edge_offset);
        int i2 = this.f10053m.f10070n;
        if (i2 == 8388659 || i2 == 8388691) {
            this.f10054n = ViewCompat.m19244A(view) == 0 ? (rect.left - this.f10058r) + dimensionPixelSize + this.f10053m.f10071o : ((rect.right + this.f10058r) - dimensionPixelSize) - this.f10053m.f10071o;
        } else {
            this.f10054n = ViewCompat.m19244A(view) == 0 ? ((rect.right + this.f10058r) - dimensionPixelSize) - this.f10053m.f10071o : (rect.left - this.f10058r) + dimensionPixelSize + this.f10053m.f10071o;
        }
    }

    @NonNull
    /* renamed from: c */
    public static BadgeDrawable m10621c(@NonNull Context context) {
        return m10620d(context, null, f10045w, f10044v);
    }

    @NonNull
    /* renamed from: d */
    private static BadgeDrawable m10620d(@NonNull Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m10611m(context, attributeSet, i, i2);
        return badgeDrawable;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    /* renamed from: e */
    public static BadgeDrawable m10619e(@NonNull Context context, @NonNull SavedState savedState) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m10609o(savedState);
        return badgeDrawable;
    }

    /* renamed from: f */
    private void m10618f(Canvas canvas) {
        Rect rect = new Rect();
        String g = m10617g();
        this.f10048h.m9459e().getTextBounds(g, 0, g.length(), rect);
        canvas.drawText(g, this.f10054n, this.f10055o + (rect.height() / 2), this.f10048h.m9459e());
    }

    @NonNull
    /* renamed from: g */
    private String m10617g() {
        if (m10614j() <= this.f10056p) {
            return Integer.toString(m10614j());
        }
        Context context = this.f10046f.get();
        return context == null ? "" : context.getString(C1027R.string.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.f10056p), "+");
    }

    /* renamed from: m */
    private void m10611m(Context context, AttributeSet attributeSet, @AttrRes int i, @StyleRes int i2) {
        TypedArray h = ThemeEnforcement.m9445h(context, attributeSet, C1027R.styleable.Badge, i, i2, new int[0]);
        m10604t(h.getInt(C1027R.styleable.Badge_maxCharacterCount, 4));
        if (h.hasValue(C1027R.styleable.Badge_number)) {
            m10603u(h.getInt(C1027R.styleable.Badge_number, 0));
        }
        m10608p(m10610n(context, h, C1027R.styleable.Badge_backgroundColor));
        if (h.hasValue(C1027R.styleable.Badge_badgeTextColor)) {
            m10606r(m10610n(context, h, C1027R.styleable.Badge_badgeTextColor));
        }
        m10607q(h.getInt(C1027R.styleable.Badge_badgeGravity, 8388661));
        m10605s(h.getDimensionPixelOffset(C1027R.styleable.Badge_horizontalOffset, 0));
        m10600x(h.getDimensionPixelOffset(C1027R.styleable.Badge_verticalOffset, 0));
        h.recycle();
    }

    /* renamed from: n */
    private static int m10610n(Context context, @NonNull TypedArray typedArray, @StyleableRes int i) {
        return MaterialResources.m9394a(context, typedArray, i).getDefaultColor();
    }

    /* renamed from: o */
    private void m10609o(@NonNull SavedState savedState) {
        m10604t(savedState.f10066j);
        if (savedState.f10065i != -1) {
            m10603u(savedState.f10065i);
        }
        m10608p(savedState.f10062f);
        m10606r(savedState.f10063g);
        m10607q(savedState.f10070n);
        m10605s(savedState.f10071o);
        m10600x(savedState.f10072p);
    }

    /* renamed from: v */
    private void m10602v(@Nullable TextAppearance textAppearance) {
        Context context;
        if (this.f10048h.m9460d() != textAppearance && (context = this.f10046f.get()) != null) {
            this.f10048h.m9456h(textAppearance, context);
            m10598z();
        }
    }

    /* renamed from: w */
    private void m10601w(@StyleRes int i) {
        Context context = this.f10046f.get();
        if (context != null) {
            m10602v(new TextAppearance(context, i));
        }
    }

    /* renamed from: z */
    private void m10598z() {
        Context context = this.f10046f.get();
        WeakReference<View> weakReference = this.f10060t;
        ViewGroup viewGroup = null;
        View view = weakReference != null ? weakReference.get() : null;
        if (context != null && view != null) {
            Rect rect = new Rect();
            rect.set(this.f10049i);
            Rect rect2 = new Rect();
            view.getDrawingRect(rect2);
            WeakReference<ViewGroup> weakReference2 = this.f10061u;
            if (weakReference2 != null) {
                viewGroup = weakReference2.get();
            }
            if (viewGroup != null || BadgeUtils.f10073a) {
                ViewGroup viewGroup2 = viewGroup;
                if (viewGroup == null) {
                    viewGroup2 = (ViewGroup) view.getParent();
                }
                viewGroup2.offsetDescendantRectToMyCoords(view, rect2);
            }
            m10622b(context, rect2, view);
            BadgeUtils.m10571f(this.f10049i, this.f10054n, this.f10055o, this.f10058r, this.f10059s);
            this.f10047g.m9330U(this.f10057q);
            if (!rect.equals(this.f10049i)) {
                this.f10047g.setBounds(this.f10049i);
            }
        }
    }

    @Override // com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    @RestrictTo
    /* renamed from: a */
    public void mo8696a() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(@NonNull Canvas canvas) {
        if (!getBounds().isEmpty() && getAlpha() != 0 && isVisible()) {
            this.f10047g.draw(canvas);
            if (m10612l()) {
                m10618f(canvas);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f10053m.f10064h;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f10049i.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f10049i.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Nullable
    /* renamed from: h */
    public CharSequence m10616h() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!m10612l()) {
            return this.f10053m.f10067k;
        }
        if (this.f10053m.f10068l <= 0 || (context = this.f10046f.get()) == null) {
            return null;
        }
        return m10614j() <= this.f10056p ? context.getResources().getQuantityString(this.f10053m.f10068l, m10614j(), Integer.valueOf(m10614j())) : context.getString(this.f10053m.f10069m, Integer.valueOf(this.f10056p));
    }

    /* renamed from: i */
    public int m10615i() {
        return this.f10053m.f10066j;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    /* renamed from: j */
    public int m10614j() {
        if (!m10612l()) {
            return 0;
        }
        return this.f10053m.f10065i;
    }

    @NonNull
    /* renamed from: k */
    public SavedState m10613k() {
        return this.f10053m;
    }

    /* renamed from: l */
    public boolean m10612l() {
        return this.f10053m.f10065i != -1;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.TextDrawableHelper.TextDrawableDelegate
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    /* renamed from: p */
    public void m10608p(@ColorInt int i) {
        this.f10053m.f10062f = i;
        ColorStateList valueOf = ColorStateList.valueOf(i);
        if (this.f10047g.m9289x() != valueOf) {
            this.f10047g.m9328W(valueOf);
            invalidateSelf();
        }
    }

    /* renamed from: q */
    public void m10607q(int i) {
        if (this.f10053m.f10070n != i) {
            this.f10053m.f10070n = i;
            WeakReference<View> weakReference = this.f10060t;
            if (weakReference != null && weakReference.get() != null) {
                View view = this.f10060t.get();
                WeakReference<ViewGroup> weakReference2 = this.f10061u;
                m10599y(view, weakReference2 != null ? weakReference2.get() : null);
            }
        }
    }

    /* renamed from: r */
    public void m10606r(@ColorInt int i) {
        this.f10053m.f10063g = i;
        if (this.f10048h.m9459e().getColor() != i) {
            this.f10048h.m9459e().setColor(i);
            invalidateSelf();
        }
    }

    /* renamed from: s */
    public void m10605s(int i) {
        this.f10053m.f10071o = i;
        m10598z();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f10053m.f10064h = i;
        this.f10048h.m9459e().setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    /* renamed from: t */
    public void m10604t(int i) {
        if (this.f10053m.f10066j != i) {
            this.f10053m.f10066j = i;
            m10623A();
            this.f10048h.m9455i(true);
            m10598z();
            invalidateSelf();
        }
    }

    /* renamed from: u */
    public void m10603u(int i) {
        int max = Math.max(0, i);
        if (this.f10053m.f10065i != max) {
            this.f10053m.f10065i = max;
            this.f10048h.m9455i(true);
            m10598z();
            invalidateSelf();
        }
    }

    /* renamed from: x */
    public void m10600x(int i) {
        this.f10053m.f10072p = i;
        m10598z();
    }

    /* renamed from: y */
    public void m10599y(@NonNull View view, @Nullable ViewGroup viewGroup) {
        this.f10060t = new WeakReference<>(view);
        this.f10061u = new WeakReference<>(viewGroup);
        m10598z();
        invalidateSelf();
    }
}
