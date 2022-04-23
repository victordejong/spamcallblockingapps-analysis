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
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e.class */
public class e extends b {
    private String g = null;
    private int h = 0;
    private int i = -1;
    private float j = Float.NaN;
    private float k = BitmapDescriptorFactory.HUE_RED;
    private float l = Float.NaN;
    private int m = -1;
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
    private float x = Float.NaN;

    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/motion/widget/e$a.class */
    static final class a {

        /* renamed from: a  reason: collision with root package name */
        private static SparseIntArray f1498a;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1498a = sparseIntArray;
            sparseIntArray.append(e.b.KeyCycle_motionTarget, 1);
            f1498a.append(e.b.KeyCycle_framePosition, 2);
            f1498a.append(e.b.KeyCycle_transitionEasing, 3);
            f1498a.append(e.b.KeyCycle_curveFit, 4);
            f1498a.append(e.b.KeyCycle_waveShape, 5);
            f1498a.append(e.b.KeyCycle_wavePeriod, 6);
            f1498a.append(e.b.KeyCycle_waveOffset, 7);
            f1498a.append(e.b.KeyCycle_waveVariesBy, 8);
            f1498a.append(e.b.KeyCycle_android_alpha, 9);
            f1498a.append(e.b.KeyCycle_android_elevation, 10);
            f1498a.append(e.b.KeyCycle_android_rotation, 11);
            f1498a.append(e.b.KeyCycle_android_rotationX, 12);
            f1498a.append(e.b.KeyCycle_android_rotationY, 13);
            f1498a.append(e.b.KeyCycle_transitionPathRotate, 14);
            f1498a.append(e.b.KeyCycle_android_scaleX, 15);
            f1498a.append(e.b.KeyCycle_android_scaleY, 16);
            f1498a.append(e.b.KeyCycle_android_translationX, 17);
            f1498a.append(e.b.KeyCycle_android_translationY, 18);
            f1498a.append(e.b.KeyCycle_android_translationZ, 19);
            f1498a.append(e.b.KeyCycle_motionProgress, 20);
        }

        private a() {
        }

