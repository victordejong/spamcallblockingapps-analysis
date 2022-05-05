package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.motion.utils.Easing;
import androidx.constraintlayout.widget.C0178R;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyPosition.class */
public class KeyPosition extends KeyPositionBase {

    /* renamed from: g */
    String f1731g = null;

    /* renamed from: h */
    int f1732h = Key.f1667e;

    /* renamed from: i */
    int f1733i = 0;

    /* renamed from: j */
    float f1734j = Float.NaN;

    /* renamed from: k */
    float f1735k = Float.NaN;

    /* renamed from: l */
    float f1736l = Float.NaN;

    /* renamed from: m */
    float f1737m = Float.NaN;

    /* renamed from: n */
    float f1738n = Float.NaN;

    /* renamed from: o */
    float f1739o = Float.NaN;

    /* renamed from: p */
    int f1740p = 0;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/KeyPosition$Loader.class */
    private static class Loader {

        /* renamed from: a */
        private static SparseIntArray f1741a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1741a = sparseIntArray;
            sparseIntArray.append(C0178R.styleable.KeyPosition_motionTarget, 1);
            f1741a.append(C0178R.styleable.KeyPosition_framePosition, 2);
            f1741a.append(C0178R.styleable.KeyPosition_transitionEasing, 3);
            f1741a.append(C0178R.styleable.KeyPosition_curveFit, 4);
            f1741a.append(C0178R.styleable.KeyPosition_drawPath, 5);
            f1741a.append(C0178R.styleable.KeyPosition_percentX, 6);
            f1741a.append(C0178R.styleable.KeyPosition_percentY, 7);
            f1741a.append(C0178R.styleable.KeyPosition_keyPositionType, 9);
            f1741a.append(C0178R.styleable.KeyPosition_sizePercent, 8);
            f1741a.append(C0178R.styleable.KeyPosition_percentWidth, 11);
            f1741a.append(C0178R.styleable.KeyPosition_percentHeight, 12);
            f1741a.append(C0178R.styleable.KeyPosition_pathMotionArc, 10);
        }

        private Loader() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: b */
        public static void m20846b(KeyPosition keyPosition, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1741a.get(index)) {
                    case 1:
                        if (!MotionLayout.f1830J0) {
                            if (typedArray.peekValue(index).type == 3) {
                                keyPosition.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                keyPosition.f1669b = typedArray.getResourceId(index, keyPosition.f1669b);
                                break;
                            }
                        } else {
                            int resourceId = typedArray.getResourceId(index, keyPosition.f1669b);
                            keyPosition.f1669b = resourceId;
                            if (resourceId == -1) {
                                keyPosition.f1670c = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 2:
                        keyPosition.f1668a = typedArray.getInt(index, keyPosition.f1668a);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            keyPosition.f1731g = typedArray.getString(index);
                            break;
                        } else {
                            keyPosition.f1731g = Easing.f1628c[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        keyPosition.f1742f = typedArray.getInteger(index, keyPosition.f1742f);
                        break;
                    case 5:
                        keyPosition.f1733i = typedArray.getInt(index, keyPosition.f1733i);
                        break;
                    case 6:
                        keyPosition.f1736l = typedArray.getFloat(index, keyPosition.f1736l);
                        break;
                    case 7:
                        keyPosition.f1737m = typedArray.getFloat(index, keyPosition.f1737m);
                        break;
                    case 8:
                        float f = typedArray.getFloat(index, keyPosition.f1735k);
                        keyPosition.f1734j = f;
                        keyPosition.f1735k = f;
                        break;
                    case 9:
                        keyPosition.f1740p = typedArray.getInt(index, keyPosition.f1740p);
                        break;
                    case 10:
                        keyPosition.f1732h = typedArray.getInt(index, keyPosition.f1732h);
                        break;
                    case 11:
                        keyPosition.f1734j = typedArray.getFloat(index, keyPosition.f1734j);
                        break;
                    case 12:
                        keyPosition.f1735k = typedArray.getFloat(index, keyPosition.f1735k);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1741a.get(index));
                        break;
                }
            }
            if (keyPosition.f1668a == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: a */
    public void mo20809a(HashMap<String, SplineSet> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.Key
    /* renamed from: c */
    public void mo20807c(Context context, AttributeSet attributeSet) {
        Loader.m20846b(this, context.obtainStyledAttributes(attributeSet, C0178R.styleable.KeyPosition));
    }
}
