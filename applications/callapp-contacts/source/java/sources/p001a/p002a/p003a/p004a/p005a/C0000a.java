package p001a.p002a.p003a.p004a.p005a;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.util.TypedValue;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: a.a.a.a.a.a */
/* loaded from: classes-dex2jar.jar:a/a/a/a/a/a.class */
public final class C0000a extends RecyclerView.AbstractC2636h {

    /* renamed from: a */
    private int f0a;

    /* renamed from: b */
    private int f1b;

    /* renamed from: c */
    private int f2c;

    /* renamed from: d */
    private Paint f3d;

    /* renamed from: a.a.a.a.a.a$a */
    /* loaded from: classes-dex2jar.jar:a/a/a/a/a/a$a.class */
    public static final class C0002a {

        /* renamed from: a */
        public Resources f4a;

        /* renamed from: b */
        public int f5b;

        /* renamed from: c */
        public int f6c = 0;

        /* renamed from: d */
        public int f7d = 0;

        /* renamed from: e */
        public int f8e = -16777216;

        public C0002a(Context context) {
            this.f4a = context.getResources();
            this.f5b = (int) TypedValue.applyDimension(0, 1.0f, context.getResources().getDisplayMetrics());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public C0000a(int i, int i2, int i3, int i4) {
        this.f0a = i;
        this.f1b = i2;
        this.f2c = i3;
        Paint paint = new Paint();
        this.f3d = paint;
        paint.setColor(i4);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo30290a(Canvas canvas, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            View childAt = recyclerView.getChildAt(i);
            int bottom = childAt.getBottom();
            int i2 = this.f0a;
            int left = childAt.getLeft();
            int i3 = this.f1b;
            int right = childAt.getRight();
            int i4 = this.f2c;
            canvas.save();
            canvas.drawRect(left + i3, bottom, right - i4, i2 + bottom, this.f3d);
            canvas.restore();
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC2636h
    /* renamed from: a */
    public final void mo29937a(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C2654s c2654s) {
        rect.set(0, 0, 0, this.f0a);
    }
}
