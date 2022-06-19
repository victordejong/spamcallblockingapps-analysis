package com.google.android.material.shape;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PointF;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.AbstractC0576b;
import com.google.android.flexbox.FlexItem;
/* loaded from: classes-dex2jar.jar:com/google/android/material/shape/MaterialShapeDrawable.class */
public class MaterialShapeDrawable extends Drawable implements AbstractC0576b {
    private int alpha;
    private final ShapePath[] cornerPaths;
    private final Matrix[] cornerTransforms;
    private final Matrix[] edgeTransforms;
    private float interpolation;
    private final Matrix matrix;
    private final Paint paint;
    private Paint.Style paintStyle;
    private final Path path;
    private final PointF pointF;
    private float scale;
    private final float[] scratch;
    private final float[] scratch2;
    private final Region scratchRegion;
    private int shadowColor;
    private int shadowElevation;
    private boolean shadowEnabled;
    private int shadowRadius;
    private final ShapePath shapePath;
    private ShapePathModel shapedViewModel;
    private float strokeWidth;
    private PorterDuffColorFilter tintFilter;
    private ColorStateList tintList;
    private PorterDuff.Mode tintMode;
    private final Region transparentRegion;
    private boolean useTintColorForShadow;

    public MaterialShapeDrawable() {
        this(null);
    }

    public MaterialShapeDrawable(ShapePathModel shapePathModel) {
        this.paint = new Paint();
        this.cornerTransforms = new Matrix[4];
        this.edgeTransforms = new Matrix[4];
        this.cornerPaths = new ShapePath[4];
        this.matrix = new Matrix();
        this.path = new Path();
        this.pointF = new PointF();
        this.shapePath = new ShapePath();
        this.transparentRegion = new Region();
        this.scratchRegion = new Region();
        this.scratch = new float[2];
        this.scratch2 = new float[2];
        this.shapedViewModel = null;
        this.shadowEnabled = false;
        this.useTintColorForShadow = false;
        this.interpolation = 1.0f;
        this.shadowColor = -16777216;
        this.shadowElevation = 5;
        this.shadowRadius = 10;
        this.alpha = 255;
        this.scale = 1.0f;
        this.strokeWidth = FlexItem.FLEX_GROW_DEFAULT;
        this.paintStyle = Paint.Style.FILL_AND_STROKE;
        this.tintMode = PorterDuff.Mode.SRC_IN;
        this.tintList = null;
        this.shapedViewModel = shapePathModel;
        for (int i = 0; i < 4; i++) {
            this.cornerTransforms[i] = new Matrix();
            this.edgeTransforms[i] = new Matrix();
            this.cornerPaths[i] = new ShapePath();
        }
    }

    private float angleOfCorner(int i, int i2, int i3) {
        getCoordinatesOfCorner(((i - 1) + 4) % 4, i2, i3, this.pointF);
        float f = this.pointF.x;
        float f2 = this.pointF.y;
        getCoordinatesOfCorner((i + 1) % 4, i2, i3, this.pointF);
        float f3 = this.pointF.x;
        float f4 = this.pointF.y;
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        float f5 = this.pointF.x;
        float f6 = this.pointF.y;
        float atan2 = ((float) Math.atan2(f2 - f6, f - f5)) - ((float) Math.atan2(f4 - f6, f3 - f5));
        float f7 = atan2;
        if (atan2 < FlexItem.FLEX_GROW_DEFAULT) {
            f7 = (float) (atan2 + 6.283185307179586d);
        }
        return f7;
    }

    private float angleOfEdge(int i, int i2, int i3) {
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        float f = this.pointF.x;
        float f2 = this.pointF.y;
        getCoordinatesOfCorner((i + 1) % 4, i2, i3, this.pointF);
        return (float) Math.atan2(this.pointF.y - f2, this.pointF.x - f);
    }

    private void appendCornerPath(int i, Path path) {
        this.scratch[0] = this.cornerPaths[i].startX;
        this.scratch[1] = this.cornerPaths[i].startY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        if (i == 0) {
            float[] fArr = this.scratch;
            path.moveTo(fArr[0], fArr[1]);
        } else {
            float[] fArr2 = this.scratch;
            path.lineTo(fArr2[0], fArr2[1]);
        }
        this.cornerPaths[i].applyToPath(this.cornerTransforms[i], path);
    }

