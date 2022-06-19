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
import android.widget.FrameLayout;
import com.google.android.material.internal.C8197i;
import com.google.android.material.internal.C8203l;
import java.lang.ref.WeakReference;
import java.text.NumberFormat;
import p020b.p041h.p050l.C1679w;
import p078c.p084c.p085a.p096b.C1886b;
import p078c.p084c.p085a.p096b.C1888d;
import p078c.p084c.p085a.p096b.C1890f;
import p078c.p084c.p085a.p096b.C1893i;
import p078c.p084c.p085a.p096b.C1894j;
import p078c.p084c.p085a.p096b.C1895k;
import p078c.p084c.p085a.p096b.C1896l;
import p078c.p084c.p085a.p096b.p105u.C1919c;
import p078c.p084c.p085a.p096b.p105u.C1920d;
import p078c.p084c.p085a.p096b.p108x.C1938h;
/* loaded from: classes2-dex2jar.jar:com/google/android/material/badge/BadgeDrawable.class */
public class BadgeDrawable extends Drawable implements C8197i.AbstractC8199b {

    /* renamed from: d */
    private static final int f36095d = C1895k.Widget_MaterialComponents_Badge;

    /* renamed from: e */
    private static final int f36096e = C1886b.badgeStyle;

    /* renamed from: f */
    private final WeakReference<Context> f36097f;

    /* renamed from: h */
    private final C8197i f36099h;

    /* renamed from: j */
    private final float f36101j;

    /* renamed from: k */
    private final float f36102k;

    /* renamed from: l */
    private final float f36103l;

    /* renamed from: m */
    private final SavedState f36104m;

    /* renamed from: n */
    private float f36105n;

    /* renamed from: o */
    private float f36106o;

    /* renamed from: p */
    private int f36107p;

    /* renamed from: q */
    private float f36108q;

    /* renamed from: r */
    private float f36109r;

    /* renamed from: s */
    private float f36110s;

    /* renamed from: t */
    private WeakReference<View> f36111t;

    /* renamed from: u */
    private WeakReference<FrameLayout> f36112u;

    /* renamed from: i */
    private final Rect f36100i = new Rect();

    /* renamed from: g */
    private final C1938h f36098g = new C1938h();

    /* loaded from: classes2-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState.class */
    public static final class SavedState implements Parcelable {
        public static final Parcelable.Creator<SavedState> CREATOR = new C8002a();

        /* renamed from: d */
        private int f36113d;

        /* renamed from: e */
        private int f36114e;

        /* renamed from: f */
        private int f36115f;

        /* renamed from: g */
        private int f36116g;

        /* renamed from: h */
        private int f36117h;

        /* renamed from: i */
        private CharSequence f36118i;

        /* renamed from: j */
        private int f36119j;

        /* renamed from: k */
        private int f36120k;

        /* renamed from: l */
        private int f36121l;

        /* renamed from: m */
        private boolean f36122m;

        /* renamed from: n */
        private int f36123n;

        /* renamed from: o */
        private int f36124o;

        /* renamed from: com.google.android.material.badge.BadgeDrawable$SavedState$a */
        /* loaded from: classes2-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$SavedState$a.class */
        static final class C8002a implements Parcelable.Creator<SavedState> {
            C8002a() {
            }

            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: b */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        }

        public SavedState(Context context) {
            this.f36115f = 255;
            this.f36116g = -1;
            this.f36114e = new C1920d(context, C1895k.TextAppearance_MaterialComponents_Badge).f6850a.getDefaultColor();
            this.f36118i = context.getString(C1894j.mtrl_badge_numberless_content_description);
            this.f36119j = C1893i.mtrl_badge_content_description;
            this.f36120k = C1894j.mtrl_exceed_max_badge_number_content_description;
            this.f36122m = true;
        }

        protected SavedState(Parcel parcel) {
            this.f36115f = 255;
            this.f36116g = -1;
            this.f36113d = parcel.readInt();
            this.f36114e = parcel.readInt();
            this.f36115f = parcel.readInt();
            this.f36116g = parcel.readInt();
            this.f36117h = parcel.readInt();
            this.f36118i = parcel.readString();
            this.f36119j = parcel.readInt();
            this.f36121l = parcel.readInt();
            this.f36123n = parcel.readInt();
            this.f36124o = parcel.readInt();
            this.f36122m = parcel.readInt() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeInt(this.f36113d);
            parcel.writeInt(this.f36114e);
            parcel.writeInt(this.f36115f);
            parcel.writeInt(this.f36116g);
            parcel.writeInt(this.f36117h);
            parcel.writeString(this.f36118i.toString());
            parcel.writeInt(this.f36119j);
            parcel.writeInt(this.f36121l);
            parcel.writeInt(this.f36123n);
            parcel.writeInt(this.f36124o);
            parcel.writeInt(this.f36122m ? 1 : 0);
        }
    }

