package org.apmem.tools.layouts;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.support.p001v4.internal.view.SupportMenu;
import android.support.p001v4.view.InputDeviceCompat;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:org/apmem/tools/layouts/FlowLayout.class */
public class FlowLayout extends ViewGroup {
    public static final int HORIZONTAL = 0;
    public static final int LAYOUT_DIRECTION_LTR = 0;
    public static final int LAYOUT_DIRECTION_RTL = 1;
    public static final int VERTICAL = 1;
    private final LayoutConfiguration config;
    List<LineDefinition> lines = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:org/apmem/tools/layouts/FlowLayout$LayoutParams.class */
    public static class LayoutParams extends ViewGroup.MarginLayoutParams {
        private int inlineStartLength;
        private int inlineStartThickness;
        private int length;
        private int orientation;
        private int thickness;

        /* renamed from: x */
        private int f768x;

        /* renamed from: y */
        private int f769y;
        @ViewDebug.ExportedProperty(mapping = {@ViewDebug.IntToString(from = 0, to = "NONE"), @ViewDebug.IntToString(from = 48, to = "TOP"), @ViewDebug.IntToString(from = 80, to = "BOTTOM"), @ViewDebug.IntToString(from = 3, to = "LEFT"), @ViewDebug.IntToString(from = 5, to = "RIGHT"), @ViewDebug.IntToString(from = 16, to = "CENTER_VERTICAL"), @ViewDebug.IntToString(from = 112, to = "FILL_VERTICAL"), @ViewDebug.IntToString(from = 1, to = "CENTER_HORIZONTAL"), @ViewDebug.IntToString(from = 7, to = "FILL_HORIZONTAL"), @ViewDebug.IntToString(from = 17, to = "CENTER"), @ViewDebug.IntToString(from = 119, to = "FILL")})
        private boolean newLine = false;
        private int gravity = 0;
        private float weight = -1.0f;

        public LayoutParams(int i, int i2) {
            super(i, i2);
        }

        public LayoutParams(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            readStyleParameters(context, attributeSet);
        }

        public LayoutParams(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }

        private void readStyleParameters(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C2075R.styleable.FlowLayout_LayoutParams);
            try {
                this.newLine = obtainStyledAttributes.getBoolean(C2075R.styleable.FlowLayout_LayoutParams_layout_newLine, false);
                this.gravity = obtainStyledAttributes.getInt(C2075R.styleable.FlowLayout_LayoutParams_android_layout_gravity, 0);
                this.weight = obtainStyledAttributes.getFloat(C2075R.styleable.FlowLayout_LayoutParams_layout_weight, -1.0f);
            } finally {
                obtainStyledAttributes.recycle();
            }
        }

        public int getGravity() {
            return this.gravity;
        }

        int getInlineStartLength() {
            return this.inlineStartLength;
        }

