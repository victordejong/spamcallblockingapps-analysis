package com.google.android.material.badge;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.core.view.C0926v;
import com.google.android.material.C14376a;
import com.google.android.material.internal.C14641i;
import com.google.android.material.internal.C14647l;
import com.google.android.material.p371h.C14599d;
import com.google.android.material.p374k.C14670h;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/badge/BadgeDrawable.class */
public final class BadgeDrawable extends Drawable implements C14641i.AbstractC14643a {

    /* renamed from: b */
    private static final int f52489b = C14376a.C14387k.Widget_MaterialComponents_Badge;

    /* renamed from: c */
    private static final int f52490c = C14376a.C14378b.badgeStyle;

    /* renamed from: a */
    final SavedState f52491a;

    /* renamed from: d */
    private final WeakReference<Context> f52492d;

    /* renamed from: f */
    private final C14641i f52494f;

    /* renamed from: h */
    private final float f52496h;

    /* renamed from: i */
    private final float f52497i;

    /* renamed from: j */
    private final float f52498j;

    /* renamed from: k */
    private float f52499k;

    /* renamed from: l */
    private float f52500l;

    /* renamed from: m */
    private int f52501m;

    /* renamed from: n */
    private float f52502n;

    /* renamed from: o */
    private float f52503o;

    /* renamed from: p */
    private float f52504p;

    /* renamed from: q */
    private WeakReference<View> f52505q;

    /* renamed from: r */
    private WeakReference<FrameLayout> f52506r;

    /* renamed from: g */
    private final Rect f52495g = new Rect();

    /* renamed from: e */
    private final C14670h f52493e = new C14670h();

    /* loaded from: classes4-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState.class */
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.google.android.material.badge.BadgeDrawable.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        private int alpha;
        private int backgroundColor;
        private int badgeGravity;
        private int badgeTextColor;
        private int contentDescriptionExceedsMaxBadgeNumberRes;
        private CharSequence contentDescriptionNumberless;
        private int contentDescriptionQuantityStrings;
        private int horizontalOffset;
        private boolean isVisible;
        private int maxCharacterCount;
        private int number;
        private int verticalOffset;

        public SavedState(Context context) {
            this.alpha = 255;
            this.number = -1;
            this.badgeTextColor = new C14599d(context, C14376a.C14387k.TextAppearance_MaterialComponents_Badge).f53221a.getDefaultColor();
            this.contentDescriptionNumberless = context.getString(C14376a.C14386j.mtrl_badge_numberless_content_description);
            this.contentDescriptionQuantityStrings = C14376a.C14385i.mtrl_badge_content_description;
            this.contentDescriptionExceedsMaxBadgeNumberRes = C14376a.C14386j.mtrl_exceed_max_badge_number_content_description;
            this.isVisible = true;
        }

