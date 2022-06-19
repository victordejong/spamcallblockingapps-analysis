package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.content.Context;
import android.graphics.Point;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.webkit.WebView;
/* renamed from: e.h.a.c.q0.a0 */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/a0.class */
public class C22786a0 extends WebView {

    /* renamed from: a */
    public final Point f63151a = new Point();

    /* renamed from: b */
    public int f63152b;

    /* renamed from: c */
    public int f63153c;

    /* renamed from: d */
    public int f63154d;

    /* renamed from: e */
    public int f63155e;

    public C22786a0(Context context, int i, int i2, int i3, int i4) {
        super(context);
        this.f63154d = i;
        this.f63152b = i2;
        this.f63155e = i3;
        this.f63153c = i4;
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        setHorizontalFadingEdgeEnabled(false);
        setVerticalFadingEdgeEnabled(false);
        setOverScrollMode(2);
        setBackgroundColor(0);
        setId(188293);
    }

    /* renamed from: a */
    public void m7765a() {
        int i = this.f63154d;
        if (i != 0) {
            this.f63151a.x = (int) TypedValue.applyDimension(1, i, getResources().getDisplayMetrics());
        } else {
            DisplayMetrics displayMetrics = getResources().getDisplayMetrics();
            this.f63151a.x = (int) ((displayMetrics.widthPixels * this.f63155e) / 100.0f);
        }
        int i2 = this.f63152b;
        if (i2 != 0) {
            this.f63151a.y = (int) TypedValue.applyDimension(1, i2, getResources().getDisplayMetrics());
            return;
        }
        DisplayMetrics displayMetrics2 = getResources().getDisplayMetrics();
        this.f63151a.y = (int) ((displayMetrics2.heightPixels * this.f63153c) / 100.0f);
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public void onMeasure(int i, int i2) {
        super.onMeasure(i, i2);
        m7765a();
        Point point = this.f63151a;
        setMeasuredDimension(point.x, point.y);
    }

    @Override // android.view.View
    public boolean performClick() {
        return super.performClick();
    }
}