        int getInlineStartThickness() {
            return this.inlineStartThickness;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getLength() {
            return this.length;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getSpacingLength() {
            return this.orientation == 0 ? this.leftMargin + this.rightMargin : this.topMargin + this.bottomMargin;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getSpacingThickness() {
            return this.orientation == 0 ? this.topMargin + this.bottomMargin : this.leftMargin + this.rightMargin;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public int getThickness() {
            return this.thickness;
        }

        public float getWeight() {
            return this.weight;
        }

        public int getX() {
            return this.f768x;
        }

        public int getY() {
            return this.f769y;
        }

        public boolean gravitySpecified() {
            return this.gravity != 0;
        }

        public boolean isNewLine() {
            return this.newLine;
        }

        public void setGravity(int i) {
            this.gravity = i;
        }

        void setInlineStartLength(int i) {
            this.inlineStartLength = i;
        }

        void setInlineStartThickness(int i) {
            this.inlineStartThickness = i;
        }

        void setLength(int i) {
            this.length = i;
        }

        public void setNewLine(boolean z) {
            this.newLine = z;
        }

        void setPosition(int i, int i2) {
            this.f768x = i;
            this.f769y = i2;
        }

        void setThickness(int i) {
            this.thickness = i;
        }

        public void setWeight(float f) {
            this.weight = f;
        }

        public boolean weightSpecified() {
            return this.weight >= 0.0f;
        }
    }

    public FlowLayout(Context context) {
        super(context);
        this.config = new LayoutConfiguration(context, null);
    }

    public FlowLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.config = new LayoutConfiguration(context, attributeSet);
    }

    public FlowLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.config = new LayoutConfiguration(context, attributeSet);
    }

    private void applyGravityToLine(LineDefinition lineDefinition) {
        List<View> views = lineDefinition.getViews();
        int size = views.size();
        if (size > 0) {
            float f = 0.0f;
            for (int i = 0; i < size; i++) {
                f += getWeight((LayoutParams) views.get(i).getLayoutParams());
            }
            LayoutParams layoutParams = (LayoutParams) views.get(size - 1).getLayoutParams();
            int lineLength = lineDefinition.getLineLength() - ((layoutParams.getLength() + layoutParams.getSpacingLength()) + layoutParams.getInlineStartLength());
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                LayoutParams layoutParams2 = (LayoutParams) views.get(i3).getLayoutParams();
                float weight = getWeight(layoutParams2);
                int gravity = getGravity(layoutParams2);
                int round = f == 0.0f ? lineLength / size : Math.round((lineLength * weight) / f);
                int length = layoutParams2.getLength() + layoutParams2.getSpacingLength();
                int thickness = layoutParams2.getThickness();
                int spacingThickness = layoutParams2.getSpacingThickness();
                Rect rect = new Rect();
                rect.top = 0;
                rect.left = i2;
                rect.right = length + round + i2;
                rect.bottom = lineDefinition.getLineThickness();
                Rect rect2 = new Rect();
                Gravity.apply(gravity, length, thickness + spacingThickness, rect, rect2);
                i2 += round;
                layoutParams2.setInlineStartLength(rect2.left + layoutParams2.getInlineStartLength());
                layoutParams2.setInlineStartThickness(rect2.top);
                layoutParams2.setLength(rect2.width() - layoutParams2.getSpacingLength());
                layoutParams2.setThickness(rect2.height() - layoutParams2.getSpacingThickness());
            }
        }
    }

