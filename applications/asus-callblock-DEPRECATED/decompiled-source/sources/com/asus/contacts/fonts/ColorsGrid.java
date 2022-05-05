package com.asus.contacts.fonts;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.os.AsyncTask;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.asus.contacts.customize.CustomizedPreferenceActivity;
/* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/ColorsGrid.class */
public class ColorsGrid extends GridLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    public static final int[] f2617a = {Color.rgb(255, 255, 255), Color.rgb(244, 67, 54), Color.rgb(156, 39, 176), Color.rgb(63, 81, 181), Color.rgb(76, 176, 80), Color.rgb(255, 194, 5), Color.rgb(40, 40, 40), Color.rgb(158, 158, 158), Color.rgb(255, 255, 255)};

    /* renamed from: b  reason: collision with root package name */
    int f2618b;
    int c;
    ColorCube d;
    int e;
    SharedPreferences f;
    private int g;
    private int h;
    private final int i;
    private final int j;
    private int k;
    private int l;
    private final Context m;
    private int n;
    private int o;
    private int p;
    private Drawable q;
    private a r;
    private CustomizedPreferenceActivity s;
    private final int t;
    private final int u;

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/ColorsGrid$ColorBar.class */
    public static class ColorBar extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        private ImageView f2621a;

        /* renamed from: b  reason: collision with root package name */
        private ImageView f2622b;
        private Bitmap c;
        private ColorsGrid d;
        private final int e;

        public ColorBar(Context context) {
            super(context);
            setClipChildren(false);
            setClipToPadding(false);
            this.e = (int) (4.0f * context.getResources().getDisplayMetrics().density);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            Drawable drawable = context.getResources().getDrawable(2131165472);
            this.f2621a = new ImageView(context);
            this.f2621a.setImageDrawable(drawable);
            this.f2621a.setScaleType(ImageView.ScaleType.FIT_XY);
            addView(this.f2621a, layoutParams);
            this.f2622b = new ImageView(context);
            this.f2622b.setImageResource(2131165473);
            addView(this.f2622b, new FrameLayout.LayoutParams(-2, -2));
            this.f2622b.bringToFront();
            this.f2621a.setOnTouchListener(new View.OnTouchListener() { // from class: com.asus.contacts.fonts.ColorsGrid.ColorBar.3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    int x = (int) motionEvent.getX();
                    int y = (int) motionEvent.getY();
                    Bitmap bitmap = ColorBar.this.c;
                    try {
                        int[] a2 = ColorBar.a(ColorBar.this, x, y);
                        if (a2 == null) {
                            return true;
                        }
                        int pixel = bitmap.getPixel(a2[0], a2[1]);
                        if (Color.alpha(pixel) == 0) {
                            return true;
                        }
                        ColorBar.this.d.a(pixel, false, x, y);
                        return true;
                    } catch (Exception e) {
                        return true;
                    }
                }
            });
        }

        static /* synthetic */ int[] a(ColorBar colorBar, int i, int i2) {
            int max;
            int[] iArr = null;
            if (!(colorBar.f2622b == null || (max = Math.max(colorBar.f2622b.getHeight(), colorBar.f2622b.getWidth())) == 0)) {
                int width = i <= colorBar.e + 0 ? (-(max / 2)) + colorBar.e : i >= colorBar.getWidth() - colorBar.e ? (colorBar.getWidth() - (max / 2)) - colorBar.e : i - (max / 2);
                int height = i2 <= colorBar.e + 0 ? (-(max / 2)) + colorBar.e : i2 >= colorBar.getHeight() - colorBar.e ? (colorBar.getHeight() - (max / 2)) - colorBar.e : i2 - (max / 2);
                colorBar.f2622b.setX(width);
                colorBar.f2622b.setY(height);
                iArr = new int[]{width + (max / 2), height + (max / 2)};
            }
            return iArr;
        }

        static /* synthetic */ void e(ColorBar colorBar) {
            colorBar.f2621a.setDrawingCacheEnabled(true);
            colorBar.c = Bitmap.createBitmap(colorBar.f2621a.getDrawingCache());
            colorBar.f2621a.setDrawingCacheEnabled(false);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            final Runnable runnable = new Runnable() { // from class: com.asus.contacts.fonts.ColorsGrid.ColorBar.1
                /* JADX WARN: Type inference failed for: r0v5, types: [com.asus.contacts.fonts.ColorsGrid$ColorBar$1$1] */
                @Override // java.lang.Runnable
                public final void run() {
                    if (ColorBar.this.d.d.f2629a == -1) {
                        Bitmap bitmap = ((BitmapDrawable) ColorBar.this.f2621a.getDrawable()).getBitmap();
                        try {
                            int width = ColorBar.this.f2622b.getWidth() / 2;
                            int height = ColorBar.this.f2622b.getHeight() / 2;
                            int pixel = bitmap.getPixel(width, height);
                            int i3 = pixel;
                            if (pixel == 0) {
                                i3 = -1;
                            }
                            ColorBar.this.d.a(i3, true, 0, 0);
                            ColorBar.a(ColorBar.this, width, height);
                        } catch (Exception e) {
                        }
                    } else {
                        final Bitmap bitmap2 = ColorBar.this.c;
                        final int i4 = ColorBar.this.d.e;
                        new AsyncTask<Void, Void, Boolean>() { // from class: com.asus.contacts.fonts.ColorsGrid.ColorBar.1.1

                            /* renamed from: a  reason: collision with root package name */
                            int f2624a;

                            /* renamed from: b  reason: collision with root package name */
                            int f2625b;

                            @Override // android.os.AsyncTask
                            protected final /* synthetic */ Boolean doInBackground(Void[] voidArr) {
                                boolean z;
                                int[] iArr = new int[bitmap2.getWidth() * bitmap2.getHeight()];
                                bitmap2.getPixels(iArr, 0, bitmap2.getWidth(), 0, 0, bitmap2.getWidth(), bitmap2.getHeight());
                                int length = iArr.length;
                                int i5 = 0;
                                int i6 = 0;
                                while (true) {
                                    if (i5 >= length) {
                                        z = false;
                                        break;
                                    }
                                    if (i4 == iArr[i5]) {
                                        this.f2624a = i6 % bitmap2.getWidth();
                                        this.f2625b = i6 / bitmap2.getWidth();
                                        z = true;
                                        break;
                                    }
                                    i6++;
                                    i5++;
                                }
                                return z;
                            }

                            @Override // android.os.AsyncTask
                            protected final /* synthetic */ void onPostExecute(Boolean bool) {
                                if (bool.booleanValue()) {
                                    ColorBar.a(ColorBar.this, this.f2624a, this.f2625b);
                                } else {
                                    ColorBar.a(ColorBar.this, ColorBar.this.d.f2618b, ColorBar.this.d.c);
                                }
                            }
                        }.execute(new Void[0]);
                    }
                }
            };
            getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.asus.contacts.fonts.ColorsGrid.ColorBar.2
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public final boolean onPreDraw() {
                    ColorBar.this.getViewTreeObserver().removeOnPreDrawListener(this);
                    ColorBar.e(ColorBar.this);
                    runnable.run();
                    return false;
                }
            });
        }

        public void setColorsGrid(ColorsGrid colorsGrid) {
            this.d = colorsGrid;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/ColorsGrid$ColorCube.class */
    public static class ColorCube extends FrameLayout {

        /* renamed from: a  reason: collision with root package name */
        int f2629a;

        public ColorCube(Context context) {
            super(context);
        }

        public void setColor(int i) {
            this.f2629a = i;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/asus/contacts/fonts/ColorsGrid$a.class */
    public interface a {
        void a(int i, int i2);
    }

    public ColorsGrid(Context context) {
        this(context, null);
    }

    public ColorsGrid(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public ColorsGrid(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.g = 0;
        this.n = -1;
        this.m = context;
        Resources resources = this.m.getResources();
        this.i = resources.getInteger(2131361824);
        this.j = resources.getDimensionPixelSize(2131100204);
        this.k = resources.getDimensionPixelSize(2131100211);
        this.l = resources.getDimensionPixelSize(2131100205);
        setColumnCount(this.i);
        this.f = this.m.getSharedPreferences("com.asus.message_preferences", 0);
        this.e = this.f.getInt(c.f, -1);
        this.f2618b = this.f.getInt(c.g, 0);
        this.c = this.f.getInt(c.h, 0);
        this.t = resources.getDimensionPixelSize(2131100213);
        this.u = resources.getDimensionPixelSize(2131100214);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setStroke(this.t, Color.rgb(150, 150, 150));
        gradientDrawable.setCornerRadius(this.j);
        this.q = gradientDrawable;
        setClipChildren(false);
        setClipToPadding(false);
    }

    private GradientDrawable a(int i) {
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(i);
        gradientDrawable.setStroke(this.u, Color.rgb(150, 150, 150));
        gradientDrawable.setCornerRadius(this.j);
        return gradientDrawable;
    }

    private void a() {
        if (this.o == 0 || this.p == 0) {
            getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.asus.contacts.fonts.ColorsGrid.1
                @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
                public final void onGlobalLayout() {
                    ColorsGrid.this.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                    if (ColorsGrid.this.o == 0 || ColorsGrid.this.p == 0) {
                        ColorsGrid.this.o = ColorsGrid.this.getWidth();
                        ColorsGrid.this.p = ColorsGrid.this.getHeight();
                        if (ColorsGrid.this.o != 0 && ColorsGrid.this.p != 0) {
                            ColorsGrid.c(ColorsGrid.this);
                        }
                    }
                }
            });
            requestLayout();
        }
    }

    static /* synthetic */ void c(ColorsGrid colorsGrid) {
        int i;
        int i2;
        int i3;
        int i4;
        Drawable drawable = null;
        colorsGrid.removeAllViews();
        Resources resources = colorsGrid.m.getResources();
        int dimensionPixelSize = (((colorsGrid.o - (colorsGrid.l * (colorsGrid.i - 1))) - resources.getDimensionPixelSize(2131100208)) - resources.getDimensionPixelSize(2131100209)) / colorsGrid.i;
        int min = Math.min(dimensionPixelSize, (((colorsGrid.p - (colorsGrid.k * (colorsGrid.h - 1))) - resources.getDimensionPixelSize(2131100210)) - resources.getDimensionPixelSize(2131100207)) / colorsGrid.h);
        if (min != dimensionPixelSize) {
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) colorsGrid.getLayoutParams();
            layoutParams.width = resources.getDimensionPixelSize(2131100209) + (colorsGrid.i * min) + (colorsGrid.l * (colorsGrid.i - 1)) + resources.getDimensionPixelSize(2131100208);
            colorsGrid.setLayoutParams(layoutParams);
            colorsGrid.p = 0;
            colorsGrid.o = 0;
            colorsGrid.a();
        } else if (colorsGrid.g == 0) {
            for (int i5 = 0; i5 < colorsGrid.h; i5++) {
                for (int i6 = 0; i6 < colorsGrid.i; i6++) {
                    int i7 = i6 + (colorsGrid.i * i5);
                    if (i7 <= f2617a.length) {
                        GridLayout.LayoutParams layoutParams2 = new GridLayout.LayoutParams();
                        layoutParams2.width = min;
                        layoutParams2.height = min;
                        layoutParams2.setGravity(17);
                        if (i5 == 0) {
                            i2 = colorsGrid.k / 2;
                            i = 0;
                        } else if (i5 == colorsGrid.h - 1) {
                            i = colorsGrid.k / 2;
                            i2 = 0;
                        } else {
                            i = colorsGrid.k / 2;
                            i2 = i;
                        }
                        if (i6 == 0) {
                            i4 = colorsGrid.l / 2;
                            i3 = 0;
                        } else if (i6 == colorsGrid.i - 1) {
                            i3 = colorsGrid.l / 2;
                            i4 = 0;
                        } else {
                            i3 = colorsGrid.l / 2;
                            i4 = colorsGrid.l / 2;
                        }
                        layoutParams2.setMargins(i3, i, i4, i2);
                        ColorCube colorCube = new ColorCube(colorsGrid.m);
                        if (i7 == f2617a.length) {
                            ImageView imageView = new ImageView(colorsGrid.m);
                            imageView.setImageResource(2131165475);
                            colorCube.addView(imageView);
                            colorCube.setOnClickListener(new View.OnClickListener() { // from class: com.asus.contacts.fonts.ColorsGrid.2
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    if (ColorsGrid.this.s != null) {
                                        ColorsGrid.this.s.a(c.f, c.g, c.h);
                                    }
                                }
                            });
                        } else {
                            colorCube.setTag(Integer.valueOf(i7));
                            colorCube.setOnClickListener(colorsGrid);
                            int i8 = i7 == 0 ? 0 : f2617a[i7];
                            GradientDrawable a2 = colorsGrid.a(i8);
                            colorCube.setColor(i8);
                            colorCube.setForeground(colorsGrid.n == i7 ? colorsGrid.q : null);
                            colorCube.setBackground(a2);
                        }
                        colorCube.setLayoutParams(layoutParams2);
                        colorsGrid.addView(colorCube);
                    }
                }
            }
        } else if (colorsGrid.g == 1) {
            colorsGrid.d = new ColorCube(colorsGrid.m);
            GridLayout.LayoutParams layoutParams3 = new GridLayout.LayoutParams();
            layoutParams3.width = min;
            layoutParams3.height = min;
            layoutParams3.setMargins(0, 0, colorsGrid.l / 2, 0);
            colorsGrid.d.setLayoutParams(layoutParams3);
            ColorCube colorCube2 = colorsGrid.d;
            if (colorsGrid.n == f2617a.length) {
                drawable = colorsGrid.q;
            }
            colorCube2.setForeground(drawable);
            colorsGrid.d.setTag(Integer.valueOf(f2617a.length));
            colorsGrid.d.setOnClickListener(colorsGrid);
            GradientDrawable a3 = colorsGrid.a(colorsGrid.e);
            colorsGrid.d.setColor(colorsGrid.e);
            colorsGrid.d.setBackground(a3);
            colorsGrid.addView(colorsGrid.d);
            ColorBar colorBar = new ColorBar(colorsGrid.m);
            GridLayout.LayoutParams layoutParams4 = new GridLayout.LayoutParams();
            layoutParams4.setMargins(colorsGrid.l / 2, 0, 0, 0);
            layoutParams4.height = min;
            layoutParams4.width = ((colorsGrid.i - 1) * min) + (colorsGrid.l * (colorsGrid.i - 2));
            layoutParams4.columnSpec = GridLayout.spec(Integer.MIN_VALUE, colorsGrid.i - 1);
            colorBar.setLayoutParams(layoutParams4);
            colorBar.setColorsGrid(colorsGrid);
            colorBar.setBackground(colorsGrid.m.getResources().getDrawable(2131165474));
            colorsGrid.addView(colorBar);
        }
    }

    final void a(int i, boolean z, int i2, int i3) {
        this.f2618b = i2;
        this.c = i3;
        this.e = i;
        this.d.setColor(this.e);
        this.d.setBackground(a(i));
        if (z) {
            return;
        }
        if (this.n != f2617a.length) {
            onClick(this.d);
        } else if (this.r != null) {
            this.r.a(i, this.n);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int i = -1;
        for (int i2 = 0; i2 < getChildCount(); i2++) {
            View childAt = getChildAt(i2);
            if (childAt instanceof ColorCube) {
                if (childAt == view) {
                    this.n = ((Integer) childAt.getTag()).intValue();
                    i = ((ColorCube) childAt).f2629a;
                    ((ColorCube) childAt).setForeground(this.q);
                } else {
                    ((ColorCube) childAt).setForeground(null);
                }
            }
        }
        if (this.r != null) {
            this.r.a(i, this.n);
        }
    }

    public void setCallback(a aVar) {
        this.r = aVar;
    }

    public void setIconSettingsAdapter(CustomizedPreferenceActivity customizedPreferenceActivity) {
        this.s = customizedPreferenceActivity;
    }

    public void setLauncherCurrentTextColor(int i) {
        View childAt = getChildAt(0);
        if (childAt != null && (childAt instanceof ColorCube)) {
            GradientDrawable a2 = a(i);
            ColorCube colorCube = (ColorCube) childAt;
            colorCube.setColor(i);
            colorCube.setBackground(a2);
            ((ColorCube) childAt).setForeground(this.q);
        }
    }

    public void setSelectedIndex(int i) {
        this.n = i;
        if (this.n < getChildCount()) {
            for (int i2 = 0; i2 < getChildCount(); i2++) {
                View childAt = getChildAt(i2);
                if (childAt instanceof ColorCube) {
                    ((ColorCube) childAt).setForeground(null);
                }
            }
            View childAt2 = getChildAt(this.n);
            if (childAt2 != null && (childAt2 instanceof ColorCube)) {
                ((ColorCube) childAt2).setForeground(this.q);
            }
        }
    }

    public void setType(int i) {
        this.g = i;
        switch (this.g) {
            case 1:
                this.h = 1;
                break;
            default:
                this.h = 2;
                break;
        }
        setRowCount(this.h);
    }
}
