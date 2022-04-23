package com.rey.material.drawable;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.p001v4.text.TextUtilsCompat;
import android.util.AttributeSet;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import com.rey.material.C1686R;
import com.rey.material.util.ThemeUtil;
import java.util.Locale;
/* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/LineMorphingDrawable.class */
public class LineMorphingDrawable extends Drawable implements Animatable {
    private int mAnimDuration;
    private float mAnimProgress;
    private boolean mClockwise;
    private int mCurState;
    private RectF mDrawBound;
    private int mHeight;
    private Interpolator mInterpolator;
    private boolean mIsRtl;
    private int mPaddingBottom;
    private int mPaddingLeft;
    private int mPaddingRight;
    private int mPaddingTop;
    private Paint mPaint;
    private Path mPath;
    private int mPrevState;
    private boolean mRunning;
    private long mStartTime;
    private State[] mStates;
    private Paint.Cap mStrokeCap;
    private int mStrokeColor;
    private Paint.Join mStrokeJoin;
    private int mStrokeSize;
    private final Runnable mUpdater;
    private int mWidth;

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/LineMorphingDrawable$Builder.class */
    public static class Builder {
        private static final String TAG_ITEM = "item";
        private static final String TAG_LINKS = "links";
        private static final String TAG_POINTS = "points";
        private static final String TAG_STATE = "state";
        private static final String TAG_STATE_LIST = "state-list";
        private int mAnimDuration;
        private boolean mClockwise;
        private int mCurState;
        private int mHeight;
        private Interpolator mInterpolator;
        private boolean mIsRtl;
        private int mPaddingBottom;
        private int mPaddingLeft;
        private int mPaddingRight;
        private int mPaddingTop;
        private State[] mStates;
        private Paint.Cap mStrokeCap;
        private int mStrokeColor;
        private Paint.Join mStrokeJoin;
        private int mStrokeSize;
        private int mWidth;

        public Builder() {
        }

        public Builder(Context context, int i) {
            this(context, null, 0, i);
        }