    private void applyGravityToLines(List<LineDefinition> list, int i, int i2) {
        int size = list.size();
        if (size > 0) {
            LineDefinition lineDefinition = list.get(size - 1);
            int lineThickness = i2 - (lineDefinition.getLineThickness() + lineDefinition.getLineStartThickness());
            int i3 = lineThickness;
            if (lineThickness < 0) {
                i3 = 0;
            }
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                LineDefinition lineDefinition2 = list.get(i5);
                int gravity = getGravity(null);
                int round = Math.round((i3 * 1) / size);
                int lineLength = lineDefinition2.getLineLength();
                int lineThickness2 = lineDefinition2.getLineThickness();
                Rect rect = new Rect();
                rect.top = i4;
                rect.left = 0;
                rect.right = i;
                rect.bottom = lineThickness2 + round + i4;
                Rect rect2 = new Rect();
                Gravity.apply(gravity, lineLength, lineThickness2, rect, rect2);
                i4 += round;
                lineDefinition2.setLineStartLength(lineDefinition2.getLineStartLength() + rect2.left);
                lineDefinition2.setLineStartThickness(lineDefinition2.getLineStartThickness() + rect2.top);
                lineDefinition2.setLength(rect2.width());
                lineDefinition2.setThickness(rect2.height());
            }
        }
    }

    private void applyPositionsToViews(LineDefinition lineDefinition) {
        List<View> views = lineDefinition.getViews();
        int size = views.size();
        for (int i = 0; i < size; i++) {
            View view = views.get(i);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (this.config.getOrientation() == 0) {
                layoutParams.setPosition(getPaddingLeft() + lineDefinition.getLineStartLength() + layoutParams.getInlineStartLength(), getPaddingTop() + lineDefinition.getLineStartThickness() + layoutParams.getInlineStartThickness());
                view.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.getLength(), 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.getThickness(), 1073741824));
            } else {
                layoutParams.setPosition(getPaddingLeft() + lineDefinition.getLineStartThickness() + layoutParams.getInlineStartThickness(), getPaddingTop() + lineDefinition.getLineStartLength() + layoutParams.getInlineStartLength());
                view.measure(View.MeasureSpec.makeMeasureSpec(layoutParams.getThickness(), 1073741824), View.MeasureSpec.makeMeasureSpec(layoutParams.getLength(), 1073741824));
            }
        }
    }

    private void calculateLinesAndChildPosition(List<LineDefinition> list) {
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            LineDefinition lineDefinition = list.get(i2);
            lineDefinition.setLineStartThickness(i);
            i += lineDefinition.getLineThickness();
            List<View> views = lineDefinition.getViews();
            int size2 = views.size();
            int i3 = 0;
            for (int i4 = 0; i4 < size2; i4++) {
                LayoutParams layoutParams = (LayoutParams) views.get(i4).getLayoutParams();
                layoutParams.setInlineStartLength(i3);
                i3 += layoutParams.getLength() + layoutParams.getSpacingLength();
            }
        }
    }

    private Paint createPaint(int i) {
        Paint paint = new Paint();
        paint.setAntiAlias(true);
        paint.setColor(i);
        paint.setStrokeWidth(2.0f);
        return paint;
    }

    private boolean debugDraw() {
        try {
            Method declaredMethod = ViewGroup.class.getDeclaredMethod("debugDraw", null);
            declaredMethod.setAccessible(true);
            return ((Boolean) declaredMethod.invoke(this, null)).booleanValue();
        } catch (Exception e) {
            return false;
        }
    }

    private void drawDebugInfo(Canvas canvas, View view) {
        if (isDebugDraw()) {
            Paint createPaint = createPaint(InputDeviceCompat.SOURCE_ANY);
            Paint createPaint2 = createPaint(SupportMenu.CATEGORY_MASK);
            LayoutParams layoutParams = (LayoutParams) view.getLayoutParams();
            if (layoutParams.rightMargin > 0) {
                float right = view.getRight();
                float top = view.getTop() + (view.getHeight() / 2.0f);
                canvas.drawLine(right, top, right + layoutParams.rightMargin, top, createPaint);
                canvas.drawLine((layoutParams.rightMargin + right) - 4.0f, top - 4.0f, right + layoutParams.rightMargin, top, createPaint);
                canvas.drawLine((layoutParams.rightMargin + right) - 4.0f, top + 4.0f, right + layoutParams.rightMargin, top, createPaint);
            }
            if (layoutParams.leftMargin > 0) {
                float left = view.getLeft();
                float top2 = view.getTop() + (view.getHeight() / 2.0f);
                canvas.drawLine(left, top2, left - layoutParams.leftMargin, top2, createPaint);
                canvas.drawLine((left - layoutParams.leftMargin) + 4.0f, top2 - 4.0f, left - layoutParams.leftMargin, top2, createPaint);
                canvas.drawLine((left - layoutParams.leftMargin) + 4.0f, top2 + 4.0f, left - layoutParams.leftMargin, top2, createPaint);
            }
            if (layoutParams.bottomMargin > 0) {
                float left2 = view.getLeft() + (view.getWidth() / 2.0f);
                float bottom = view.getBottom();
                canvas.drawLine(left2, bottom, left2, bottom + layoutParams.bottomMargin, createPaint);
                canvas.drawLine(left2 - 4.0f, (layoutParams.bottomMargin + bottom) - 4.0f, left2, bottom + layoutParams.bottomMargin, createPaint);
                canvas.drawLine(left2 + 4.0f, (layoutParams.bottomMargin + bottom) - 4.0f, left2, bottom + layoutParams.bottomMargin, createPaint);
            }
            if (layoutParams.topMargin > 0) {
                float left3 = view.getLeft() + (view.getWidth() / 2.0f);
                float top3 = view.getTop();
                canvas.drawLine(left3, top3, left3, top3 - layoutParams.topMargin, createPaint);
                canvas.drawLine(left3 - 4.0f, (top3 - layoutParams.topMargin) + 4.0f, left3, top3 - layoutParams.topMargin, createPaint);
                canvas.drawLine(left3 + 4.0f, (top3 - layoutParams.topMargin) + 4.0f, left3, top3 - layoutParams.topMargin, createPaint);
            }
            if (!layoutParams.isNewLine()) {
                return;
            }
            if (this.config.getOrientation() == 0) {
                float left4 = view.getLeft();
                float top4 = view.getTop() + (view.getHeight() / 2.0f);
                canvas.drawLine(left4, top4 - 6.0f, left4, top4 + 6.0f, createPaint2);
                return;
            }
            float left5 = view.getLeft() + (view.getWidth() / 2.0f);
            float top5 = view.getTop();
            canvas.drawLine(left5 - 6.0f, top5, left5 + 6.0f, top5, createPaint2);
        }
    }

    private int findSize(int i, int i2, int i3) {
        if (i == Integer.MIN_VALUE) {
            i2 = Math.min(i3, i2);
        } else if (i == 0 || i != 1073741824) {
            i2 = i3;
        }
        return i2;
    }

    private int getGravity(LayoutParams layoutParams) {
        int gravity = this.config.getGravity();
        int gravityFromRelative = getGravityFromRelative((layoutParams == null || !layoutParams.gravitySpecified()) ? gravity : layoutParams.getGravity());
        int gravityFromRelative2 = getGravityFromRelative(gravity);
        int i = gravityFromRelative;
        if ((gravityFromRelative & 7) == 0) {
            i = gravityFromRelative | (gravityFromRelative2 & 7);
        }
        int i2 = i;
        if ((i & 112) == 0) {
            i2 = i | (gravityFromRelative2 & 112);
        }
        int i3 = i2;
        if ((i2 & 7) == 0) {
            i3 = i2 | 3;
        }
        int i4 = i3;
        if ((i3 & 112) == 0) {
            i4 = i3 | 48;
        }
        return i4;
    }

    private int getGravityFromRelative(int i) {
        int i2 = i;
        if (this.config.getOrientation() == 1) {
            i2 = i;
            if ((i & 8388608) == 0) {
                i2 = (((i & 112) >> 4) << 0) | (((i & 7) >> 0) << 4) | 0;
            }
        }
        int i3 = i2;
        if (this.config.getLayoutDirection() == 1) {
            i3 = i2;
            if ((i2 & 8388608) != 0) {
                int i4 = 3;
                int i5 = (i2 & 3) == 3 ? 5 : 0;
                if ((i2 & 5) != 5) {
                    i4 = 0;
                }
                i3 = i5 | 0 | i4;
            }
        }
        return i3;
    }

    private float getWeight(LayoutParams layoutParams) {
        return layoutParams.weightSpecified() ? layoutParams.getWeight() : this.config.getWeightDefault();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof LayoutParams;
    }

    @Override // android.view.ViewGroup
    protected boolean drawChild(Canvas canvas, View view, long j) {
        boolean drawChild = super.drawChild(canvas, view, j);
        drawDebugInfo(canvas, view);
        return drawChild;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(-2, -2);
    }

    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new LayoutParams(getContext(), attributeSet);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    public LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new LayoutParams(layoutParams);
    }

    public int getGravity() {
        return this.config.getGravity();
    }

    @Override // android.view.View, android.view.ViewParent
    public int getLayoutDirection() {
        if (this.config == null) {
            return 0;
        }
        return this.config.getLayoutDirection();
    }

    public int getOrientation() {
        return this.config.getOrientation();
    }

    public float getWeightDefault() {
        return this.config.getWeightDefault();
    }

    public boolean isDebugDraw() {
        return this.config.isDebugDraw() || debugDraw();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        int childCount = getChildCount();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
            childAt.layout(layoutParams.f768x + layoutParams.leftMargin, layoutParams.f769y + layoutParams.topMargin, layoutParams.f768x + layoutParams.leftMargin + childAt.getMeasuredWidth(), layoutParams.f769y + layoutParams.topMargin + childAt.getMeasuredHeight());
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i, int i2) {
        int i3;
        int i4;
        int size = (View.MeasureSpec.getSize(i) - getPaddingRight()) - getPaddingLeft();
        int size2 = (View.MeasureSpec.getSize(i2) - getPaddingTop()) - getPaddingBottom();
        int i5 = View.MeasureSpec.getMode(i);
        int mode = View.MeasureSpec.getMode(i2);
        int i6 = this.config.getOrientation() == 0 ? size : size2;
        if (this.config.getOrientation() == 0) {
            size = size2;
        }
        if (this.config.getOrientation() != 0) {
            i5 = mode;
        }
        this.config.getOrientation();
        this.lines.clear();
        LineDefinition lineDefinition = new LineDefinition(i6);
        this.lines.add(lineDefinition);
        int childCount = getChildCount();
        for (int i7 = 0; i7 < childCount; i7++) {
            View childAt = getChildAt(i7);
            if (childAt.getVisibility() != 8) {
                LayoutParams layoutParams = (LayoutParams) childAt.getLayoutParams();
                childAt.measure(getChildMeasureSpec(i, getPaddingLeft() + getPaddingRight(), layoutParams.width), getChildMeasureSpec(i2, getPaddingTop() + getPaddingBottom(), layoutParams.height));
                layoutParams.orientation = this.config.getOrientation();
                if (this.config.getOrientation() == 0) {
                    layoutParams.setLength(childAt.getMeasuredWidth());
                    layoutParams.setThickness(childAt.getMeasuredHeight());
                } else {
                    layoutParams.setLength(childAt.getMeasuredHeight());
                    layoutParams.setThickness(childAt.getMeasuredWidth());
                }
                if (layoutParams.isNewLine() || (i5 != 0 && !lineDefinition.canFit(childAt))) {
                    lineDefinition = new LineDefinition(i6);
                    if (this.config.getOrientation() == 1 && this.config.getLayoutDirection() == 1) {
                        this.lines.add(0, lineDefinition);
                    } else {
                        this.lines.add(lineDefinition);
                    }
                }
                if (this.config.getOrientation() == 0 && this.config.getLayoutDirection() == 1) {
                    lineDefinition.addView(0, childAt);
                } else {
                    lineDefinition.addView(childAt);
                }
            }
        }
        calculateLinesAndChildPosition(this.lines);
        int size3 = this.lines.size();
        int i8 = 0;
        for (int i9 = 0; i9 < size3; i9++) {
            i8 = Math.max(i8, this.lines.get(i9).getLineLength());
        }
        int lineStartThickness = lineDefinition.getLineStartThickness() + lineDefinition.getLineThickness();
        applyGravityToLines(this.lines, findSize(i5, i6, i8), findSize(mode, size, lineStartThickness));
        for (int i10 = 0; i10 < size3; i10++) {
            LineDefinition lineDefinition2 = this.lines.get(i10);
            applyGravityToLine(lineDefinition2);
            applyPositionsToViews(lineDefinition2);
        }
        int paddingLeft = getPaddingLeft() + getPaddingRight();
        int paddingBottom = getPaddingBottom() + getPaddingTop();
        if (this.config.getOrientation() == 0) {
            i3 = paddingLeft + i8;
            i4 = paddingBottom + lineStartThickness;
        } else {
            i3 = paddingLeft + lineStartThickness;
            i4 = paddingBottom + i8;
        }
        setMeasuredDimension(resolveSize(i3, i), resolveSize(i4, i2));
    }

    public void setDebugDraw(boolean z) {
        this.config.setDebugDraw(z);
        invalidate();
    }

    public void setGravity(int i) {
        this.config.setGravity(i);
        requestLayout();
    }

    @Override // android.view.View
    public void setLayoutDirection(int i) {
        this.config.setLayoutDirection(i);
        requestLayout();
    }

    public void setOrientation(int i) {
        this.config.setOrientation(i);
        requestLayout();
    }

    public void setWeightDefault(float f) {
        this.config.setWeightDefault(f);
        requestLayout();
    }
}