        protected SavedState(Parcel parcel) {
            this.alpha = 255;
            this.number = -1;
            this.backgroundColor = parcel.readInt();
            this.badgeTextColor = parcel.readInt();
            this.alpha = parcel.readInt();
            this.number = parcel.readInt();
            this.maxCharacterCount = parcel.readInt();
            this.contentDescriptionNumberless = parcel.readString();
            this.contentDescriptionQuantityStrings = parcel.readInt();
            this.badgeGravity = parcel.readInt();
            this.horizontalOffset = parcel.readInt();
            this.verticalOffset = parcel.readInt();
            this.isVisible = parcel.readInt() != 0;
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.backgroundColor);
            parcel.writeInt(this.badgeTextColor);
            parcel.writeInt(this.alpha);
            parcel.writeInt(this.number);
            parcel.writeInt(this.maxCharacterCount);
            parcel.writeString(this.contentDescriptionNumberless.toString());
            parcel.writeInt(this.contentDescriptionQuantityStrings);
            parcel.writeInt(this.badgeGravity);
            parcel.writeInt(this.horizontalOffset);
            parcel.writeInt(this.verticalOffset);
            parcel.writeInt(this.isVisible ? 1 : 0);
        }
    }

    private BadgeDrawable(Context context) {
        C14599d c14599d;
        Context context2;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f52492d = weakReference;
        C14647l.m10505b(context);
        Resources resources = context.getResources();
        this.f52496h = resources.getDimensionPixelSize(C14376a.C14380d.mtrl_badge_radius);
        this.f52498j = resources.getDimensionPixelSize(C14376a.C14380d.mtrl_badge_long_text_horizontal_padding);
        this.f52497i = resources.getDimensionPixelSize(C14376a.C14380d.mtrl_badge_with_text_radius);
        C14641i c14641i = new C14641i(this);
        this.f52494f = c14641i;
        c14641i.f53426a.setTextAlign(Paint.Align.CENTER);
        this.f52491a = new SavedState(context);
        int i = C14376a.C14387k.TextAppearance_MaterialComponents_Badge;
        Context context3 = weakReference.get();
        if (context3 == null || c14641i.f53429d == (c14599d = new C14599d(context3, i)) || (context2 = weakReference.get()) == null) {
            return;
        }
        c14641i.m10519a(c14599d, context2);
        m11230f();
    }

    /* renamed from: a */
    public static BadgeDrawable m11237a(Context context, SavedState savedState) {
        int max;
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        int i = savedState.maxCharacterCount;
        if (badgeDrawable.f52491a.maxCharacterCount != i) {
            badgeDrawable.f52491a.maxCharacterCount = i;
            badgeDrawable.f52501m = ((int) Math.pow(10.0d, badgeDrawable.f52491a.maxCharacterCount - 1.0d)) - 1;
            badgeDrawable.f52494f.f53427b = true;
            badgeDrawable.m11230f();
            badgeDrawable.invalidateSelf();
        }
        if (savedState.number != -1 && badgeDrawable.f52491a.number != (max = Math.max(0, savedState.number))) {
            badgeDrawable.f52491a.number = max;
            badgeDrawable.f52494f.f53427b = true;
            badgeDrawable.m11230f();
            badgeDrawable.invalidateSelf();
        }
        int i2 = savedState.backgroundColor;
        badgeDrawable.f52491a.backgroundColor = i2;
        ColorStateList valueOf = ColorStateList.valueOf(i2);
        if (badgeDrawable.f52493e.f53492t.f53503d != valueOf) {
            badgeDrawable.f52493e.m10456g(valueOf);
            badgeDrawable.invalidateSelf();
        }
        int i3 = savedState.badgeTextColor;
        badgeDrawable.f52491a.badgeTextColor = i3;
        if (badgeDrawable.f52494f.f53426a.getColor() != i3) {
            badgeDrawable.f52494f.f53426a.setColor(i3);
            badgeDrawable.invalidateSelf();
        }
        int i4 = savedState.badgeGravity;
        if (badgeDrawable.f52491a.badgeGravity != i4) {
            badgeDrawable.f52491a.badgeGravity = i4;
            WeakReference<View> weakReference = badgeDrawable.f52505q;
            if (weakReference != null && weakReference.get() != null) {
                View view = badgeDrawable.f52505q.get();
                WeakReference<FrameLayout> weakReference2 = badgeDrawable.f52506r;
                badgeDrawable.m11235a(view, weakReference2 != null ? weakReference2.get() : null);
            }
        }
        badgeDrawable.f52491a.horizontalOffset = savedState.horizontalOffset;
        badgeDrawable.m11230f();
        badgeDrawable.f52491a.verticalOffset = savedState.verticalOffset;
        badgeDrawable.m11230f();
        boolean z = savedState.isVisible;
        badgeDrawable.setVisible(z, false);
        badgeDrawable.f52491a.isVisible = z;
        if (C14419a.f52510a && badgeDrawable.m11239a() != null && !z) {
            ((ViewGroup) badgeDrawable.m11239a().getParent()).invalidate();
        }
        return badgeDrawable;
    }

    /* renamed from: a */
    private void m11238a(Context context, Rect rect, View view) {
        int i = this.f52491a.badgeGravity;
        if (i == 8388691 || i == 8388693) {
            this.f52500l = rect.bottom - this.f52491a.verticalOffset;
        } else {
            this.f52500l = rect.top + this.f52491a.verticalOffset;
        }
        if (m11231e() <= 9) {
            float f = !m11232d() ? this.f52496h : this.f52497i;
            this.f52502n = f;
            this.f52504p = f;
            this.f52503o = f;
        } else {
            float f2 = this.f52497i;
            this.f52502n = f2;
            this.f52504p = f2;
            this.f52503o = (this.f52494f.m10517a(m11229g()) / 2.0f) + this.f52498j;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m11232d() ? C14376a.C14380d.mtrl_badge_text_horizontal_edge_offset : C14376a.C14380d.mtrl_badge_horizontal_edge_offset);
        int i2 = this.f52491a.badgeGravity;
        if (i2 == 8388659 || i2 == 8388691) {
            this.f52499k = C0926v.m44097f(view) == 0 ? (rect.left - this.f52503o) + dimensionPixelSize + this.f52491a.horizontalOffset : ((rect.right + this.f52503o) - dimensionPixelSize) - this.f52491a.horizontalOffset;
        } else {
            this.f52499k = C0926v.m44097f(view) == 0 ? ((rect.right + this.f52503o) - dimensionPixelSize) - this.f52491a.horizontalOffset : (rect.left - this.f52503o) + dimensionPixelSize + this.f52491a.horizontalOffset;
        }
    }

    /* renamed from: a */
    private void m11236a(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != C14376a.C14382f.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f52506r;
            if (weakReference != null && weakReference.get() == viewGroup) {
                return;
            }
            m11234b(view);
            final FrameLayout frameLayout = new FrameLayout(view.getContext());
            frameLayout.setId(C14376a.C14382f.mtrl_anchor_parent);
            frameLayout.setClipChildren(false);
            frameLayout.setClipToPadding(false);
            frameLayout.setLayoutParams(view.getLayoutParams());
            frameLayout.setMinimumWidth(view.getWidth());
            frameLayout.setMinimumHeight(view.getHeight());
            int indexOfChild = viewGroup.indexOfChild(view);
            viewGroup.removeViewAt(indexOfChild);
            view.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            frameLayout.addView(view);
            viewGroup.addView(frameLayout, indexOfChild);
            this.f52506r = new WeakReference<>(frameLayout);
            frameLayout.post(new Runnable() { // from class: com.google.android.material.badge.BadgeDrawable.1
                @Override // java.lang.Runnable
                public final void run() {
                    BadgeDrawable.this.m11235a(view, frameLayout);
                }
            });
        }
    }

    /* renamed from: b */
    private static void m11234b(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    /* renamed from: d */
    private boolean m11232d() {
        return this.f52491a.number != -1;
    }

    /* renamed from: e */
    private int m11231e() {
        if (!m11232d()) {
            return 0;
        }
        return this.f52491a.number;
    }

    /* renamed from: f */
    private void m11230f() {
        Context context = this.f52492d.get();
        WeakReference<View> weakReference = this.f52505q;
        FrameLayout frameLayout = null;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f52495g);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f52506r;
        if (weakReference2 != null) {
            frameLayout = weakReference2.get();
        }
        if (frameLayout != null || C14419a.f52510a) {
            FrameLayout frameLayout2 = frameLayout;
            if (frameLayout == null) {
                frameLayout2 = (ViewGroup) view.getParent();
            }
            frameLayout2.offsetDescendantRectToMyCoords(view, rect2);
        }
        m11238a(context, rect2, view);
        C14419a.m11227a(this.f52495g, this.f52499k, this.f52500l, this.f52503o, this.f52504p);
        this.f52493e.m10445o(this.f52502n);
        if (rect.equals(this.f52495g)) {
            return;
        }
        this.f52493e.setBounds(this.f52495g);
    }

    /* renamed from: g */
    private String m11229g() {
        if (m11231e() <= this.f52501m) {
            return NumberFormat.getInstance().format(m11231e());
        }
        Context context = this.f52492d.get();
        return context == null ? "" : context.getString(C14376a.C14386j.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.f52501m), "+");
    }

    /* renamed from: a */
    public final FrameLayout m11239a() {
        WeakReference<FrameLayout> weakReference = this.f52506r;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    /* renamed from: a */
    public final void m11235a(View view, FrameLayout frameLayout) {
        this.f52505q = new WeakReference<>(view);
        if (!C14419a.f52510a || frameLayout != null) {
            this.f52506r = new WeakReference<>(frameLayout);
        } else {
            m11236a(view);
        }
        if (!C14419a.f52510a) {
            m11234b(view);
        }
        m11230f();
        invalidateSelf();
    }

    @Override // com.google.android.material.internal.C14641i.AbstractC14643a
    /* renamed from: b */
    public final void mo10370b() {
        invalidateSelf();
    }

    /* renamed from: c */
    public final CharSequence m11233c() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!m11232d()) {
            return this.f52491a.contentDescriptionNumberless;
        }
        if (this.f52491a.contentDescriptionQuantityStrings <= 0 || (context = this.f52492d.get()) == null) {
            return null;
        }
        return m11231e() <= this.f52501m ? context.getResources().getQuantityString(this.f52491a.contentDescriptionQuantityStrings, m11231e(), Integer.valueOf(m11231e())) : context.getString(this.f52491a.contentDescriptionExceedsMaxBadgeNumberRes, Integer.valueOf(this.f52501m));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f52493e.draw(canvas);
        if (!m11232d()) {
            return;
        }
        Rect rect = new Rect();
        String m11229g = m11229g();
        this.f52494f.f53426a.getTextBounds(m11229g, 0, m11229g.length(), rect);
        canvas.drawText(m11229g, this.f52499k, this.f52500l + (rect.height() / 2), this.f52494f.f53426a);
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f52491a.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.f52495g.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.f52495g.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C14641i.AbstractC14643a
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f52491a.alpha = i;
        this.f52494f.f53426a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
