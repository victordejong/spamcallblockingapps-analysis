package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.C0523e;
import java.util.HashMap;
import p020b.p037f.p038a.p039a.C1508c;
/* renamed from: androidx.constraintlayout.motion.widget.i */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/i.class */
public class C0404i extends AbstractC0406j {

    /* renamed from: h */
    String f1748h = null;

    /* renamed from: i */
    int f1749i = AbstractC0380c.f1675a;

    /* renamed from: j */
    int f1750j = 0;

    /* renamed from: k */
    float f1751k = Float.NaN;

    /* renamed from: l */
    float f1752l = Float.NaN;

    /* renamed from: m */
    float f1753m = Float.NaN;

    /* renamed from: n */
    float f1754n = Float.NaN;

    /* renamed from: o */
    float f1755o = Float.NaN;

    /* renamed from: p */
    float f1756p = Float.NaN;

    /* renamed from: q */
    int f1757q = 0;

    /* renamed from: r */
    private float f1758r = Float.NaN;

    /* renamed from: s */
    private float f1759s = Float.NaN;

    /* renamed from: androidx.constraintlayout.motion.widget.i$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/i$a.class */
    private static class C0405a {

        /* renamed from: a */
        private static SparseIntArray f1760a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1760a = sparseIntArray;
            sparseIntArray.append(C0523e.KeyPosition_motionTarget, 1);
            f1760a.append(C0523e.KeyPosition_framePosition, 2);
            f1760a.append(C0523e.KeyPosition_transitionEasing, 3);
            f1760a.append(C0523e.KeyPosition_curveFit, 4);
            f1760a.append(C0523e.KeyPosition_drawPath, 5);
            f1760a.append(C0523e.KeyPosition_percentX, 6);
            f1760a.append(C0523e.KeyPosition_percentY, 7);
            f1760a.append(C0523e.KeyPosition_keyPositionType, 9);
            f1760a.append(C0523e.KeyPosition_sizePercent, 8);
            f1760a.append(C0523e.KeyPosition_percentWidth, 11);
            f1760a.append(C0523e.KeyPosition_percentHeight, 12);
            f1760a.append(C0523e.KeyPosition_pathMotionArc, 10);
        }

        /* renamed from: b */
        public static void m34396b(C0404i c0404i, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1760a.get(index)) {
                    case 1:
                        if (MotionLayout.f1551A) {
                            int resourceId = typedArray.getResourceId(index, c0404i.f1677c);
                            c0404i.f1677c = resourceId;
                            if (resourceId == -1) {
                                c0404i.f1678d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        } else if (typedArray.peekValue(index).type == 3) {
                            c0404i.f1678d = typedArray.getString(index);
                            break;
                        } else {
                            c0404i.f1677c = typedArray.getResourceId(index, c0404i.f1677c);
                            break;
                        }
                    case 2:
                        c0404i.f1676b = typedArray.getInt(index, c0404i.f1676b);
                        break;
                    case 3:
                        if (typedArray.peekValue(index).type == 3) {
                            c0404i.f1748h = typedArray.getString(index);
                            break;
                        } else {
                            c0404i.f1748h = C1508c.f6009b[typedArray.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        c0404i.f1761g = typedArray.getInteger(index, c0404i.f1761g);
                        break;
                    case 5:
                        c0404i.f1750j = typedArray.getInt(index, c0404i.f1750j);
                        break;
                    case 6:
                        c0404i.f1753m = typedArray.getFloat(index, c0404i.f1753m);
                        break;
                    case 7:
                        c0404i.f1754n = typedArray.getFloat(index, c0404i.f1754n);
                        break;
                    case 8:
                        float f = typedArray.getFloat(index, c0404i.f1752l);
                        c0404i.f1751k = f;
                        c0404i.f1752l = f;
                        break;
                    case 9:
                        c0404i.f1757q = typedArray.getInt(index, c0404i.f1757q);
                        break;
                    case 10:
                        c0404i.f1749i = typedArray.getInt(index, c0404i.f1749i);
                        break;
                    case 11:
                        c0404i.f1751k = typedArray.getFloat(index, c0404i.f1751k);
                        break;
                    case 12:
                        c0404i.f1752l = typedArray.getFloat(index, c0404i.f1752l);
                        break;
                    default:
                        Log.e("KeyPosition", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1760a.get(index));
                        break;
                }
            }
            if (c0404i.f1676b == -1) {
                Log.e("KeyPosition", "no frame position");
            }
        }
    }

    public C0404i() {
        this.f1679e = 2;
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: a */
    public void mo34359a(HashMap<String, AbstractC0419r> hashMap) {
    }

    @Override // androidx.constraintlayout.motion.widget.AbstractC0380c
    /* renamed from: c */
    public void mo34357c(Context context, AttributeSet attributeSet) {
        C0405a.m34396b(this, context.obtainStyledAttributes(attributeSet, C0523e.KeyPosition));
    }
}
