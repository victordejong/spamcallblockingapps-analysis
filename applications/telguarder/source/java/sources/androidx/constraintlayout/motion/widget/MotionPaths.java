package androidx.constraintlayout.motion.widget;

import android.view.View;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.solver.widgets.analyzer.BasicMeasure;
import androidx.constraintlayout.widget.ConstraintAttribute;
import androidx.constraintlayout.widget.ConstraintSet;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import java.util.Arrays;
import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/MotionPaths.class */
public class MotionPaths implements Comparable<MotionPaths> {
    static final int CARTESIAN = 2;
    public static final boolean DEBUG = false;
    static final int OFF_HEIGHT = 4;
    static final int OFF_PATH_ROTATE = 5;
    static final int OFF_POSITION = 0;
    static final int OFF_WIDTH = 3;
    static final int OFF_X = 1;
    static final int OFF_Y = 2;
    public static final boolean OLD_WAY = false;
    static final int PERPENDICULAR = 1;
    static final int SCREEN = 3;
    public static final String TAG = "MotionPaths";
    static String[] names = {"position", "x", "y", ViewHierarchyConstants.DIMENSION_WIDTH_KEY, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, "pathRotate"};
    LinkedHashMap<String, ConstraintAttribute> attributes;
    float height;
    int mDrawPath;
    Easing mKeyFrameEasing;
    int mMode;
    int mPathMotionArc;
    float mPathRotate;
    float mProgress;
    double[] mTempDelta;
    double[] mTempValue;
    float position;
    float time;
    float width;

    /* renamed from: x */
    float f32x;

    /* renamed from: y */
    float f33y;

    public MotionPaths() {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = Key.UNSET;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
    }

    public MotionPaths(int i, int i2, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        this.mDrawPath = 0;
        this.mPathRotate = Float.NaN;
        this.mProgress = Float.NaN;
        this.mPathMotionArc = Key.UNSET;
        this.attributes = new LinkedHashMap<>();
        this.mMode = 0;
        this.mTempValue = new double[18];
        this.mTempDelta = new double[18];
        int i3 = keyPosition.mPositionType;
        if (i3 == 1) {
            initPath(keyPosition, motionPaths, motionPaths2);
        } else if (i3 != 2) {
            initCartesian(keyPosition, motionPaths, motionPaths2);
        } else {
            initScreen(i, i2, keyPosition, motionPaths, motionPaths2);
        }
    }