    private void appendEdgePath(int i, Path path) {
        int i2 = (i + 1) % 4;
        this.scratch[0] = this.cornerPaths[i].endX;
        this.scratch[1] = this.cornerPaths[i].endY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        this.scratch2[0] = this.cornerPaths[i2].startX;
        this.scratch2[1] = this.cornerPaths[i2].startY;
        this.cornerTransforms[i2].mapPoints(this.scratch2);
        float[] fArr = this.scratch;
        float f = fArr[0];
        float[] fArr2 = this.scratch2;
        float hypot = (float) Math.hypot(f - fArr2[0], fArr[1] - fArr2[1]);
        this.shapePath.reset(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
        getEdgeTreatmentForIndex(i).getEdgePath(hypot, this.interpolation, this.shapePath);
        this.shapePath.applyToPath(this.edgeTransforms[i], path);
    }

    private void getCoordinatesOfCorner(int i, int i2, int i3, PointF pointF) {
        if (i == 1) {
            pointF.set(i2, FlexItem.FLEX_GROW_DEFAULT);
        } else if (i == 2) {
            pointF.set(i2, i3);
        } else if (i != 3) {
            pointF.set(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT);
        } else {
            pointF.set(FlexItem.FLEX_GROW_DEFAULT, i3);
        }
    }

    private CornerTreatment getCornerTreatmentForIndex(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.shapedViewModel.getTopLeftCorner() : this.shapedViewModel.getBottomLeftCorner() : this.shapedViewModel.getBottomRightCorner() : this.shapedViewModel.getTopRightCorner();
    }

    private EdgeTreatment getEdgeTreatmentForIndex(int i) {
        return i != 1 ? i != 2 ? i != 3 ? this.shapedViewModel.getTopEdge() : this.shapedViewModel.getLeftEdge() : this.shapedViewModel.getBottomEdge() : this.shapedViewModel.getRightEdge();
    }

    private void getPath(int i, int i2, Path path) {
        getPathForSize(i, i2, path);
        if (this.scale == 1.0f) {
            return;
        }
        this.matrix.reset();
        Matrix matrix = this.matrix;
        float f = this.scale;
        matrix.setScale(f, f, i / 2, i2 / 2);
        path.transform(this.matrix);
    }

    private static int modulateAlpha(int i, int i2) {
        return (i * (i2 + (i2 >>> 7))) >>> 8;
    }

    private void setCornerPathAndTransform(int i, int i2, int i3) {
        getCoordinatesOfCorner(i, i2, i3, this.pointF);
        getCornerTreatmentForIndex(i).getCornerPath(angleOfCorner(i, i2, i3), this.interpolation, this.cornerPaths[i]);
        float angleOfEdge = angleOfEdge(((i - 1) + 4) % 4, i2, i3);
        this.cornerTransforms[i].reset();
        this.cornerTransforms[i].setTranslate(this.pointF.x, this.pointF.y);
        this.cornerTransforms[i].preRotate((float) Math.toDegrees(angleOfEdge + 1.5707964f));
    }

    private void setEdgeTransform(int i, int i2, int i3) {
        this.scratch[0] = this.cornerPaths[i].endX;
        this.scratch[1] = this.cornerPaths[i].endY;
        this.cornerTransforms[i].mapPoints(this.scratch);
        float angleOfEdge = angleOfEdge(i, i2, i3);
        this.edgeTransforms[i].reset();
        Matrix matrix = this.edgeTransforms[i];
        float[] fArr = this.scratch;
        matrix.setTranslate(fArr[0], fArr[1]);
        this.edgeTransforms[i].preRotate((float) Math.toDegrees(angleOfEdge));
    }

    private void updateTintFilter() {
        ColorStateList colorStateList = this.tintList;
        if (colorStateList == null || this.tintMode == null) {
            this.tintFilter = null;
            return;
        }
        int colorForState = colorStateList.getColorForState(getState(), 0);
        this.tintFilter = new PorterDuffColorFilter(colorForState, this.tintMode);
        if (!this.useTintColorForShadow) {
            return;
        }
        this.shadowColor = colorForState;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.paint.setColorFilter(this.tintFilter);
        int alpha = this.paint.getAlpha();
        this.paint.setAlpha(modulateAlpha(alpha, this.alpha));
        this.paint.setStrokeWidth(this.strokeWidth);
        this.paint.setStyle(this.paintStyle);
        int i = this.shadowElevation;
        if (i > 0 && this.shadowEnabled) {
            this.paint.setShadowLayer(this.shadowRadius, FlexItem.FLEX_GROW_DEFAULT, i, this.shadowColor);
        }
        if (this.shapedViewModel != null) {
            getPath(canvas.getWidth(), canvas.getHeight(), this.path);
            canvas.drawPath(this.path, this.paint);
        } else {
            canvas.drawRect(FlexItem.FLEX_GROW_DEFAULT, FlexItem.FLEX_GROW_DEFAULT, canvas.getWidth(), canvas.getHeight(), this.paint);
        }
        this.paint.setAlpha(alpha);
    }

    public float getInterpolation() {
        return this.interpolation;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    public Paint.Style getPaintStyle() {
        return this.paintStyle;
    }

    public void getPathForSize(int i, int i2, Path path) {
        int i3;
        path.rewind();
        if (this.shapedViewModel == null) {
            return;
        }
        int i4 = 0;
        while (true) {
            if (i4 < 4) {
                setCornerPathAndTransform(i4, i, i2);
                setEdgeTransform(i4, i, i2);
                i4++;
            }
        }
        for (i3 = 0; i3 < 4; i3++) {
            appendCornerPath(i3, path);
            appendEdgePath(i3, path);
        }
        path.close();
    }

    public float getScale() {
        return this.scale;
    }

    public int getShadowElevation() {
        return this.shadowElevation;
    }

    public int getShadowRadius() {
        return this.shadowRadius;
    }

    public ShapePathModel getShapedViewModel() {
        return this.shapedViewModel;
    }

    public float getStrokeWidth() {
        return this.strokeWidth;
    }

    public ColorStateList getTintList() {
        return this.tintList;
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        Rect bounds = getBounds();
        this.transparentRegion.set(bounds);
        getPath(bounds.width(), bounds.height(), this.path);
        this.scratchRegion.setPath(this.path, this.transparentRegion);
        this.transparentRegion.op(this.scratchRegion, Region.Op.DIFFERENCE);
        return this.transparentRegion;
    }

    public boolean isPointInTransparentRegion(int i, int i2) {
        return getTransparentRegion().contains(i, i2);
    }

    public boolean isShadowEnabled() {
        return this.shadowEnabled;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.alpha = i;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.paint.setColorFilter(colorFilter);
        invalidateSelf();
    }

    public void setInterpolation(float f) {
        this.interpolation = f;
        invalidateSelf();
    }

    public void setPaintStyle(Paint.Style style) {
        this.paintStyle = style;
        invalidateSelf();
    }

    public void setScale(float f) {
        this.scale = f;
        invalidateSelf();
    }

    public void setShadowColor(int i) {
        this.shadowColor = i;
        this.useTintColorForShadow = false;
        invalidateSelf();
    }

    public void setShadowElevation(int i) {
        this.shadowElevation = i;
        invalidateSelf();
    }

    public void setShadowEnabled(boolean z) {
        this.shadowEnabled = z;
        invalidateSelf();
    }

    public void setShadowRadius(int i) {
        this.shadowRadius = i;
        invalidateSelf();
    }

    public void setShapedViewModel(ShapePathModel shapePathModel) {
        this.shapedViewModel = shapePathModel;
        invalidateSelf();
    }

    public void setStrokeWidth(float f) {
        this.strokeWidth = f;
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTint(int i) {
        setTintList(ColorStateList.valueOf(i));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintList(ColorStateList colorStateList) {
        this.tintList = colorStateList;
        updateTintFilter();
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.AbstractC0576b
    public void setTintMode(PorterDuff.Mode mode) {
        this.tintMode = mode;
        updateTintFilter();
        invalidateSelf();
    }

    public void setUseTintColorForShadow(boolean z) {
        this.useTintColorForShadow = z;
        invalidateSelf();
    }
}
