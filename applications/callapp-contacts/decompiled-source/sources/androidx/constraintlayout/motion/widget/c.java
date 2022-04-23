package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.e;
import java.util.HashMap;
import java.util.HashSet;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c.class */
public class c extends b {
    private String g;
    private int h = -1;
    private boolean i = false;
    private float j = Float.NaN;
    private float k = Float.NaN;
    private float l = Float.NaN;
    private float m = Float.NaN;
    private float n = Float.NaN;
    private float o = Float.NaN;
    private float p = Float.NaN;
    private float q = Float.NaN;
    private float r = Float.NaN;
    private float s = Float.NaN;
    private float t = Float.NaN;
    private float u = Float.NaN;
    private float v = Float.NaN;
    private float w = Float.NaN;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/c$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f1496a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1496a = sparseIntArray;
            sparseIntArray.append(e.b.KeyAttribute_android_alpha, 1);
            f1496a.append(e.b.KeyAttribute_android_elevation, 2);
            f1496a.append(e.b.KeyAttribute_android_rotation, 4);
            f1496a.append(e.b.KeyAttribute_android_rotationX, 5);
            f1496a.append(e.b.KeyAttribute_android_rotationY, 6);
            f1496a.append(e.b.KeyAttribute_android_transformPivotX, 19);
            f1496a.append(e.b.KeyAttribute_android_transformPivotY, 20);
            f1496a.append(e.b.KeyAttribute_android_scaleX, 7);
            f1496a.append(e.b.KeyAttribute_transitionPathRotate, 8);
            f1496a.append(e.b.KeyAttribute_transitionEasing, 9);
            f1496a.append(e.b.KeyAttribute_motionTarget, 10);
            f1496a.append(e.b.KeyAttribute_framePosition, 12);
            f1496a.append(e.b.KeyAttribute_curveFit, 13);
            f1496a.append(e.b.KeyAttribute_android_scaleY, 14);
            f1496a.append(e.b.KeyAttribute_android_translationX, 15);
            f1496a.append(e.b.KeyAttribute_android_translationY, 16);
            f1496a.append(e.b.KeyAttribute_android_translationZ, 17);
            f1496a.append(e.b.KeyAttribute_motionProgress, 18);
        }

        private a() {
        }

        public static void a(c cVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1496a.get(index)) {
                    case 1:
                        cVar.j = typedArray.getFloat(index, cVar.j);
                        break;
                    case 2:
                        cVar.k = typedArray.getDimension(index, cVar.k);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyAttribute", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1496a.get(index));
                        break;
                    case 4:
                        cVar.l = typedArray.getFloat(index, cVar.l);
                        break;
                    case 5:
                        cVar.m = typedArray.getFloat(index, cVar.m);
                        break;
                    case 6:
                        cVar.n = typedArray.getFloat(index, cVar.n);
                        break;
                    case 7:
                        cVar.r = typedArray.getFloat(index, cVar.r);
                        break;
                    case 8:
                        cVar.q = typedArray.getFloat(index, cVar.q);
                        break;
                    case 9:
                        cVar.g = typedArray.getString(index);
                        break;
                    case 10:
                        if (!MotionLayout.f1463a) {
                            if (typedArray.peekValue(index).type == 3) {
                                cVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                cVar.f1494c = typedArray.getResourceId(index, cVar.f1494c);
                                break;
                            }
                        } else {
                            cVar.f1494c = typedArray.getResourceId(index, cVar.f1494c);
                            if (cVar.f1494c == -1) {
                                cVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 12:
                        cVar.f1493b = typedArray.getInt(index, cVar.f1493b);
                        break;
                    case 13:
                        cVar.h = typedArray.getInteger(index, cVar.h);
                        break;
                    case 14:
                        cVar.s = typedArray.getFloat(index, cVar.s);
                        break;
                    case 15:
                        cVar.t = typedArray.getDimension(index, cVar.t);
                        break;
                    case 16:
                        cVar.u = typedArray.getDimension(index, cVar.u);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            cVar.v = typedArray.getDimension(index, cVar.v);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        cVar.w = typedArray.getFloat(index, cVar.w);
                        break;
                    case 19:
                        cVar.o = typedArray.getDimension(index, cVar.o);
                        break;
                    case 20:
                        cVar.p = typedArray.getDimension(index, cVar.p);
                        break;
                }
            }
        }
    }

    public c() {
        this.e = 1;
        this.f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, e.b.KeyAttribute));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0162, code lost:
        if (r0.equals("scaleY") == false) goto L_0x00e4;
     */
    @Override // androidx.constraintlayout.motion.widget.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.q> r5) {
        /*
            Method dump skipped, instructions count: 950
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.c.a(java.util.HashMap):void");
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.j)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.k)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("transformPivotX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("transformPivotY");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.v)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.w)) {
            hashSet.add(EventConstants.PROGRESS);
        }
        if (this.f.size() > 0) {
            for (String str : this.f.keySet()) {
                hashSet.add("CUSTOM,".concat(String.valueOf(str)));
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void b(HashMap<String, Integer> hashMap) {
        if (this.h != -1) {
            if (!Float.isNaN(this.j)) {
                hashMap.put("alpha", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.k)) {
                hashMap.put("elevation", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.l)) {
                hashMap.put("rotation", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.m)) {
                hashMap.put("rotationX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.n)) {
                hashMap.put("rotationY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.o)) {
                hashMap.put("transformPivotX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.p)) {
                hashMap.put("transformPivotY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.t)) {
                hashMap.put("translationX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.u)) {
                hashMap.put("translationY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.v)) {
                hashMap.put("translationZ", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.q)) {
                hashMap.put("transitionPathRotate", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.r)) {
                hashMap.put("scaleX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.s)) {
                hashMap.put("scaleY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.w)) {
                hashMap.put(EventConstants.PROGRESS, Integer.valueOf(this.h));
            }
            if (this.f.size() > 0) {
                for (String str : this.f.keySet()) {
                    hashMap.put("CUSTOM,".concat(String.valueOf(str)), Integer.valueOf(this.h));
                }
            }
        }
    }
}
