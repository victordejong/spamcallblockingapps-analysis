package nl.dionsegijn.konfetti.models;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0006\bf\u0018�� \u000b2\u00020\u0001:\u0005\n\u000b\f\r\u000eJ \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH&¨\u0006\u000f"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape;", "", "draw", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "size", "", "Circle", "Companion", "DrawableShape", "Rectangle", "Square", "konfetti_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape.class */
public interface Shape {
    public static final Companion Companion = new Companion(null);
    public static final Square RECT = Square.INSTANCE;
    public static final Circle CIRCLE = Circle.INSTANCE;

    @Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\r"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape$Circle;", "Lnl/dionsegijn/konfetti/models/Shape;", "()V", "rect", "Landroid/graphics/RectF;", "draw", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "size", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape$Circle.class */
    public static final class Circle implements Shape {
        public static final Circle INSTANCE = new Circle();
        private static final RectF rect = new RectF();

        private Circle() {
        }

        @Override // nl.dionsegijn.konfetti.models.Shape
        public final void draw(Canvas canvas, Paint paint, float f) {
            p.d(canvas, "canvas");
            p.d(paint, "paint");
            RectF rectF = rect;
            rectF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f);
            canvas.drawOval(rectF, paint);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004ø\u0001��¢\u0006\b\n��\u0012\u0004\b\u0005\u0010\u0002¨\u0006\u0001R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004ø\u0001��¢\u0006\b\n��\u0012\u0004\b\b\u0010\u0002¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\t"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape$Companion;", "", "()V", "CIRCLE", "Lnl/dionsegijn/konfetti/models/Shape$Circle;", "getCIRCLE$annotations", "RECT", "Lnl/dionsegijn/konfetti/models/Shape$Square;", "getRECT$annotations", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape$Companion.class */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = null;

        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void getCIRCLE$annotations() {
        }

        public static /* synthetic */ void getRECT$annotations() {
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010��\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003HÆ\u0003J\t\u0010\f\u001a\u00020\u0005HÂ\u0003J\u001d\u0010\r\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u0005HÆ\u0001J \u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\nH\u0016J\u0013\u0010\u0015\u001a\u00020\u00052\b\u0010\u0016\u001a\u0004\u0018\u00010\u0017HÖ\u0003J\t\u0010\u0018\u001a\u00020\u0019HÖ\u0001J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u0007\u0010\bR\u000e\u0010\t\u001a\u00020\nX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001c"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape$DrawableShape;", "Lnl/dionsegijn/konfetti/models/Shape;", "drawable", "Landroid/graphics/drawable/Drawable;", "tint", "", "(Landroid/graphics/drawable/Drawable;Z)V", "getDrawable", "()Landroid/graphics/drawable/Drawable;", "heightRatio", "", "component1", "component2", "copy", "draw", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "size", "equals", "other", "", "hashCode", "", "toString", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape$DrawableShape.class */
    public static final class DrawableShape implements Shape {
        private final Drawable drawable;
        private final float heightRatio;
        private final boolean tint;

        public DrawableShape(Drawable drawable, boolean z) {
            p.d(drawable, "drawable");
            this.drawable = drawable;
            this.tint = z;
            this.heightRatio = (drawable.getIntrinsicHeight() == -1 && drawable.getIntrinsicWidth() == -1) ? 1.0f : (drawable.getIntrinsicHeight() == -1 || drawable.getIntrinsicWidth() == -1) ? BitmapDescriptorFactory.HUE_RED : drawable.getIntrinsicHeight() / drawable.getIntrinsicWidth();
        }

        public /* synthetic */ DrawableShape(Drawable drawable, boolean z, int i, DefaultConstructorMarker defaultConstructorMarker) {
            this(drawable, (i & 2) != 0 ? true : z);
        }

        private final boolean component2() {
            return this.tint;
        }

        public static /* synthetic */ DrawableShape copy$default(DrawableShape drawableShape, Drawable drawable, boolean z, int i, Object obj) {
            if ((i & 1) != 0) {
                drawable = drawableShape.drawable;
            }
            if ((i & 2) != 0) {
                z = drawableShape.tint;
            }
            return drawableShape.copy(drawable, z);
        }

        public final Drawable component1() {
            return this.drawable;
        }

        public final DrawableShape copy(Drawable drawable, boolean z) {
            p.d(drawable, "drawable");
            return new DrawableShape(drawable, z);
        }

        @Override // nl.dionsegijn.konfetti.models.Shape
        public final void draw(Canvas canvas, Paint paint, float f) {
            p.d(canvas, "canvas");
            p.d(paint, "paint");
            if (this.tint) {
                this.drawable.setColorFilter(paint.getColor(), PorterDuff.Mode.SRC_IN);
            } else {
                this.drawable.setAlpha(paint.getAlpha());
            }
            int i = (int) (this.heightRatio * f);
            int i2 = (int) ((f - i) / 2.0f);
            this.drawable.setBounds(0, i2, (int) f, i + i2);
            this.drawable.draw(canvas);
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof DrawableShape)) {
                return false;
            }
            DrawableShape drawableShape = (DrawableShape) obj;
            return p.a(this.drawable, drawableShape.drawable) && this.tint == drawableShape.tint;
        }

        public final Drawable getDrawable() {
            return this.drawable;
        }

        public final int hashCode() {
            Drawable drawable = this.drawable;
            int hashCode = drawable != null ? drawable.hashCode() : 0;
            boolean z = this.tint;
            int i = z ? 1 : 0;
            if (z) {
                i = 1;
            }
            return (hashCode * 31) + i;
        }

        public final String toString() {
            return "DrawableShape(drawable=" + this.drawable + ", tint=" + this.tint + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J \u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0003H\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n��¨\u0006\f"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape$Rectangle;", "Lnl/dionsegijn/konfetti/models/Shape;", "heightRatio", "", "(F)V", "draw", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "size", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape$Rectangle.class */
    public static final class Rectangle implements Shape {
        private final float heightRatio;

        public Rectangle(float f) {
            this.heightRatio = f;
            if (!(f >= BitmapDescriptorFactory.HUE_RED && f <= 1.0f)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        @Override // nl.dionsegijn.konfetti.models.Shape
        public final void draw(Canvas canvas, Paint paint, float f) {
            p.d(canvas, "canvas");
            p.d(paint, "paint");
            float f2 = this.heightRatio * f;
            float f3 = (f - f2) / 2.0f;
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, f3, f, f3 + f2, paint);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0007\n��\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J \u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016¨\u0006\u000b"}, d2 = {"Lnl/dionsegijn/konfetti/models/Shape$Square;", "Lnl/dionsegijn/konfetti/models/Shape;", "()V", "draw", "", "canvas", "Landroid/graphics/Canvas;", "paint", "Landroid/graphics/Paint;", "size", "", "konfetti_release"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes5-dex2jar.jar:nl/dionsegijn/konfetti/models/Shape$Square.class */
    public static final class Square implements Shape {
        public static final Square INSTANCE = new Square();

        private Square() {
        }

        @Override // nl.dionsegijn.konfetti.models.Shape
        public final void draw(Canvas canvas, Paint paint, float f) {
            p.d(canvas, "canvas");
            p.d(paint, "paint");
            canvas.drawRect(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED, f, f, paint);
        }
    }

    void draw(Canvas canvas, Paint paint, float f);
}
