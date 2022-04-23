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
import androidx.core.view.v;
import com.google.android.material.a;
import com.google.android.material.h.d;
import com.google.android.material.internal.i;
import com.google.android.material.internal.l;
import com.google.android.material.k.h;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
/* loaded from: classes4-dex2jar.jar:com/google/android/material/badge/BadgeDrawable.class */
public final class BadgeDrawable extends Drawable implements i.a {

    /* renamed from: b  reason: collision with root package name */
    private static final int f30244b = a.k.Widget_MaterialComponents_Badge;

    /* renamed from: c  reason: collision with root package name */
    private static final int f30245c = a.b.badgeStyle;

    /* renamed from: a  reason: collision with root package name */
    final SavedState f30246a;

    /* renamed from: d  reason: collision with root package name */
    private final WeakReference<Context> f30247d;
    private final i f;
    private final float h;
    private final float i;
    private final float j;
    private float k;
    private float l;
    private int m;
    private float n;
    private float o;
    private float p;
    private WeakReference<View> q;
    private WeakReference<FrameLayout> r;
    private final Rect g = new Rect();
    private final h e = new h();

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
            this.badgeTextColor = new d(context, a.k.TextAppearance_MaterialComponents_Badge).f30562a.getDefaultColor();
            this.contentDescriptionNumberless = context.getString(a.j.mtrl_badge_numberless_content_description);
            this.contentDescriptionQuantityStrings = a.i.mtrl_badge_content_description;
            this.contentDescriptionExceedsMaxBadgeNumberRes = a.j.mtrl_exceed_max_badge_number_content_description;
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
        d dVar;
        Context context2;
        WeakReference<Context> weakReference = new WeakReference<>(context);
        this.f30247d = weakReference;
        l.b(context);
        Resources resources = context.getResources();
        this.h = resources.getDimensionPixelSize(a.d.mtrl_badge_radius);
        this.j = resources.getDimensionPixelSize(a.d.mtrl_badge_long_text_horizontal_padding);
        this.i = resources.getDimensionPixelSize(a.d.mtrl_badge_with_text_radius);
        i iVar = new i(this);
        this.f = iVar;
        iVar.f30641a.setTextAlign(Paint.Align.CENTER);
        this.f30246a = new SavedState(context);
        int i = a.k.TextAppearance_MaterialComponents_Badge;
        Context context3 = weakReference.get();
        if (context3 != null && iVar.f30644d != (dVar = new d(context3, i)) && (context2 = weakReference.get()) != null) {
            iVar.a(dVar, context2);
            f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BadgeDrawable a(Context context, SavedState savedState) {
        int max;
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        int i = savedState.maxCharacterCount;
        if (badgeDrawable.f30246a.maxCharacterCount != i) {
            badgeDrawable.f30246a.maxCharacterCount = i;
            badgeDrawable.m = ((int) Math.pow(10.0d, badgeDrawable.f30246a.maxCharacterCount - 1.0d)) - 1;
            badgeDrawable.f.f30642b = true;
            badgeDrawable.f();
            badgeDrawable.invalidateSelf();
        }
        if (!(savedState.number == -1 || badgeDrawable.f30246a.number == (max = Math.max(0, savedState.number)))) {
            badgeDrawable.f30246a.number = max;
            badgeDrawable.f.f30642b = true;
            badgeDrawable.f();
            badgeDrawable.invalidateSelf();
        }
        int i2 = savedState.backgroundColor;
        badgeDrawable.f30246a.backgroundColor = i2;
        ColorStateList valueOf = ColorStateList.valueOf(i2);
        if (badgeDrawable.e.t.f30686d != valueOf) {
            badgeDrawable.e.g(valueOf);
            badgeDrawable.invalidateSelf();
        }
        int i3 = savedState.badgeTextColor;
        badgeDrawable.f30246a.badgeTextColor = i3;
        if (badgeDrawable.f.f30641a.getColor() != i3) {
            badgeDrawable.f.f30641a.setColor(i3);
            badgeDrawable.invalidateSelf();
        }
        int i4 = savedState.badgeGravity;
        if (badgeDrawable.f30246a.badgeGravity != i4) {
            badgeDrawable.f30246a.badgeGravity = i4;
            WeakReference<View> weakReference = badgeDrawable.q;
            if (!(weakReference == null || weakReference.get() == null)) {
                View view = badgeDrawable.q.get();
                WeakReference<FrameLayout> weakReference2 = badgeDrawable.r;
                badgeDrawable.a(view, weakReference2 != null ? weakReference2.get() : null);
            }
        }
        badgeDrawable.f30246a.horizontalOffset = savedState.horizontalOffset;
        badgeDrawable.f();
        badgeDrawable.f30246a.verticalOffset = savedState.verticalOffset;
        badgeDrawable.f();
        boolean z = savedState.isVisible;
        badgeDrawable.setVisible(z, false);
        badgeDrawable.f30246a.isVisible = z;
        if (a.f30251a && badgeDrawable.a() != null && !z) {
            ((ViewGroup) badgeDrawable.a().getParent()).invalidate();
        }
        return badgeDrawable;
    }

    private void a(Context context, Rect rect, View view) {
        int i = this.f30246a.badgeGravity;
        if (i == 8388691 || i == 8388693) {
            this.l = rect.bottom - this.f30246a.verticalOffset;
        } else {
            this.l = rect.top + this.f30246a.verticalOffset;
        }
        if (e() <= 9) {
            float f = !d() ? this.h : this.i;
            this.n = f;
            this.p = f;
            this.o = f;
        } else {
            float f2 = this.i;
            this.n = f2;
            this.p = f2;
            this.o = (this.f.a(g()) / 2.0f) + this.j;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(d() ? a.d.mtrl_badge_text_horizontal_edge_offset : a.d.mtrl_badge_horizontal_edge_offset);
        int i2 = this.f30246a.badgeGravity;
        if (i2 == 8388659 || i2 == 8388691) {
            this.k = v.f(view) == 0 ? (rect.left - this.o) + dimensionPixelSize + this.f30246a.horizontalOffset : ((rect.right + this.o) - dimensionPixelSize) - this.f30246a.horizontalOffset;
        } else {
            this.k = v.f(view) == 0 ? ((rect.right + this.o) - dimensionPixelSize) - this.f30246a.horizontalOffset : (rect.left - this.o) + dimensionPixelSize + this.f30246a.horizontalOffset;
        }
    }

    private void a(final View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != a.f.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.r;
            if (weakReference == null || weakReference.get() != viewGroup) {
                b(view);
                final FrameLayout frameLayout = new FrameLayout(view.getContext());
                frameLayout.setId(a.f.mtrl_anchor_parent);
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
                this.r = new WeakReference<>(frameLayout);
                frameLayout.post(new Runnable() { // from class: com.google.android.material.badge.BadgeDrawable.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        BadgeDrawable.this.a(view, frameLayout);
                    }
                });
            }
        }
    }

