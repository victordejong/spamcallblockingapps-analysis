package androidx.constraintlayout.motion.widget;

import android.graphics.RectF;
import android.util.Log;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.motion.utils.CurveFit;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.motion.utils.VelocityMatrix;
import androidx.constraintlayout.motion.widget.KeyCycleOscillator;
import androidx.constraintlayout.motion.widget.SplineSet;
import androidx.constraintlayout.motion.widget.TimeCycleSplineSet;
import androidx.constraintlayout.solver.widgets.ConstraintWidget;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.ConstraintSet;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionController.class */
public class MotionController {
    private static final boolean DEBUG = false;
    public static final int DRAW_PATH_AS_CONFIGURED = 4;
    public static final int DRAW_PATH_BASIC = 1;
    public static final int DRAW_PATH_CARTESIAN = 3;
    public static final int DRAW_PATH_NONE = 0;
    public static final int DRAW_PATH_RECTANGLE = 5;
    public static final int DRAW_PATH_RELATIVE = 2;
    public static final int DRAW_PATH_SCREEN = 6;
    private static final boolean FAVOR_FIXED_SIZE_VIEWS = false;
    public static final int HORIZONTAL_PATH_X = 2;
    public static final int HORIZONTAL_PATH_Y = 3;
    public static final int PATH_PERCENT = 0;
    public static final int PATH_PERPENDICULAR = 1;
    private static final String TAG = "MotionController";
    public static final int VERTICAL_PATH_X = 4;
    public static final int VERTICAL_PATH_Y = 5;
    String[] attributeTable;
    private CurveFit mArcSpline;
    private int[] mAttributeInterpCount;
    private String[] mAttributeNames;
    private HashMap<String, SplineSet> mAttributesMap;
    String mConstraintTag;
    private HashMap<String, KeyCycleOscillator> mCycleMap;
    int mId;
    private double[] mInterpolateData;
    private int[] mInterpolateVariables;
    private double[] mInterpolateVelocity;
    private KeyTrigger[] mKeyTriggers;
    private CurveFit[] mSpline;
    private HashMap<String, TimeCycleSplineSet> mTimeCycleAttributesMap;
    View mView;
    private int mCurveFitType = -1;
    private MotionPaths mStartMotionPath = new MotionPaths();
    private MotionPaths mEndMotionPath = new MotionPaths();
    private MotionConstrainedPoint mStartPoint = new MotionConstrainedPoint();
    private MotionConstrainedPoint mEndPoint = new MotionConstrainedPoint();
    float mMotionStagger = Float.NaN;
    float mStaggerOffset = 0.0f;
    float mStaggerScale = 1.0f;
    private int MAX_DIMENSION = 4;
    private float[] mValuesBuff = new float[4];
    private ArrayList<MotionPaths> mMotionPaths = new ArrayList<>();
    private float[] mVelocity = new float[1];
    private ArrayList<Key> mKeyList = new ArrayList<>();
    private int mPathMotionArc = Key.UNSET;

    public MotionController(View view) {
        setView(view);
    }

