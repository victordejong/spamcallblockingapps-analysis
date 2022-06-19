package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.common.api.Api;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p015b0.C0713a;
import p104g6.C2906b;
import p237t.C4344d;
import p237t.C4350g;
import p258v.AbstractC4569g;
import p258v.C4564c;
import p258v.C4566d;
import p258v.C4567e;
import p258v.C4568f;
import p258v.C4570h;
import p258v.C4571i;
import p258v.C4572j;
import p269w.C4694b;
import p291y.AbstractC4950c;
import p291y.AbstractC4953f;
import p291y.C4947b;
import p291y.C4952e;
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout.class */
public class ConstraintLayout extends ViewGroup {

    /* renamed from: r */
    public static C4952e f1182r;

    /* renamed from: a */
    public SparseArray<View> f1183a = new SparseArray<>();

    /* renamed from: b */
    public ArrayList<AbstractC0308a> f1184b = new ArrayList<>(4);

    /* renamed from: c */
    public C4567e f1185c = new C4567e();

    /* renamed from: d */
    public int f1186d = 0;

    /* renamed from: e */
    public int f1187e = 0;

    /* renamed from: f */
    public int f1188f = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: g */
    public int f1189g = Api.BaseClientBuilder.API_PRIORITY_OTHER;

    /* renamed from: h */
    public boolean f1190h = true;

    /* renamed from: i */
    public int f1191i = 257;

    /* renamed from: j */
    public C0309b f1192j = null;

    /* renamed from: k */
    public C4947b f1193k = null;

    /* renamed from: l */
    public int f1194l = -1;

    /* renamed from: m */
    public HashMap<String, Integer> f1195m = new HashMap<>();

    /* renamed from: n */
    public SparseArray<C4566d> f1196n = new SparseArray<>();

    /* renamed from: o */
    public C0307b f1197o = new C0307b(this);

    /* renamed from: p */
    public int f1198p = 0;

    /* renamed from: q */
    public int f1199q = 0;

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a.class */
    public static class C0305a extends ViewGroup.MarginLayoutParams {

        /* renamed from: A */
        public int f1200A;

        /* renamed from: B */
        public int f1201B;

        /* renamed from: C */
        public int f1202C;

        /* renamed from: D */
        public int f1203D;

        /* renamed from: E */
        public float f1204E;

        /* renamed from: F */
        public float f1205F;

        /* renamed from: G */
        public String f1206G;

        /* renamed from: H */
        public float f1207H;

        /* renamed from: I */
        public float f1208I;

        /* renamed from: J */
        public int f1209J;

        /* renamed from: K */
        public int f1210K;

        /* renamed from: L */
        public int f1211L;

        /* renamed from: M */
        public int f1212M;

        /* renamed from: N */
        public int f1213N;

        /* renamed from: O */
        public int f1214O;

        /* renamed from: P */
        public int f1215P;

        /* renamed from: Q */
        public int f1216Q;

        /* renamed from: R */
        public float f1217R;

        /* renamed from: S */
        public float f1218S;

        /* renamed from: T */
        public int f1219T;

        /* renamed from: U */
        public int f1220U;

        /* renamed from: V */
        public int f1221V;

        /* renamed from: W */
        public boolean f1222W;

        /* renamed from: X */
        public boolean f1223X;

        /* renamed from: Y */
        public String f1224Y;

        /* renamed from: Z */
        public int f1225Z;

        /* renamed from: a */
        public int f1226a;

        /* renamed from: a0 */
        public boolean f1227a0;

        /* renamed from: b */
        public int f1228b;

        /* renamed from: b0 */
        public boolean f1229b0;

        /* renamed from: c */
        public float f1230c;

        /* renamed from: c0 */
        public boolean f1231c0;

        /* renamed from: d */
        public boolean f1232d;

        /* renamed from: d0 */
        public boolean f1233d0;

        /* renamed from: e */
        public int f1234e;

        /* renamed from: e0 */
        public boolean f1235e0;

        /* renamed from: f */
        public int f1236f;

        /* renamed from: f0 */
        public boolean f1237f0;

        /* renamed from: g */
        public int f1238g;

        /* renamed from: g0 */
        public int f1239g0;

        /* renamed from: h */
        public int f1240h;

        /* renamed from: h0 */
        public int f1241h0;

        /* renamed from: i */
        public int f1242i;

        /* renamed from: i0 */
        public int f1243i0;

        /* renamed from: j */
        public int f1244j;

        /* renamed from: j0 */
        public int f1245j0;

        /* renamed from: k */
        public int f1246k;

        /* renamed from: k0 */
        public int f1247k0;

        /* renamed from: l */
        public int f1248l;

        /* renamed from: l0 */
        public int f1249l0;

        /* renamed from: m */
        public int f1250m;

        /* renamed from: m0 */
        public float f1251m0;

        /* renamed from: n */
        public int f1252n;

        /* renamed from: n0 */
        public int f1253n0;

        /* renamed from: o */
        public int f1254o;

        /* renamed from: o0 */
        public int f1255o0;

        /* renamed from: p */
        public int f1256p;

        /* renamed from: p0 */
        public float f1257p0;

        /* renamed from: q */
        public int f1258q;

        /* renamed from: q0 */
        public C4566d f1259q0;

        /* renamed from: r */
        public float f1260r;

        /* renamed from: s */
        public int f1261s;

        /* renamed from: t */
        public int f1262t;

        /* renamed from: u */
        public int f1263u;

        /* renamed from: v */
        public int f1264v;

        /* renamed from: w */
        public int f1265w;

        /* renamed from: x */
        public int f1266x;

        /* renamed from: y */
        public int f1267y;

        /* renamed from: z */
        public int f1268z;

        /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$a$a.class */
        public static class C0306a {

            /* renamed from: a */
            public static final SparseIntArray f1269a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1269a = sparseIntArray;
                sparseIntArray.append(98, 64);
                sparseIntArray.append(75, 65);
                sparseIntArray.append(84, 8);
                sparseIntArray.append(85, 9);
                sparseIntArray.append(87, 10);
                sparseIntArray.append(88, 11);
                sparseIntArray.append(94, 12);
                sparseIntArray.append(93, 13);
                sparseIntArray.append(65, 14);
                sparseIntArray.append(64, 15);
                sparseIntArray.append(60, 16);
                sparseIntArray.append(62, 52);
                sparseIntArray.append(61, 53);
                sparseIntArray.append(66, 2);
                sparseIntArray.append(68, 3);
                sparseIntArray.append(67, 4);
                sparseIntArray.append(103, 49);
                sparseIntArray.append(104, 50);
                sparseIntArray.append(72, 5);
                sparseIntArray.append(73, 6);
                sparseIntArray.append(74, 7);
                sparseIntArray.append(55, 67);
                sparseIntArray.append(0, 1);
                sparseIntArray.append(89, 17);
                sparseIntArray.append(90, 18);
                sparseIntArray.append(71, 19);
                sparseIntArray.append(70, 20);
                sparseIntArray.append(108, 21);
                sparseIntArray.append(111, 22);
                sparseIntArray.append(109, 23);
                sparseIntArray.append(106, 24);
                sparseIntArray.append(110, 25);
                sparseIntArray.append(107, 26);
                sparseIntArray.append(105, 55);
                sparseIntArray.append(C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle, 54);
                sparseIntArray.append(80, 29);
                sparseIntArray.append(95, 30);
                sparseIntArray.append(69, 44);
                sparseIntArray.append(82, 45);
                sparseIntArray.append(97, 46);
                sparseIntArray.append(81, 47);
                sparseIntArray.append(96, 48);
                sparseIntArray.append(58, 27);
                sparseIntArray.append(57, 28);
                sparseIntArray.append(99, 31);
                sparseIntArray.append(76, 32);
                sparseIntArray.append(101, 33);
                sparseIntArray.append(100, 34);
                sparseIntArray.append(102, 35);
                sparseIntArray.append(78, 36);
                sparseIntArray.append(77, 37);
                sparseIntArray.append(79, 38);
                sparseIntArray.append(83, 39);
                sparseIntArray.append(92, 40);
                sparseIntArray.append(86, 41);
                sparseIntArray.append(63, 42);
                sparseIntArray.append(59, 43);
                sparseIntArray.append(91, 51);
                sparseIntArray.append(C3681R.styleable.AppCompatTheme_tooltipForegroundColor, 66);
            }
        }