    private static void b(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    private boolean d() {
        return this.f30246a.number != -1;
    }

    private int e() {
        if (!d()) {
            return 0;
        }
        return this.f30246a.number;
    }

    private void f() {
        Context context = this.f30247d.get();
        WeakReference<View> weakReference = this.q;
        FrameLayout frameLayout = null;
        View view = weakReference != null ? weakReference.get() : null;
        if (context != null && view != null) {
            Rect rect = new Rect();
            rect.set(this.g);
            Rect rect2 = new Rect();
            view.getDrawingRect(rect2);
            WeakReference<FrameLayout> weakReference2 = this.r;
            if (weakReference2 != null) {
                frameLayout = weakReference2.get();
            }
            if (frameLayout != null || a.f30251a) {
                ViewGroup viewGroup = frameLayout;
                if (frameLayout == null) {
                    viewGroup = (ViewGroup) view.getParent();
                }
                viewGroup.offsetDescendantRectToMyCoords(view, rect2);
            }
            a(context, rect2, view);
            a.a(this.g, this.k, this.l, this.o, this.p);
            this.e.o(this.n);
            if (!rect.equals(this.g)) {
                this.e.setBounds(this.g);
            }
        }
    }

    private String g() {
        if (e() <= this.m) {
            return NumberFormat.getInstance().format(e());
        }
        Context context = this.f30247d.get();
        return context == null ? "" : context.getString(a.j.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.m), "+");
    }

    public final FrameLayout a() {
        WeakReference<FrameLayout> weakReference = this.r;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    public final void a(View view, FrameLayout frameLayout) {
        this.q = new WeakReference<>(view);
        if (!a.f30251a || frameLayout != null) {
            this.r = new WeakReference<>(frameLayout);
        } else {
            a(view);
        }
        if (!a.f30251a) {
            b(view);
        }
        f();
        invalidateSelf();
    }

    @Override // com.google.android.material.internal.i.a
    public final void b() {
        invalidateSelf();
    }

    public final CharSequence c() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!d()) {
            return this.f30246a.contentDescriptionNumberless;
        }
        if (this.f30246a.contentDescriptionQuantityStrings <= 0 || (context = this.f30247d.get()) == null) {
            return null;
        }
        return e() <= this.m ? context.getResources().getQuantityString(this.f30246a.contentDescriptionQuantityStrings, e(), Integer.valueOf(e())) : context.getString(this.f30246a.contentDescriptionExceedsMaxBadgeNumberRes, Integer.valueOf(this.m));
    }

    @Override // android.graphics.drawable.Drawable
    public final void draw(Canvas canvas) {
        if (!getBounds().isEmpty() && getAlpha() != 0 && isVisible()) {
            this.e.draw(canvas);
            if (d()) {
                Rect rect = new Rect();
                String g = g();
                this.f.f30641a.getTextBounds(g, 0, g.length(), rect);
                canvas.drawText(g, this.k, this.l + (rect.height() / 2), this.f.f30641a);
            }
        }
    }

    @Override // android.graphics.drawable.Drawable
    public final int getAlpha() {
        return this.f30246a.alpha;
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicHeight() {
        return this.g.height();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getIntrinsicWidth() {
        return this.g.width();
    }

    @Override // android.graphics.drawable.Drawable
    public final int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Drawable
    public final boolean isStateful() {
        return false;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.i.a
    public final boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    @Override // android.graphics.drawable.Drawable
    public final void setAlpha(int i) {
        this.f30246a.alpha = i;
        this.f.f30641a.setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public final void setColorFilter(ColorFilter colorFilter) {
    }
}