    private float getAdjustedPosition(float f, float[] fArr) {
        float f2;
        if (fArr != null) {
            fArr[0] = 1.0f;
            f2 = f;
        } else {
            float f3 = this.mStaggerScale;
            f2 = f;
            if (f3 != 1.0d) {
                float f4 = this.mStaggerOffset;
                float f5 = f;
                if (f < f4) {
                    f5 = 0.0f;
                }
                f2 = f5;
                if (f5 > f4) {
                    f2 = f5;
                    if (f5 < 1.0d) {
                        f2 = (f5 - f4) * f3;
                    }
                }
            }
        }
        Easing easing = this.mStartMotionPath.mKeyFrameEasing;
        float f6 = Float.NaN;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        float f7 = 0.0f;
        while (it.hasNext()) {
            MotionPaths next = it.next();
            if (next.mKeyFrameEasing != null) {
                if (next.time < f2) {
                    easing = next.mKeyFrameEasing;
                    f7 = next.time;
                } else if (Float.isNaN(f6)) {
                    f6 = next.time;
                }
            }
        }
        float f8 = f2;
        if (easing != null) {
            if (Float.isNaN(f6)) {
                f6 = 1.0f;
            }
            float f9 = f6 - f7;
            double d = (f2 - f7) / f9;
            float f10 = (((float) easing.get(d)) * f9) + f7;
            f8 = f10;
            if (fArr != null) {
                fArr[0] = (float) easing.getDiff(d);
                f8 = f10;
            }
        }
        return f8;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [double] */
    /* JADX WARN: Type inference failed for: r0v28, types: [androidx.constraintlayout.motion.utils.CurveFit[]] */
    /* JADX WARN: Type inference failed for: r0v29, types: [androidx.constraintlayout.motion.utils.CurveFit] */
    /* JADX WARN: Type inference failed for: r0v36, types: [double] */
    /* JADX WARN: Type inference failed for: r0v39, types: [double] */
    /* JADX WARN: Type inference failed for: r0v55, types: [double] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2 */
    /* JADX WARN: Type inference failed for: r14v0 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r19v0 */
    /* JADX WARN: Type inference failed for: r19v1 */
    /* JADX WARN: Type inference failed for: r19v2 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v5, types: [double] */
    /* JADX WARN: Type inference failed for: r2v7 */
    private float getPreCycleDistance() {
        float f;
        float[] fArr = new float[2];
        float f2 = 1.0f / 99;
        ?? r12 = false;
        ?? r14 = false;
        int i = 0;
        float f3 = 0.0f;
        while (true) {
            float f4 = f3;
            if (i < 100) {
                float f5 = i * f2;
                ?? r19 = f5;
                Easing easing = this.mStartMotionPath.mKeyFrameEasing;
                float f6 = Float.NaN;
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                float f7 = 0.0f;
                while (it.hasNext()) {
                    MotionPaths next = it.next();
                    if (next.mKeyFrameEasing != null) {
                        if (next.time < f5) {
                            easing = next.mKeyFrameEasing;
                            f7 = next.time;
                        } else if (Float.isNaN(f6)) {
                            f6 = next.time;
                        }
                    }
                }
                if (easing != null) {
                    float f8 = f6;
                    if (Float.isNaN(f6)) {
                        f8 = 1.0f;
                    }
                    r19 = (((float) easing.get((f5 - f7) / f)) * (f8 - f7)) + f7;
                }
                this.mSpline[0].getPos(r19, this.mInterpolateData);
                this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                float f9 = f4;
                if (i > 0) {
                    f9 = (float) (f4 + Math.hypot((r14 == true ? 1.0d : 0.0d) - fArr[1], (r12 == true ? 1.0d : 0.0d) - fArr[0]));
                }
                r12 = fArr[0];
                r14 = fArr[1];
                i++;
                f3 = f9;
            } else {
                return f4;
            }
        }
    }

    private void insertKey(MotionPaths motionPaths) {
        int binarySearch = Collections.binarySearch(this.mMotionPaths, motionPaths);
        if (binarySearch == 0) {
            Log.e(TAG, " KeyPath positon \"" + motionPaths.position + "\" outside of range");
        }
        this.mMotionPaths.add((-binarySearch) - 1, motionPaths);
    }

    private void readView(MotionPaths motionPaths) {
        motionPaths.setBounds((int) this.mView.getX(), (int) this.mView.getY(), this.mView.getWidth(), this.mView.getHeight());
    }

    public void addKey(Key key) {
        this.mKeyList.add(key);
    }

    public void addKeys(ArrayList<Key> arrayList) {
        this.mKeyList.addAll(arrayList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v61, types: [double] */
    void buildBounds(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            hashMap.get("translationX");
        }
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        if (hashMap2 != null) {
            hashMap2.get("translationY");
        }
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        if (hashMap3 != null) {
            hashMap3.get("translationX");
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = this.mStaggerScale;
            float f5 = f3;
            if (f4 != 1.0f) {
                float f6 = this.mStaggerOffset;
                float f7 = f3;
                if (f3 < f6) {
                    f7 = 0.0f;
                }
                f5 = f7;
                if (f7 > f6) {
                    f5 = f7;
                    if (f7 < 1.0d) {
                        f5 = (f7 - f6) * f4;
                    }
                }
            }
            char c = f5;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f8 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f9 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                if (next.mKeyFrameEasing != null) {
                    if (next.time < f5) {
                        easing = next.mKeyFrameEasing;
                        f9 = next.time;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.time;
                    }
                }
            }
            if (easing != null) {
                float f10 = f8;
                if (Float.isNaN(f8)) {
                    f10 = 1.0f;
                }
                c = (((float) easing.get((f5 - f9) / f)) * (f10 - f9)) + f9;
            }
            this.mSpline[0].getPos(c, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(c, dArr);
                }
            }
            this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i2 * 2);
        }
    }

    int buildKeyBounds(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i = 0;
                while (it.hasNext()) {
                    iArr[i] = it.next().mMode;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : timePoints) {
                this.mSpline[0].getPos(d, this.mInterpolateData);
                this.mStartMotionPath.getBounds(this.mInterpolateVariables, this.mInterpolateData, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    public int buildKeyFrames(float[] fArr, int[] iArr) {
        if (fArr != null) {
            double[] timePoints = this.mSpline[0].getTimePoints();
            if (iArr != null) {
                Iterator<MotionPaths> it = this.mMotionPaths.iterator();
                int i = 0;
                while (it.hasNext()) {
                    iArr[i] = it.next().mMode;
                    i++;
                }
            }
            int i2 = 0;
            for (double d : timePoints) {
                this.mSpline[0].getPos(d, this.mInterpolateData);
                this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, i2);
                i2 += 2;
            }
            return i2 / 2;
        }
        return 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [double] */
    /* JADX WARN: Type inference failed for: r0v76, types: [double] */
    public void buildPath(float[] fArr, int i) {
        float f;
        float f2 = 1.0f / (i - 1);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        KeyCycleOscillator keyCycleOscillator = null;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap3 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = hashMap3 == null ? null : hashMap3.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            keyCycleOscillator = hashMap4.get("translationY");
        }
        for (int i2 = 0; i2 < i; i2++) {
            float f3 = i2 * f2;
            float f4 = this.mStaggerScale;
            float f5 = f3;
            if (f4 != 1.0f) {
                float f6 = this.mStaggerOffset;
                float f7 = f3;
                if (f3 < f6) {
                    f7 = 0.0f;
                }
                f5 = f7;
                if (f7 > f6) {
                    f5 = f7;
                    if (f7 < 1.0d) {
                        f5 = (f7 - f6) * f4;
                    }
                }
            }
            char c = f5;
            Easing easing = this.mStartMotionPath.mKeyFrameEasing;
            float f8 = Float.NaN;
            Iterator<MotionPaths> it = this.mMotionPaths.iterator();
            float f9 = 0.0f;
            while (it.hasNext()) {
                MotionPaths next = it.next();
                if (next.mKeyFrameEasing != null) {
                    if (next.time < f5) {
                        easing = next.mKeyFrameEasing;
                        f9 = next.time;
                    } else if (Float.isNaN(f8)) {
                        f8 = next.time;
                    }
                }
            }
            if (easing != null) {
                float f10 = f8;
                if (Float.isNaN(f8)) {
                    f10 = 1.0f;
                }
                c = (((float) easing.get((f5 - f9) / f)) * (f10 - f9)) + f9;
            }
            this.mSpline[0].getPos(c, this.mInterpolateData);
            CurveFit curveFit = this.mArcSpline;
            if (curveFit != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit.getPos(c, dArr);
                }
            }
            int i3 = i2 * 2;
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, i3);
            if (keyCycleOscillator2 != null) {
                fArr[i3] = fArr[i3] + keyCycleOscillator2.get(f5);
            } else if (splineSet != null) {
                fArr[i3] = fArr[i3] + splineSet.get(f5);
            }
            if (keyCycleOscillator != null) {
                int i4 = i3 + 1;
                fArr[i4] = fArr[i4] + keyCycleOscillator.get(f5);
            } else if (splineSet2 != null) {
                int i5 = i3 + 1;
                fArr[i5] = fArr[i5] + splineSet2.get(f5);
            }
        }
    }

    public void buildRect(float f, float[] fArr, int i) {
        this.mSpline[0].getPos(getAdjustedPosition(f, null), this.mInterpolateData);
        this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i);
    }

    public void buildRectangles(float[] fArr, int i) {
        float f = 1.0f / (i - 1);
        for (int i2 = 0; i2 < i; i2++) {
            this.mSpline[0].getPos(getAdjustedPosition(i2 * f, null), this.mInterpolateData);
            this.mStartMotionPath.getRect(this.mInterpolateVariables, this.mInterpolateData, fArr, i2 * 8);
        }
    }

    public int getAttributeValues(String str, float[] fArr, int i) {
        SplineSet splineSet = this.mAttributesMap.get(str);
        if (splineSet == null) {
            return -1;
        }
        for (int i2 = 0; i2 < fArr.length; i2++) {
            fArr[i2] = splineSet.get(i2 / (fArr.length - 1));
        }
        return fArr.length;
    }

    public void getDpDt(float f, float f2, float f3, float[] fArr) {
        double[] dArr;
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        CurveFit[] curveFitArr = this.mSpline;
        int i = 0;
        if (curveFitArr == null) {
            float f4 = this.mEndMotionPath.f32x - this.mStartMotionPath.f32x;
            float f5 = this.mEndMotionPath.f33y - this.mStartMotionPath.f33y;
            float f6 = this.mEndMotionPath.width;
            float f7 = this.mStartMotionPath.width;
            float f8 = this.mEndMotionPath.height;
            float f9 = this.mStartMotionPath.height;
            fArr[0] = (f4 * (1.0f - f2)) + (((f6 - f7) + f4) * f2);
            fArr[1] = (f5 * (1.0f - f3)) + (((f8 - f9) + f5) * f3);
            return;
        }
        CurveFit curveFit = curveFitArr[0];
        double d = adjustedPosition;
        curveFit.getSlope(d, this.mInterpolateVelocity);
        this.mSpline[0].getPos(d, this.mInterpolateData);
        float f10 = this.mVelocity[0];
        while (true) {
            dArr = this.mInterpolateVelocity;
            if (i >= dArr.length) {
                break;
            }
            dArr[i] = dArr[i] * f10;
            i++;
        }
        CurveFit curveFit2 = this.mArcSpline;
        if (curveFit2 == null) {
            this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, dArr, this.mInterpolateData);
            return;
        }
        double[] dArr2 = this.mInterpolateData;
        if (dArr2.length <= 0) {
            return;
        }
        curveFit2.getPos(d, dArr2);
        this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
        this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
    }

    public int getDrawPath() {
        int i = this.mStartMotionPath.mDrawPath;
        Iterator<MotionPaths> it = this.mMotionPaths.iterator();
        while (it.hasNext()) {
            i = Math.max(i, it.next().mDrawPath);
        }
        return Math.max(i, this.mEndMotionPath.mDrawPath);
    }

    public float getFinalX() {
        return this.mEndMotionPath.f32x;
    }

    public float getFinalY() {
        return this.mEndMotionPath.f33y;
    }

    public MotionPaths getKeyFrame(int i) {
        return this.mMotionPaths.get(i);
    }

    public int getKeyFrameInfo(int i, int[] iArr) {
        float[] fArr = new float[2];
        Iterator<Key> it = this.mKeyList.iterator();
        int i2 = 0;
        int i3 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            if (next.mType == i || i != -1) {
                iArr[i3] = 0;
                int i4 = i3 + 1;
                iArr[i4] = next.mType;
                int i5 = i4 + 1;
                iArr[i5] = next.mFramePosition;
                this.mSpline[0].getPos(next.mFramePosition / 100.0f, this.mInterpolateData);
                this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, 0);
                int i6 = i5 + 1;
                iArr[i6] = Float.floatToIntBits(fArr[0]);
                int i7 = i6 + 1;
                iArr[i7] = Float.floatToIntBits(fArr[1]);
                int i8 = i7;
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    int i9 = i7 + 1;
                    iArr[i9] = keyPosition.mPositionType;
                    int i10 = i9 + 1;
                    iArr[i10] = Float.floatToIntBits(keyPosition.mPercentX);
                    i8 = i10 + 1;
                    iArr[i8] = Float.floatToIntBits(keyPosition.mPercentY);
                }
                int i11 = i8 + 1;
                iArr[i3] = i11 - i3;
                i2++;
                i3 = i11;
            }
        }
        return i2;
    }

    public float getKeyFrameParameter(int i, float f, float f2) {
        float f3 = this.mEndMotionPath.f32x - this.mStartMotionPath.f32x;
        float f4 = this.mEndMotionPath.f33y - this.mStartMotionPath.f33y;
        float f5 = this.mStartMotionPath.f32x;
        float f6 = this.mStartMotionPath.width / 2.0f;
        float f7 = this.mStartMotionPath.f33y;
        float f8 = this.mStartMotionPath.height / 2.0f;
        float hypot = (float) Math.hypot(f3, f4);
        if (hypot < 1.0E-7d) {
            return Float.NaN;
        }
        float f9 = f - (f5 + f6);
        float f10 = f2 - (f7 + f8);
        if (((float) Math.hypot(f9, f10)) == 0.0f) {
            return 0.0f;
        }
        float f11 = (f9 * f3) + (f10 * f4);
        if (i == 0) {
            return f11 / hypot;
        }
        if (i == 1) {
            return (float) Math.sqrt((hypot * hypot) - (f11 * f11));
        }
        if (i == 2) {
            return f9 / f3;
        }
        if (i == 3) {
            return f10 / f3;
        }
        if (i == 4) {
            return f9 / f4;
        }
        if (i == 5) {
            return f10 / f4;
        }
        return 0.0f;
    }

    public KeyPositionBase getPositionKeyframe(int i, int i2, float f, float f2) {
        RectF rectF = new RectF();
        rectF.left = this.mStartMotionPath.f32x;
        rectF.top = this.mStartMotionPath.f33y;
        rectF.right = rectF.left + this.mStartMotionPath.width;
        rectF.bottom = rectF.top + this.mStartMotionPath.height;
        RectF rectF2 = new RectF();
        rectF2.left = this.mEndMotionPath.f32x;
        rectF2.top = this.mEndMotionPath.f33y;
        rectF2.right = rectF2.left + this.mEndMotionPath.width;
        rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
        Iterator<Key> it = this.mKeyList.iterator();
        while (it.hasNext()) {
            Key next = it.next();
            if (next instanceof KeyPositionBase) {
                KeyPositionBase keyPositionBase = (KeyPositionBase) next;
                if (keyPositionBase.intersects(i, i2, rectF, rectF2, f, f2)) {
                    return keyPositionBase;
                }
            }
        }
        return null;
    }

    public void getPostLayoutDvDp(float f, int i, int i2, float f2, float f3, float[] fArr) {
        float adjustedPosition = getAdjustedPosition(f, this.mVelocity);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        KeyCycleOscillator keyCycleOscillator = null;
        SplineSet splineSet = hashMap == null ? null : hashMap.get("translationX");
        HashMap<String, SplineSet> hashMap2 = this.mAttributesMap;
        SplineSet splineSet2 = hashMap2 == null ? null : hashMap2.get("translationY");
        HashMap<String, SplineSet> hashMap3 = this.mAttributesMap;
        SplineSet splineSet3 = hashMap3 == null ? null : hashMap3.get("rotation");
        HashMap<String, SplineSet> hashMap4 = this.mAttributesMap;
        SplineSet splineSet4 = hashMap4 == null ? null : hashMap4.get("scaleX");
        HashMap<String, SplineSet> hashMap5 = this.mAttributesMap;
        SplineSet splineSet5 = hashMap5 == null ? null : hashMap5.get("scaleY");
        HashMap<String, KeyCycleOscillator> hashMap6 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator2 = hashMap6 == null ? null : hashMap6.get("translationX");
        HashMap<String, KeyCycleOscillator> hashMap7 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator3 = hashMap7 == null ? null : hashMap7.get("translationY");
        HashMap<String, KeyCycleOscillator> hashMap8 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator4 = hashMap8 == null ? null : hashMap8.get("rotation");
        HashMap<String, KeyCycleOscillator> hashMap9 = this.mCycleMap;
        KeyCycleOscillator keyCycleOscillator5 = hashMap9 == null ? null : hashMap9.get("scaleX");
        HashMap<String, KeyCycleOscillator> hashMap10 = this.mCycleMap;
        if (hashMap10 != null) {
            keyCycleOscillator = hashMap10.get("scaleY");
        }
        VelocityMatrix velocityMatrix = new VelocityMatrix();
        velocityMatrix.clear();
        velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
        velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
        velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
        velocityMatrix.setRotationVelocity(keyCycleOscillator4, adjustedPosition);
        velocityMatrix.setTranslationVelocity(keyCycleOscillator2, keyCycleOscillator3, adjustedPosition);
        velocityMatrix.setScaleVelocity(keyCycleOscillator5, keyCycleOscillator, adjustedPosition);
        CurveFit curveFit = this.mArcSpline;
        if (curveFit != null) {
            double[] dArr = this.mInterpolateData;
            if (dArr.length > 0) {
                double d = adjustedPosition;
                curveFit.getPos(d, dArr);
                this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
                this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, this.mInterpolateVelocity, this.mInterpolateData);
            }
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        int i3 = 0;
        if (this.mSpline == null) {
            float f4 = this.mEndMotionPath.f32x - this.mStartMotionPath.f32x;
            float f5 = this.mEndMotionPath.f33y - this.mStartMotionPath.f33y;
            float f6 = this.mEndMotionPath.width;
            float f7 = this.mStartMotionPath.width;
            float f8 = this.mEndMotionPath.height;
            float f9 = this.mStartMotionPath.height;
            fArr[0] = (f4 * (1.0f - f2)) + (((f6 - f7) + f4) * f2);
            fArr[1] = (f5 * (1.0f - f3)) + (((f8 - f9) + f5) * f3);
            velocityMatrix.clear();
            velocityMatrix.setRotationVelocity(splineSet3, adjustedPosition);
            velocityMatrix.setTranslationVelocity(splineSet, splineSet2, adjustedPosition);
            velocityMatrix.setScaleVelocity(splineSet4, splineSet5, adjustedPosition);
            velocityMatrix.setRotationVelocity(keyCycleOscillator4, adjustedPosition);
            velocityMatrix.setTranslationVelocity(keyCycleOscillator2, keyCycleOscillator3, adjustedPosition);
            velocityMatrix.setScaleVelocity(keyCycleOscillator5, keyCycleOscillator, adjustedPosition);
            velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
            return;
        }
        double adjustedPosition2 = getAdjustedPosition(adjustedPosition, this.mVelocity);
        this.mSpline[0].getSlope(adjustedPosition2, this.mInterpolateVelocity);
        this.mSpline[0].getPos(adjustedPosition2, this.mInterpolateData);
        float f10 = this.mVelocity[0];
        while (true) {
            double[] dArr2 = this.mInterpolateVelocity;
            if (i3 >= dArr2.length) {
                this.mStartMotionPath.setDpDt(f2, f3, fArr, this.mInterpolateVariables, dArr2, this.mInterpolateData);
                velocityMatrix.applyTransform(f2, f3, i, i2, fArr);
                return;
            }
            dArr2[i3] = dArr2[i3] * f10;
            i3++;
        }
    }

    float getStartX() {
        return this.mStartMotionPath.f32x;
    }

    float getStartY() {
        return this.mStartMotionPath.f33y;
    }

    public int getkeyFramePositions(int[] iArr, float[] fArr) {
        Iterator<Key> it = this.mKeyList.iterator();
        int i = 0;
        int i2 = 0;
        while (it.hasNext()) {
            Key next = it.next();
            iArr[i] = next.mFramePosition + (next.mType * 1000);
            this.mSpline[0].getPos(next.mFramePosition / 100.0f, this.mInterpolateData);
            this.mStartMotionPath.getCenter(this.mInterpolateVariables, this.mInterpolateData, fArr, i2);
            i2 += 2;
            i++;
        }
        return i;
    }

    public boolean interpolate(View view, float f, long j, KeyCache keyCache) {
        boolean z;
        TimeCycleSplineSet.PathRotate pathRotate;
        boolean z2;
        float adjustedPosition = getAdjustedPosition(f, null);
        HashMap<String, SplineSet> hashMap = this.mAttributesMap;
        if (hashMap != null) {
            for (SplineSet splineSet : hashMap.values()) {
                splineSet.setProperty(view, adjustedPosition);
            }
        }
        HashMap<String, TimeCycleSplineSet> hashMap2 = this.mTimeCycleAttributesMap;
        if (hashMap2 != null) {
            pathRotate = null;
            z = false;
            for (TimeCycleSplineSet timeCycleSplineSet : hashMap2.values()) {
                if (timeCycleSplineSet instanceof TimeCycleSplineSet.PathRotate) {
                    pathRotate = (TimeCycleSplineSet.PathRotate) timeCycleSplineSet;
                } else {
                    z |= timeCycleSplineSet.setProperty(view, adjustedPosition, j, keyCache);
                }
            }
        } else {
            pathRotate = null;
            z = false;
        }
        CurveFit[] curveFitArr = this.mSpline;
        if (curveFitArr != null) {
            CurveFit curveFit = curveFitArr[0];
            double d = adjustedPosition;
            curveFit.getPos(d, this.mInterpolateData);
            this.mSpline[0].getSlope(d, this.mInterpolateVelocity);
            CurveFit curveFit2 = this.mArcSpline;
            if (curveFit2 != null) {
                double[] dArr = this.mInterpolateData;
                if (dArr.length > 0) {
                    curveFit2.getPos(d, dArr);
                    this.mArcSpline.getSlope(d, this.mInterpolateVelocity);
                }
            }
            this.mStartMotionPath.setView(view, this.mInterpolateVariables, this.mInterpolateData, this.mInterpolateVelocity, null);
            HashMap<String, SplineSet> hashMap3 = this.mAttributesMap;
            if (hashMap3 != null) {
                for (SplineSet splineSet2 : hashMap3.values()) {
                    if (splineSet2 instanceof SplineSet.PathRotate) {
                        SplineSet.PathRotate pathRotate2 = (SplineSet.PathRotate) splineSet2;
                        double[] dArr2 = this.mInterpolateVelocity;
                        pathRotate2.setPathRotate(view, adjustedPosition, dArr2[0], dArr2[1]);
                    }
                }
            }
            if (pathRotate != null) {
                double[] dArr3 = this.mInterpolateVelocity;
                z = pathRotate.setPathRotate(view, keyCache, adjustedPosition, j, dArr3[0], dArr3[1]) | z;
            }
            int i = 1;
            while (true) {
                CurveFit[] curveFitArr2 = this.mSpline;
                if (i >= curveFitArr2.length) {
                    break;
                }
                curveFitArr2[i].getPos(d, this.mValuesBuff);
                this.mStartMotionPath.attributes.get(this.mAttributeNames[i - 1]).setInterpolatedValue(view, this.mValuesBuff);
                i++;
            }
            if (this.mStartPoint.mVisibilityMode == 0) {
                if (adjustedPosition <= 0.0f) {
                    view.setVisibility(this.mStartPoint.visibility);
                } else if (adjustedPosition >= 1.0f) {
                    view.setVisibility(this.mEndPoint.visibility);
                } else if (this.mEndPoint.visibility != this.mStartPoint.visibility) {
                    view.setVisibility(0);
                }
            }
            z2 = z;
            if (this.mKeyTriggers != null) {
                int i2 = 0;
                while (true) {
                    KeyTrigger[] keyTriggerArr = this.mKeyTriggers;
                    z2 = z;
                    if (i2 >= keyTriggerArr.length) {
                        break;
                    }
                    keyTriggerArr[i2].conditionallyFire(adjustedPosition, view);
                    i2++;
                }
            }
        } else {
            float f2 = this.mStartMotionPath.f32x;
            float f3 = this.mEndMotionPath.f32x;
            float f4 = this.mStartMotionPath.f32x;
            float f5 = this.mStartMotionPath.f33y;
            float f6 = this.mEndMotionPath.f33y;
            float f7 = this.mStartMotionPath.f33y;
            float f8 = f2 + ((f3 - f4) * adjustedPosition) + 0.5f;
            int i3 = (int) f8;
            float f9 = f5 + ((f6 - f7) * adjustedPosition) + 0.5f;
            int i4 = (int) f9;
            int i5 = (int) (f8 + this.mStartMotionPath.width + ((this.mEndMotionPath.width - this.mStartMotionPath.width) * adjustedPosition));
            int i6 = (int) (f9 + this.mStartMotionPath.height + ((this.mEndMotionPath.height - this.mStartMotionPath.height) * adjustedPosition));
            if (this.mEndMotionPath.width != this.mStartMotionPath.width || this.mEndMotionPath.height != this.mStartMotionPath.height) {
                view.measure(View.MeasureSpec.makeMeasureSpec(i5 - i3, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i6 - i4, BasicMeasure.EXACTLY));
            }
            view.layout(i3, i4, i5, i6);
            z2 = z;
        }
        HashMap<String, KeyCycleOscillator> hashMap4 = this.mCycleMap;
        if (hashMap4 != null) {
            for (KeyCycleOscillator keyCycleOscillator : hashMap4.values()) {
                if (keyCycleOscillator instanceof KeyCycleOscillator.PathRotateSet) {
                    KeyCycleOscillator.PathRotateSet pathRotateSet = (KeyCycleOscillator.PathRotateSet) keyCycleOscillator;
                    double[] dArr4 = this.mInterpolateVelocity;
                    pathRotateSet.setPathRotate(view, adjustedPosition, dArr4[0], dArr4[1]);
                } else {
                    keyCycleOscillator.setProperty(view, adjustedPosition);
                }
            }
        }
        return z2;
    }

    String name() {
        return this.mView.getContext().getResources().getResourceEntryName(this.mView.getId());
    }

    public void positionKeyframe(View view, KeyPositionBase keyPositionBase, float f, float f2, String[] strArr, float[] fArr) {
        RectF rectF = new RectF();
        rectF.left = this.mStartMotionPath.f32x;
        rectF.top = this.mStartMotionPath.f33y;
        rectF.right = rectF.left + this.mStartMotionPath.width;
        rectF.bottom = rectF.top + this.mStartMotionPath.height;
        RectF rectF2 = new RectF();
        rectF2.left = this.mEndMotionPath.f32x;
        rectF2.top = this.mEndMotionPath.f33y;
        rectF2.right = rectF2.left + this.mEndMotionPath.width;
        rectF2.bottom = rectF2.top + this.mEndMotionPath.height;
        keyPositionBase.positionAttributes(view, rectF, rectF2, f, f2, strArr, fArr);
    }

    public void setDrawPath(int i) {
        this.mStartMotionPath.mDrawPath = i;
    }

    public void setEndState(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        this.mEndMotionPath.time = 1.0f;
        this.mEndMotionPath.position = 1.0f;
        readView(this.mEndMotionPath);
        this.mEndMotionPath.setBounds(constraintWidget.getX(), constraintWidget.getY(), constraintWidget.getWidth(), constraintWidget.getHeight());
        this.mEndMotionPath.applyParameters(constraintSet.getParameters(this.mId));
        this.mEndPoint.setState(constraintWidget, constraintSet, this.mId);
    }

    public void setPathMotionArc(int i) {
        this.mPathMotionArc = i;
    }

    public void setStartCurrentState(View view) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        this.mStartMotionPath.setBounds(view.getX(), view.getY(), view.getWidth(), view.getHeight());
        this.mStartPoint.setState(view);
    }

    public void setStartState(ConstraintWidget constraintWidget, ConstraintSet constraintSet) {
        this.mStartMotionPath.time = 0.0f;
        this.mStartMotionPath.position = 0.0f;
        readView(this.mStartMotionPath);
        this.mStartMotionPath.setBounds(constraintWidget.getX(), constraintWidget.getY(), constraintWidget.getWidth(), constraintWidget.getHeight());
        ConstraintSet.Constraint parameters = constraintSet.getParameters(this.mId);
        this.mStartMotionPath.applyParameters(parameters);
        this.mMotionStagger = parameters.motion.mMotionStagger;
        this.mStartPoint.setState(constraintWidget, constraintSet, this.mId);
    }

    public void setView(View view) {
        this.mView = view;
        this.mId = view.getId();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ConstraintLayout.LayoutParams) {
            this.mConstraintTag = ((ConstraintLayout.LayoutParams) layoutParams).getConstraintTag();
        }
    }

    public void setup(int i, int i2, float f, long j) {
        ArrayList arrayList;
        int i3;
        int i4;
        TimeCycleSplineSet timeCycleSplineSet;
        ConstraintAttribute constraintAttribute;
        SplineSet splineSet;
        ConstraintAttribute constraintAttribute2;
        new HashSet();
        HashSet<String> hashSet = new HashSet<>();
        HashSet<String> hashSet2 = new HashSet<>();
        HashSet<String> hashSet3 = new HashSet<>();
        HashMap<String, Integer> hashMap = new HashMap<>();
        if (this.mPathMotionArc != Key.UNSET) {
            this.mStartMotionPath.mPathMotionArc = this.mPathMotionArc;
        }
        this.mStartPoint.different(this.mEndPoint, hashSet2);
        ArrayList<Key> arrayList2 = this.mKeyList;
        if (arrayList2 != null) {
            Iterator<Key> it = arrayList2.iterator();
            ArrayList arrayList3 = null;
            while (true) {
                arrayList = arrayList3;
                if (!it.hasNext()) {
                    break;
                }
                Key next = it.next();
                if (next instanceof KeyPosition) {
                    KeyPosition keyPosition = (KeyPosition) next;
                    insertKey(new MotionPaths(i, i2, keyPosition, this.mStartMotionPath, this.mEndMotionPath));
                    if (keyPosition.mCurveFit != Key.UNSET) {
                        this.mCurveFitType = keyPosition.mCurveFit;
                    }
                } else if (next instanceof KeyCycle) {
                    next.getAttributeNames(hashSet3);
                } else if (next instanceof KeyTimeCycle) {
                    next.getAttributeNames(hashSet);
                } else if (next instanceof KeyTrigger) {
                    ArrayList arrayList4 = arrayList3;
                    if (arrayList3 == null) {
                        arrayList4 = new ArrayList();
                    }
                    arrayList4.add((KeyTrigger) next);
                    arrayList3 = arrayList4;
                } else {
                    next.setInterpolation(hashMap);
                    next.getAttributeNames(hashSet2);
                }
            }
        } else {
            arrayList = null;
        }
        if (arrayList != null) {
            this.mKeyTriggers = (KeyTrigger[]) arrayList.toArray(new KeyTrigger[0]);
        }
        if (!hashSet2.isEmpty()) {
            this.mAttributesMap = new HashMap<>();
            Iterator<String> it2 = hashSet2.iterator();
            while (it2.hasNext()) {
                String next2 = it2.next();
                if (next2.startsWith("CUSTOM,")) {
                    SparseArray sparseArray = new SparseArray();
                    String str = next2.split(",")[1];
                    Iterator<Key> it3 = this.mKeyList.iterator();
                    while (it3.hasNext()) {
                        Key next3 = it3.next();
                        if (next3.mCustomConstraints != null && (constraintAttribute2 = next3.mCustomConstraints.get(str)) != null) {
                            sparseArray.append(next3.mFramePosition, constraintAttribute2);
                        }
                    }
                    splineSet = SplineSet.makeCustomSpline(next2, sparseArray);
                } else {
                    splineSet = SplineSet.makeSpline(next2);
                }
                if (splineSet != null) {
                    splineSet.setType(next2);
                    this.mAttributesMap.put(next2, splineSet);
                }
            }
            ArrayList<Key> arrayList5 = this.mKeyList;
            if (arrayList5 != null) {
                Iterator<Key> it4 = arrayList5.iterator();
                while (it4.hasNext()) {
                    Key next4 = it4.next();
                    if (next4 instanceof KeyAttributes) {
                        next4.addValues(this.mAttributesMap);
                    }
                }
            }
            this.mStartPoint.addValues(this.mAttributesMap, 0);
            this.mEndPoint.addValues(this.mAttributesMap, 100);
            for (String str2 : this.mAttributesMap.keySet()) {
                this.mAttributesMap.get(str2).setup(hashMap.containsKey(str2) ? hashMap.get(str2).intValue() : 0);
            }
        }
        if (!hashSet.isEmpty()) {
            if (this.mTimeCycleAttributesMap == null) {
                this.mTimeCycleAttributesMap = new HashMap<>();
            }
            Iterator<String> it5 = hashSet.iterator();
            while (it5.hasNext()) {
                String next5 = it5.next();
                if (!this.mTimeCycleAttributesMap.containsKey(next5)) {
                    if (next5.startsWith("CUSTOM,")) {
                        SparseArray sparseArray2 = new SparseArray();
                        String str3 = next5.split(",")[1];
                        Iterator<Key> it6 = this.mKeyList.iterator();
                        while (it6.hasNext()) {
                            Key next6 = it6.next();
                            if (next6.mCustomConstraints != null && (constraintAttribute = next6.mCustomConstraints.get(str3)) != null) {
                                sparseArray2.append(next6.mFramePosition, constraintAttribute);
                            }
                        }
                        timeCycleSplineSet = TimeCycleSplineSet.makeCustomSpline(next5, sparseArray2);
                    } else {
                        timeCycleSplineSet = TimeCycleSplineSet.makeSpline(next5, j);
                    }
                    if (timeCycleSplineSet != null) {
                        timeCycleSplineSet.setType(next5);
                        this.mTimeCycleAttributesMap.put(next5, timeCycleSplineSet);
                    }
                }
            }
            ArrayList<Key> arrayList6 = this.mKeyList;
            if (arrayList6 != null) {
                Iterator<Key> it7 = arrayList6.iterator();
                while (it7.hasNext()) {
                    Key next7 = it7.next();
                    if (next7 instanceof KeyTimeCycle) {
                        ((KeyTimeCycle) next7).addTimeValues(this.mTimeCycleAttributesMap);
                    }
                }
            }
            for (String str4 : this.mTimeCycleAttributesMap.keySet()) {
                this.mTimeCycleAttributesMap.get(str4).setup(hashMap.containsKey(str4) ? hashMap.get(str4).intValue() : 0);
            }
        }
        int size = this.mMotionPaths.size() + 2;
        MotionPaths[] motionPathsArr = new MotionPaths[size];
        motionPathsArr[0] = this.mStartMotionPath;
        motionPathsArr[size - 1] = this.mEndMotionPath;
        if (this.mMotionPaths.size() > 0 && this.mCurveFitType == -1) {
            this.mCurveFitType = 0;
        }
        Iterator<MotionPaths> it8 = this.mMotionPaths.iterator();
        int i5 = 1;
        while (it8.hasNext()) {
            motionPathsArr[i5] = it8.next();
            i5++;
        }
        HashSet hashSet4 = new HashSet();
        for (String str5 : this.mEndMotionPath.attributes.keySet()) {
            if (this.mStartMotionPath.attributes.containsKey(str5)) {
                if (!hashSet2.contains("CUSTOM," + str5)) {
                    hashSet4.add(str5);
                }
            }
        }
        String[] strArr = (String[]) hashSet4.toArray(new String[0]);
        this.mAttributeNames = strArr;
        this.mAttributeInterpCount = new int[strArr.length];
        int i6 = 0;
        while (true) {
            String[] strArr2 = this.mAttributeNames;
            if (i6 >= strArr2.length) {
                break;
            }
            String str6 = strArr2[i6];
            this.mAttributeInterpCount[i6] = 0;
            int i7 = 0;
            while (true) {
                if (i7 >= size) {
                    break;
                } else if (motionPathsArr[i7].attributes.containsKey(str6)) {
                    int[] iArr = this.mAttributeInterpCount;
                    iArr[i6] = iArr[i6] + motionPathsArr[i7].attributes.get(str6).noOfInterpValues();
                    break;
                } else {
                    i7++;
                }
            }
            i6++;
        }
        boolean z = motionPathsArr[0].mPathMotionArc != Key.UNSET;
        int length = 18 + this.mAttributeNames.length;
        boolean[] zArr = new boolean[length];
        for (int i8 = 1; i8 < size; i8++) {
            motionPathsArr[i8].different(motionPathsArr[i8 - 1], zArr, this.mAttributeNames, z);
        }
        int i9 = 1;
        int i10 = 0;
        while (true) {
            i3 = i10;
            if (i9 >= length) {
                break;
            }
            int i11 = i3;
            if (zArr[i9]) {
                i11 = i3 + 1;
            }
            i9++;
            i10 = i11;
        }
        int[] iArr2 = new int[i3];
        this.mInterpolateVariables = iArr2;
        this.mInterpolateData = new double[iArr2.length];
        this.mInterpolateVelocity = new double[iArr2.length];
        int i12 = 1;
        int i13 = 0;
        while (true) {
            int i14 = i13;
            if (i12 >= length) {
                break;
            }
            int i15 = i14;
            if (zArr[i12]) {
                this.mInterpolateVariables[i14] = i12;
                i15 = i14 + 1;
            }
            i12++;
            i13 = i15;
        }
        double[][] dArr = new double[size][this.mInterpolateVariables.length];
        double[] dArr2 = new double[size];
        for (int i16 = 0; i16 < size; i16++) {
            motionPathsArr[i16].fillStandard(dArr[i16], this.mInterpolateVariables);
            dArr2[i16] = motionPathsArr[i16].time;
        }
        int i17 = 0;
        while (true) {
            int[] iArr3 = this.mInterpolateVariables;
            if (i17 >= iArr3.length) {
                break;
            }
            if (iArr3[i17] < MotionPaths.names.length) {
                String str7 = MotionPaths.names[this.mInterpolateVariables[i17]] + " [";
                for (int i18 = 0; i18 < size; i18++) {
                    str7 = str7 + dArr[i18][i17];
                }
            }
            i17++;
        }
        this.mSpline = new CurveFit[this.mAttributeNames.length + 1];
        int i19 = 0;
        while (true) {
            String[] strArr3 = this.mAttributeNames;
            if (i19 >= strArr3.length) {
                break;
            }
            double[][] dArr3 = null;
            String str8 = strArr3[i19];
            double[] dArr4 = null;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                i4 = i21;
                if (i20 < size) {
                    double[][] dArr5 = dArr3;
                    double[] dArr6 = dArr4;
                    int i22 = i4;
                    if (motionPathsArr[i20].hasCustomData(str8)) {
                        dArr5 = dArr3;
                        if (dArr3 == null) {
                            dArr4 = new double[size];
                            dArr5 = new double[size][motionPathsArr[i20].getCustomDataCount(str8)];
                        }
                        dArr4[i4] = motionPathsArr[i20].time;
                        motionPathsArr[i20].getCustomData(str8, dArr5[i4], 0);
                        i22 = i4 + 1;
                        dArr6 = dArr4;
                    }
                    i20++;
                    dArr3 = dArr5;
                    dArr4 = dArr6;
                    i21 = i22;
                }
            }
            i19++;
            this.mSpline[i19] = CurveFit.get(this.mCurveFitType, Arrays.copyOf(dArr4, i4), (double[][]) Arrays.copyOf(dArr3, i4));
        }
        this.mSpline[0] = CurveFit.get(this.mCurveFitType, dArr2, dArr);
        if (motionPathsArr[0].mPathMotionArc != Key.UNSET) {
            int[] iArr4 = new int[size];
            double[] dArr7 = new double[size];
            double[][] dArr8 = new double[size][2];
            for (int i23 = 0; i23 < size; i23++) {
                iArr4[i23] = motionPathsArr[i23].mPathMotionArc;
                dArr7[i23] = motionPathsArr[i23].time;
                dArr8[i23][0] = motionPathsArr[i23].f32x;
                dArr8[i23][1] = motionPathsArr[i23].f33y;
            }
            this.mArcSpline = CurveFit.getArc(iArr4, dArr7, dArr8);
        }
        float f2 = Float.NaN;
        this.mCycleMap = new HashMap<>();
        if (this.mKeyList != null) {
            Iterator<String> it9 = hashSet3.iterator();
            while (it9.hasNext()) {
                String next8 = it9.next();
                KeyCycleOscillator makeSpline = KeyCycleOscillator.makeSpline(next8);
                if (makeSpline != null) {
                    float f3 = f2;
                    if (makeSpline.variesByPath()) {
                        f3 = f2;
                        if (Float.isNaN(f2)) {
                            f3 = getPreCycleDistance();
                        }
                    }
                    makeSpline.setType(next8);
                    this.mCycleMap.put(next8, makeSpline);
                    f2 = f3;
                }
            }
            Iterator<Key> it10 = this.mKeyList.iterator();
            while (it10.hasNext()) {
                Key next9 = it10.next();
                if (next9 instanceof KeyCycle) {
                    ((KeyCycle) next9).addCycleValues(this.mCycleMap);
                }
            }
            for (KeyCycleOscillator keyCycleOscillator : this.mCycleMap.values()) {
                keyCycleOscillator.setup(f2);
            }
        }
    }

    public String toString() {
        return " start: x: " + this.mStartMotionPath.f32x + " y: " + this.mStartMotionPath.f33y + " end: x: " + this.mEndMotionPath.f32x + " y: " + this.mEndMotionPath.f33y;
    }
}
