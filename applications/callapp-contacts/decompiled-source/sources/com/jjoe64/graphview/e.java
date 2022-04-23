package com.jjoe64.graphview;

import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.Point;
import android.graphics.Rect;
import android.graphics.RectF;
import android.util.TypedValue;
import com.jjoe64.graphview.a.h;
import java.util.ArrayList;
/* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e.class */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public boolean f33574a = false;

    /* renamed from: b  reason: collision with root package name */
    private b f33575b;

    /* renamed from: c  reason: collision with root package name */
    private final GraphView f33576c;

    /* renamed from: d  reason: collision with root package name */
    private Paint f33577d;
    private int e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.jjoe64.graphview.e$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f33578a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x001e -> B:11:0x0013). Please submit an issue!!! */
        static {
            int[] iArr = new int[a.a().length];
            f33578a = iArr;
            try {
                iArr[a.f33579a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f33578a[a.f33580b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$a.class */
    public static final class a extends Enum<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final int f33579a = 1;

        /* renamed from: b  reason: collision with root package name */
        public static final int f33580b = 2;

        /* renamed from: c  reason: collision with root package name */
        public static final int f33581c = 3;

        /* renamed from: d  reason: collision with root package name */
        private static final /* synthetic */ int[] f33582d = {1, 2, 3};

        private a(String str, int i) {
        }

        public static int[] a() {
            return (int[]) f33582d.clone();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/jjoe64/graphview/e$b.class */
    public final class b {

        /* renamed from: a  reason: collision with root package name */
        float f33583a;

        /* renamed from: b  reason: collision with root package name */
        int f33584b;

        /* renamed from: c  reason: collision with root package name */
        int f33585c;

        /* renamed from: d  reason: collision with root package name */
        int f33586d;
        int e;
        int f;
        int g;
        int h;
        Point i;

        private b() {
        }

        /* synthetic */ b(e eVar, AnonymousClass1 r5) {
            this();
        }
    }

    public e(GraphView graphView) {
        this.f33576c = graphView;
        Paint paint = new Paint();
        this.f33577d = paint;
        paint.setTextAlign(Paint.Align.LEFT);
        b bVar = new b(this, null);
        this.f33575b = bVar;
        this.e = 0;
        bVar.h = a.f33580b;
        this.f33575b.f33583a = graphView.f33522b.a();
        b bVar2 = this.f33575b;
        bVar2.f33584b = (int) (bVar2.f33583a / 5.0f);
        b bVar3 = this.f33575b;
        bVar3.f33585c = (int) (bVar3.f33583a / 2.0f);
        this.f33575b.f33586d = 0;
        this.f33575b.e = Color.argb(180, 100, 100, 100);
        b bVar4 = this.f33575b;
        bVar4.g = (int) (bVar4.f33583a / 5.0f);
        TypedValue typedValue = new TypedValue();
        graphView.getContext().getTheme().resolveAttribute(16842818, typedValue, true);
        int i = -16777216;
        try {
            TypedArray obtainStyledAttributes = graphView.getContext().obtainStyledAttributes(typedValue.data, new int[]{16842806});
            i = obtainStyledAttributes.getColor(0, -16777216);
            obtainStyledAttributes.recycle();
        } catch (Exception e) {
        }
        this.f33575b.f = i;
        this.e = 0;
    }

    public final void a(Canvas canvas) {
        float f;
        float f2;
        float f3;
        float f4;
        if (this.f33574a) {
            this.f33577d.setTextSize(this.f33575b.f33583a);
            int i = (int) (this.f33575b.f33583a * 0.8d);
            ArrayList<h> arrayList = new ArrayList();
            arrayList.addAll(this.f33576c.f33521a);
            if (this.f33576c.f33524d != null) {
                arrayList.addAll(this.f33576c.f().a());
            }
            int i2 = this.f33575b.f33586d;
            int i3 = 0;
            int i4 = i2;
            if (i2 == 0) {
                int i5 = this.e;
                i4 = i5;
                if (i5 == 0) {
                    Rect rect = new Rect();
                    int i6 = i5;
                    for (h hVar : arrayList) {
                        if (hVar.f() != null) {
                            this.f33577d.getTextBounds(hVar.f(), 0, hVar.f().length(), rect);
                            i6 = Math.max(i6, rect.width());
                        }
                    }
                    int i7 = i6;
                    if (i6 == 0) {
                        i7 = 1;
                    }
                    i4 = i7 + (this.f33575b.f33585c * 2) + i + this.f33575b.f33584b;
                    this.e = i4;
                }
            }
            float size = ((this.f33575b.f33583a + this.f33575b.f33584b) * arrayList.size()) - this.f33575b.f33584b;
            if (this.f33575b.i != null) {
                f2 = this.f33576c.a() + this.f33575b.g + this.f33575b.i.x;
                f = this.f33576c.b() + this.f33575b.g + this.f33575b.i.y;
            } else {
                f2 = ((this.f33576c.a() + this.f33576c.d()) - i4) - this.f33575b.g;
                int i8 = AnonymousClass1.f33578a[this.f33575b.h - 1];
                if (i8 != 1) {
                    if (i8 != 2) {
                        f3 = ((this.f33576c.b() + this.f33576c.c()) - this.f33575b.g) - size;
                        f4 = this.f33575b.f33585c * 2;
                    } else {
                        f3 = this.f33576c.getHeight() / 2;
                        f4 = size / 2.0f;
                    }
                    f = f3 - f4;
                } else {
                    f = this.f33576c.b() + this.f33575b.g;
                }
            }
            float f5 = this.f33575b.f33585c * 2;
            this.f33577d.setColor(this.f33575b.e);
            canvas.drawRoundRect(new RectF(f2, f, i4 + f2, size + f + f5), 8.0f, 8.0f, this.f33577d);
            for (h hVar2 : arrayList) {
                this.f33577d.setColor(hVar2.g());
                float f6 = i3;
                float f7 = i;
                canvas.drawRect(new RectF(this.f33575b.f33585c + f2, this.f33575b.f33585c + f + ((this.f33575b.f33583a + this.f33575b.f33584b) * f6), this.f33575b.f33585c + f2 + f7, this.f33575b.f33585c + f + ((this.f33575b.f33583a + this.f33575b.f33584b) * f6) + f7), this.f33577d);
                if (hVar2.f() != null) {
                    this.f33577d.setColor(this.f33575b.f);
                    canvas.drawText(hVar2.f(), this.f33575b.f33585c + f2 + f7 + this.f33575b.f33584b, this.f33575b.f33585c + f + this.f33575b.f33583a + (f6 * (this.f33575b.f33583a + this.f33575b.f33584b)), this.f33577d);
                }
                i3++;
            }
        }
    }
}