    /* renamed from: com.google.android.material.badge.BadgeDrawable$a */
    /* loaded from: classes2-dex2jar.jar:com/google/android/material/badge/BadgeDrawable$a.class */
    public class RunnableC8003a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ View f36125d;

        /* renamed from: e */
        final /* synthetic */ FrameLayout f36126e;

        RunnableC8003a(View view, FrameLayout frameLayout) {
            BadgeDrawable.this = r4;
            this.f36125d = view;
            this.f36126e = frameLayout;
        }

        @Override // java.lang.Runnable
        public void run() {
            BadgeDrawable.this.m5656C(this.f36125d, this.f36126e);
        }
    }

    private BadgeDrawable(Context context) {
        this.f36097f = new WeakReference<>(context);
        C8203l.m4467c(context);
        Resources resources = context.getResources();
        this.f36101j = resources.getDimensionPixelSize(C1888d.mtrl_badge_radius);
        this.f36103l = resources.getDimensionPixelSize(C1888d.mtrl_badge_long_text_horizontal_padding);
        this.f36102k = resources.getDimensionPixelSize(C1888d.mtrl_badge_with_text_radius);
        C8197i c8197i = new C8197i(this);
        this.f36099h = c8197i;
        c8197i.m4482e().setTextAlign(Paint.Align.CENTER);
        this.f36104m = new SavedState(context);
        m5631x(C1895k.TextAppearance_MaterialComponents_Badge);
    }

    /* renamed from: A */
    private void m5658A(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        if (viewGroup == null || viewGroup.getId() != C1890f.mtrl_anchor_parent) {
            WeakReference<FrameLayout> weakReference = this.f36112u;
            if (weakReference != null && weakReference.get() == viewGroup) {
                return;
            }
            m5657B(view);
            FrameLayout frameLayout = new FrameLayout(view.getContext());
            frameLayout.setId(C1890f.mtrl_anchor_parent);
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
            this.f36112u = new WeakReference<>(frameLayout);
            frameLayout.post(new RunnableC8003a(view, frameLayout));
        }
    }

    /* renamed from: B */
    private static void m5657B(View view) {
        ViewGroup viewGroup = (ViewGroup) view.getParent();
        viewGroup.setClipChildren(false);
        viewGroup.setClipToPadding(false);
    }

    /* renamed from: D */
    private void m5655D() {
        Context context = this.f36097f.get();
        WeakReference<View> weakReference = this.f36111t;
        FrameLayout frameLayout = null;
        View view = weakReference != null ? weakReference.get() : null;
        if (context == null || view == null) {
            return;
        }
        Rect rect = new Rect();
        rect.set(this.f36100i);
        Rect rect2 = new Rect();
        view.getDrawingRect(rect2);
        WeakReference<FrameLayout> weakReference2 = this.f36112u;
        if (weakReference2 != null) {
            frameLayout = weakReference2.get();
        }
        if (frameLayout != null || C8004a.f36128a) {
            FrameLayout frameLayout2 = frameLayout;
            if (frameLayout == null) {
                frameLayout2 = (ViewGroup) view.getParent();
            }
            frameLayout2.offsetDescendantRectToMyCoords(view, rect2);
        }
        m5653b(context, rect2, view);
        C8004a.m5600f(this.f36100i, this.f36105n, this.f36106o, this.f36109r, this.f36110s);
        this.f36098g.m28628X(this.f36108q);
        if (rect.equals(this.f36100i)) {
            return;
        }
        this.f36098g.setBounds(this.f36100i);
    }

    /* renamed from: E */
    private void m5654E() {
        this.f36107p = ((int) Math.pow(10.0d, m5645j() - 1.0d)) - 1;
    }

    /* renamed from: b */
    private void m5653b(Context context, Rect rect, View view) {
        int i = this.f36104m.f36121l;
        if (i == 8388691 || i == 8388693) {
            this.f36106o = rect.bottom - this.f36104m.f36124o;
        } else {
            this.f36106o = rect.top + this.f36104m.f36124o;
        }
        if (m5644k() <= 9) {
            float f = !m5642m() ? this.f36101j : this.f36102k;
            this.f36108q = f;
            this.f36110s = f;
            this.f36109r = f;
        } else {
            float f2 = this.f36102k;
            this.f36108q = f2;
            this.f36110s = f2;
            this.f36109r = (this.f36099h.m4481f(m5648g()) / 2.0f) + this.f36103l;
        }
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(m5642m() ? C1888d.mtrl_badge_text_horizontal_edge_offset : C1888d.mtrl_badge_horizontal_edge_offset);
        int i2 = this.f36104m.f36121l;
        if (i2 == 8388659 || i2 == 8388691) {
            this.f36105n = C1679w.m29346C(view) == 0 ? (rect.left - this.f36109r) + dimensionPixelSize + this.f36104m.f36123n : ((rect.right + this.f36109r) - dimensionPixelSize) - this.f36104m.f36123n;
        } else {
            this.f36105n = C1679w.m29346C(view) == 0 ? ((rect.right + this.f36109r) - dimensionPixelSize) - this.f36104m.f36123n : (rect.left - this.f36109r) + dimensionPixelSize + this.f36104m.f36123n;
        }
    }

    /* renamed from: c */
    public static BadgeDrawable m5652c(Context context) {
        return m5651d(context, null, f36096e, f36095d);
    }

    /* renamed from: d */
    private static BadgeDrawable m5651d(Context context, AttributeSet attributeSet, int i, int i2) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m5641n(context, attributeSet, i, i2);
        return badgeDrawable;
    }

    /* renamed from: e */
    public static BadgeDrawable m5650e(Context context, SavedState savedState) {
        BadgeDrawable badgeDrawable = new BadgeDrawable(context);
        badgeDrawable.m5639p(savedState);
        return badgeDrawable;
    }

    /* renamed from: f */
    private void m5649f(Canvas canvas) {
        Rect rect = new Rect();
        String m5648g = m5648g();
        this.f36099h.m4482e().getTextBounds(m5648g, 0, m5648g.length(), rect);
        canvas.drawText(m5648g, this.f36105n, this.f36106o + (rect.height() / 2), this.f36099h.m4482e());
    }

    /* renamed from: g */
    private String m5648g() {
        if (m5644k() <= this.f36107p) {
            return NumberFormat.getInstance().format(m5644k());
        }
        Context context = this.f36097f.get();
        return context == null ? "" : context.getString(C1894j.mtrl_exceed_max_badge_number_suffix, Integer.valueOf(this.f36107p), "+");
    }

    /* renamed from: n */
    private void m5641n(Context context, AttributeSet attributeSet, int i, int i2) {
        TypedArray m4462h = C8203l.m4462h(context, attributeSet, C1896l.Badge, i, i2, new int[0]);
        m5634u(m4462h.getInt(C1896l.Badge_maxCharacterCount, 4));
        int i3 = C1896l.Badge_number;
        if (m4462h.hasValue(i3)) {
            m5633v(m4462h.getInt(i3, 0));
        }
        m5638q(m5640o(context, m4462h, C1896l.Badge_backgroundColor));
        int i4 = C1896l.Badge_badgeTextColor;
        if (m4462h.hasValue(i4)) {
            m5636s(m5640o(context, m4462h, i4));
        }
        m5637r(m4462h.getInt(C1896l.Badge_badgeGravity, 8388661));
        m5635t(m4462h.getDimensionPixelOffset(C1896l.Badge_horizontalOffset, 0));
        m5630y(m4462h.getDimensionPixelOffset(C1896l.Badge_verticalOffset, 0));
        m4462h.recycle();
    }

    /* renamed from: o */
    private static int m5640o(Context context, TypedArray typedArray, int i) {
        return C1919c.m28686a(context, typedArray, i).getDefaultColor();
    }

    /* renamed from: p */
    private void m5639p(SavedState savedState) {
        m5634u(savedState.f36117h);
        if (savedState.f36116g != -1) {
            m5633v(savedState.f36116g);
        }
        m5638q(savedState.f36113d);
        m5636s(savedState.f36114e);
        m5637r(savedState.f36121l);
        m5635t(savedState.f36123n);
        m5630y(savedState.f36124o);
        m5629z(savedState.f36122m);
    }

    /* renamed from: w */
    private void m5632w(C1920d c1920d) {
        Context context;
        if (this.f36099h.m4483d() == c1920d || (context = this.f36097f.get()) == null) {
            return;
        }
        this.f36099h.m4479h(c1920d, context);
        m5655D();
    }

    /* renamed from: x */
    private void m5631x(int i) {
        Context context = this.f36097f.get();
        if (context == null) {
            return;
        }
        m5632w(new C1920d(context, i));
    }

    /* renamed from: C */
    public void m5656C(View view, FrameLayout frameLayout) {
        this.f36111t = new WeakReference<>(view);
        boolean z = C8004a.f36128a;
        if (!z || frameLayout != null) {
            this.f36112u = new WeakReference<>(frameLayout);
        } else {
            m5658A(view);
        }
        if (!z) {
            m5657B(view);
        }
        m5655D();
        invalidateSelf();
    }

    @Override // com.google.android.material.internal.C8197i.AbstractC8199b
    /* renamed from: a */
    public void mo4474a() {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        if (getBounds().isEmpty() || getAlpha() == 0 || !isVisible()) {
            return;
        }
        this.f36098g.draw(canvas);
        if (!m5642m()) {
            return;
        }
        m5649f(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f36104m.f36115f;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f36100i.height();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f36100i.width();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    /* renamed from: h */
    public CharSequence m5647h() {
        Context context;
        if (!isVisible()) {
            return null;
        }
        if (!m5642m()) {
            return this.f36104m.f36118i;
        }
        if (this.f36104m.f36119j <= 0 || (context = this.f36097f.get()) == null) {
            return null;
        }
        return m5644k() <= this.f36107p ? context.getResources().getQuantityString(this.f36104m.f36119j, m5644k(), Integer.valueOf(m5644k())) : context.getString(this.f36104m.f36120k, Integer.valueOf(this.f36107p));
    }

    /* renamed from: i */
    public FrameLayout m5646i() {
        WeakReference<FrameLayout> weakReference = this.f36112u;
        return weakReference != null ? weakReference.get() : null;
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return false;
    }

    /* renamed from: j */
    public int m5645j() {
        return this.f36104m.f36117h;
    }

    /* renamed from: k */
    public int m5644k() {
        if (!m5642m()) {
            return 0;
        }
        return this.f36104m.f36116g;
    }

    /* renamed from: l */
    public SavedState m5643l() {
        return this.f36104m;
    }

    /* renamed from: m */
    public boolean m5642m() {
        return this.f36104m.f36116g != -1;
    }

    @Override // android.graphics.drawable.Drawable, com.google.android.material.internal.C8197i.AbstractC8199b
    public boolean onStateChange(int[] iArr) {
        return super.onStateChange(iArr);
    }

    /* renamed from: q */
    public void m5638q(int i) {
        this.f36104m.f36113d = i;
        ColorStateList valueOf = ColorStateList.valueOf(i);
        if (this.f36098g.m28587x() != valueOf) {
            this.f36098g.m28625a0(valueOf);
            invalidateSelf();
        }
    }

    /* renamed from: r */
    public void m5637r(int i) {
        if (this.f36104m.f36121l != i) {
            this.f36104m.f36121l = i;
            WeakReference<View> weakReference = this.f36111t;
            if (weakReference == null || weakReference.get() == null) {
                return;
            }
            View view = this.f36111t.get();
            WeakReference<FrameLayout> weakReference2 = this.f36112u;
            m5656C(view, weakReference2 != null ? weakReference2.get() : null);
        }
    }

    /* renamed from: s */
    public void m5636s(int i) {
        this.f36104m.f36114e = i;
        if (this.f36099h.m4482e().getColor() != i) {
            this.f36099h.m4482e().setColor(i);
            invalidateSelf();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.f36104m.f36115f = i;
        this.f36099h.m4482e().setAlpha(i);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
    }

    /* renamed from: t */
    public void m5635t(int i) {
        this.f36104m.f36123n = i;
        m5655D();
    }

    /* renamed from: u */
    public void m5634u(int i) {
        if (this.f36104m.f36117h != i) {
            this.f36104m.f36117h = i;
            m5654E();
            this.f36099h.m4478i(true);
            m5655D();
            invalidateSelf();
        }
    }

    /* renamed from: v */
    public void m5633v(int i) {
        int max = Math.max(0, i);
        if (this.f36104m.f36116g != max) {
            this.f36104m.f36116g = max;
            this.f36099h.m4478i(true);
            m5655D();
            invalidateSelf();
        }
    }

    /* renamed from: y */
    public void m5630y(int i) {
        this.f36104m.f36124o = i;
        m5655D();
    }

    /* renamed from: z */
    public void m5629z(boolean z) {
        setVisible(z, false);
        this.f36104m.f36122m = z;
        if (!C8004a.f36128a || m5646i() == null || z) {
            return;
        }
        ((ViewGroup) m5646i().getParent()).invalidate();
    }
}