        public Builder(Context context, AttributeSet attributeSet, int i, int i2) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C1686R.styleable.LineMorphingDrawable, i, i2);
            int resourceId = obtainStyledAttributes.getResourceId(C1686R.styleable.LineMorphingDrawable_lmd_state, 0);
            if (resourceId != 0) {
                states(readStates(context, resourceId));
            }
            curState(obtainStyledAttributes.getInteger(C1686R.styleable.LineMorphingDrawable_lmd_curState, 0));
            width(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_width, 0));
            height(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_height, 0));
            padding(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_padding, 0));
            paddingLeft(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_paddingLeft, this.mPaddingLeft));
            paddingTop(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_paddingTop, this.mPaddingTop));
            paddingRight(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_paddingRight, this.mPaddingRight));
            paddingBottom(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_paddingBottom, this.mPaddingBottom));
            animDuration(obtainStyledAttributes.getInteger(C1686R.styleable.LineMorphingDrawable_lmd_animDuration, context.getResources().getInteger(17694721)));
            int resourceId2 = obtainStyledAttributes.getResourceId(C1686R.styleable.LineMorphingDrawable_lmd_interpolator, 0);
            if (resourceId2 != 0) {
                interpolator(AnimationUtils.loadInterpolator(context, resourceId2));
            }
            strokeSize(obtainStyledAttributes.getDimensionPixelSize(C1686R.styleable.LineMorphingDrawable_lmd_strokeSize, ThemeUtil.dpToPx(context, 3)));
            strokeColor(obtainStyledAttributes.getColor(C1686R.styleable.LineMorphingDrawable_lmd_strokeColor, -1));
            int integer = obtainStyledAttributes.getInteger(C1686R.styleable.LineMorphingDrawable_lmd_strokeCap, 0);
            boolean z = true;
            boolean z2 = true;
            if (integer == 0) {
                strokeCap(Paint.Cap.BUTT);
            } else if (integer == 1) {
                strokeCap(Paint.Cap.ROUND);
            } else {
                strokeCap(Paint.Cap.SQUARE);
            }
            int integer2 = obtainStyledAttributes.getInteger(C1686R.styleable.LineMorphingDrawable_lmd_strokeJoin, 0);
            if (integer2 == 0) {
                strokeJoin(Paint.Join.MITER);
            } else if (integer2 == 1) {
                strokeJoin(Paint.Join.ROUND);
            } else {
                strokeJoin(Paint.Join.BEVEL);
            }
            clockwise(obtainStyledAttributes.getBoolean(C1686R.styleable.LineMorphingDrawable_lmd_clockwise, true));
            int integer3 = obtainStyledAttributes.getInteger(C1686R.styleable.LineMorphingDrawable_lmd_layoutDirection, 0);
            if (integer3 == 3) {
                rtl(TextUtilsCompat.getLayoutDirectionFromLocale(Locale.getDefault()) != 1 ? false : z2);
            } else {
                if (integer3 != 1) {
                    z = false;
                }
                rtl(z);
            }
            obtainStyledAttributes.recycle();
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:119:0x03a4, code lost:
            if (r9 != null) goto L_0x03c9;
         */
        /* JADX WARN: Code restructure failed: missing block: B:131:0x03c6, code lost:
            if (r9 == null) goto L_0x03d0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:132:0x03c9, code lost:
            r9.close();
         */
        /* JADX WARN: Code restructure failed: missing block: B:134:0x03d6, code lost:
            if (r0.isEmpty() == false) goto L_0x03db;
         */
        /* JADX WARN: Code restructure failed: missing block: B:135:0x03d9, code lost:
            return null;
         */
        /* JADX WARN: Code restructure failed: missing block: B:137:0x03ed, code lost:
            return (com.rey.material.drawable.LineMorphingDrawable.State[]) r0.toArray(new com.rey.material.drawable.LineMorphingDrawable.State[r0.size()]);
         */
        /* JADX WARN: Removed duplicated region for block: B:108:0x033c  */
        /* JADX WARN: Removed duplicated region for block: B:109:0x034c A[Catch: all -> 0x03aa, Exception -> 0x03ee, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x03ee, all -> 0x03aa, blocks: (B:5:0x0014, B:9:0x001f, B:11:0x0032, B:12:0x003d, B:13:0x0064, B:15:0x0067, B:19:0x007a, B:26:0x00d6, B:28:0x00ed, B:32:0x0109, B:36:0x0118, B:37:0x011d, B:39:0x0153, B:43:0x0162, B:46:0x016f, B:50:0x017e, B:54:0x018d, B:62:0x01d9, B:64:0x01f7, B:67:0x0216, B:69:0x0221, B:70:0x023e, B:73:0x025d, B:75:0x0268, B:76:0x0285, B:81:0x02ae, B:90:0x02e1, B:94:0x02f0, B:98:0x02ff, B:101:0x030c, B:109:0x034c, B:111:0x0362, B:113:0x0373, B:116:0x038f), top: B:141:0x0014 }] */
        /* JADX WARN: Removed duplicated region for block: B:111:0x0362 A[Catch: all -> 0x03aa, Exception -> 0x03ee, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x03ee, all -> 0x03aa, blocks: (B:5:0x0014, B:9:0x001f, B:11:0x0032, B:12:0x003d, B:13:0x0064, B:15:0x0067, B:19:0x007a, B:26:0x00d6, B:28:0x00ed, B:32:0x0109, B:36:0x0118, B:37:0x011d, B:39:0x0153, B:43:0x0162, B:46:0x016f, B:50:0x017e, B:54:0x018d, B:62:0x01d9, B:64:0x01f7, B:67:0x0216, B:69:0x0221, B:70:0x023e, B:73:0x025d, B:75:0x0268, B:76:0x0285, B:81:0x02ae, B:90:0x02e1, B:94:0x02f0, B:98:0x02ff, B:101:0x030c, B:109:0x034c, B:111:0x0362, B:113:0x0373, B:116:0x038f), top: B:141:0x0014 }] */
        /* JADX WARN: Removed duplicated region for block: B:113:0x0373 A[Catch: all -> 0x03aa, Exception -> 0x03ee, TRY_ENTER, TRY_LEAVE, TryCatch #3 {Exception -> 0x03ee, all -> 0x03aa, blocks: (B:5:0x0014, B:9:0x001f, B:11:0x0032, B:12:0x003d, B:13:0x0064, B:15:0x0067, B:19:0x007a, B:26:0x00d6, B:28:0x00ed, B:32:0x0109, B:36:0x0118, B:37:0x011d, B:39:0x0153, B:43:0x0162, B:46:0x016f, B:50:0x017e, B:54:0x018d, B:62:0x01d9, B:64:0x01f7, B:67:0x0216, B:69:0x0221, B:70:0x023e, B:73:0x025d, B:75:0x0268, B:76:0x0285, B:81:0x02ae, B:90:0x02e1, B:94:0x02f0, B:98:0x02ff, B:101:0x030c, B:109:0x034c, B:111:0x0362, B:113:0x0373, B:116:0x038f), top: B:141:0x0014 }] */
        /* JADX WARN: Removed duplicated region for block: B:115:0x0382 A[PHI: r6 r17 
          PHI: (r6v10 java.lang.Object A[REMOVE]) = (r11v1 java.lang.Object), (r11v4 java.lang.Object) binds: [B:24:0x00ac, B:60:0x01a7] A[DONT_GENERATE, DONT_INLINE]
          PHI: (r17v3 boolean A[REMOVE]) = (r18v0 boolean), (r18v2 boolean) binds: [B:24:0x00ac, B:60:0x01a7] A[DONT_GENERATE, DONT_INLINE]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private com.rey.material.drawable.LineMorphingDrawable.State[] readStates(android.content.Context r6, int r7) {
            /*
                Method dump skipped, instructions count: 1010
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.rey.material.drawable.LineMorphingDrawable.Builder.readStates(android.content.Context, int):com.rey.material.drawable.LineMorphingDrawable$State[]");
        }

        public Builder animDuration(int i) {
            this.mAnimDuration = i;
            return this;
        }

        public LineMorphingDrawable build() {
            if (this.mStrokeCap == null) {
                this.mStrokeCap = Paint.Cap.BUTT;
            }
            if (this.mStrokeJoin == null) {
                this.mStrokeJoin = Paint.Join.MITER;
            }
            if (this.mInterpolator == null) {
                this.mInterpolator = new AccelerateInterpolator();
            }
            return new LineMorphingDrawable(this.mStates, this.mCurState, this.mWidth, this.mHeight, this.mPaddingLeft, this.mPaddingTop, this.mPaddingRight, this.mPaddingBottom, this.mAnimDuration, this.mInterpolator, this.mStrokeSize, this.mStrokeColor, this.mStrokeCap, this.mStrokeJoin, this.mClockwise, this.mIsRtl);
        }

        public Builder clockwise(boolean z) {
            this.mClockwise = z;
            return this;
        }

        public Builder curState(int i) {
            this.mCurState = i;
            return this;
        }

        public Builder height(int i) {
            this.mHeight = i;
            return this;
        }

        public Builder interpolator(Interpolator interpolator) {
            this.mInterpolator = interpolator;
            return this;
        }

        public Builder padding(int i) {
            this.mPaddingLeft = i;
            this.mPaddingTop = i;
            this.mPaddingRight = i;
            this.mPaddingBottom = i;
            return this;
        }

        public Builder paddingBottom(int i) {
            this.mPaddingBottom = i;
            return this;
        }

        public Builder paddingLeft(int i) {
            this.mPaddingLeft = i;
            return this;
        }

        public Builder paddingRight(int i) {
            this.mPaddingRight = i;
            return this;
        }

        public Builder paddingTop(int i) {
            this.mPaddingTop = i;
            return this;
        }

        public Builder rtl(boolean z) {
            this.mIsRtl = z;
            return this;
        }

        public Builder states(State... stateArr) {
            this.mStates = stateArr;
            return this;
        }

        public Builder strokeCap(Paint.Cap cap) {
            this.mStrokeCap = cap;
            return this;
        }

        public Builder strokeColor(int i) {
            this.mStrokeColor = i;
            return this;
        }

        public Builder strokeJoin(Paint.Join join) {
            this.mStrokeJoin = join;
            return this;
        }

        public Builder strokeSize(int i) {
            this.mStrokeSize = i;
            return this;
        }

        public Builder width(int i) {
            this.mWidth = i;
            return this;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/rey/material/drawable/LineMorphingDrawable$State.class */
    public static class State {
        int[] links;
        float[] points;

        public State() {
        }

        public State(float[] fArr, int[] iArr) {
            this.points = fArr;
            this.links = iArr;
        }
    }

    private LineMorphingDrawable(State[] stateArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, Interpolator interpolator, int i9, int i10, Paint.Cap cap, Paint.Join join, boolean z, boolean z2) {
        this.mRunning = false;
        this.mPaddingLeft = 12;
        this.mPaddingTop = 12;
        this.mPaddingRight = 12;
        this.mPaddingBottom = 12;
        this.mUpdater = new Runnable() { // from class: com.rey.material.drawable.LineMorphingDrawable.1
            @Override // java.lang.Runnable
            public void run() {
                LineMorphingDrawable.this.update();
            }
        };
        this.mStates = stateArr;
        this.mWidth = i2;
        this.mHeight = i3;
        this.mPaddingLeft = i4;
        this.mPaddingTop = i5;
        this.mPaddingRight = i6;
        this.mPaddingBottom = i7;
        this.mAnimDuration = i8;
        this.mInterpolator = interpolator;
        this.mStrokeSize = i9;
        this.mStrokeColor = i10;
        this.mStrokeCap = cap;
        this.mStrokeJoin = join;
        this.mClockwise = z;
        this.mIsRtl = z2;
        this.mPaint = new Paint();
        this.mPaint.setAntiAlias(true);
        this.mPaint.setStyle(Paint.Style.STROKE);
        this.mPaint.setStrokeCap(this.mStrokeCap);
        this.mPaint.setStrokeJoin(this.mStrokeJoin);
        this.mPaint.setColor(this.mStrokeColor);
        this.mPaint.setStrokeWidth(this.mStrokeSize);
        this.mDrawBound = new RectF();
        this.mPath = new Path();
        switchLineState(i, false);
    }

    private float getX(float f) {
        return this.mDrawBound.left + (this.mDrawBound.width() * f);
    }

    private float getY(float f) {
        return this.mDrawBound.top + (this.mDrawBound.height() * f);
    }

    private void resetAnimation() {
        this.mStartTime = SystemClock.uptimeMillis();
        this.mAnimProgress = 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void update() {
        float min = Math.min(1.0f, ((float) (SystemClock.uptimeMillis() - this.mStartTime)) / this.mAnimDuration);
        if (min == 1.0f) {
            setLineState(this.mCurState, 1.0f);
            this.mRunning = false;
        } else {
            setLineState(this.mCurState, this.mInterpolator.getInterpolation(min));
        }
        if (isRunning()) {
            scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        }
    }

    private void updatePath() {
        this.mPath.reset();
        if (this.mStates != null) {
            if (this.mAnimProgress == 0.0f || (this.mStates[this.mPrevState].links != null && this.mAnimProgress < 0.05f)) {
                updatePathWithState(this.mPath, this.mStates[this.mPrevState]);
            } else if (this.mAnimProgress == 1.0f || (this.mStates[this.mCurState].links != null && this.mAnimProgress > 0.95f)) {
                updatePathWithState(this.mPath, this.mStates[this.mCurState]);
            } else {
                updatePathBetweenStates(this.mPath, this.mStates[this.mPrevState], this.mStates[this.mCurState], this.mInterpolator.getInterpolation(this.mAnimProgress));
            }
            invalidateSelf();
        }
    }

    private void updatePathBetweenStates(Path path, State state, State state2, float f) {
        float f2;
        float f3;
        float f4;
        float f5;
        float f6;
        float f7;
        float f8;
        int max = Math.max(state.points.length, state2.points.length) / 4;
        for (int i = 0; i < max; i++) {
            int i2 = i * 4;
            float f9 = 0.5f;
            if (i2 >= state.points.length) {
                f5 = 0.5f;
                f4 = 0.5f;
                f3 = 0.5f;
                f2 = 0.5f;
            } else {
                f5 = state.points[i2];
                f4 = state.points[i2 + 1];
                f3 = state.points[i2 + 2];
                f2 = state.points[i2 + 3];
            }
            if (i2 >= state2.points.length) {
                f8 = 0.5f;
                f7 = 0.5f;
                f6 = 0.5f;
            } else {
                f9 = state2.points[i2];
                f7 = state2.points[i2 + 1];
                f6 = state2.points[i2 + 2];
                f8 = state2.points[i2 + 3];
            }
            this.mPath.moveTo(getX(f5 + ((f9 - f5) * f)), getY(f4 + ((f7 - f4) * f)));
            this.mPath.lineTo(getX(f3 + ((f6 - f3) * f)), getY(f2 + ((f8 - f2) * f)));
        }
    }

    private void updatePathWithState(Path path, State state) {
        boolean z;
        if (state.links != null) {
            for (int i = 0; i < state.links.length; i += 2) {
                int i2 = state.links[i] * 4;
                int i3 = state.links[i + 1] * 4;
                float x = getX(state.points[i2]);
                float y = getY(state.points[i2 + 1]);
                float x2 = getX(state.points[i2 + 2]);
                float y2 = getY(state.points[i2 + 3]);
                float x3 = getX(state.points[i3]);
                float y3 = getY(state.points[i3 + 1]);
                float x4 = getX(state.points[i3 + 2]);
                float y4 = getY(state.points[i3 + 3]);
                if (x == x3 && y == y3) {
                    path.moveTo(x2, y2);
                    path.lineTo(x, y);
                    path.lineTo(x4, y4);
                } else if (x == x4 && y == y4) {
                    path.moveTo(x2, y2);
                    path.lineTo(x, y);
                    path.lineTo(x3, y3);
                } else if (x2 == x3 && y2 == y3) {
                    path.moveTo(x, y);
                    path.lineTo(x2, y2);
                    path.lineTo(x4, y4);
                } else {
                    path.moveTo(x, y);
                    path.lineTo(x2, y2);
                    path.lineTo(x3, y3);
                }
            }
            int length = state.points.length / 4;
            for (int i4 = 0; i4 < length; i4++) {
                int i5 = 0;
                while (true) {
                    if (i5 >= state.links.length) {
                        z = false;
                        break;
                    } else if (state.links[i5] == i4) {
                        z = true;
                        break;
                    } else {
                        i5++;
                    }
                }
                if (!z) {
                    int i6 = i4 * 4;
                    path.moveTo(getX(state.points[i6]), getY(state.points[i6 + 1]));
                    path.lineTo(getX(state.points[i6 + 2]), getY(state.points[i6 + 3]));
                }
            }
            return;
        }
        int length2 = state.points.length / 4;
        for (int i7 = 0; i7 < length2; i7++) {
            int i8 = i7 * 4;
            path.moveTo(getX(state.points[i8]), getY(state.points[i8 + 1]));
            path.lineTo(getX(state.points[i8 + 2]), getY(state.points[i8 + 3]));
        }
    }

    public void cancel() {
        stop();
        setLineState(this.mCurState, 1.0f);
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        int save = canvas.save();
        float f = this.mClockwise ? 180 : -180;
        float f2 = this.mPrevState < this.mCurState ? 0.0f : 1.0f;
        float f3 = this.mAnimProgress;
        if (this.mIsRtl) {
            canvas.scale(-1.0f, 1.0f, this.mDrawBound.centerX(), this.mDrawBound.centerY());
        }
        canvas.rotate(f * (f2 + f3), this.mDrawBound.centerX(), this.mDrawBound.centerY());
        canvas.drawPath(this.mPath, this.mPaint);
        canvas.restoreToCount(save);
    }

    public float getAnimProgress() {
        return this.mAnimProgress;
    }

    public int getLineState() {
        return this.mCurState;
    }

    public int getLineStateCount() {
        return this.mStates == null ? 0 : this.mStates.length;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.mRunning;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        if (this.mWidth <= 0 || this.mHeight <= 0) {
            this.mDrawBound.left = rect.left + this.mPaddingLeft;
            this.mDrawBound.top = rect.top + this.mPaddingTop;
            this.mDrawBound.right = rect.right - this.mPaddingRight;
            this.mDrawBound.bottom = rect.bottom - this.mPaddingBottom;
        } else {
            this.mDrawBound.left = rect.left + ((rect.width() - this.mWidth) / 2.0f);
            this.mDrawBound.top = rect.top + ((rect.height() - this.mHeight) / 2.0f);
            this.mDrawBound.right = this.mDrawBound.left + this.mWidth;
            this.mDrawBound.bottom = this.mDrawBound.top + this.mHeight;
        }
        updatePath();
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j) {
        this.mRunning = true;
        super.scheduleSelf(runnable, j);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i) {
        this.mPaint.setAlpha(i);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.mPaint.setColorFilter(colorFilter);
    }

    public boolean setLineState(int i, float f) {
        if (this.mCurState != i) {
            this.mPrevState = this.mCurState;
            this.mCurState = i;
            this.mAnimProgress = f;
            updatePath();
            return true;
        } else if (this.mAnimProgress == f) {
            return false;
        } else {
            this.mAnimProgress = f;
            updatePath();
            return true;
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        resetAnimation();
        scheduleSelf(this.mUpdater, SystemClock.uptimeMillis() + 16);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        if (isRunning()) {
            this.mRunning = false;
            unscheduleSelf(this.mUpdater);
            invalidateSelf();
        }
    }

    public void switchLineState(int i, boolean z) {
        if (this.mCurState != i) {
            this.mPrevState = this.mCurState;
            this.mCurState = i;
            if (z) {
                start();
                return;
            }
            this.mAnimProgress = 1.0f;
            updatePath();
        } else if (!z) {
            this.mAnimProgress = 1.0f;
            updatePath();
        }
    }
}
