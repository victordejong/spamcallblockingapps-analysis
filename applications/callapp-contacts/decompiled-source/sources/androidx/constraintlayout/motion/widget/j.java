package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import androidx.constraintlayout.widget.e;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.HashMap;
import java.util.HashSet;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/j.class */
public class j extends b {
    private String g;
    private int h = -1;
    private float i = Float.NaN;
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
    private int u = 0;
    private float v = Float.NaN;
    private float w = BitmapDescriptorFactory.HUE_RED;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/j$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f1515a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1515a = sparseIntArray;
            sparseIntArray.append(e.b.KeyTimeCycle_android_alpha, 1);
            f1515a.append(e.b.KeyTimeCycle_android_elevation, 2);
            f1515a.append(e.b.KeyTimeCycle_android_rotation, 4);
            f1515a.append(e.b.KeyTimeCycle_android_rotationX, 5);
            f1515a.append(e.b.KeyTimeCycle_android_rotationY, 6);
            f1515a.append(e.b.KeyTimeCycle_android_scaleX, 7);
            f1515a.append(e.b.KeyTimeCycle_transitionPathRotate, 8);
            f1515a.append(e.b.KeyTimeCycle_transitionEasing, 9);
            f1515a.append(e.b.KeyTimeCycle_motionTarget, 10);
            f1515a.append(e.b.KeyTimeCycle_framePosition, 12);
            f1515a.append(e.b.KeyTimeCycle_curveFit, 13);
            f1515a.append(e.b.KeyTimeCycle_android_scaleY, 14);
            f1515a.append(e.b.KeyTimeCycle_android_translationX, 15);
            f1515a.append(e.b.KeyTimeCycle_android_translationY, 16);
            f1515a.append(e.b.KeyTimeCycle_android_translationZ, 17);
            f1515a.append(e.b.KeyTimeCycle_motionProgress, 18);
            f1515a.append(e.b.KeyTimeCycle_wavePeriod, 20);
            f1515a.append(e.b.KeyTimeCycle_waveOffset, 21);
            f1515a.append(e.b.KeyTimeCycle_waveShape, 19);
        }

        private a() {
        }

        public static void a(j jVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1515a.get(index)) {
                    case 1:
                        jVar.i = typedArray.getFloat(index, jVar.i);
                        break;
                    case 2:
                        jVar.j = typedArray.getDimension(index, jVar.j);
                        break;
                    case 3:
                    case 11:
                    default:
                        Log.e("KeyTimeCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1515a.get(index));
                        break;
                    case 4:
                        jVar.k = typedArray.getFloat(index, jVar.k);
                        break;
                    case 5:
                        jVar.l = typedArray.getFloat(index, jVar.l);
                        break;
                    case 6:
                        jVar.m = typedArray.getFloat(index, jVar.m);
                        break;
                    case 7:
                        jVar.o = typedArray.getFloat(index, jVar.o);
                        break;
                    case 8:
                        jVar.n = typedArray.getFloat(index, jVar.n);
                        break;
                    case 9:
                        jVar.g = typedArray.getString(index);
                        break;
                    case 10:
                        if (!MotionLayout.f1463a) {
                            if (typedArray.peekValue(index).type == 3) {
                                jVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                jVar.f1494c = typedArray.getResourceId(index, jVar.f1494c);
                                break;
                            }
                        } else {
                            jVar.f1494c = typedArray.getResourceId(index, jVar.f1494c);
                            if (jVar.f1494c == -1) {
                                jVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 12:
                        jVar.f1493b = typedArray.getInt(index, jVar.f1493b);
                        break;
                    case 13:
                        jVar.h = typedArray.getInteger(index, jVar.h);
                        break;
                    case 14:
                        jVar.p = typedArray.getFloat(index, jVar.p);
                        break;
                    case 15:
                        jVar.q = typedArray.getDimension(index, jVar.q);
                        break;
                    case 16:
                        jVar.r = typedArray.getDimension(index, jVar.r);
                        break;
                    case 17:
                        if (Build.VERSION.SDK_INT >= 21) {
                            jVar.s = typedArray.getDimension(index, jVar.s);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        jVar.t = typedArray.getFloat(index, jVar.t);
                        break;
                    case 19:
                        jVar.u = typedArray.getInt(index, jVar.u);
                        break;
                    case 20:
                        jVar.v = typedArray.getFloat(index, jVar.v);
                        break;
                    case 21:
                        if (typedArray.peekValue(index).type == 5) {
                            jVar.w = typedArray.getDimension(index, jVar.w);
                            break;
                        } else {
                            jVar.w = typedArray.getFloat(index, jVar.w);
                            break;
                        }
                }
            }
        }
    }

    public j() {
        this.e = 3;
        this.f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, e.b.KeyTimeCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashMap<String, q> hashMap) {
        throw new IllegalArgumentException(" KeyTimeCycles do not support SplineSet");
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.i)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.j)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.k)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.l)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.m)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("translationZ");
        }
        if (!Float.isNaN(this.n)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.t)) {
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
            if (!Float.isNaN(this.i)) {
                hashMap.put("alpha", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.j)) {
                hashMap.put("elevation", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.k)) {
                hashMap.put("rotation", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.l)) {
                hashMap.put("rotationX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.m)) {
                hashMap.put("rotationY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.q)) {
                hashMap.put("translationX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.r)) {
                hashMap.put("translationY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.s)) {
                hashMap.put("translationZ", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.n)) {
                hashMap.put("transitionPathRotate", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.o)) {
                hashMap.put("scaleX", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.o)) {
                hashMap.put("scaleY", Integer.valueOf(this.h));
            }
            if (!Float.isNaN(this.t)) {
                hashMap.put(EventConstants.PROGRESS, Integer.valueOf(this.h));
            }
            if (this.f.size() > 0) {
                for (String str : this.f.keySet()) {
                    hashMap.put("CUSTOM,".concat(String.valueOf(str)), Integer.valueOf(this.h));
                }
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0138, code lost:
        if (r0.equals("scaleY") == false) goto L_0x00e0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.r> r8) {
        /*
            Method dump skipped, instructions count: 1005
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.j.c(java.util.HashMap):void");
    }
}