        static /* synthetic */ void a(e eVar, TypedArray typedArray) {
            int indexCount = typedArray.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = typedArray.getIndex(i);
                switch (f1498a.get(index)) {
                    case 1:
                        if (!MotionLayout.f1463a) {
                            if (typedArray.peekValue(index).type == 3) {
                                eVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                eVar.f1494c = typedArray.getResourceId(index, eVar.f1494c);
                                break;
                            }
                        } else {
                            eVar.f1494c = typedArray.getResourceId(index, eVar.f1494c);
                            if (eVar.f1494c == -1) {
                                eVar.f1495d = typedArray.getString(index);
                                break;
                            } else {
                                break;
                            }
                        }
                    case 2:
                        eVar.f1493b = typedArray.getInt(index, eVar.f1493b);
                        break;
                    case 3:
                        eVar.g = typedArray.getString(index);
                        break;
                    case 4:
                        eVar.h = typedArray.getInteger(index, eVar.h);
                        break;
                    case 5:
                        eVar.i = typedArray.getInt(index, eVar.i);
                        break;
                    case 6:
                        eVar.j = typedArray.getFloat(index, eVar.j);
                        break;
                    case 7:
                        if (typedArray.peekValue(index).type == 5) {
                            eVar.k = typedArray.getDimension(index, eVar.k);
                            break;
                        } else {
                            eVar.k = typedArray.getFloat(index, eVar.k);
                            break;
                        }
                    case 8:
                        eVar.m = typedArray.getInt(index, eVar.m);
                        break;
                    case 9:
                        eVar.n = typedArray.getFloat(index, eVar.n);
                        break;
                    case 10:
                        eVar.o = typedArray.getDimension(index, eVar.o);
                        break;
                    case 11:
                        eVar.p = typedArray.getFloat(index, eVar.p);
                        break;
                    case 12:
                        eVar.r = typedArray.getFloat(index, eVar.r);
                        break;
                    case 13:
                        eVar.s = typedArray.getFloat(index, eVar.s);
                        break;
                    case 14:
                        eVar.q = typedArray.getFloat(index, eVar.q);
                        break;
                    case 15:
                        eVar.t = typedArray.getFloat(index, eVar.t);
                        break;
                    case 16:
                        eVar.u = typedArray.getFloat(index, eVar.u);
                        break;
                    case 17:
                        eVar.v = typedArray.getDimension(index, eVar.v);
                        break;
                    case 18:
                        eVar.w = typedArray.getDimension(index, eVar.w);
                        break;
                    case 19:
                        if (Build.VERSION.SDK_INT >= 21) {
                            eVar.x = typedArray.getDimension(index, eVar.x);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        eVar.l = typedArray.getFloat(index, eVar.l);
                        break;
                    default:
                        Log.e("KeyCycle", "unused attribute 0x" + Integer.toHexString(index) + "   " + f1498a.get(index));
                        break;
                }
            }
        }
    }

    public e() {
        this.e = 4;
        this.f = new HashMap<>();
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(Context context, AttributeSet attributeSet) {
        a.a(this, context.obtainStyledAttributes(attributeSet, e.b.KeyCycle));
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashMap<String, q> hashMap) {
        androidx.constraintlayout.motion.widget.a.a("add " + hashMap.size() + " values");
        for (String str : hashMap.keySet()) {
            q qVar = hashMap.get(str);
            str.hashCode();
            char c2 = 65535;
            switch (str.hashCode()) {
                case -1249320806:
                    if (str.equals("rotationX")) {
                        c2 = 0;
                        break;
                    }
                    break;
                case -1249320805:
                    if (str.equals("rotationY")) {
                        c2 = 1;
                        break;
                    }
                    break;
                case -1225497657:
                    if (str.equals("translationX")) {
                        c2 = 2;
                        break;
                    }
                    break;
                case -1225497656:
                    if (str.equals("translationY")) {
                        c2 = 3;
                        break;
                    }
                    break;
                case -1225497655:
                    if (str.equals("translationZ")) {
                        c2 = 4;
                        break;
                    }
                    break;
                case -1001078227:
                    if (str.equals(EventConstants.PROGRESS)) {
                        c2 = 5;
                        break;
                    }
                    break;
                case -908189618:
                    if (str.equals("scaleX")) {
                        c2 = 6;
                        break;
                    }
                    break;
                case -908189617:
                    if (str.equals("scaleY")) {
                        c2 = 7;
                        break;
                    }
                    break;
                case -40300674:
                    if (str.equals("rotation")) {
                        c2 = '\b';
                        break;
                    }
                    break;
                case -4379043:
                    if (str.equals("elevation")) {
                        c2 = '\t';
                        break;
                    }
                    break;
                case 37232917:
                    if (str.equals("transitionPathRotate")) {
                        c2 = '\n';
                        break;
                    }
                    break;
                case 92909918:
                    if (str.equals("alpha")) {
                        c2 = 11;
                        break;
                    }
                    break;
                case 156108012:
                    if (str.equals("waveOffset")) {
                        c2 = '\f';
                        break;
                    }
                    break;
            }
            switch (c2) {
                case 0:
                    qVar.a(this.f1493b, this.r);
                    break;
                case 1:
                    qVar.a(this.f1493b, this.s);
                    break;
                case 2:
                    qVar.a(this.f1493b, this.v);
                    break;
                case 3:
                    qVar.a(this.f1493b, this.w);
                    break;
                case 4:
                    qVar.a(this.f1493b, this.x);
                    break;
                case 5:
                    qVar.a(this.f1493b, this.l);
                    break;
                case 6:
                    qVar.a(this.f1493b, this.t);
                    break;
                case 7:
                    qVar.a(this.f1493b, this.u);
                    break;
                case '\b':
                    qVar.a(this.f1493b, this.p);
                    break;
                case '\t':
                    qVar.a(this.f1493b, this.o);
                    break;
                case '\n':
                    qVar.a(this.f1493b, this.q);
                    break;
                case 11:
                    qVar.a(this.f1493b, this.n);
                    break;
                case '\f':
                    qVar.a(this.f1493b, this.k);
                    break;
            }
        }
    }

    @Override // androidx.constraintlayout.motion.widget.b
    public final void a(HashSet<String> hashSet) {
        if (!Float.isNaN(this.n)) {
            hashSet.add("alpha");
        }
        if (!Float.isNaN(this.o)) {
            hashSet.add("elevation");
        }
        if (!Float.isNaN(this.p)) {
            hashSet.add("rotation");
        }
        if (!Float.isNaN(this.r)) {
            hashSet.add("rotationX");
        }
        if (!Float.isNaN(this.s)) {
            hashSet.add("rotationY");
        }
        if (!Float.isNaN(this.t)) {
            hashSet.add("scaleX");
        }
        if (!Float.isNaN(this.u)) {
            hashSet.add("scaleY");
        }
        if (!Float.isNaN(this.q)) {
            hashSet.add("transitionPathRotate");
        }
        if (!Float.isNaN(this.v)) {
            hashSet.add("translationX");
        }
        if (!Float.isNaN(this.w)) {
            hashSet.add("translationY");
        }
        if (!Float.isNaN(this.x)) {
            hashSet.add("translationZ");
        }
        if (this.f.size() > 0) {
            for (String str : this.f.keySet()) {
                hashSet.add("CUSTOM,".concat(String.valueOf(str)));
            }
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0163, code lost:
        if (r0.equals("scaleY") == false) goto L_0x00f8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.util.HashMap<java.lang.String, androidx.constraintlayout.motion.widget.f> r10) {
        /*
            Method dump skipped, instructions count: 765
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.motion.widget.e.c(java.util.HashMap):void");
    }
}
