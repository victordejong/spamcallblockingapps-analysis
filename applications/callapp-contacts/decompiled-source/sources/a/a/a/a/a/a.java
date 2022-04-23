package a.a.a.a.a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/a.class */
public final class a extends RecyclerView.h {

    /* renamed from: a  reason: collision with root package name */
    private int f366a;

    /* renamed from: b  reason: collision with root package name */
    private int f367b;

    /* renamed from: c  reason: collision with root package name */
    private int f368c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f369d;

    /* renamed from: a.a.a.a.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/a$a.class */
    public static final class C0000a {

        /* renamed from: a  reason: collision with root package name */
        public Resources f370a;

        /* renamed from: b  reason: collision with root package name */
        public int f371b;

        /* renamed from: c  reason: collision with root package name */
        public int f372c = 0;

        /* renamed from: d  reason: collision with root package name */
        public int f373d = 0;
        public int e = -16777216;

        public C0000a(Context context) {
            this.f370a = context.getResources();
            this.f371b = (int) TypedValue.applyDimension(0, 1.0f, context.getResources().getDisplayMetrics());
        }
    }

    private a(int i, int i2, int i3, int i4) {
        this.f366a = i;
        this.f367b = i2;
        this.f368c = i3;
        Paint paint = new Paint();
        this.f369d = paint;
        paint.setColor(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Canvas canvas, RecyclerView recyclerView, RecyclerView.s sVar) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int bottom = childAt.getBottom();
            int i2 = this.f366a;
            int left = childAt.getLeft();
            int i3 = this.f367b;
            int right = childAt.getRight();
            int i4 = this.f368c;
            canvas.save();
            canvas.drawRect(left + i3, bottom, right - i4, i2 + bottom, this.f369d);
            canvas.restore();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.h
    public final void a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.s sVar) {
        rect.set(0, 0, 0, this.f366a);
    }
}
