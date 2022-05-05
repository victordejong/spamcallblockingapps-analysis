package com.android.contacts.list;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import com.android.contacts.widget.PinnedHeaderListView;
import com.android.contacts.widget.e;
/* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPinnedHeaderListView.class */
public class AsusPinnedHeaderListView extends PinnedHeaderListView {

    /* renamed from: b  reason: collision with root package name */
    public static final a f1708b = a.RIGHT;
    private static final int[] i = {16843609, 16843575, 16843576};

    /* renamed from: a  reason: collision with root package name */
    public String f1709a;
    Paint c;
    boolean d;
    private Drawable e;
    private e f;
    private boolean g;
    private a h;
    private int j;

    /* loaded from: classes-dex2jar.jar:com/android/contacts/list/AsusPinnedHeaderListView$a.class */
    public enum a {
        LEFT,
        RIGHT
    }

    public AsusPinnedHeaderListView(Context context) {
        this(context, null);
    }

    public AsusPinnedHeaderListView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, Resources.getSystem().getIdentifier("listViewStyle", "attr", "android"));
    }

    public AsusPinnedHeaderListView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        this.h = f1708b;
        this.d = false;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(i);
        this.e = getResources().getDrawable(2131165371, null);
        this.j = getResources().getDimensionPixelSize(2131100149);
        int dimensionPixelOffset = getContext().getResources().getDimensionPixelOffset(2131099772);
        this.c = new Paint();
        this.c.setAntiAlias(true);
        this.c.setTextAlign(Paint.Align.CENTER);
        this.c.setTextSize(dimensionPixelOffset);
        this.c.setColor(obtainStyledAttributes.getColorStateList(0).getDefaultColor());
        this.c.setStyle(Paint.Style.FILL_AND_STROKE);
        obtainStyledAttributes.recycle();
    }

    private e b() {
        if (this.f == null) {
            this.f = new t(this);
        }
        return this.f;
    }

    public final void a(String str) {
        if (str != null && !str.isEmpty()) {
            this.d = true;
        } else if (this.d) {
            this.d = false;
        } else {
            return;
        }
        this.f1709a = str;
        invalidate();
    }

    @Override // android.widget.AbsListView, android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.d) {
            Resources resources = getContext().getResources();
            if (this.h == a.LEFT) {
                Rect rect = new Rect();
                rect.left = (canvas.getWidth() - this.j) / 2;
                rect.top = (canvas.getHeight() - this.j) / 2;
                rect.right = rect.left + this.j;
                rect.bottom = rect.top + this.j + resources.getDimensionPixelOffset(2131099771);
                if (this.e != null) {
                    this.e.setBounds(rect.left, rect.top, rect.right, rect.bottom);
                    this.e.draw(canvas);
                    Paint paint = this.c;
                    float descent = paint.descent();
                    Rect rect2 = new Rect();
                    this.e.getPadding(rect2);
                    RectF rectF = new RectF();
                    rectF.top = rect.top;
                    rectF.right = rect.right;
                    rectF.bottom = rect.bottom;
                    rectF.left = rect.left;
                    int i2 = (rect2.right - rect2.left) / 2;
                    int i3 = (rect2.bottom - rect2.top) / 2;
                    int dimensionPixelOffset = resources.getDimensionPixelOffset(2131099773);
                    canvas.drawText(this.f1709a, (((int) (rectF.left + rectF.right)) / 2) - i2, dimensionPixelOffset + ((((((int) (rectF.top + rectF.bottom)) / 2) + (this.j / 4)) - descent) - i3), paint);
                    return;
                }
                return;
            }
            Rect rect3 = new Rect();
            rect3.left = (canvas.getWidth() - this.j) / 2;
            rect3.top = (canvas.getHeight() - this.j) / 2;
            rect3.right = rect3.left + this.j;
            rect3.bottom = rect3.top + this.j;
            if (this.e != null) {
                this.e.setBounds(rect3.left, rect3.top, rect3.right, rect3.bottom);
                this.e.draw(canvas);
                Paint paint2 = this.c;
                float descent2 = paint2.descent();
                Rect rect4 = new Rect();
                this.e.getPadding(rect4);
                RectF rectF2 = new RectF();
                rectF2.top = rect3.top;
                rectF2.right = rect3.right;
                rectF2.bottom = rect3.bottom;
                rectF2.left = rect3.left;
                int i4 = (rect4.right - rect4.left) / 2;
                int i5 = (rect4.bottom - rect4.top) / 2;
                int dimensionPixelOffset2 = resources.getDimensionPixelOffset(2131099773);
                canvas.drawText(this.f1709a, (((int) (rectF2.left + rectF2.right)) / 2) - i4, dimensionPixelOffset2 + ((((((int) (rectF2.top + rectF2.bottom)) / 2) + (this.j / 4)) - descent2) - i5), paint2);
            }
        }
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView, android.widget.AbsListView.OnScrollListener
    public void onScrollStateChanged(AbsListView absListView, int i2) {
        super.onScrollStateChanged(absListView, i2);
        if (!this.g) {
            return;
        }
        if (i2 != 0) {
            b().a(true);
        } else {
            b().a(false);
        }
    }

    @Override // com.android.contacts.widget.PinnedHeaderListView, android.widget.ListView, android.widget.AbsListView
    public void setAdapter(ListAdapter listAdapter) {
        super.setAdapter(listAdapter);
        if (listAdapter instanceof o) {
            ((o) listAdapter).H = b();
        }
    }

    public void setDrawPosition(a aVar) {
        this.h = aVar;
    }

    public void setHighlightNamesWhenScrolling(boolean z) {
        this.g = z;
    }
}