        public C0305a(int i, int i2) {
            super(i, i2);
            this.f1226a = -1;
            this.f1228b = -1;
            this.f1230c = -1.0f;
            this.f1232d = true;
            this.f1234e = -1;
            this.f1236f = -1;
            this.f1238g = -1;
            this.f1240h = -1;
            this.f1242i = -1;
            this.f1244j = -1;
            this.f1246k = -1;
            this.f1248l = -1;
            this.f1250m = -1;
            this.f1252n = -1;
            this.f1254o = -1;
            this.f1256p = -1;
            this.f1258q = 0;
            this.f1260r = 0.0f;
            this.f1261s = -1;
            this.f1262t = -1;
            this.f1263u = -1;
            this.f1264v = -1;
            this.f1265w = Integer.MIN_VALUE;
            this.f1266x = Integer.MIN_VALUE;
            this.f1267y = Integer.MIN_VALUE;
            this.f1268z = Integer.MIN_VALUE;
            this.f1200A = Integer.MIN_VALUE;
            this.f1201B = Integer.MIN_VALUE;
            this.f1202C = Integer.MIN_VALUE;
            this.f1203D = 0;
            this.f1204E = 0.5f;
            this.f1205F = 0.5f;
            this.f1206G = null;
            this.f1207H = -1.0f;
            this.f1208I = -1.0f;
            this.f1209J = 0;
            this.f1210K = 0;
            this.f1211L = 0;
            this.f1212M = 0;
            this.f1213N = 0;
            this.f1214O = 0;
            this.f1215P = 0;
            this.f1216Q = 0;
            this.f1217R = 1.0f;
            this.f1218S = 1.0f;
            this.f1219T = -1;
            this.f1220U = -1;
            this.f1221V = -1;
            this.f1222W = false;
            this.f1223X = false;
            this.f1224Y = null;
            this.f1225Z = 0;
            this.f1227a0 = true;
            this.f1229b0 = true;
            this.f1231c0 = false;
            this.f1233d0 = false;
            this.f1235e0 = false;
            this.f1237f0 = false;
            this.f1239g0 = -1;
            this.f1241h0 = -1;
            this.f1243i0 = -1;
            this.f1245j0 = -1;
            this.f1247k0 = Integer.MIN_VALUE;
            this.f1249l0 = Integer.MIN_VALUE;
            this.f1251m0 = 0.5f;
            this.f1259q0 = new C4566d();
        }