    private boolean diff(float f, float f2) {
        boolean z = true;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            return Float.isNaN(f) != Float.isNaN(f2);
        }
        if (Math.abs(f - f2) <= 1.0E-6f) {
            z = false;
        }
        return z;
    }

    private static final float xRotate(float f, float f2, float f3, float f4, float f5, float f6) {
        return (((f5 - f3) * f2) - ((f6 - f4) * f)) + f3;
    }

    private static final float yRotate(float f, float f2, float f3, float f4, float f5, float f6) {
        return ((f5 - f3) * f) + ((f6 - f4) * f2) + f4;
    }

    public void applyParameters(ConstraintSet.Constraint constraint) {
        this.mKeyFrameEasing = Easing.getInterpolator(constraint.motion.mTransitionEasing);
        this.mPathMotionArc = constraint.motion.mPathMotionArc;
        this.mPathRotate = constraint.motion.mPathRotate;
        this.mDrawPath = constraint.motion.mDrawPath;
        this.mProgress = constraint.propertySet.mProgress;
        for (String str : constraint.mCustomConstraints.keySet()) {
            ConstraintAttribute constraintAttribute = constraint.mCustomConstraints.get(str);
            if (constraintAttribute.getType() != ConstraintAttribute.AttributeType.STRING_TYPE) {
                this.attributes.put(str, constraintAttribute);
            }
        }
    }

    public int compareTo(MotionPaths motionPaths) {
        return Float.compare(this.position, motionPaths.position);
    }

    public void different(MotionPaths motionPaths, boolean[] zArr, String[] strArr, boolean z) {
        zArr[0] = zArr[0] | diff(this.position, motionPaths.position);
        zArr[1] = zArr[1] | diff(this.f32x, motionPaths.f32x) | z;
        zArr[2] = z | diff(this.f33y, motionPaths.f33y) | zArr[2];
        zArr[3] = zArr[3] | diff(this.width, motionPaths.width);
        zArr[4] = diff(this.height, motionPaths.height) | zArr[4];
    }

    public void fillStandard(double[] dArr, int[] iArr) {
        float f = this.position;
        int i = 0;
        float f2 = this.f32x;
        float f3 = this.f33y;
        float f4 = this.width;
        float f5 = this.height;
        float f6 = this.mPathRotate;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < iArr.length) {
                int i4 = i3;
                if (iArr[i] < 6) {
                    dArr[i3] = new float[]{f, f2, f3, f4, f5, f6}[iArr[i]];
                    i4 = i3 + 1;
                }
                i++;
                i2 = i4;
            } else {
                return;
            }
        }
    }

    public void getBounds(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.width;
        float f2 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f3 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 3) {
                f = f3;
            } else if (i3 == 4) {
                f2 = f3;
            }
        }
        fArr[i] = f;
        fArr[i + 1] = f2;
    }

    public void getCenter(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f32x;
        float f2 = this.f33y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        fArr[i] = f + (f3 / 2.0f) + 0.0f;
        fArr[i + 1] = f2 + (f4 / 2.0f) + 0.0f;
    }

    public int getCustomData(String str, double[] dArr, int i) {
        float[] fArr;
        ConstraintAttribute constraintAttribute = this.attributes.get(str);
        if (constraintAttribute.noOfInterpValues() == 1) {
            dArr[i] = constraintAttribute.getValueToInterpolate();
            return 1;
        }
        int noOfInterpValues = constraintAttribute.noOfInterpValues();
        constraintAttribute.getValuesToInterpolate(new float[noOfInterpValues]);
        int i2 = 0;
        while (i2 < noOfInterpValues) {
            dArr[i] = fArr[i2];
            i2++;
            i++;
        }
        return noOfInterpValues;
    }

    public int getCustomDataCount(String str) {
        return this.attributes.get(str).noOfInterpValues();
    }

    public void getRect(int[] iArr, double[] dArr, float[] fArr, int i) {
        float f = this.f32x;
        float f2 = this.f33y;
        float f3 = this.width;
        float f4 = this.height;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            float f5 = (float) dArr[i2];
            int i3 = iArr[i2];
            if (i3 == 1) {
                f = f5;
            } else if (i3 == 2) {
                f2 = f5;
            } else if (i3 == 3) {
                f3 = f5;
            } else if (i3 == 4) {
                f4 = f5;
            }
        }
        float f6 = f3 + f;
        float f7 = f4 + f2;
        Float.isNaN(Float.NaN);
        Float.isNaN(Float.NaN);
        int i4 = i + 1;
        fArr[i] = f + 0.0f;
        int i5 = i4 + 1;
        fArr[i4] = f2 + 0.0f;
        int i6 = i5 + 1;
        fArr[i5] = f6 + 0.0f;
        int i7 = i6 + 1;
        fArr[i6] = f2 + 0.0f;
        int i8 = i7 + 1;
        fArr[i7] = f6 + 0.0f;
        int i9 = i8 + 1;
        fArr[i8] = f7 + 0.0f;
        fArr[i9] = f + 0.0f;
        fArr[i9 + 1] = f7 + 0.0f;
    }

    public boolean hasCustomData(String str) {
        return this.attributes.containsKey(str);
    }

    void initCartesian(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f;
        float f2;
        float f3 = keyPosition.mFramePosition / 100.0f;
        this.time = f3;
        this.mDrawPath = keyPosition.mDrawPath;
        float f4 = Float.isNaN(keyPosition.mPercentWidth) ? f3 : keyPosition.mPercentWidth;
        float f5 = Float.isNaN(keyPosition.mPercentHeight) ? f3 : keyPosition.mPercentHeight;
        float f6 = motionPaths2.width;
        float f7 = motionPaths.width;
        float f8 = motionPaths2.height;
        float f9 = motionPaths.height;
        this.position = this.time;
        float f10 = motionPaths.f32x;
        float f11 = f7 / 2.0f;
        float f12 = motionPaths.f33y;
        float f13 = f9 / 2.0f;
        float f14 = f6 / 2.0f;
        float f15 = f8 / 2.0f;
        float f16 = (motionPaths2.f32x + f14) - (f11 + f10);
        float f17 = (motionPaths2.f33y + f15) - (f12 + f13);
        float f18 = ((f6 - f7) * f4) / 2.0f;
        this.f32x = (int) ((f10 + (f16 * f3)) - f18);
        float f19 = ((f8 - f9) * f5) / 2.0f;
        this.f33y = (int) ((f12 + (f17 * f3)) - f19);
        this.width = (int) (f7 + f);
        this.height = (int) (f9 + f2);
        float f20 = Float.isNaN(keyPosition.mPercentX) ? f3 : keyPosition.mPercentX;
        float f21 = 0.0f;
        float f22 = Float.isNaN(keyPosition.mAltPercentY) ? 0.0f : keyPosition.mAltPercentY;
        if (!Float.isNaN(keyPosition.mPercentY)) {
            f3 = keyPosition.mPercentY;
        }
        if (!Float.isNaN(keyPosition.mAltPercentX)) {
            f21 = keyPosition.mAltPercentX;
        }
        this.mMode = 2;
        this.f32x = (int) (((motionPaths.f32x + (f20 * f16)) + (f21 * f17)) - f18);
        this.f33y = (int) (((motionPaths.f33y + (f16 * f22)) + (f17 * f3)) - f19);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initPath(KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5 = keyPosition.mFramePosition / 100.0f;
        this.time = f5;
        this.mDrawPath = keyPosition.mDrawPath;
        float f6 = Float.isNaN(keyPosition.mPercentWidth) ? f5 : keyPosition.mPercentWidth;
        float f7 = Float.isNaN(keyPosition.mPercentHeight) ? f5 : keyPosition.mPercentHeight;
        float f8 = motionPaths2.width;
        float f9 = motionPaths.width;
        float f10 = motionPaths2.height;
        float f11 = motionPaths.height;
        this.position = this.time;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            f5 = keyPosition.mPercentX;
        }
        float f12 = motionPaths.f32x;
        float f13 = motionPaths.width / 2.0f;
        float f14 = motionPaths.f33y;
        float f15 = motionPaths.height / 2.0f;
        float f16 = (motionPaths2.f32x + (motionPaths2.width / 2.0f)) - (f13 + f12);
        float f17 = (motionPaths2.f33y + (motionPaths2.height / 2.0f)) - (f15 + f14);
        float f18 = f16 * f5;
        float f19 = ((f8 - f9) * f6) / 2.0f;
        this.f32x = (int) ((f12 + f18) - f19);
        float f20 = f5 * f17;
        float f21 = ((f10 - f11) * f7) / 2.0f;
        this.f33y = (int) ((f14 + f20) - f21);
        this.width = (int) (f + f3);
        this.height = (int) (f2 + f4);
        float f22 = Float.isNaN(keyPosition.mPercentY) ? 0.0f : keyPosition.mPercentY;
        float f23 = -f17;
        this.mMode = 1;
        float f24 = (int) ((motionPaths.f32x + f18) - f19);
        this.f32x = f24;
        float f25 = (int) ((motionPaths.f33y + f20) - f21);
        this.f33y = f25;
        this.f32x = f24 + (f23 * f22);
        this.f33y = f25 + (f16 * f22);
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    void initScreen(int i, int i2, KeyPosition keyPosition, MotionPaths motionPaths, MotionPaths motionPaths2) {
        float f = keyPosition.mFramePosition / 100.0f;
        this.time = f;
        this.mDrawPath = keyPosition.mDrawPath;
        float f2 = Float.isNaN(keyPosition.mPercentWidth) ? f : keyPosition.mPercentWidth;
        float f3 = Float.isNaN(keyPosition.mPercentHeight) ? f : keyPosition.mPercentHeight;
        float f4 = motionPaths2.width;
        float f5 = motionPaths.width;
        float f6 = motionPaths2.height;
        float f7 = motionPaths.height;
        this.position = this.time;
        float f8 = motionPaths.f32x;
        float f9 = f5 / 2.0f;
        float f10 = motionPaths.f33y;
        float f11 = f7 / 2.0f;
        float f12 = motionPaths2.f32x;
        float f13 = f4 / 2.0f;
        float f14 = motionPaths2.f33y;
        float f15 = f6 / 2.0f;
        float f16 = (f4 - f5) * f2;
        this.f32x = (int) ((f8 + (((f12 + f13) - (f9 + f8)) * f)) - (f16 / 2.0f));
        float f17 = (f6 - f7) * f3;
        this.f33y = (int) ((f10 + (((f14 + f15) - (f10 + f11)) * f)) - (f17 / 2.0f));
        this.width = (int) (f5 + f16);
        this.height = (int) (f7 + f17);
        this.mMode = 3;
        if (!Float.isNaN(keyPosition.mPercentX)) {
            this.f32x = (int) (keyPosition.mPercentX * ((int) (i - this.width)));
        }
        if (!Float.isNaN(keyPosition.mPercentY)) {
            this.f33y = (int) (keyPosition.mPercentY * ((int) (i2 - this.height)));
        }
        this.mKeyFrameEasing = Easing.getInterpolator(keyPosition.mTransitionEasing);
        this.mPathMotionArc = keyPosition.mPathMotionArc;
    }

    public void setBounds(float f, float f2, float f3, float f4) {
        this.f32x = f;
        this.f33y = f2;
        this.width = f3;
        this.height = f4;
    }

    public void setDpDt(float f, float f2, float[] fArr, int[] iArr, double[] dArr, double[] dArr2) {
        float f3 = 0.0f;
        float f4 = 0.0f;
        float f5 = 0.0f;
        float f6 = 0.0f;
        for (int i = 0; i < iArr.length; i++) {
            float f7 = (float) dArr[i];
            double d = dArr2[i];
            int i2 = iArr[i];
            if (i2 == 1) {
                f3 = f7;
            } else if (i2 == 2) {
                f5 = f7;
            } else if (i2 == 3) {
                f4 = f7;
            } else if (i2 == 4) {
                f6 = f7;
            }
        }
        float f8 = f3 - ((0.0f * f4) / 2.0f);
        float f9 = f5 - ((0.0f * f6) / 2.0f);
        fArr[0] = (f8 * (1.0f - f)) + (((f4 * 1.0f) + f8) * f) + 0.0f;
        fArr[1] = (f9 * (1.0f - f2)) + (((f6 * 1.0f) + f9) * f2) + 0.0f;
    }

    /* JADX WARN: Type inference failed for: r0v95, types: [double] */
    /* JADX WARN: Type inference failed for: r0v97 */
    public void setView(View view, int[] iArr, double[] dArr, double[] dArr2, double[] dArr3) {
        float f = this.f32x;
        float f2 = this.f33y;
        float f3 = this.width;
        float f4 = this.height;
        if (iArr.length != 0 && this.mTempValue.length <= iArr[iArr.length - 1]) {
            int i = iArr[iArr.length - 1] + 1;
            this.mTempValue = new double[i];
            this.mTempDelta = new double[i];
        }
        Arrays.fill(this.mTempValue, Double.NaN);
        for (int i2 = 0; i2 < iArr.length; i2++) {
            this.mTempValue[iArr[i2]] = dArr[i2];
            this.mTempDelta[iArr[i2]] = dArr2[i2];
        }
        int i3 = 0;
        float f5 = Float.NaN;
        float f6 = 0.0f;
        float f7 = 0.0f;
        float f8 = 0.0f;
        float f9 = 0.0f;
        while (true) {
            double[] dArr4 = this.mTempValue;
            if (i3 >= dArr4.length) {
                break;
            }
            char c = 0;
            if (!Double.isNaN(dArr4[i3]) || (dArr3 != 0 && dArr3[i3] != 0.0d)) {
                if (dArr3 != 0) {
                    c = dArr3[i3];
                }
                if (!Double.isNaN(this.mTempValue[i3])) {
                    c = this.mTempValue[i3] + c;
                }
                float f10 = c;
                float f11 = (float) this.mTempDelta[i3];
                if (i3 == 1) {
                    f6 = f11;
                    f = f10;
                } else if (i3 == 2) {
                    f2 = f10;
                    f8 = f11;
                } else if (i3 == 3) {
                    f3 = f10;
                    f7 = f11;
                } else if (i3 == 4) {
                    f4 = f10;
                    f9 = f11;
                } else if (i3 == 5) {
                    f5 = f10;
                }
            }
            i3++;
        }
        if (!Float.isNaN(f5)) {
            float f12 = Float.NaN;
            if (Float.isNaN(Float.NaN)) {
                f12 = 0.0f;
            }
            view.setRotation((float) (f12 + f5 + Math.toDegrees(Math.atan2(f8 + (f9 / 2.0f), f6 + (f7 / 2.0f)))));
        } else if (!Float.isNaN(Float.NaN)) {
            view.setRotation(Float.NaN);
        }
        float f13 = f + 0.5f;
        int i4 = (int) f13;
        float f14 = f2 + 0.5f;
        int i5 = (int) f14;
        int i6 = (int) (f13 + f3);
        int i7 = (int) (f14 + f4);
        int i8 = i6 - i4;
        int i9 = i7 - i5;
        if ((i8 == view.getMeasuredWidth() && i9 == view.getMeasuredHeight()) ? false : true) {
            view.measure(View.MeasureSpec.makeMeasureSpec(i8, BasicMeasure.EXACTLY), View.MeasureSpec.makeMeasureSpec(i9, BasicMeasure.EXACTLY));
        }
        view.layout(i4, i5, i6, i7);
    }
}