        public C0305a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1226a = -1;
            this.f1228b = -1;
            this.f1230c = -1.0f;
            this.f1232d = true;
            this.f1234e = -1;
            this.f1236f = -1;
            this.f1238g = -1;
            this.f1240h = -1;
            this.f1242i = -1;
            this.f1244j = -1;
            this.f1246k = -1;
            this.f1248l = -1;
            this.f1250m = -1;
            this.f1252n = -1;
            this.f1254o = -1;
            this.f1256p = -1;
            this.f1258q = 0;
            this.f1260r = 0.0f;
            this.f1261s = -1;
            this.f1262t = -1;
            this.f1263u = -1;
            this.f1264v = -1;
            this.f1265w = Integer.MIN_VALUE;
            this.f1266x = Integer.MIN_VALUE;
            this.f1267y = Integer.MIN_VALUE;
            this.f1268z = Integer.MIN_VALUE;
            this.f1200A = Integer.MIN_VALUE;
            this.f1201B = Integer.MIN_VALUE;
            this.f1202C = Integer.MIN_VALUE;
            this.f1203D = 0;
            this.f1204E = 0.5f;
            this.f1205F = 0.5f;
            this.f1206G = null;
            this.f1207H = -1.0f;
            this.f1208I = -1.0f;
            this.f1209J = 0;
            this.f1210K = 0;
            this.f1211L = 0;
            this.f1212M = 0;
            this.f1213N = 0;
            this.f1214O = 0;
            this.f1215P = 0;
            this.f1216Q = 0;
            this.f1217R = 1.0f;
            this.f1218S = 1.0f;
            this.f1219T = -1;
            this.f1220U = -1;
            this.f1221V = -1;
            this.f1222W = false;
            this.f1223X = false;
            this.f1224Y = null;
            this.f1225Z = 0;
            this.f1227a0 = true;
            this.f1229b0 = true;
            this.f1231c0 = false;
            this.f1233d0 = false;
            this.f1235e0 = false;
            this.f1237f0 = false;
            this.f1239g0 = -1;
            this.f1241h0 = -1;
            this.f1243i0 = -1;
            this.f1245j0 = -1;
            this.f1247k0 = Integer.MIN_VALUE;
            this.f1249l0 = Integer.MIN_VALUE;
            this.f1251m0 = 0.5f;
            this.f1259q0 = new C4566d();
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2754f);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = C0306a.f1269a.get(index);
                switch (i2) {
                    case 1:
                        this.f1221V = obtainStyledAttributes.getInt(index, this.f1221V);
                        break;
                    case 2:
                        int resourceId = obtainStyledAttributes.getResourceId(index, this.f1256p);
                        this.f1256p = resourceId;
                        if (resourceId == -1) {
                            this.f1256p = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        this.f1258q = obtainStyledAttributes.getDimensionPixelSize(index, this.f1258q);
                        break;
                    case 4:
                        float f = obtainStyledAttributes.getFloat(index, this.f1260r) % 360.0f;
                        this.f1260r = f;
                        if (f < 0.0f) {
                            this.f1260r = (360.0f - f) % 360.0f;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        this.f1226a = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1226a);
                        break;
                    case 6:
                        this.f1228b = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1228b);
                        break;
                    case 7:
                        this.f1230c = obtainStyledAttributes.getFloat(index, this.f1230c);
                        break;
                    case 8:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, this.f1234e);
                        this.f1234e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1234e = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, this.f1236f);
                        this.f1236f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1236f = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, this.f1238g);
                        this.f1238g = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1238g = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, this.f1240h);
                        this.f1240h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1240h = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, this.f1242i);
                        this.f1242i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1242i = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, this.f1244j);
                        this.f1244j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1244j = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, this.f1246k);
                        this.f1246k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1246k = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, this.f1248l);
                        this.f1248l = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1248l = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, this.f1250m);
                        this.f1250m = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1250m = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, this.f1261s);
                        this.f1261s = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1261s = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, this.f1262t);
                        this.f1262t = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1262t = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 19:
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, this.f1263u);
                        this.f1263u = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1263u = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 20:
                        int resourceId14 = obtainStyledAttributes.getResourceId(index, this.f1264v);
                        this.f1264v = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1264v = obtainStyledAttributes.getInt(index, -1);
                            break;
                        } else {
                            break;
                        }
                    case 21:
                        this.f1265w = obtainStyledAttributes.getDimensionPixelSize(index, this.f1265w);
                        break;
                    case 22:
                        this.f1266x = obtainStyledAttributes.getDimensionPixelSize(index, this.f1266x);
                        break;
                    case 23:
                        this.f1267y = obtainStyledAttributes.getDimensionPixelSize(index, this.f1267y);
                        break;
                    case 24:
                        this.f1268z = obtainStyledAttributes.getDimensionPixelSize(index, this.f1268z);
                        break;
                    case 25:
                        this.f1200A = obtainStyledAttributes.getDimensionPixelSize(index, this.f1200A);
                        break;
                    case 26:
                        this.f1201B = obtainStyledAttributes.getDimensionPixelSize(index, this.f1201B);
                        break;
                    case 27:
                        this.f1222W = obtainStyledAttributes.getBoolean(index, this.f1222W);
                        break;
                    case 28:
                        this.f1223X = obtainStyledAttributes.getBoolean(index, this.f1223X);
                        break;
                    case 29:
                        this.f1204E = obtainStyledAttributes.getFloat(index, this.f1204E);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                        this.f1205F = obtainStyledAttributes.getFloat(index, this.f1205F);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        this.f1211L = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                        this.f1212M = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        try {
                            this.f1213N = obtainStyledAttributes.getDimensionPixelSize(index, this.f1213N);
                            break;
                        } catch (Exception e) {
                            if (obtainStyledAttributes.getInt(index, this.f1213N) == -2) {
                                this.f1213N = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        try {
                            this.f1215P = obtainStyledAttributes.getDimensionPixelSize(index, this.f1215P);
                            break;
                        } catch (Exception e2) {
                            if (obtainStyledAttributes.getInt(index, this.f1215P) == -2) {
                                this.f1215P = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        this.f1217R = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f1217R));
                        this.f1211L = 2;
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        try {
                            this.f1214O = obtainStyledAttributes.getDimensionPixelSize(index, this.f1214O);
                            break;
                        } catch (Exception e3) {
                            if (obtainStyledAttributes.getInt(index, this.f1214O) == -2) {
                                this.f1214O = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        try {
                            this.f1216Q = obtainStyledAttributes.getDimensionPixelSize(index, this.f1216Q);
                            break;
                        } catch (Exception e4) {
                            if (obtainStyledAttributes.getInt(index, this.f1216Q) == -2) {
                                this.f1216Q = -2;
                                break;
                            } else {
                                break;
                            }
                        }
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        this.f1218S = Math.max(0.0f, obtainStyledAttributes.getFloat(index, this.f1218S));
                        this.f1212M = 2;
                        break;
                    default:
                        switch (i2) {
                            case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                                C0309b.m8352h(this, obtainStyledAttributes.getString(index));
                                continue;
                            case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                                this.f1207H = obtainStyledAttributes.getFloat(index, this.f1207H);
                                continue;
                            case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                                this.f1208I = obtainStyledAttributes.getFloat(index, this.f1208I);
                                continue;
                            case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                                this.f1209J = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                this.f1210K = obtainStyledAttributes.getInt(index, 0);
                                continue;
                            case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                this.f1219T = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1219T);
                                continue;
                            case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                                this.f1220U = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1220U);
                                continue;
                            case 51:
                                this.f1224Y = obtainStyledAttributes.getString(index);
                                continue;
                            case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                int resourceId15 = obtainStyledAttributes.getResourceId(index, this.f1252n);
                                this.f1252n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f1252n = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    continue;
                                }
                            case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                int resourceId16 = obtainStyledAttributes.getResourceId(index, this.f1254o);
                                this.f1254o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f1254o = obtainStyledAttributes.getInt(index, -1);
                                    break;
                                } else {
                                    continue;
                                }
                            case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                this.f1203D = obtainStyledAttributes.getDimensionPixelSize(index, this.f1203D);
                                continue;
                            case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                this.f1202C = obtainStyledAttributes.getDimensionPixelSize(index, this.f1202C);
                                continue;
                            default:
                                switch (i2) {
                                    case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                                        C0309b.m8353g(this, obtainStyledAttributes, index, 0);
                                        continue;
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                                        C0309b.m8353g(this, obtainStyledAttributes, index, 1);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                                        this.f1225Z = obtainStyledAttributes.getInt(index, this.f1225Z);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                                        this.f1232d = obtainStyledAttributes.getBoolean(index, this.f1232d);
                                        continue;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
            m8369a();
        }

        public C0305a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1226a = -1;
            this.f1228b = -1;
            this.f1230c = -1.0f;
            this.f1232d = true;
            this.f1234e = -1;
            this.f1236f = -1;
            this.f1238g = -1;
            this.f1240h = -1;
            this.f1242i = -1;
            this.f1244j = -1;
            this.f1246k = -1;
            this.f1248l = -1;
            this.f1250m = -1;
            this.f1252n = -1;
            this.f1254o = -1;
            this.f1256p = -1;
            this.f1258q = 0;
            this.f1260r = 0.0f;
            this.f1261s = -1;
            this.f1262t = -1;
            this.f1263u = -1;
            this.f1264v = -1;
            this.f1265w = Integer.MIN_VALUE;
            this.f1266x = Integer.MIN_VALUE;
            this.f1267y = Integer.MIN_VALUE;
            this.f1268z = Integer.MIN_VALUE;
            this.f1200A = Integer.MIN_VALUE;
            this.f1201B = Integer.MIN_VALUE;
            this.f1202C = Integer.MIN_VALUE;
            this.f1203D = 0;
            this.f1204E = 0.5f;
            this.f1205F = 0.5f;
            this.f1206G = null;
            this.f1207H = -1.0f;
            this.f1208I = -1.0f;
            this.f1209J = 0;
            this.f1210K = 0;
            this.f1211L = 0;
            this.f1212M = 0;
            this.f1213N = 0;
            this.f1214O = 0;
            this.f1215P = 0;
            this.f1216Q = 0;
            this.f1217R = 1.0f;
            this.f1218S = 1.0f;
            this.f1219T = -1;
            this.f1220U = -1;
            this.f1221V = -1;
            this.f1222W = false;
            this.f1223X = false;
            this.f1224Y = null;
            this.f1225Z = 0;
            this.f1227a0 = true;
            this.f1229b0 = true;
            this.f1231c0 = false;
            this.f1233d0 = false;
            this.f1235e0 = false;
            this.f1237f0 = false;
            this.f1239g0 = -1;
            this.f1241h0 = -1;
            this.f1243i0 = -1;
            this.f1245j0 = -1;
            this.f1247k0 = Integer.MIN_VALUE;
            this.f1249l0 = Integer.MIN_VALUE;
            this.f1251m0 = 0.5f;
            this.f1259q0 = new C4566d();
        }

        /* renamed from: a */
        public void m8369a() {
            this.f1233d0 = false;
            this.f1227a0 = true;
            this.f1229b0 = true;
            int i = ((ViewGroup.MarginLayoutParams) this).width;
            if (i == -2 && this.f1222W) {
                this.f1227a0 = false;
                if (this.f1211L == 0) {
                    this.f1211L = 1;
                }
            }
            int i2 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i2 == -2 && this.f1223X) {
                this.f1229b0 = false;
                if (this.f1212M == 0) {
                    this.f1212M = 1;
                }
            }
            if (i == 0 || i == -1) {
                this.f1227a0 = false;
                if (i == 0 && this.f1211L == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.f1222W = true;
                }
            }
            if (i2 == 0 || i2 == -1) {
                this.f1229b0 = false;
                if (i2 == 0 && this.f1212M == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.f1223X = true;
                }
            }
            if (this.f1230c == -1.0f && this.f1226a == -1 && this.f1228b == -1) {
                return;
            }
            this.f1233d0 = true;
            this.f1227a0 = true;
            this.f1229b0 = true;
            if (!(this.f1259q0 instanceof C4568f)) {
                this.f1259q0 = new C4568f();
            }
            ((C4568f) this.f1259q0).m772W(this.f1221V);
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x00bd  */
        /* JADX WARN: Removed duplicated region for block: B:20:0x00d1  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x00e6  */
        /* JADX WARN: Removed duplicated region for block: B:26:0x00f9  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0103  */
        /* JADX WARN: Removed duplicated region for block: B:38:0x0129  */
        /* JADX WARN: Removed duplicated region for block: B:39:0x013e  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @android.annotation.TargetApi(17)
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void resolveLayoutDirection(int r5) {
            /*
                Method dump skipped, instructions count: 625
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.C0305a.resolveLayoutDirection(int):void");
        }
    }

    /* renamed from: androidx.constraintlayout.widget.ConstraintLayout$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/ConstraintLayout$b.class */
    public class C0307b implements C4694b.AbstractC4696b {

        /* renamed from: a */
        public ConstraintLayout f1270a;

        /* renamed from: b */
        public int f1271b;

        /* renamed from: c */
        public int f1272c;

        /* renamed from: d */
        public int f1273d;

        /* renamed from: e */
        public int f1274e;

        /* renamed from: f */
        public int f1275f;

        /* renamed from: g */
        public int f1276g;

        public C0307b(ConstraintLayout constraintLayout) {
            ConstraintLayout.this = r4;
            this.f1270a = constraintLayout;
        }

        /* renamed from: a */
        public final boolean m8368a(int i, int i2, int i3) {
            if (i == i2) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i);
            View.MeasureSpec.getSize(i);
            int mode2 = View.MeasureSpec.getMode(i2);
            int size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                return false;
            }
            return (mode == Integer.MIN_VALUE || mode == 0) && i3 == size;
        }

        @SuppressLint({"WrongCall"})
        /* renamed from: b */
        public final void m8367b(C4566d c4566d, C4694b.C4695a c4695a) {
            int i;
            int i2;
            int i3;
            int i4;
            if (c4566d == null) {
                return;
            }
            int i5 = 0;
            if (c4566d.f14091i0 == 8 && !c4566d.f14053F) {
                c4695a.f14510e = 0;
                c4695a.f14511f = 0;
                c4695a.f14512g = 0;
            } else if (c4566d.f14069V == null) {
            } else {
                int i6 = c4695a.f14506a;
                int i7 = c4695a.f14507b;
                int i8 = c4695a.f14508c;
                int i9 = c4695a.f14509d;
                int i10 = this.f1271b + this.f1272c;
                int i11 = this.f1273d;
                View view = (View) c4566d.f14089h0;
                int m1021c = C4350g.m1021c(i6);
                if (m1021c == 0) {
                    i5 = View.MeasureSpec.makeMeasureSpec(i8, 1073741824);
                } else if (m1021c == 1) {
                    i5 = ViewGroup.getChildMeasureSpec(this.f1275f, i11, -2);
                } else if (m1021c == 2) {
                    int childMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1275f, i11, -2);
                    boolean z = c4566d.f14108r == 1;
                    int i12 = c4695a.f14515j;
                    if (i12 == 1 || i12 == 2) {
                        if (c4695a.f14515j == 2 || !z || (z && (view.getMeasuredHeight() == c4566d.m803l())) || (view instanceof C0318d) || c4566d.mo776D()) {
                            i5 = View.MeasureSpec.makeMeasureSpec(c4566d.m795u(), 1073741824);
                        }
                    }
                    i5 = childMeasureSpec;
                } else if (m1021c == 3) {
                    int i13 = this.f1275f;
                    C4564c c4564c = c4566d.f14057J;
                    int i14 = c4564c != null ? c4564c.f14036g + 0 : 0;
                    C4564c c4564c2 = c4566d.f14059L;
                    int i15 = i14;
                    if (c4564c2 != null) {
                        i15 = i14 + c4564c2.f14036g;
                    }
                    i5 = ViewGroup.getChildMeasureSpec(i13, i11 + i15, -1);
                }
                int m1021c2 = C4350g.m1021c(i7);
                if (m1021c2 == 0) {
                    i = View.MeasureSpec.makeMeasureSpec(i9, 1073741824);
                } else if (m1021c2 == 1) {
                    i = ViewGroup.getChildMeasureSpec(this.f1276g, i10, -2);
                } else if (m1021c2 == 2) {
                    int childMeasureSpec2 = ViewGroup.getChildMeasureSpec(this.f1276g, i10, -2);
                    boolean z2 = c4566d.f14109s == 1;
                    int i16 = c4695a.f14515j;
                    if (i16 == 1 || i16 == 2) {
                        if (c4695a.f14515j == 2 || !z2 || (z2 && (view.getMeasuredWidth() == c4566d.m795u())) || (view instanceof C0318d) || c4566d.mo775E()) {
                            i = View.MeasureSpec.makeMeasureSpec(c4566d.m803l(), 1073741824);
                        }
                    }
                    i = childMeasureSpec2;
                } else if (m1021c2 != 3) {
                    i = 0;
                } else {
                    int i17 = this.f1276g;
                    int i18 = c4566d.f14057J != null ? c4566d.f14058K.f14036g + 0 : 0;
                    int i19 = i18;
                    if (c4566d.f14059L != null) {
                        i19 = i18 + c4566d.f14060M.f14036g;
                    }
                    i = ViewGroup.getChildMeasureSpec(i17, i10 + i19, -1);
                }
                C4567e c4567e = (C4567e) c4566d.f14069V;
                if (c4567e != null && C2906b.m2862d(ConstraintLayout.this.f1191i, 256) && view.getMeasuredWidth() == c4566d.m795u() && view.getMeasuredWidth() < c4567e.m795u() && view.getMeasuredHeight() == c4566d.m803l() && view.getMeasuredHeight() < c4567e.m803l() && view.getBaseline() == c4566d.f14079c0 && !c4566d.m823C()) {
                    if (m8368a(c4566d.f14055H, i5, c4566d.m795u()) && m8368a(c4566d.f14056I, i, c4566d.m803l())) {
                        c4695a.f14510e = c4566d.m795u();
                        c4695a.f14511f = c4566d.m803l();
                        c4695a.f14512g = c4566d.f14079c0;
                        return;
                    }
                }
                boolean z3 = i6 == 3;
                boolean z4 = i7 == 3;
                boolean z5 = i7 == 4 || i7 == 1;
                boolean z6 = i6 == 4 || i6 == 1;
                boolean z7 = z3 && c4566d.f14072Y > 0.0f;
                boolean z8 = z4 && c4566d.f14072Y > 0.0f;
                if (view == null) {
                    return;
                }
                C0305a c0305a = (C0305a) view.getLayoutParams();
                int i20 = c4695a.f14515j;
                if (i20 == 1 || i20 == 2 || !z3 || c4566d.f14108r != 0 || !z4 || c4566d.f14109s != 0) {
                    if (!(view instanceof AbstractC4953f) || !(c4566d instanceof C4571i)) {
                        view.measure(i5, i);
                    } else {
                        C4571i c4571i = (C4571i) c4566d;
                        AbstractC4953f abstractC4953f = (AbstractC4953f) view;
                    }
                    c4566d.f14055H = i5;
                    c4566d.f14056I = i;
                    c4566d.f14086g = false;
                    int measuredWidth = view.getMeasuredWidth();
                    int measuredHeight = view.getMeasuredHeight();
                    int baseline = view.getBaseline();
                    int i21 = c4566d.f14111u;
                    int max = i21 > 0 ? Math.max(i21, measuredWidth) : measuredWidth;
                    int i22 = c4566d.f14112v;
                    int i23 = max;
                    if (i22 > 0) {
                        i23 = Math.min(i22, max);
                    }
                    int i24 = c4566d.f14114x;
                    int max2 = i24 > 0 ? Math.max(i24, measuredHeight) : measuredHeight;
                    int i25 = c4566d.f14115y;
                    int i26 = max2;
                    if (i25 > 0) {
                        i26 = Math.min(i25, max2);
                    }
                    i3 = i23;
                    i2 = i26;
                    if (!C2906b.m2862d(ConstraintLayout.this.f1191i, 1)) {
                        if (!z7 || !z5) {
                            i3 = i23;
                            i2 = i26;
                            if (z8) {
                                i3 = i23;
                                i2 = i26;
                                if (z6) {
                                    i2 = (int) ((i23 / c4566d.f14072Y) + 0.5f);
                                    i3 = i23;
                                }
                            }
                        } else {
                            i3 = (int) ((i26 * c4566d.f14072Y) + 0.5f);
                            i2 = i26;
                        }
                    }
                    if (measuredWidth == i3 && measuredHeight == i2) {
                        i4 = baseline;
                    } else {
                        if (measuredWidth != i3) {
                            i5 = View.MeasureSpec.makeMeasureSpec(i3, 1073741824);
                        }
                        if (measuredHeight != i2) {
                            i = View.MeasureSpec.makeMeasureSpec(i2, 1073741824);
                        }
                        view.measure(i5, i);
                        c4566d.f14055H = i5;
                        c4566d.f14056I = i;
                        c4566d.f14086g = false;
                        i3 = view.getMeasuredWidth();
                        i2 = view.getMeasuredHeight();
                        i4 = view.getBaseline();
                    }
                } else {
                    i4 = 0;
                    i3 = 0;
                    i2 = 0;
                }
                boolean z9 = i4 != -1;
                c4695a.f14514i = (i3 == c4695a.f14508c && i2 == c4695a.f14509d) ? false : true;
                if (c0305a.f1231c0) {
                    z9 = true;
                }
                if (z9 && i4 != -1 && c4566d.f14079c0 != i4) {
                    c4695a.f14514i = true;
                }
                c4695a.f14510e = i3;
                c4695a.f14511f = i2;
                c4695a.f14513h = z9;
                c4695a.f14512g = i4;
            }
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        m8375f(attributeSet, 0, 0);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        m8375f(attributeSet, i, 0);
    }

    private int getPaddingWidth() {
        int max = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int max2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        if (max2 > 0) {
            max = max2;
        }
        return max;
    }

    public static C4952e getSharedValues() {
        if (f1182r == null) {
            f1182r = new C4952e();
        }
        return f1182r;
    }

    /* renamed from: b */
    public C0305a generateDefaultLayoutParams() {
        return new C0305a(-2, -2);
    }

    /* renamed from: c */
    public Object m8378c(int i, Object obj) {
        if (i != 0 || !(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> hashMap = this.f1195m;
        if (hashMap != null && hashMap.containsKey(str)) {
            return this.f1195m.get(str);
        }
        return null;
    }

    @Override // android.view.ViewGroup
    public boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof C0305a;
    }

    /* renamed from: d */
    public View m8377d(int i) {
        return this.f1183a.get(i);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<AbstractC0308a> arrayList = this.f1184b;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i = 0; i < size; i++) {
                Objects.requireNonNull(this.f1184b.get(i));
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = getChildAt(i2);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] split = ((String) tag).split(",");
                    if (split.length == 4) {
                        int parseInt = Integer.parseInt(split[0]);
                        int parseInt2 = Integer.parseInt(split[1]);
                        int parseInt3 = Integer.parseInt(split[2]);
                        int parseInt4 = Integer.parseInt(split[3]);
                        int i3 = (int) ((parseInt / 1080.0f) * width);
                        int i4 = (int) ((parseInt2 / 1920.0f) * height);
                        int i5 = (int) ((parseInt3 / 1080.0f) * width);
                        int i6 = (int) ((parseInt4 / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f = i3;
                        float f2 = i4;
                        float f3 = i3 + i5;
                        canvas.drawLine(f, f2, f3, f2, paint);
                        float f4 = i4 + i6;
                        canvas.drawLine(f3, f2, f3, f4, paint);
                        canvas.drawLine(f3, f4, f, f4, paint);
                        canvas.drawLine(f, f4, f, f2, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f, f2, f3, f4, paint);
                        canvas.drawLine(f, f4, f3, f2, paint);
                    }
                }
            }
        }
    }

    /* renamed from: e */
    public final C4566d m8376e(View view) {
        if (view == this) {
            return this.f1185c;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof C0305a) {
            return ((C0305a) view.getLayoutParams()).f1259q0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (!(view.getLayoutParams() instanceof C0305a)) {
            return null;
        }
        return ((C0305a) view.getLayoutParams()).f1259q0;
    }

    /* renamed from: f */
    public final void m8375f(AttributeSet attributeSet, int i, int i2) {
        C4567e c4567e = this.f1185c;
        c4567e.f14089h0 = this;
        C0307b c0307b = this.f1197o;
        c4567e.f14133v0 = c0307b;
        c4567e.f14131t0.f14523f = c0307b;
        this.f1183a.put(getId(), this);
        this.f1192j = null;
        if (attributeSet != null) {
            TypedArray obtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, C0713a.f2754f, i, i2);
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i3 = 0; i3 < indexCount; i3++) {
                int index = obtainStyledAttributes.getIndex(i3);
                if (index == 16) {
                    this.f1186d = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1186d);
                } else if (index == 17) {
                    this.f1187e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1187e);
                } else if (index == 14) {
                    this.f1188f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1188f);
                } else if (index == 15) {
                    this.f1189g = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1189g);
                } else if (index == 113) {
                    this.f1191i = obtainStyledAttributes.getInt(index, this.f1191i);
                } else if (index == 56) {
                    int resourceId = obtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            mo442k(resourceId);
                        } catch (Resources.NotFoundException e) {
                            this.f1193k = null;
                        }
                    }
                } else if (index == 34) {
                    int resourceId2 = obtainStyledAttributes.getResourceId(index, 0);
                    try {
                        C0309b c0309b = new C0309b();
                        this.f1192j = c0309b;
                        c0309b.m8354f(getContext(), resourceId2);
                    } catch (Resources.NotFoundException e2) {
                        this.f1192j = null;
                    }
                    this.f1194l = resourceId2;
                }
            }
            obtainStyledAttributes.recycle();
        }
        this.f1185c.m778g0(this.f1191i);
    }

    @Override // android.view.View
    public void forceLayout() {
        this.f1190h = true;
        super.forceLayout();
    }

    /* renamed from: g */
    public boolean m8374g() {
        boolean z = false;
        if ((getContext().getApplicationInfo().flags & 4194304) != 0) {
            z = false;
            if (1 == getLayoutDirection()) {
                z = true;
            }
        }
        return z;
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new C0305a(getContext(), attributeSet);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new C0305a(layoutParams);
    }

    public int getMaxHeight() {
        return this.f1189g;
    }

    public int getMaxWidth() {
        return this.f1188f;
    }

    public int getMinHeight() {
        return this.f1187e;
    }

    public int getMinWidth() {
        return this.f1186d;
    }

    public int getOptimizationLevel() {
        return this.f1185c.f14121E0;
    }

    public String getSceneString() {
        int id;
        StringBuilder sb = new StringBuilder();
        if (this.f1185c.f14092j == null) {
            int id2 = getId();
            if (id2 != -1) {
                this.f1185c.f14092j = getContext().getResources().getResourceEntryName(id2);
            } else {
                this.f1185c.f14092j = "parent";
            }
        }
        C4567e c4567e = this.f1185c;
        if (c4567e.f14093j0 == null) {
            c4567e.f14093j0 = c4567e.f14092j;
        }
        Iterator<C4566d> it2 = c4567e.f14146r0.iterator();
        while (it2.hasNext()) {
            C4566d next = it2.next();
            View view = (View) next.f14089h0;
            if (view != null) {
                if (next.f14092j == null && (id = view.getId()) != -1) {
                    next.f14092j = getContext().getResources().getResourceEntryName(id);
                }
                if (next.f14093j0 == null) {
                    next.f14093j0 = next.f14092j;
                }
            }
        }
        this.f1185c.mo777q(sb);
        return sb.toString();
    }

    /* renamed from: k */
    public void mo442k(int i) {
        this.f1193k = new C4947b(getContext(), this, i);
    }

    /* renamed from: l */
    public void m8373l(int i, int i2, int i3, int i4, boolean z, boolean z2) {
        C0307b c0307b = this.f1197o;
        int i5 = c0307b.f1274e;
        int resolveSizeAndState = ViewGroup.resolveSizeAndState(i3 + c0307b.f1273d, i, 0);
        int resolveSizeAndState2 = ViewGroup.resolveSizeAndState(i4 + i5, i2, 0);
        int min = Math.min(this.f1188f, resolveSizeAndState & 16777215);
        int min2 = Math.min(this.f1189g, resolveSizeAndState2 & 16777215);
        int i6 = min;
        if (z) {
            i6 = min | 16777216;
        }
        int i7 = min2;
        if (z2) {
            i7 = min2 | 16777216;
        }
        setMeasuredDimension(i6, i7);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View content;
        int childCount = getChildCount();
        boolean isInEditMode = isInEditMode();
        for (int i5 = 0; i5 < childCount; i5++) {
            View childAt = getChildAt(i5);
            C0305a c0305a = (C0305a) childAt.getLayoutParams();
            C4566d c4566d = c0305a.f1259q0;
            if ((childAt.getVisibility() != 8 || c0305a.f1233d0 || c0305a.f1235e0 || isInEditMode) && !c0305a.f1237f0) {
                int m794v = c4566d.m794v();
                int m793w = c4566d.m793w();
                int m795u = c4566d.m795u() + m794v;
                int m803l = c4566d.m803l() + m793w;
                childAt.layout(m794v, m793w, m795u, m803l);
                if ((childAt instanceof C0318d) && (content = ((C0318d) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(m794v, m793w, m795u, m803l);
                }
            }
        }
        int size = this.f1184b.size();
        if (size > 0) {
            for (int i6 = 0; i6 < size; i6++) {
                Objects.requireNonNull(this.f1184b.get(i6));
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:294:0x0a6a, code lost:
        if (r0 == 3) goto L295;
     */
    /* JADX WARN: Removed duplicated region for block: B:109:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03d7  */
    /* JADX WARN: Removed duplicated region for block: B:231:0x090f  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x091a  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x0932  */
    /* JADX WARN: Removed duplicated region for block: B:302:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0b8c  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0b9d  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0a96 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02ef  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x030d  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instructions count: 3792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.ConstraintLayout.onMeasure(int, int):void");
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        C4566d m8376e = m8376e(view);
        if ((view instanceof Guideline) && !(m8376e instanceof C4568f)) {
            C0305a c0305a = (C0305a) view.getLayoutParams();
            C4568f c4568f = new C4568f();
            c0305a.f1259q0 = c4568f;
            c0305a.f1233d0 = true;
            c4568f.m772W(c0305a.f1221V);
        }
        if (view instanceof AbstractC0308a) {
            AbstractC0308a abstractC0308a = (AbstractC0308a) view;
            abstractC0308a.m8360k();
            ((C0305a) view.getLayoutParams()).f1235e0 = true;
            if (!this.f1184b.contains(abstractC0308a)) {
                this.f1184b.add(abstractC0308a);
            }
        }
        this.f1183a.put(view.getId(), view);
        this.f1190h = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f1183a.remove(view.getId());
        C4566d m8376e = m8376e(view);
        this.f1185c.f14146r0.remove(m8376e);
        m8376e.mo766F();
        this.f1184b.remove(view);
        this.f1190h = true;
    }

    /* renamed from: p */
    public void m8372p(int i, Object obj, Object obj2) {
        if (i != 0 || !(obj instanceof String) || !(obj2 instanceof Integer)) {
            return;
        }
        if (this.f1195m == null) {
            this.f1195m = new HashMap<>();
        }
        String str = (String) obj;
        int indexOf = str.indexOf("/");
        String str2 = str;
        if (indexOf != -1) {
            str2 = str.substring(indexOf + 1);
        }
        this.f1195m.put(str2, Integer.valueOf(((Integer) obj2).intValue()));
    }

    /* renamed from: q */
    public final void m8371q(C4566d c4566d, C0305a c0305a, SparseArray<C4566d> sparseArray, int i, C4564c.EnumC4565a enumC4565a) {
        View view = this.f1183a.get(i);
        C4566d c4566d2 = sparseArray.get(i);
        if (c4566d2 == null || view == null || !(view.getLayoutParams() instanceof C0305a)) {
            return;
        }
        c0305a.f1231c0 = true;
        C4564c.EnumC4565a enumC4565a2 = C4564c.EnumC4565a.BASELINE;
        if (enumC4565a == enumC4565a2) {
            C0305a c0305a2 = (C0305a) view.getLayoutParams();
            c0305a2.f1231c0 = true;
            c0305a2.f1259q0.f14052E = true;
        }
        c4566d.mo769i(enumC4565a2).m835a(c4566d2.mo769i(enumC4565a), c0305a.f1203D, c0305a.f1202C, true);
        c4566d.f14052E = true;
        c4566d.mo769i(C4564c.EnumC4565a.TOP).m828h();
        c4566d.mo769i(C4564c.EnumC4565a.BOTTOM).m828h();
    }

    /* renamed from: r */
    public final boolean m8370r() {
        boolean z;
        int i;
        int i2;
        float f;
        int i3;
        C4566d c4566d;
        C4566d c4566d2;
        C4566d c4566d3;
        C4566d c4566d4;
        C4567e c4567e;
        int childCount = getChildCount();
        int i4 = 0;
        while (true) {
            if (i4 >= childCount) {
                z = false;
                break;
            } else if (getChildAt(i4).isLayoutRequested()) {
                z = true;
                break;
            } else {
                i4++;
            }
        }
        boolean z2 = z;
        if (z) {
            boolean isInEditMode = isInEditMode();
            int childCount2 = getChildCount();
            for (int i5 = 0; i5 < childCount2; i5++) {
                C4566d m8376e = m8376e(getChildAt(i5));
                if (m8376e != null) {
                    m8376e.mo766F();
                }
            }
            if (isInEditMode) {
                for (int i6 = 0; i6 < childCount2; i6++) {
                    View childAt = getChildAt(i6);
                    try {
                        String resourceName = getResources().getResourceName(childAt.getId());
                        m8372p(0, resourceName, Integer.valueOf(childAt.getId()));
                        int indexOf = resourceName.indexOf(47);
                        String str = resourceName;
                        if (indexOf != -1) {
                            str = resourceName.substring(indexOf + 1);
                        }
                        int id = childAt.getId();
                        if (id == 0) {
                            c4567e = this.f1185c;
                        } else {
                            View view = this.f1183a.get(id);
                            View view2 = view;
                            if (view == null) {
                                View findViewById = findViewById(id);
                                view2 = findViewById;
                                if (findViewById != null) {
                                    view2 = findViewById;
                                    if (findViewById != this) {
                                        view2 = findViewById;
                                        if (findViewById.getParent() == this) {
                                            onViewAdded(findViewById);
                                            view2 = findViewById;
                                        }
                                    }
                                }
                            }
                            c4567e = view2 == this ? this.f1185c : view2 == null ? null : ((C0305a) view2.getLayoutParams()).f1259q0;
                        }
                        c4567e.f14093j0 = str;
                    } catch (Resources.NotFoundException e) {
                    }
                }
            }
            if (this.f1194l != -1) {
                for (int i7 = 0; i7 < childCount2; i7++) {
                    View childAt2 = getChildAt(i7);
                    if (childAt2.getId() == this.f1194l && (childAt2 instanceof C0316c)) {
                        this.f1192j = ((C0316c) childAt2).getConstraintSet();
                    }
                }
            }
            C0309b c0309b = this.f1192j;
            if (c0309b != null) {
                c0309b.m8358b(this, true);
            }
            this.f1185c.f14146r0.clear();
            int size = this.f1184b.size();
            if (size > 0) {
                for (int i8 = 0; i8 < size; i8++) {
                    AbstractC0308a abstractC0308a = this.f1184b.get(i8);
                    if (abstractC0308a.isInEditMode()) {
                        abstractC0308a.setIds(abstractC0308a.f1282e);
                    }
                    AbstractC4569g abstractC4569g = abstractC0308a.f1281d;
                    if (abstractC4569g != null) {
                        C4570h c4570h = (C4570h) abstractC4569g;
                        c4570h.f14145s0 = 0;
                        Arrays.fill(c4570h.f14144r0, (Object) null);
                        for (int i9 = 0; i9 < abstractC0308a.f1279b; i9++) {
                            int i10 = abstractC0308a.f1278a[i9];
                            View m8377d = m8377d(i10);
                            View view3 = m8377d;
                            if (m8377d == null) {
                                String str2 = abstractC0308a.f1285h.get(Integer.valueOf(i10));
                                int m8362h = abstractC0308a.m8362h(this, str2);
                                view3 = m8377d;
                                if (m8362h != 0) {
                                    abstractC0308a.f1278a[i9] = m8362h;
                                    abstractC0308a.f1285h.put(Integer.valueOf(m8362h), str2);
                                    view3 = m8377d(m8362h);
                                }
                            }
                            if (view3 != null) {
                                AbstractC4569g abstractC4569g2 = abstractC0308a.f1281d;
                                C4566d m8376e2 = m8376e(view3);
                                C4570h c4570h2 = (C4570h) abstractC4569g2;
                                Objects.requireNonNull(c4570h2);
                                if (m8376e2 != c4570h2 && m8376e2 != null) {
                                    int i11 = c4570h2.f14145s0;
                                    C4566d[] c4566dArr = c4570h2.f14144r0;
                                    if (i11 + 1 > c4566dArr.length) {
                                        c4570h2.f14144r0 = (C4566d[]) Arrays.copyOf(c4566dArr, c4566dArr.length * 2);
                                    }
                                    C4566d[] c4566dArr2 = c4570h2.f14144r0;
                                    int i12 = c4570h2.f14145s0;
                                    c4566dArr2[i12] = m8376e2;
                                    c4570h2.f14145s0 = i12 + 1;
                                }
                            }
                        }
                        abstractC0308a.f1281d.mo767a(this.f1185c);
                    }
                }
            }
            for (int i13 = 0; i13 < childCount2; i13++) {
                View childAt3 = getChildAt(i13);
                if (childAt3 instanceof C0318d) {
                    C0318d c0318d = (C0318d) childAt3;
                    if (c0318d.f1429a == -1 && !c0318d.isInEditMode()) {
                        c0318d.setVisibility(c0318d.f1431c);
                    }
                    View findViewById2 = findViewById(c0318d.f1429a);
                    c0318d.f1430b = findViewById2;
                    if (findViewById2 != null) {
                        ((C0305a) findViewById2.getLayoutParams()).f1237f0 = true;
                        c0318d.f1430b.setVisibility(0);
                        c0318d.setVisibility(0);
                    }
                }
            }
            this.f1196n.clear();
            this.f1196n.put(0, this.f1185c);
            this.f1196n.put(getId(), this.f1185c);
            for (int i14 = 0; i14 < childCount2; i14++) {
                View childAt4 = getChildAt(i14);
                this.f1196n.put(childAt4.getId(), m8376e(childAt4));
            }
            int i15 = 0;
            while (true) {
                z2 = z;
                if (i15 >= childCount2) {
                    break;
                }
                View childAt5 = getChildAt(i15);
                C4566d m8376e3 = m8376e(childAt5);
                if (m8376e3 != null) {
                    C0305a c0305a = (C0305a) childAt5.getLayoutParams();
                    C4567e c4567e2 = this.f1185c;
                    c4567e2.f14146r0.add(m8376e3);
                    C4566d c4566d5 = m8376e3.f14069V;
                    if (c4566d5 != null) {
                        ((C4572j) c4566d5).f14146r0.remove(m8376e3);
                        m8376e3.mo766F();
                    }
                    m8376e3.f14069V = c4567e2;
                    SparseArray<C4566d> sparseArray = this.f1196n;
                    C4564c.EnumC4565a enumC4565a = C4564c.EnumC4565a.RIGHT;
                    C4564c.EnumC4565a enumC4565a2 = C4564c.EnumC4565a.LEFT;
                    C4564c.EnumC4565a enumC4565a3 = C4564c.EnumC4565a.BOTTOM;
                    C4564c.EnumC4565a enumC4565a4 = C4564c.EnumC4565a.TOP;
                    c0305a.m8369a();
                    m8376e3.f14091i0 = childAt5.getVisibility();
                    if (c0305a.f1237f0) {
                        m8376e3.f14053F = true;
                        m8376e3.f14091i0 = 8;
                    }
                    m8376e3.f14089h0 = childAt5;
                    if (childAt5 instanceof AbstractC0308a) {
                        ((AbstractC0308a) childAt5).mo8361j(m8376e3, this.f1185c.f14134w0);
                    }
                    if (c0305a.f1233d0) {
                        C4568f c4568f = (C4568f) m8376e3;
                        int i16 = c0305a.f1253n0;
                        int i17 = c0305a.f1255o0;
                        float f2 = c0305a.f1257p0;
                        int i18 = (f2 > (-1.0f) ? 1 : (f2 == (-1.0f) ? 0 : -1));
                        if (i18 != 0) {
                            if (i18 > 0) {
                                c4568f.f14138r0 = f2;
                                c4568f.f14139s0 = -1;
                                c4568f.f14140t0 = -1;
                            }
                        } else if (i16 != -1) {
                            if (i16 > -1) {
                                c4568f.f14138r0 = -1.0f;
                                c4568f.f14139s0 = i16;
                                c4568f.f14140t0 = -1;
                            }
                        } else if (i17 != -1 && i17 > -1) {
                            c4568f.f14138r0 = -1.0f;
                            c4568f.f14139s0 = -1;
                            c4568f.f14140t0 = i17;
                        }
                    } else {
                        int i19 = c0305a.f1239g0;
                        int i20 = c0305a.f1241h0;
                        int i21 = c0305a.f1243i0;
                        int i22 = c0305a.f1245j0;
                        int i23 = c0305a.f1247k0;
                        int i24 = c0305a.f1249l0;
                        float f3 = c0305a.f1251m0;
                        int i25 = c0305a.f1256p;
                        if (i25 != -1) {
                            C4566d c4566d6 = sparseArray.get(i25);
                            if (c4566d6 != null) {
                                float f4 = c0305a.f1260r;
                                int i26 = c0305a.f1258q;
                                C4564c.EnumC4565a enumC4565a5 = C4564c.EnumC4565a.CENTER;
                                m8376e3.mo769i(enumC4565a5).m835a(c4566d6.mo769i(enumC4565a5), i26, 0, true);
                                m8376e3.f14051D = f4;
                            }
                        } else {
                            if (i19 != -1) {
                                C4566d c4566d7 = sparseArray.get(i19);
                                if (c4566d7 != null) {
                                    m8376e3.mo769i(enumC4565a2).m835a(c4566d7.mo769i(enumC4565a2), ((ViewGroup.MarginLayoutParams) c0305a).leftMargin, i23, true);
                                }
                            } else if (i20 != -1 && (c4566d4 = sparseArray.get(i20)) != null) {
                                m8376e3.mo769i(enumC4565a2).m835a(c4566d4.mo769i(enumC4565a), ((ViewGroup.MarginLayoutParams) c0305a).leftMargin, i23, true);
                            }
                            if (i21 != -1) {
                                C4566d c4566d8 = sparseArray.get(i21);
                                if (c4566d8 != null) {
                                    m8376e3.mo769i(enumC4565a).m835a(c4566d8.mo769i(enumC4565a2), ((ViewGroup.MarginLayoutParams) c0305a).rightMargin, i24, true);
                                }
                            } else if (i22 != -1 && (c4566d3 = sparseArray.get(i22)) != null) {
                                m8376e3.mo769i(enumC4565a).m835a(c4566d3.mo769i(enumC4565a), ((ViewGroup.MarginLayoutParams) c0305a).rightMargin, i24, true);
                            }
                            int i27 = c0305a.f1242i;
                            if (i27 != -1) {
                                C4566d c4566d9 = sparseArray.get(i27);
                                if (c4566d9 != null) {
                                    m8376e3.mo769i(enumC4565a4).m835a(c4566d9.mo769i(enumC4565a4), ((ViewGroup.MarginLayoutParams) c0305a).topMargin, c0305a.f1266x, true);
                                }
                            } else {
                                int i28 = c0305a.f1244j;
                                if (i28 != -1 && (c4566d2 = sparseArray.get(i28)) != null) {
                                    m8376e3.mo769i(enumC4565a4).m835a(c4566d2.mo769i(enumC4565a3), ((ViewGroup.MarginLayoutParams) c0305a).topMargin, c0305a.f1266x, true);
                                }
                            }
                            int i29 = c0305a.f1246k;
                            if (i29 != -1) {
                                C4566d c4566d10 = sparseArray.get(i29);
                                if (c4566d10 != null) {
                                    m8376e3.mo769i(enumC4565a3).m835a(c4566d10.mo769i(enumC4565a4), ((ViewGroup.MarginLayoutParams) c0305a).bottomMargin, c0305a.f1268z, true);
                                }
                            } else {
                                int i30 = c0305a.f1248l;
                                if (i30 != -1 && (c4566d = sparseArray.get(i30)) != null) {
                                    m8376e3.mo769i(enumC4565a3).m835a(c4566d.mo769i(enumC4565a3), ((ViewGroup.MarginLayoutParams) c0305a).bottomMargin, c0305a.f1268z, true);
                                }
                            }
                            int i31 = c0305a.f1250m;
                            if (i31 != -1) {
                                m8371q(m8376e3, c0305a, sparseArray, i31, C4564c.EnumC4565a.BASELINE);
                            } else {
                                int i32 = c0305a.f1252n;
                                if (i32 != -1) {
                                    m8371q(m8376e3, c0305a, sparseArray, i32, enumC4565a4);
                                } else {
                                    int i33 = c0305a.f1254o;
                                    if (i33 != -1) {
                                        m8371q(m8376e3, c0305a, sparseArray, i33, enumC4565a3);
                                    }
                                }
                            }
                            if (f3 >= 0.0f) {
                                m8376e3.f14085f0 = f3;
                            }
                            float f5 = c0305a.f1205F;
                            if (f5 >= 0.0f) {
                                m8376e3.f14087g0 = f5;
                            }
                        }
                        if (isInEditMode && ((i3 = c0305a.f1219T) != -1 || c0305a.f1220U != -1)) {
                            int i34 = c0305a.f1220U;
                            m8376e3.f14075a0 = i3;
                            m8376e3.f14077b0 = i34;
                        }
                        if (c0305a.f1227a0) {
                            m8376e3.f14068U[0] = 1;
                            m8376e3.m811S(((ViewGroup.MarginLayoutParams) c0305a).width);
                            if (((ViewGroup.MarginLayoutParams) c0305a).width == -2) {
                                m8376e3.f14068U[0] = 2;
                            }
                        } else if (((ViewGroup.MarginLayoutParams) c0305a).width == -1) {
                            if (c0305a.f1222W) {
                                m8376e3.f14068U[0] = 3;
                            } else {
                                m8376e3.f14068U[0] = 4;
                            }
                            m8376e3.mo769i(enumC4565a2).f14036g = ((ViewGroup.MarginLayoutParams) c0305a).leftMargin;
                            m8376e3.mo769i(enumC4565a).f14036g = ((ViewGroup.MarginLayoutParams) c0305a).rightMargin;
                        } else {
                            m8376e3.f14068U[0] = 3;
                            m8376e3.m811S(0);
                        }
                        if (c0305a.f1229b0) {
                            m8376e3.f14068U[1] = 1;
                            m8376e3.m816N(((ViewGroup.MarginLayoutParams) c0305a).height);
                            if (((ViewGroup.MarginLayoutParams) c0305a).height == -2) {
                                m8376e3.f14068U[1] = 2;
                            }
                        } else if (((ViewGroup.MarginLayoutParams) c0305a).height == -1) {
                            if (c0305a.f1223X) {
                                m8376e3.f14068U[1] = 3;
                            } else {
                                m8376e3.f14068U[1] = 4;
                            }
                            m8376e3.mo769i(enumC4565a4).f14036g = ((ViewGroup.MarginLayoutParams) c0305a).topMargin;
                            m8376e3.mo769i(enumC4565a3).f14036g = ((ViewGroup.MarginLayoutParams) c0305a).bottomMargin;
                        } else {
                            m8376e3.f14068U[1] = 3;
                            m8376e3.m816N(0);
                        }
                        String str3 = c0305a.f1206G;
                        if (str3 == null || str3.length() == 0) {
                            m8376e3.f14072Y = 0.0f;
                        } else {
                            int length = str3.length();
                            int indexOf2 = str3.indexOf(44);
                            if (indexOf2 <= 0 || indexOf2 >= length - 1) {
                                i = 0;
                                i2 = -1;
                            } else {
                                String substring = str3.substring(0, indexOf2);
                                i2 = substring.equalsIgnoreCase("W") ? 0 : substring.equalsIgnoreCase("H") ? 1 : -1;
                                i = indexOf2 + 1;
                            }
                            int indexOf3 = str3.indexOf(58);
                            if (indexOf3 < 0 || indexOf3 >= length - 1) {
                                String substring2 = str3.substring(i);
                                if (substring2.length() > 0) {
                                    f = Float.parseFloat(substring2);
                                }
                                f = 0.0f;
                            } else {
                                String substring3 = str3.substring(i, indexOf3);
                                String substring4 = str3.substring(indexOf3 + 1);
                                if (substring3.length() > 0 && substring4.length() > 0) {
                                    try {
                                        float parseFloat = Float.parseFloat(substring3);
                                        float parseFloat2 = Float.parseFloat(substring4);
                                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                                            f = i2 == 1 ? Math.abs(parseFloat2 / parseFloat) : Math.abs(parseFloat / parseFloat2);
                                        }
                                    } catch (NumberFormatException e2) {
                                    }
                                }
                                f = 0.0f;
                            }
                            if (f > 0.0f) {
                                m8376e3.f14072Y = f;
                                m8376e3.f14073Z = i2;
                            }
                        }
                        float f6 = c0305a.f1207H;
                        float[] fArr = m8376e3.f14099m0;
                        fArr[0] = f6;
                        fArr[1] = c0305a.f1208I;
                        m8376e3.f14095k0 = c0305a.f1209J;
                        m8376e3.f14097l0 = c0305a.f1210K;
                        int i35 = c0305a.f1225Z;
                        if (i35 >= 0 && i35 <= 3) {
                            m8376e3.f14106q = i35;
                        }
                        int i36 = c0305a.f1211L;
                        int i37 = c0305a.f1213N;
                        int i38 = c0305a.f1215P;
                        float f7 = c0305a.f1217R;
                        m8376e3.f14108r = i36;
                        m8376e3.f14111u = i37;
                        int i39 = i38;
                        if (i38 == Integer.MAX_VALUE) {
                            i39 = 0;
                        }
                        m8376e3.f14112v = i39;
                        m8376e3.f14113w = f7;
                        if (f7 > 0.0f && f7 < 1.0f && i36 == 0) {
                            m8376e3.f14108r = 2;
                        }
                        int i40 = c0305a.f1212M;
                        int i41 = c0305a.f1214O;
                        int i42 = c0305a.f1216Q;
                        float f8 = c0305a.f1218S;
                        m8376e3.f14109s = i40;
                        m8376e3.f14114x = i41;
                        int i43 = i42;
                        if (i42 == Integer.MAX_VALUE) {
                            i43 = 0;
                        }
                        m8376e3.f14115y = i43;
                        m8376e3.f14116z = f8;
                        if (f8 > 0.0f && f8 < 1.0f && i40 == 0) {
                            m8376e3.f14109s = 2;
                        }
                    }
                }
                i15++;
            }
        }
        return z2;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1190h = true;
        super.requestLayout();
    }

    public void setConstraintSet(C0309b c0309b) {
        this.f1192j = c0309b;
    }

    @Override // android.view.View
    public void setId(int i) {
        this.f1183a.remove(getId());
        super.setId(i);
        this.f1183a.put(getId(), this);
    }

    public void setMaxHeight(int i) {
        if (i == this.f1189g) {
            return;
        }
        this.f1189g = i;
        requestLayout();
    }

    public void setMaxWidth(int i) {
        if (i == this.f1188f) {
            return;
        }
        this.f1188f = i;
        requestLayout();
    }

    public void setMinHeight(int i) {
        if (i == this.f1187e) {
            return;
        }
        this.f1187e = i;
        requestLayout();
    }

    public void setMinWidth(int i) {
        if (i == this.f1186d) {
            return;
        }
        this.f1186d = i;
        requestLayout();
    }

    public void setOnConstraintsChanged(AbstractC4950c abstractC4950c) {
        C4947b c4947b = this.f1193k;
        if (c4947b != null) {
            Objects.requireNonNull(c4947b);
        }
    }

    public void setOptimizationLevel(int i) {
        this.f1191i = i;
        C4567e c4567e = this.f1185c;
        c4567e.f14121E0 = i;
        C4344d.f13542p = c4567e.m779f0(AdRequest.MAX_CONTENT_URL_LENGTH);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }
}
