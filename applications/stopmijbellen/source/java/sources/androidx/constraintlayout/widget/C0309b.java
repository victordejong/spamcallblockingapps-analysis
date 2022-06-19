package androidx.constraintlayout.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.content.res.XmlResourceParser;
import android.graphics.drawable.ColorDrawable;
import android.support.p012v4.media.C0082b;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseIntArray;
import android.util.Xml;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.C0316c;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.ads.mediation.facebook.FacebookAdapter;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import org.xmlpull.v1.XmlPullParserException;
import p015b0.C0713a;
import p247u.C4442a;
import p280x.C4794a;
import p280x.C4797d;
import p291y.C4946a;
import p291y.C4951d;
/* renamed from: androidx.constraintlayout.widget.b */
/* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b.class */
public class C0309b {

    /* renamed from: d */
    public static final int[] f1286d = {0, 4, 8};

    /* renamed from: e */
    public static SparseIntArray f1287e = new SparseIntArray();

    /* renamed from: f */
    public static SparseIntArray f1288f = new SparseIntArray();

    /* renamed from: a */
    public HashMap<String, C4946a> f1289a = new HashMap<>();

    /* renamed from: b */
    public boolean f1290b = true;

    /* renamed from: c */
    public HashMap<Integer, C0310a> f1291c = new HashMap<>();

    /* renamed from: androidx.constraintlayout.widget.b$a */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a.class */
    public static class C0310a {

        /* renamed from: a */
        public int f1292a;

        /* renamed from: b */
        public final C0314d f1293b = new C0314d();

        /* renamed from: c */
        public final C0313c f1294c = new C0313c();

        /* renamed from: d */
        public final C0312b f1295d = new C0312b();

        /* renamed from: e */
        public final C0315e f1296e = new C0315e();

        /* renamed from: f */
        public HashMap<String, C4946a> f1297f = new HashMap<>();

        /* renamed from: g */
        public C0311a f1298g;

        /* renamed from: androidx.constraintlayout.widget.b$a$a */
        /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$a$a.class */
        public static class C0311a {

            /* renamed from: a */
            public int[] f1299a = new int[10];

            /* renamed from: b */
            public int[] f1300b = new int[10];

            /* renamed from: c */
            public int f1301c = 0;

            /* renamed from: d */
            public int[] f1302d = new int[10];

            /* renamed from: e */
            public float[] f1303e = new float[10];

            /* renamed from: f */
            public int f1304f = 0;

            /* renamed from: g */
            public int[] f1305g = new int[5];

            /* renamed from: h */
            public String[] f1306h = new String[5];

            /* renamed from: i */
            public int f1307i = 0;

            /* renamed from: j */
            public int[] f1308j = new int[4];

            /* renamed from: k */
            public boolean[] f1309k = new boolean[4];

            /* renamed from: l */
            public int f1310l = 0;

            /* renamed from: a */
            public void m8348a(int i, float f) {
                int i2 = this.f1304f;
                int[] iArr = this.f1302d;
                if (i2 >= iArr.length) {
                    this.f1302d = Arrays.copyOf(iArr, iArr.length * 2);
                    float[] fArr = this.f1303e;
                    this.f1303e = Arrays.copyOf(fArr, fArr.length * 2);
                }
                int[] iArr2 = this.f1302d;
                int i3 = this.f1304f;
                iArr2[i3] = i;
                float[] fArr2 = this.f1303e;
                this.f1304f = i3 + 1;
                fArr2[i3] = f;
            }

            /* renamed from: b */
            public void m8347b(int i, int i2) {
                int i3 = this.f1301c;
                int[] iArr = this.f1299a;
                if (i3 >= iArr.length) {
                    this.f1299a = Arrays.copyOf(iArr, iArr.length * 2);
                    int[] iArr2 = this.f1300b;
                    this.f1300b = Arrays.copyOf(iArr2, iArr2.length * 2);
                }
                int[] iArr3 = this.f1299a;
                int i4 = this.f1301c;
                iArr3[i4] = i;
                int[] iArr4 = this.f1300b;
                this.f1301c = i4 + 1;
                iArr4[i4] = i2;
            }

            /* renamed from: c */
            public void m8346c(int i, String str) {
                int i2 = this.f1307i;
                int[] iArr = this.f1305g;
                if (i2 >= iArr.length) {
                    this.f1305g = Arrays.copyOf(iArr, iArr.length * 2);
                    String[] strArr = this.f1306h;
                    this.f1306h = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
                }
                int[] iArr2 = this.f1305g;
                int i3 = this.f1307i;
                iArr2[i3] = i;
                String[] strArr2 = this.f1306h;
                this.f1307i = i3 + 1;
                strArr2[i3] = str;
            }

            /* renamed from: d */
            public void m8345d(int i, boolean z) {
                int i2 = this.f1310l;
                int[] iArr = this.f1308j;
                if (i2 >= iArr.length) {
                    this.f1308j = Arrays.copyOf(iArr, iArr.length * 2);
                    boolean[] zArr = this.f1309k;
                    this.f1309k = Arrays.copyOf(zArr, zArr.length * 2);
                }
                int[] iArr2 = this.f1308j;
                int i3 = this.f1310l;
                iArr2[i3] = i;
                boolean[] zArr2 = this.f1309k;
                this.f1310l = i3 + 1;
                zArr2[i3] = z;
            }
        }

        /* renamed from: a */
        public void m8351a(ConstraintLayout.C0305a c0305a) {
            C0312b c0312b = this.f1295d;
            c0305a.f1234e = c0312b.f1354i;
            c0305a.f1236f = c0312b.f1356j;
            c0305a.f1238g = c0312b.f1358k;
            c0305a.f1240h = c0312b.f1360l;
            c0305a.f1242i = c0312b.f1362m;
            c0305a.f1244j = c0312b.f1364n;
            c0305a.f1246k = c0312b.f1366o;
            c0305a.f1248l = c0312b.f1368p;
            c0305a.f1250m = c0312b.f1370q;
            c0305a.f1252n = c0312b.f1371r;
            c0305a.f1254o = c0312b.f1372s;
            c0305a.f1261s = c0312b.f1373t;
            c0305a.f1262t = c0312b.f1374u;
            c0305a.f1263u = c0312b.f1375v;
            c0305a.f1264v = c0312b.f1376w;
            ((ViewGroup.MarginLayoutParams) c0305a).leftMargin = c0312b.f1318G;
            ((ViewGroup.MarginLayoutParams) c0305a).rightMargin = c0312b.f1319H;
            ((ViewGroup.MarginLayoutParams) c0305a).topMargin = c0312b.f1320I;
            ((ViewGroup.MarginLayoutParams) c0305a).bottomMargin = c0312b.f1321J;
            c0305a.f1200A = c0312b.f1330S;
            c0305a.f1201B = c0312b.f1329R;
            c0305a.f1266x = c0312b.f1326O;
            c0305a.f1268z = c0312b.f1328Q;
            c0305a.f1204E = c0312b.f1377x;
            c0305a.f1205F = c0312b.f1378y;
            c0305a.f1256p = c0312b.f1312A;
            c0305a.f1258q = c0312b.f1313B;
            c0305a.f1260r = c0312b.f1314C;
            c0305a.f1206G = c0312b.f1379z;
            c0305a.f1219T = c0312b.f1315D;
            c0305a.f1220U = c0312b.f1316E;
            c0305a.f1208I = c0312b.f1332U;
            c0305a.f1207H = c0312b.f1333V;
            c0305a.f1210K = c0312b.f1335X;
            c0305a.f1209J = c0312b.f1334W;
            c0305a.f1222W = c0312b.f1363m0;
            c0305a.f1223X = c0312b.f1365n0;
            c0305a.f1211L = c0312b.f1336Y;
            c0305a.f1212M = c0312b.f1337Z;
            c0305a.f1215P = c0312b.f1339a0;
            c0305a.f1216Q = c0312b.f1341b0;
            c0305a.f1213N = c0312b.f1343c0;
            c0305a.f1214O = c0312b.f1345d0;
            c0305a.f1217R = c0312b.f1347e0;
            c0305a.f1218S = c0312b.f1349f0;
            c0305a.f1221V = c0312b.f1317F;
            c0305a.f1230c = c0312b.f1350g;
            c0305a.f1226a = c0312b.f1346e;
            c0305a.f1228b = c0312b.f1348f;
            ((ViewGroup.MarginLayoutParams) c0305a).width = c0312b.f1342c;
            ((ViewGroup.MarginLayoutParams) c0305a).height = c0312b.f1344d;
            String str = c0312b.f1361l0;
            if (str != null) {
                c0305a.f1224Y = str;
            }
            c0305a.f1225Z = c0312b.f1369p0;
            c0305a.setMarginStart(c0312b.f1323L);
            c0305a.setMarginEnd(this.f1295d.f1322K);
            c0305a.m8369a();
        }

        /* renamed from: b */
        public final void m8350b(int i, ConstraintLayout.C0305a c0305a) {
            this.f1292a = i;
            C0312b c0312b = this.f1295d;
            c0312b.f1354i = c0305a.f1234e;
            c0312b.f1356j = c0305a.f1236f;
            c0312b.f1358k = c0305a.f1238g;
            c0312b.f1360l = c0305a.f1240h;
            c0312b.f1362m = c0305a.f1242i;
            c0312b.f1364n = c0305a.f1244j;
            c0312b.f1366o = c0305a.f1246k;
            c0312b.f1368p = c0305a.f1248l;
            c0312b.f1370q = c0305a.f1250m;
            c0312b.f1371r = c0305a.f1252n;
            c0312b.f1372s = c0305a.f1254o;
            c0312b.f1373t = c0305a.f1261s;
            c0312b.f1374u = c0305a.f1262t;
            c0312b.f1375v = c0305a.f1263u;
            c0312b.f1376w = c0305a.f1264v;
            c0312b.f1377x = c0305a.f1204E;
            c0312b.f1378y = c0305a.f1205F;
            c0312b.f1379z = c0305a.f1206G;
            c0312b.f1312A = c0305a.f1256p;
            c0312b.f1313B = c0305a.f1258q;
            c0312b.f1314C = c0305a.f1260r;
            c0312b.f1315D = c0305a.f1219T;
            c0312b.f1316E = c0305a.f1220U;
            c0312b.f1317F = c0305a.f1221V;
            c0312b.f1350g = c0305a.f1230c;
            c0312b.f1346e = c0305a.f1226a;
            c0312b.f1348f = c0305a.f1228b;
            c0312b.f1342c = ((ViewGroup.MarginLayoutParams) c0305a).width;
            c0312b.f1344d = ((ViewGroup.MarginLayoutParams) c0305a).height;
            c0312b.f1318G = ((ViewGroup.MarginLayoutParams) c0305a).leftMargin;
            c0312b.f1319H = ((ViewGroup.MarginLayoutParams) c0305a).rightMargin;
            c0312b.f1320I = ((ViewGroup.MarginLayoutParams) c0305a).topMargin;
            c0312b.f1321J = ((ViewGroup.MarginLayoutParams) c0305a).bottomMargin;
            c0312b.f1324M = c0305a.f1203D;
            c0312b.f1332U = c0305a.f1208I;
            c0312b.f1333V = c0305a.f1207H;
            c0312b.f1335X = c0305a.f1210K;
            c0312b.f1334W = c0305a.f1209J;
            c0312b.f1363m0 = c0305a.f1222W;
            c0312b.f1365n0 = c0305a.f1223X;
            c0312b.f1336Y = c0305a.f1211L;
            c0312b.f1337Z = c0305a.f1212M;
            c0312b.f1339a0 = c0305a.f1215P;
            c0312b.f1341b0 = c0305a.f1216Q;
            c0312b.f1343c0 = c0305a.f1213N;
            c0312b.f1345d0 = c0305a.f1214O;
            c0312b.f1347e0 = c0305a.f1217R;
            c0312b.f1349f0 = c0305a.f1218S;
            c0312b.f1361l0 = c0305a.f1224Y;
            c0312b.f1326O = c0305a.f1266x;
            c0312b.f1328Q = c0305a.f1268z;
            c0312b.f1325N = c0305a.f1265w;
            c0312b.f1327P = c0305a.f1267y;
            c0312b.f1330S = c0305a.f1200A;
            c0312b.f1329R = c0305a.f1201B;
            c0312b.f1331T = c0305a.f1202C;
            c0312b.f1369p0 = c0305a.f1225Z;
            c0312b.f1322K = c0305a.getMarginEnd();
            this.f1295d.f1323L = c0305a.getMarginStart();
        }

        /* renamed from: c */
        public final void m8349c(int i, C0316c.C0317a c0317a) {
            m8350b(i, c0317a);
            this.f1293b.f1398d = c0317a.f1420r0;
            C0315e c0315e = this.f1296e;
            c0315e.f1402b = c0317a.f1423u0;
            c0315e.f1403c = c0317a.f1424v0;
            c0315e.f1404d = c0317a.f1425w0;
            c0315e.f1405e = c0317a.f1426x0;
            c0315e.f1406f = c0317a.f1427y0;
            c0315e.f1407g = c0317a.f1428z0;
            c0315e.f1408h = c0317a.f1416A0;
            c0315e.f1410j = c0317a.f1417B0;
            c0315e.f1411k = c0317a.f1418C0;
            c0315e.f1412l = c0317a.f1419D0;
            c0315e.f1414n = c0317a.f1422t0;
            c0315e.f1413m = c0317a.f1421s0;
        }

        public Object clone() throws CloneNotSupportedException {
            C0310a c0310a = new C0310a();
            C0312b c0312b = c0310a.f1295d;
            C0312b c0312b2 = this.f1295d;
            Objects.requireNonNull(c0312b);
            c0312b.f1338a = c0312b2.f1338a;
            c0312b.f1342c = c0312b2.f1342c;
            c0312b.f1340b = c0312b2.f1340b;
            c0312b.f1344d = c0312b2.f1344d;
            c0312b.f1346e = c0312b2.f1346e;
            c0312b.f1348f = c0312b2.f1348f;
            c0312b.f1350g = c0312b2.f1350g;
            c0312b.f1352h = c0312b2.f1352h;
            c0312b.f1354i = c0312b2.f1354i;
            c0312b.f1356j = c0312b2.f1356j;
            c0312b.f1358k = c0312b2.f1358k;
            c0312b.f1360l = c0312b2.f1360l;
            c0312b.f1362m = c0312b2.f1362m;
            c0312b.f1364n = c0312b2.f1364n;
            c0312b.f1366o = c0312b2.f1366o;
            c0312b.f1368p = c0312b2.f1368p;
            c0312b.f1370q = c0312b2.f1370q;
            c0312b.f1371r = c0312b2.f1371r;
            c0312b.f1372s = c0312b2.f1372s;
            c0312b.f1373t = c0312b2.f1373t;
            c0312b.f1374u = c0312b2.f1374u;
            c0312b.f1375v = c0312b2.f1375v;
            c0312b.f1376w = c0312b2.f1376w;
            c0312b.f1377x = c0312b2.f1377x;
            c0312b.f1378y = c0312b2.f1378y;
            c0312b.f1379z = c0312b2.f1379z;
            c0312b.f1312A = c0312b2.f1312A;
            c0312b.f1313B = c0312b2.f1313B;
            c0312b.f1314C = c0312b2.f1314C;
            c0312b.f1315D = c0312b2.f1315D;
            c0312b.f1316E = c0312b2.f1316E;
            c0312b.f1317F = c0312b2.f1317F;
            c0312b.f1318G = c0312b2.f1318G;
            c0312b.f1319H = c0312b2.f1319H;
            c0312b.f1320I = c0312b2.f1320I;
            c0312b.f1321J = c0312b2.f1321J;
            c0312b.f1322K = c0312b2.f1322K;
            c0312b.f1323L = c0312b2.f1323L;
            c0312b.f1324M = c0312b2.f1324M;
            c0312b.f1325N = c0312b2.f1325N;
            c0312b.f1326O = c0312b2.f1326O;
            c0312b.f1327P = c0312b2.f1327P;
            c0312b.f1328Q = c0312b2.f1328Q;
            c0312b.f1329R = c0312b2.f1329R;
            c0312b.f1330S = c0312b2.f1330S;
            c0312b.f1331T = c0312b2.f1331T;
            c0312b.f1332U = c0312b2.f1332U;
            c0312b.f1333V = c0312b2.f1333V;
            c0312b.f1334W = c0312b2.f1334W;
            c0312b.f1335X = c0312b2.f1335X;
            c0312b.f1336Y = c0312b2.f1336Y;
            c0312b.f1337Z = c0312b2.f1337Z;
            c0312b.f1339a0 = c0312b2.f1339a0;
            c0312b.f1341b0 = c0312b2.f1341b0;
            c0312b.f1343c0 = c0312b2.f1343c0;
            c0312b.f1345d0 = c0312b2.f1345d0;
            c0312b.f1347e0 = c0312b2.f1347e0;
            c0312b.f1349f0 = c0312b2.f1349f0;
            c0312b.f1351g0 = c0312b2.f1351g0;
            c0312b.f1353h0 = c0312b2.f1353h0;
            c0312b.f1355i0 = c0312b2.f1355i0;
            c0312b.f1361l0 = c0312b2.f1361l0;
            int[] iArr = c0312b2.f1357j0;
            if (iArr == null || c0312b2.f1359k0 != null) {
                c0312b.f1357j0 = null;
            } else {
                c0312b.f1357j0 = Arrays.copyOf(iArr, iArr.length);
            }
            c0312b.f1359k0 = c0312b2.f1359k0;
            c0312b.f1363m0 = c0312b2.f1363m0;
            c0312b.f1365n0 = c0312b2.f1365n0;
            c0312b.f1367o0 = c0312b2.f1367o0;
            c0312b.f1369p0 = c0312b2.f1369p0;
            C0313c c0313c = c0310a.f1294c;
            C0313c c0313c2 = this.f1294c;
            Objects.requireNonNull(c0313c);
            c0313c.f1381a = c0313c2.f1381a;
            c0313c.f1382b = c0313c2.f1382b;
            c0313c.f1384d = c0313c2.f1384d;
            c0313c.f1385e = c0313c2.f1385e;
            c0313c.f1386f = c0313c2.f1386f;
            c0313c.f1389i = c0313c2.f1389i;
            c0313c.f1387g = c0313c2.f1387g;
            c0313c.f1388h = c0313c2.f1388h;
            C0314d c0314d = c0310a.f1293b;
            C0314d c0314d2 = this.f1293b;
            Objects.requireNonNull(c0314d);
            c0314d.f1395a = c0314d2.f1395a;
            c0314d.f1396b = c0314d2.f1396b;
            c0314d.f1398d = c0314d2.f1398d;
            c0314d.f1399e = c0314d2.f1399e;
            c0314d.f1397c = c0314d2.f1397c;
            C0315e c0315e = c0310a.f1296e;
            C0315e c0315e2 = this.f1296e;
            Objects.requireNonNull(c0315e);
            c0315e.f1401a = c0315e2.f1401a;
            c0315e.f1402b = c0315e2.f1402b;
            c0315e.f1403c = c0315e2.f1403c;
            c0315e.f1404d = c0315e2.f1404d;
            c0315e.f1405e = c0315e2.f1405e;
            c0315e.f1406f = c0315e2.f1406f;
            c0315e.f1407g = c0315e2.f1407g;
            c0315e.f1408h = c0315e2.f1408h;
            c0315e.f1409i = c0315e2.f1409i;
            c0315e.f1410j = c0315e2.f1410j;
            c0315e.f1411k = c0315e2.f1411k;
            c0315e.f1412l = c0315e2.f1412l;
            c0315e.f1413m = c0315e2.f1413m;
            c0315e.f1414n = c0315e2.f1414n;
            c0310a.f1292a = this.f1292a;
            c0310a.f1298g = this.f1298g;
            return c0310a;
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$b */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$b.class */
    public static class C0312b {

        /* renamed from: q0 */
        public static SparseIntArray f1311q0;

        /* renamed from: c */
        public int f1342c;

        /* renamed from: d */
        public int f1344d;

        /* renamed from: j0 */
        public int[] f1357j0;

        /* renamed from: k0 */
        public String f1359k0;

        /* renamed from: l0 */
        public String f1361l0;

        /* renamed from: a */
        public boolean f1338a = false;

        /* renamed from: b */
        public boolean f1340b = false;

        /* renamed from: e */
        public int f1346e = -1;

        /* renamed from: f */
        public int f1348f = -1;

        /* renamed from: g */
        public float f1350g = -1.0f;

        /* renamed from: h */
        public boolean f1352h = true;

        /* renamed from: i */
        public int f1354i = -1;

        /* renamed from: j */
        public int f1356j = -1;

        /* renamed from: k */
        public int f1358k = -1;

        /* renamed from: l */
        public int f1360l = -1;

        /* renamed from: m */
        public int f1362m = -1;

        /* renamed from: n */
        public int f1364n = -1;

        /* renamed from: o */
        public int f1366o = -1;

        /* renamed from: p */
        public int f1368p = -1;

        /* renamed from: q */
        public int f1370q = -1;

        /* renamed from: r */
        public int f1371r = -1;

        /* renamed from: s */
        public int f1372s = -1;

        /* renamed from: t */
        public int f1373t = -1;

        /* renamed from: u */
        public int f1374u = -1;

        /* renamed from: v */
        public int f1375v = -1;

        /* renamed from: w */
        public int f1376w = -1;

        /* renamed from: x */
        public float f1377x = 0.5f;

        /* renamed from: y */
        public float f1378y = 0.5f;

        /* renamed from: z */
        public String f1379z = null;

        /* renamed from: A */
        public int f1312A = -1;

        /* renamed from: B */
        public int f1313B = 0;

        /* renamed from: C */
        public float f1314C = 0.0f;

        /* renamed from: D */
        public int f1315D = -1;

        /* renamed from: E */
        public int f1316E = -1;

        /* renamed from: F */
        public int f1317F = -1;

        /* renamed from: G */
        public int f1318G = 0;

        /* renamed from: H */
        public int f1319H = 0;

        /* renamed from: I */
        public int f1320I = 0;

        /* renamed from: J */
        public int f1321J = 0;

        /* renamed from: K */
        public int f1322K = 0;

        /* renamed from: L */
        public int f1323L = 0;

        /* renamed from: M */
        public int f1324M = 0;

        /* renamed from: N */
        public int f1325N = Integer.MIN_VALUE;

        /* renamed from: O */
        public int f1326O = Integer.MIN_VALUE;

        /* renamed from: P */
        public int f1327P = Integer.MIN_VALUE;

        /* renamed from: Q */
        public int f1328Q = Integer.MIN_VALUE;

        /* renamed from: R */
        public int f1329R = Integer.MIN_VALUE;

        /* renamed from: S */
        public int f1330S = Integer.MIN_VALUE;

        /* renamed from: T */
        public int f1331T = Integer.MIN_VALUE;

        /* renamed from: U */
        public float f1332U = -1.0f;

        /* renamed from: V */
        public float f1333V = -1.0f;

        /* renamed from: W */
        public int f1334W = 0;

        /* renamed from: X */
        public int f1335X = 0;

        /* renamed from: Y */
        public int f1336Y = 0;

        /* renamed from: Z */
        public int f1337Z = 0;

        /* renamed from: a0 */
        public int f1339a0 = 0;

        /* renamed from: b0 */
        public int f1341b0 = 0;

        /* renamed from: c0 */
        public int f1343c0 = 0;

        /* renamed from: d0 */
        public int f1345d0 = 0;

        /* renamed from: e0 */
        public float f1347e0 = 1.0f;

        /* renamed from: f0 */
        public float f1349f0 = 1.0f;

        /* renamed from: g0 */
        public int f1351g0 = -1;

        /* renamed from: h0 */
        public int f1353h0 = 0;

        /* renamed from: i0 */
        public int f1355i0 = -1;

        /* renamed from: m0 */
        public boolean f1363m0 = false;

        /* renamed from: n0 */
        public boolean f1365n0 = false;

        /* renamed from: o0 */
        public boolean f1367o0 = true;

        /* renamed from: p0 */
        public int f1369p0 = 0;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1311q0 = sparseIntArray;
            sparseIntArray.append(43, 24);
            f1311q0.append(44, 25);
            f1311q0.append(46, 28);
            f1311q0.append(47, 29);
            f1311q0.append(52, 35);
            f1311q0.append(51, 34);
            f1311q0.append(24, 4);
            f1311q0.append(23, 3);
            f1311q0.append(19, 1);
            f1311q0.append(61, 6);
            f1311q0.append(62, 7);
            f1311q0.append(31, 17);
            f1311q0.append(32, 18);
            f1311q0.append(33, 19);
            f1311q0.append(15, 90);
            f1311q0.append(0, 26);
            f1311q0.append(48, 31);
            f1311q0.append(49, 32);
            f1311q0.append(30, 10);
            f1311q0.append(29, 9);
            f1311q0.append(66, 13);
            f1311q0.append(69, 16);
            f1311q0.append(67, 14);
            f1311q0.append(64, 11);
            f1311q0.append(68, 15);
            f1311q0.append(65, 12);
            f1311q0.append(55, 38);
            f1311q0.append(41, 37);
            f1311q0.append(40, 39);
            f1311q0.append(54, 40);
            f1311q0.append(39, 20);
            f1311q0.append(53, 36);
            f1311q0.append(28, 5);
            f1311q0.append(42, 91);
            f1311q0.append(50, 91);
            f1311q0.append(45, 91);
            f1311q0.append(22, 91);
            f1311q0.append(18, 91);
            f1311q0.append(3, 23);
            f1311q0.append(5, 27);
            f1311q0.append(7, 30);
            f1311q0.append(8, 8);
            f1311q0.append(4, 33);
            f1311q0.append(6, 2);
            f1311q0.append(1, 22);
            f1311q0.append(2, 21);
            f1311q0.append(56, 41);
            f1311q0.append(34, 42);
            f1311q0.append(17, 41);
            f1311q0.append(16, 42);
            f1311q0.append(71, 76);
            f1311q0.append(25, 61);
            f1311q0.append(27, 62);
            f1311q0.append(26, 63);
            f1311q0.append(60, 69);
            f1311q0.append(38, 70);
            f1311q0.append(12, 71);
            f1311q0.append(10, 72);
            f1311q0.append(11, 73);
            f1311q0.append(13, 74);
            f1311q0.append(9, 75);
        }

        /* renamed from: a */
        public void m8344a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2758j);
            this.f1340b = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                int i2 = f1311q0.get(index);
                switch (i2) {
                    case 1:
                        int i3 = this.f1370q;
                        int[] iArr = C0309b.f1286d;
                        int resourceId = obtainStyledAttributes.getResourceId(index, i3);
                        int i4 = resourceId;
                        if (resourceId == -1) {
                            i4 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1370q = i4;
                        break;
                    case 2:
                        this.f1321J = obtainStyledAttributes.getDimensionPixelSize(index, this.f1321J);
                        break;
                    case 3:
                        int i5 = this.f1368p;
                        int[] iArr2 = C0309b.f1286d;
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, i5);
                        int i6 = resourceId2;
                        if (resourceId2 == -1) {
                            i6 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1368p = i6;
                        break;
                    case 4:
                        int i7 = this.f1366o;
                        int[] iArr3 = C0309b.f1286d;
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, i7);
                        int i8 = resourceId3;
                        if (resourceId3 == -1) {
                            i8 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1366o = i8;
                        break;
                    case 5:
                        this.f1379z = obtainStyledAttributes.getString(index);
                        break;
                    case 6:
                        this.f1315D = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1315D);
                        break;
                    case 7:
                        this.f1316E = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1316E);
                        break;
                    case 8:
                        this.f1322K = obtainStyledAttributes.getDimensionPixelSize(index, this.f1322K);
                        break;
                    case 9:
                        int i9 = this.f1376w;
                        int[] iArr4 = C0309b.f1286d;
                        int resourceId4 = obtainStyledAttributes.getResourceId(index, i9);
                        int i10 = resourceId4;
                        if (resourceId4 == -1) {
                            i10 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1376w = i10;
                        break;
                    case 10:
                        int i11 = this.f1375v;
                        int[] iArr5 = C0309b.f1286d;
                        int resourceId5 = obtainStyledAttributes.getResourceId(index, i11);
                        int i12 = resourceId5;
                        if (resourceId5 == -1) {
                            i12 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1375v = i12;
                        break;
                    case 11:
                        this.f1328Q = obtainStyledAttributes.getDimensionPixelSize(index, this.f1328Q);
                        break;
                    case 12:
                        this.f1329R = obtainStyledAttributes.getDimensionPixelSize(index, this.f1329R);
                        break;
                    case 13:
                        this.f1325N = obtainStyledAttributes.getDimensionPixelSize(index, this.f1325N);
                        break;
                    case 14:
                        this.f1327P = obtainStyledAttributes.getDimensionPixelSize(index, this.f1327P);
                        break;
                    case 15:
                        this.f1330S = obtainStyledAttributes.getDimensionPixelSize(index, this.f1330S);
                        break;
                    case 16:
                        this.f1326O = obtainStyledAttributes.getDimensionPixelSize(index, this.f1326O);
                        break;
                    case 17:
                        this.f1346e = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1346e);
                        break;
                    case 18:
                        this.f1348f = obtainStyledAttributes.getDimensionPixelOffset(index, this.f1348f);
                        break;
                    case 19:
                        this.f1350g = obtainStyledAttributes.getFloat(index, this.f1350g);
                        break;
                    case 20:
                        this.f1377x = obtainStyledAttributes.getFloat(index, this.f1377x);
                        break;
                    case 21:
                        this.f1344d = obtainStyledAttributes.getLayoutDimension(index, this.f1344d);
                        break;
                    case 22:
                        this.f1342c = obtainStyledAttributes.getLayoutDimension(index, this.f1342c);
                        break;
                    case 23:
                        this.f1318G = obtainStyledAttributes.getDimensionPixelSize(index, this.f1318G);
                        break;
                    case 24:
                        int i13 = this.f1354i;
                        int[] iArr6 = C0309b.f1286d;
                        int resourceId6 = obtainStyledAttributes.getResourceId(index, i13);
                        int i14 = resourceId6;
                        if (resourceId6 == -1) {
                            i14 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1354i = i14;
                        break;
                    case 25:
                        int i15 = this.f1356j;
                        int[] iArr7 = C0309b.f1286d;
                        int resourceId7 = obtainStyledAttributes.getResourceId(index, i15);
                        int i16 = resourceId7;
                        if (resourceId7 == -1) {
                            i16 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1356j = i16;
                        break;
                    case 26:
                        this.f1317F = obtainStyledAttributes.getInt(index, this.f1317F);
                        break;
                    case 27:
                        this.f1319H = obtainStyledAttributes.getDimensionPixelSize(index, this.f1319H);
                        break;
                    case 28:
                        int i17 = this.f1358k;
                        int[] iArr8 = C0309b.f1286d;
                        int resourceId8 = obtainStyledAttributes.getResourceId(index, i17);
                        int i18 = resourceId8;
                        if (resourceId8 == -1) {
                            i18 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1358k = i18;
                        break;
                    case 29:
                        int i19 = this.f1360l;
                        int[] iArr9 = C0309b.f1286d;
                        int resourceId9 = obtainStyledAttributes.getResourceId(index, i19);
                        int i20 = resourceId9;
                        if (resourceId9 == -1) {
                            i20 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1360l = i20;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                        this.f1323L = obtainStyledAttributes.getDimensionPixelSize(index, this.f1323L);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        int i21 = this.f1373t;
                        int[] iArr10 = C0309b.f1286d;
                        int resourceId10 = obtainStyledAttributes.getResourceId(index, i21);
                        int i22 = resourceId10;
                        if (resourceId10 == -1) {
                            i22 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1373t = i22;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                        int i23 = this.f1374u;
                        int[] iArr11 = C0309b.f1286d;
                        int resourceId11 = obtainStyledAttributes.getResourceId(index, i23);
                        int i24 = resourceId11;
                        if (resourceId11 == -1) {
                            i24 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1374u = i24;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        this.f1320I = obtainStyledAttributes.getDimensionPixelSize(index, this.f1320I);
                        break;
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        int i25 = this.f1364n;
                        int[] iArr12 = C0309b.f1286d;
                        int resourceId12 = obtainStyledAttributes.getResourceId(index, i25);
                        int i26 = resourceId12;
                        if (resourceId12 == -1) {
                            i26 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1364n = i26;
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        int i27 = this.f1362m;
                        int[] iArr13 = C0309b.f1286d;
                        int resourceId13 = obtainStyledAttributes.getResourceId(index, i27);
                        int i28 = resourceId13;
                        if (resourceId13 == -1) {
                            i28 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1362m = i28;
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        this.f1378y = obtainStyledAttributes.getFloat(index, this.f1378y);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        this.f1333V = obtainStyledAttributes.getFloat(index, this.f1333V);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        this.f1332U = obtainStyledAttributes.getFloat(index, this.f1332U);
                        break;
                    case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        this.f1334W = obtainStyledAttributes.getInt(index, this.f1334W);
                        break;
                    case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        this.f1335X = obtainStyledAttributes.getInt(index, this.f1335X);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        C0309b.m8353g(this, obtainStyledAttributes, index, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        C0309b.m8353g(this, obtainStyledAttributes, index, 1);
                        break;
                    default:
                        switch (i2) {
                            case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                                int i29 = this.f1312A;
                                int[] iArr14 = C0309b.f1286d;
                                int resourceId14 = obtainStyledAttributes.getResourceId(index, i29);
                                int i30 = resourceId14;
                                if (resourceId14 == -1) {
                                    i30 = obtainStyledAttributes.getInt(index, -1);
                                }
                                this.f1312A = i30;
                                continue;
                            case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                                this.f1313B = obtainStyledAttributes.getDimensionPixelSize(index, this.f1313B);
                                continue;
                            case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                                this.f1314C = obtainStyledAttributes.getFloat(index, this.f1314C);
                                continue;
                            default:
                                switch (i2) {
                                    case C3681R.styleable.AppCompatTheme_editTextColor /* 69 */:
                                        this.f1347e0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_editTextStyle /* 70 */:
                                        this.f1349f0 = obtainStyledAttributes.getFloat(index, 1.0f);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_homeAsUpIndicator /* 71 */:
                                        break;
                                    case C3681R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                                        this.f1351g0 = obtainStyledAttributes.getInt(index, this.f1351g0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /* 73 */:
                                        this.f1353h0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1353h0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated /* 74 */:
                                        this.f1359k0 = obtainStyledAttributes.getString(index);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorSingleAnimated /* 75 */:
                                        this.f1367o0 = obtainStyledAttributes.getBoolean(index, this.f1367o0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                                        this.f1369p0 = obtainStyledAttributes.getInt(index, this.f1369p0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                                        int i31 = this.f1371r;
                                        int[] iArr15 = C0309b.f1286d;
                                        int resourceId15 = obtainStyledAttributes.getResourceId(index, i31);
                                        int i32 = resourceId15;
                                        if (resourceId15 == -1) {
                                            i32 = obtainStyledAttributes.getInt(index, -1);
                                        }
                                        this.f1371r = i32;
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPopupWindowStyle /* 78 */:
                                        int i33 = this.f1372s;
                                        int[] iArr16 = C0309b.f1286d;
                                        int resourceId16 = obtainStyledAttributes.getResourceId(index, i33);
                                        int i34 = resourceId16;
                                        if (resourceId16 == -1) {
                                            i34 = obtainStyledAttributes.getInt(index, -1);
                                        }
                                        this.f1372s = i34;
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeight /* 79 */:
                                        this.f1331T = obtainStyledAttributes.getDimensionPixelSize(index, this.f1331T);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightLarge /* 80 */:
                                        this.f1324M = obtainStyledAttributes.getDimensionPixelSize(index, this.f1324M);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                                        this.f1336Y = obtainStyledAttributes.getInt(index, this.f1336Y);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingEnd /* 82 */:
                                        this.f1337Z = obtainStyledAttributes.getInt(index, this.f1337Z);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                                        this.f1341b0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1341b0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingRight /* 84 */:
                                        this.f1339a0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1339a0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingStart /* 85 */:
                                        this.f1345d0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1345d0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_panelBackground /* 86 */:
                                        this.f1343c0 = obtainStyledAttributes.getDimensionPixelSize(index, this.f1343c0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
                                        this.f1363m0 = obtainStyledAttributes.getBoolean(index, this.f1363m0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_panelMenuListWidth /* 88 */:
                                        this.f1365n0 = obtainStyledAttributes.getBoolean(index, this.f1365n0);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_popupMenuStyle /* 89 */:
                                        this.f1361l0 = obtainStyledAttributes.getString(index);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
                                        this.f1352h = obtainStyledAttributes.getBoolean(index, this.f1352h);
                                        continue;
                                    case C3681R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                                        StringBuilder m8752j = C0082b.m8752j("unused attribute 0x");
                                        m8752j.append(Integer.toHexString(index));
                                        m8752j.append("   ");
                                        m8752j.append(f1311q0.get(index));
                                        Log.w("ConstraintSet", m8752j.toString());
                                        continue;
                                    default:
                                        StringBuilder m8752j2 = C0082b.m8752j("Unknown attribute 0x");
                                        m8752j2.append(Integer.toHexString(index));
                                        m8752j2.append("   ");
                                        m8752j2.append(f1311q0.get(index));
                                        Log.w("ConstraintSet", m8752j2.toString());
                                        continue;
                                }
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$c */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$c.class */
    public static class C0313c {

        /* renamed from: o */
        public static SparseIntArray f1380o;

        /* renamed from: a */
        public boolean f1381a = false;

        /* renamed from: b */
        public int f1382b = -1;

        /* renamed from: c */
        public int f1383c = 0;

        /* renamed from: d */
        public String f1384d = null;

        /* renamed from: e */
        public int f1385e = -1;

        /* renamed from: f */
        public int f1386f = 0;

        /* renamed from: g */
        public float f1387g = Float.NaN;

        /* renamed from: h */
        public int f1388h = -1;

        /* renamed from: i */
        public float f1389i = Float.NaN;

        /* renamed from: j */
        public float f1390j = Float.NaN;

        /* renamed from: k */
        public int f1391k = -1;

        /* renamed from: l */
        public String f1392l = null;

        /* renamed from: m */
        public int f1393m = -3;

        /* renamed from: n */
        public int f1394n = -1;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1380o = sparseIntArray;
            sparseIntArray.append(3, 1);
            f1380o.append(5, 2);
            f1380o.append(9, 3);
            f1380o.append(2, 4);
            f1380o.append(1, 5);
            f1380o.append(0, 6);
            f1380o.append(4, 7);
            f1380o.append(8, 8);
            f1380o.append(7, 9);
            f1380o.append(6, 10);
        }

        /* renamed from: a */
        public void m8343a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2759k);
            this.f1381a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f1380o.get(index)) {
                    case 1:
                        this.f1389i = obtainStyledAttributes.getFloat(index, this.f1389i);
                        break;
                    case 2:
                        this.f1385e = obtainStyledAttributes.getInt(index, this.f1385e);
                        break;
                    case 3:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            this.f1384d = obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            this.f1384d = C4442a.f13811c[obtainStyledAttributes.getInteger(index, 0)];
                            break;
                        }
                    case 4:
                        this.f1386f = obtainStyledAttributes.getInt(index, 0);
                        break;
                    case 5:
                        int i2 = this.f1382b;
                        int[] iArr = C0309b.f1286d;
                        int resourceId = obtainStyledAttributes.getResourceId(index, i2);
                        int i3 = resourceId;
                        if (resourceId == -1) {
                            i3 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1382b = i3;
                        break;
                    case 6:
                        this.f1383c = obtainStyledAttributes.getInteger(index, this.f1383c);
                        break;
                    case 7:
                        this.f1387g = obtainStyledAttributes.getFloat(index, this.f1387g);
                        break;
                    case 8:
                        this.f1391k = obtainStyledAttributes.getInteger(index, this.f1391k);
                        break;
                    case 9:
                        this.f1390j = obtainStyledAttributes.getFloat(index, this.f1390j);
                        break;
                    case 10:
                        int i4 = obtainStyledAttributes.peekValue(index).type;
                        if (i4 == 1) {
                            int resourceId2 = obtainStyledAttributes.getResourceId(index, -1);
                            this.f1394n = resourceId2;
                            if (resourceId2 != -1) {
                                this.f1393m = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (i4 == 3) {
                            String string = obtainStyledAttributes.getString(index);
                            this.f1392l = string;
                            if (string.indexOf("/") > 0) {
                                this.f1394n = obtainStyledAttributes.getResourceId(index, -1);
                                this.f1393m = -2;
                                break;
                            } else {
                                this.f1393m = -1;
                                break;
                            }
                        } else {
                            this.f1393m = obtainStyledAttributes.getInteger(index, this.f1394n);
                            break;
                        }
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$d */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$d.class */
    public static class C0314d {

        /* renamed from: a */
        public boolean f1395a = false;

        /* renamed from: b */
        public int f1396b = 0;

        /* renamed from: c */
        public int f1397c = 0;

        /* renamed from: d */
        public float f1398d = 1.0f;

        /* renamed from: e */
        public float f1399e = Float.NaN;

        /* renamed from: a */
        public void m8342a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2761m);
            this.f1395a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                if (index == 1) {
                    this.f1398d = obtainStyledAttributes.getFloat(index, this.f1398d);
                } else if (index == 0) {
                    int i2 = obtainStyledAttributes.getInt(index, this.f1396b);
                    this.f1396b = i2;
                    int[] iArr = C0309b.f1286d;
                    this.f1396b = C0309b.f1286d[i2];
                } else if (index == 4) {
                    this.f1397c = obtainStyledAttributes.getInt(index, this.f1397c);
                } else if (index == 3) {
                    this.f1399e = obtainStyledAttributes.getFloat(index, this.f1399e);
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    /* renamed from: androidx.constraintlayout.widget.b$e */
    /* loaded from: classes-dex2jar.jar:androidx/constraintlayout/widget/b$e.class */
    public static class C0315e {

        /* renamed from: o */
        public static SparseIntArray f1400o;

        /* renamed from: a */
        public boolean f1401a = false;

        /* renamed from: b */
        public float f1402b = 0.0f;

        /* renamed from: c */
        public float f1403c = 0.0f;

        /* renamed from: d */
        public float f1404d = 0.0f;

        /* renamed from: e */
        public float f1405e = 1.0f;

        /* renamed from: f */
        public float f1406f = 1.0f;

        /* renamed from: g */
        public float f1407g = Float.NaN;

        /* renamed from: h */
        public float f1408h = Float.NaN;

        /* renamed from: i */
        public int f1409i = -1;

        /* renamed from: j */
        public float f1410j = 0.0f;

        /* renamed from: k */
        public float f1411k = 0.0f;

        /* renamed from: l */
        public float f1412l = 0.0f;

        /* renamed from: m */
        public boolean f1413m = false;

        /* renamed from: n */
        public float f1414n = 0.0f;

        static {
            SparseIntArray sparseIntArray = new SparseIntArray();
            f1400o = sparseIntArray;
            sparseIntArray.append(6, 1);
            f1400o.append(7, 2);
            f1400o.append(8, 3);
            f1400o.append(4, 4);
            f1400o.append(5, 5);
            f1400o.append(0, 6);
            f1400o.append(1, 7);
            f1400o.append(2, 8);
            f1400o.append(3, 9);
            f1400o.append(9, 10);
            f1400o.append(10, 11);
            f1400o.append(11, 12);
        }

        /* renamed from: a */
        public void m8341a(Context context, AttributeSet attributeSet) {
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, C0713a.f2763o);
            this.f1401a = true;
            int indexCount = obtainStyledAttributes.getIndexCount();
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f1400o.get(index)) {
                    case 1:
                        this.f1402b = obtainStyledAttributes.getFloat(index, this.f1402b);
                        break;
                    case 2:
                        this.f1403c = obtainStyledAttributes.getFloat(index, this.f1403c);
                        break;
                    case 3:
                        this.f1404d = obtainStyledAttributes.getFloat(index, this.f1404d);
                        break;
                    case 4:
                        this.f1405e = obtainStyledAttributes.getFloat(index, this.f1405e);
                        break;
                    case 5:
                        this.f1406f = obtainStyledAttributes.getFloat(index, this.f1406f);
                        break;
                    case 6:
                        this.f1407g = obtainStyledAttributes.getDimension(index, this.f1407g);
                        break;
                    case 7:
                        this.f1408h = obtainStyledAttributes.getDimension(index, this.f1408h);
                        break;
                    case 8:
                        this.f1410j = obtainStyledAttributes.getDimension(index, this.f1410j);
                        break;
                    case 9:
                        this.f1411k = obtainStyledAttributes.getDimension(index, this.f1411k);
                        break;
                    case 10:
                        this.f1412l = obtainStyledAttributes.getDimension(index, this.f1412l);
                        break;
                    case 11:
                        this.f1413m = true;
                        this.f1414n = obtainStyledAttributes.getDimension(index, this.f1414n);
                        break;
                    case 12:
                        int i2 = this.f1409i;
                        int[] iArr = C0309b.f1286d;
                        int resourceId = obtainStyledAttributes.getResourceId(index, i2);
                        int i3 = resourceId;
                        if (resourceId == -1) {
                            i3 = obtainStyledAttributes.getInt(index, -1);
                        }
                        this.f1409i = i3;
                        break;
                }
            }
            obtainStyledAttributes.recycle();
        }
    }

    static {
        f1287e.append(82, 25);
        f1287e.append(83, 26);
        f1287e.append(85, 29);
        f1287e.append(86, 30);
        f1287e.append(92, 36);
        f1287e.append(91, 35);
        f1287e.append(63, 4);
        f1287e.append(62, 3);
        f1287e.append(58, 1);
        f1287e.append(60, 91);
        f1287e.append(59, 92);
        f1287e.append(101, 6);
        f1287e.append(102, 7);
        f1287e.append(70, 17);
        f1287e.append(71, 18);
        f1287e.append(72, 19);
        f1287e.append(54, 99);
        f1287e.append(0, 27);
        f1287e.append(87, 32);
        f1287e.append(88, 33);
        f1287e.append(69, 10);
        f1287e.append(68, 9);
        f1287e.append(106, 13);
        f1287e.append(109, 16);
        f1287e.append(107, 14);
        f1287e.append(104, 11);
        f1287e.append(108, 15);
        f1287e.append(105, 12);
        f1287e.append(95, 40);
        f1287e.append(80, 39);
        f1287e.append(79, 41);
        f1287e.append(94, 42);
        f1287e.append(78, 20);
        f1287e.append(93, 37);
        f1287e.append(67, 5);
        f1287e.append(81, 87);
        f1287e.append(90, 87);
        f1287e.append(84, 87);
        f1287e.append(61, 87);
        f1287e.append(57, 87);
        f1287e.append(5, 24);
        f1287e.append(7, 28);
        f1287e.append(23, 31);
        f1287e.append(24, 8);
        f1287e.append(6, 34);
        f1287e.append(8, 2);
        f1287e.append(3, 23);
        f1287e.append(4, 21);
        f1287e.append(96, 95);
        f1287e.append(73, 96);
        f1287e.append(2, 22);
        f1287e.append(13, 43);
        f1287e.append(26, 44);
        f1287e.append(21, 45);
        f1287e.append(22, 46);
        f1287e.append(20, 60);
        f1287e.append(18, 47);
        f1287e.append(19, 48);
        f1287e.append(14, 49);
        f1287e.append(15, 50);
        f1287e.append(16, 51);
        f1287e.append(17, 52);
        f1287e.append(25, 53);
        f1287e.append(97, 54);
        f1287e.append(74, 55);
        f1287e.append(98, 56);
        f1287e.append(75, 57);
        f1287e.append(99, 58);
        f1287e.append(76, 59);
        f1287e.append(64, 61);
        f1287e.append(66, 62);
        f1287e.append(65, 63);
        f1287e.append(28, 64);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowFixedHeightMinor, 65);
        f1287e.append(35, 66);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowFixedWidthMajor, 67);
        f1287e.append(C3681R.styleable.AppCompatTheme_toolbarStyle, 79);
        f1287e.append(1, 38);
        f1287e.append(C3681R.styleable.AppCompatTheme_toolbarNavigationButtonStyle, 68);
        f1287e.append(100, 69);
        f1287e.append(77, 70);
        f1287e.append(111, 97);
        f1287e.append(32, 71);
        f1287e.append(30, 72);
        f1287e.append(31, 73);
        f1287e.append(33, 74);
        f1287e.append(29, 75);
        f1287e.append(C3681R.styleable.AppCompatTheme_tooltipForegroundColor, 76);
        f1287e.append(89, 77);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowFixedWidthMinor, 78);
        f1287e.append(56, 80);
        f1287e.append(55, 81);
        f1287e.append(C3681R.styleable.AppCompatTheme_viewInflaterClass, 82);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowFixedHeightMajor, 83);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowActionModeOverlay, 84);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowActionBarOverlay, 85);
        f1287e.append(C3681R.styleable.AppCompatTheme_windowActionBar, 86);
        f1288f.append(85, 6);
        f1288f.append(85, 7);
        f1288f.append(0, 27);
        f1288f.append(89, 13);
        f1288f.append(92, 16);
        f1288f.append(90, 14);
        f1288f.append(87, 11);
        f1288f.append(91, 15);
        f1288f.append(88, 12);
        f1288f.append(78, 40);
        f1288f.append(71, 39);
        f1288f.append(70, 41);
        f1288f.append(77, 42);
        f1288f.append(69, 20);
        f1288f.append(76, 37);
        f1288f.append(60, 5);
        f1288f.append(72, 87);
        f1288f.append(75, 87);
        f1288f.append(73, 87);
        f1288f.append(57, 87);
        f1288f.append(56, 87);
        f1288f.append(5, 24);
        f1288f.append(7, 28);
        f1288f.append(23, 31);
        f1288f.append(24, 8);
        f1288f.append(6, 34);
        f1288f.append(8, 2);
        f1288f.append(3, 23);
        f1288f.append(4, 21);
        f1288f.append(79, 95);
        f1288f.append(64, 96);
        f1288f.append(2, 22);
        f1288f.append(13, 43);
        f1288f.append(26, 44);
        f1288f.append(21, 45);
        f1288f.append(22, 46);
        f1288f.append(20, 60);
        f1288f.append(18, 47);
        f1288f.append(19, 48);
        f1288f.append(14, 49);
        f1288f.append(15, 50);
        f1288f.append(16, 51);
        f1288f.append(17, 52);
        f1288f.append(25, 53);
        f1288f.append(80, 54);
        f1288f.append(65, 55);
        f1288f.append(81, 56);
        f1288f.append(66, 57);
        f1288f.append(82, 58);
        f1288f.append(67, 59);
        f1288f.append(59, 62);
        f1288f.append(58, 63);
        f1288f.append(28, 64);
        f1288f.append(105, 65);
        f1288f.append(34, 66);
        f1288f.append(106, 67);
        f1288f.append(96, 79);
        f1288f.append(1, 38);
        f1288f.append(97, 98);
        f1288f.append(95, 68);
        f1288f.append(83, 69);
        f1288f.append(68, 70);
        f1288f.append(32, 71);
        f1288f.append(30, 72);
        f1288f.append(31, 73);
        f1288f.append(33, 74);
        f1288f.append(29, 75);
        f1288f.append(98, 76);
        f1288f.append(74, 77);
        f1288f.append(107, 78);
        f1288f.append(55, 80);
        f1288f.append(54, 81);
        f1288f.append(100, 82);
        f1288f.append(104, 83);
        f1288f.append(103, 84);
        f1288f.append(102, 85);
        f1288f.append(101, 86);
        f1288f.append(94, 97);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x004b, code lost:
        if (r0 != (-1)) goto L17;
     */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0064  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0089  */
    /* renamed from: g */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m8353g(java.lang.Object r4, android.content.res.TypedArray r5, int r6, int r7) {
        /*
            Method dump skipped, instructions count: 740
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.constraintlayout.widget.C0309b.m8353g(java.lang.Object, android.content.res.TypedArray, int, int):void");
    }

    /* renamed from: h */
    public static void m8352h(ConstraintLayout.C0305a c0305a, String str) {
        if (str != null) {
            int length = str.length();
            int indexOf = str.indexOf(44);
            int i = 0;
            boolean z = true;
            if (indexOf > 0) {
                i = 0;
                z = true;
                if (indexOf < length - 1) {
                    String substring = str.substring(0, indexOf);
                    z = substring.equalsIgnoreCase("W") ? false : substring.equalsIgnoreCase("H") ? true : true;
                    i = indexOf + 1;
                }
            }
            int indexOf2 = str.indexOf(58);
            try {
                if (indexOf2 < 0 || indexOf2 >= length - 1) {
                    String substring2 = str.substring(i);
                    if (substring2.length() > 0) {
                        Float.parseFloat(substring2);
                    }
                } else {
                    String substring3 = str.substring(i, indexOf2);
                    String substring4 = str.substring(indexOf2 + 1);
                    if (substring3.length() > 0 && substring4.length() > 0) {
                        float parseFloat = Float.parseFloat(substring3);
                        float parseFloat2 = Float.parseFloat(substring4);
                        if (parseFloat > 0.0f && parseFloat2 > 0.0f) {
                            if (z) {
                                Math.abs(parseFloat2 / parseFloat);
                            } else {
                                Math.abs(parseFloat / parseFloat2);
                            }
                        }
                    }
                }
            } catch (NumberFormatException e) {
            }
        }
        c0305a.f1206G = str;
    }

    /* renamed from: a */
    public void m8359a(ConstraintLayout constraintLayout) {
        m8358b(constraintLayout, true);
        constraintLayout.setConstraintSet(null);
        constraintLayout.requestLayout();
    }

    /* renamed from: b */
    public void m8358b(ConstraintLayout constraintLayout, boolean z) {
        int i;
        View findViewById;
        int childCount = constraintLayout.getChildCount();
        HashSet hashSet = new HashSet(this.f1291c.keySet());
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = constraintLayout.getChildAt(i2);
            int id = childAt.getId();
            if (!this.f1291c.containsKey(Integer.valueOf(id))) {
                StringBuilder m8752j = C0082b.m8752j("id unknown ");
                m8752j.append(C4794a.m446b(childAt));
                Log.w("ConstraintSet", m8752j.toString());
            } else if (this.f1290b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            } else {
                if (id != -1 && this.f1291c.containsKey(Integer.valueOf(id))) {
                    hashSet.remove(Integer.valueOf(id));
                    C0310a c0310a = this.f1291c.get(Integer.valueOf(id));
                    if (c0310a != null) {
                        if (childAt instanceof Barrier) {
                            c0310a.f1295d.f1355i0 = 1;
                            Barrier barrier = (Barrier) childAt;
                            barrier.setId(id);
                            barrier.setType(c0310a.f1295d.f1351g0);
                            barrier.setMargin(c0310a.f1295d.f1353h0);
                            barrier.setAllowsGoneWidget(c0310a.f1295d.f1367o0);
                            C0312b c0312b = c0310a.f1295d;
                            int[] iArr = c0312b.f1357j0;
                            if (iArr != null) {
                                barrier.setReferencedIds(iArr);
                            } else {
                                String str = c0312b.f1359k0;
                                if (str != null) {
                                    c0312b.f1357j0 = m8356d(barrier, str);
                                    barrier.setReferencedIds(c0310a.f1295d.f1357j0);
                                }
                            }
                        }
                        ConstraintLayout.C0305a c0305a = (ConstraintLayout.C0305a) childAt.getLayoutParams();
                        c0305a.m8369a();
                        c0310a.m8351a(c0305a);
                        if (z) {
                            C4946a.m207b(childAt, c0310a.f1297f);
                        }
                        childAt.setLayoutParams(c0305a);
                        C0314d c0314d = c0310a.f1293b;
                        if (c0314d.f1397c == 0) {
                            childAt.setVisibility(c0314d.f1396b);
                        }
                        childAt.setAlpha(c0310a.f1293b.f1398d);
                        childAt.setRotation(c0310a.f1296e.f1402b);
                        childAt.setRotationX(c0310a.f1296e.f1403c);
                        childAt.setRotationY(c0310a.f1296e.f1404d);
                        childAt.setScaleX(c0310a.f1296e.f1405e);
                        childAt.setScaleY(c0310a.f1296e.f1406f);
                        C0315e c0315e = c0310a.f1296e;
                        if (c0315e.f1409i != -1) {
                            if (((View) childAt.getParent()).findViewById(c0310a.f1296e.f1409i) != null) {
                                float bottom = (findViewById.getBottom() + findViewById.getTop()) / 2.0f;
                                float right = (findViewById.getRight() + findViewById.getLeft()) / 2.0f;
                                if (childAt.getRight() - childAt.getLeft() > 0 && childAt.getBottom() - childAt.getTop() > 0) {
                                    childAt.setPivotX(right - childAt.getLeft());
                                    childAt.setPivotY(bottom - childAt.getTop());
                                }
                            }
                        } else {
                            if (!Float.isNaN(c0315e.f1407g)) {
                                childAt.setPivotX(c0310a.f1296e.f1407g);
                            }
                            if (!Float.isNaN(c0310a.f1296e.f1408h)) {
                                childAt.setPivotY(c0310a.f1296e.f1408h);
                            }
                        }
                        childAt.setTranslationX(c0310a.f1296e.f1410j);
                        childAt.setTranslationY(c0310a.f1296e.f1411k);
                        childAt.setTranslationZ(c0310a.f1296e.f1412l);
                        C0315e c0315e2 = c0310a.f1296e;
                        if (c0315e2.f1413m) {
                            childAt.setElevation(c0315e2.f1414n);
                        }
                    }
                }
            }
        }
        Iterator it2 = hashSet.iterator();
        while (true) {
            if (it2.hasNext()) {
                Integer num = (Integer) it2.next();
                C0310a c0310a2 = this.f1291c.get(num);
                if (c0310a2 != null) {
                    if (c0310a2.f1295d.f1355i0 == 1) {
                        Barrier barrier2 = new Barrier(constraintLayout.getContext());
                        barrier2.setId(num.intValue());
                        C0312b c0312b2 = c0310a2.f1295d;
                        int[] iArr2 = c0312b2.f1357j0;
                        if (iArr2 != null) {
                            barrier2.setReferencedIds(iArr2);
                        } else {
                            String str2 = c0312b2.f1359k0;
                            if (str2 != null) {
                                c0312b2.f1357j0 = m8356d(barrier2, str2);
                                barrier2.setReferencedIds(c0310a2.f1295d.f1357j0);
                            }
                        }
                        barrier2.setType(c0310a2.f1295d.f1351g0);
                        barrier2.setMargin(c0310a2.f1295d.f1353h0);
                        ConstraintLayout.C0305a generateDefaultLayoutParams = constraintLayout.generateDefaultLayoutParams();
                        barrier2.m8360k();
                        c0310a2.m8351a(generateDefaultLayoutParams);
                        constraintLayout.addView(barrier2, generateDefaultLayoutParams);
                    }
                    if (c0310a2.f1295d.f1338a) {
                        View guideline = new Guideline(constraintLayout.getContext());
                        guideline.setId(num.intValue());
                        ConstraintLayout.C0305a generateDefaultLayoutParams2 = constraintLayout.generateDefaultLayoutParams();
                        c0310a2.m8351a(generateDefaultLayoutParams2);
                        constraintLayout.addView(guideline, generateDefaultLayoutParams2);
                    }
                }
            }
        }
        for (i = 0; i < childCount; i++) {
            View childAt2 = constraintLayout.getChildAt(i);
            if (childAt2 instanceof AbstractC0308a) {
                ((AbstractC0308a) childAt2).mo183g(constraintLayout);
            }
        }
    }

    /* renamed from: c */
    public void m8357c(ConstraintLayout constraintLayout) {
        NoSuchMethodException e;
        IllegalAccessException e2;
        InvocationTargetException e3;
        int childCount = constraintLayout.getChildCount();
        this.f1291c.clear();
        for (int i = 0; i < childCount; i++) {
            View childAt = constraintLayout.getChildAt(i);
            ConstraintLayout.C0305a c0305a = (ConstraintLayout.C0305a) childAt.getLayoutParams();
            int id = childAt.getId();
            if (this.f1290b && id == -1) {
                throw new RuntimeException("All children of ConstraintLayout must have ids to use ConstraintSet");
            }
            if (!this.f1291c.containsKey(Integer.valueOf(id))) {
                this.f1291c.put(Integer.valueOf(id), new C0310a());
            }
            C0310a c0310a = this.f1291c.get(Integer.valueOf(id));
            if (c0310a != null) {
                HashMap<String, C4946a> hashMap = this.f1289a;
                HashMap<String, C4946a> hashMap2 = new HashMap<>();
                Class<?> cls = childAt.getClass();
                for (String str : hashMap.keySet()) {
                    C4946a c4946a = hashMap.get(str);
                    try {
                        if (str.equals("BackgroundColor")) {
                            hashMap2.put(str, new C4946a(c4946a, Integer.valueOf(((ColorDrawable) childAt.getBackground()).getColor())));
                        } else {
                            try {
                                hashMap2.put(str, new C4946a(c4946a, cls.getMethod("getMap" + str, new Class[0]).invoke(childAt, new Object[0])));
                            } catch (IllegalAccessException e4) {
                                e2 = e4;
                                e2.printStackTrace();
                            } catch (NoSuchMethodException e5) {
                                e = e5;
                                e.printStackTrace();
                            } catch (InvocationTargetException e6) {
                                e3 = e6;
                                e3.printStackTrace();
                            }
                        }
                    } catch (IllegalAccessException e7) {
                        e2 = e7;
                    } catch (NoSuchMethodException e8) {
                        e = e8;
                    } catch (InvocationTargetException e9) {
                        e3 = e9;
                    }
                }
                c0310a.f1297f = hashMap2;
                c0310a.m8350b(id, c0305a);
                c0310a.f1293b.f1396b = childAt.getVisibility();
                c0310a.f1293b.f1398d = childAt.getAlpha();
                c0310a.f1296e.f1402b = childAt.getRotation();
                c0310a.f1296e.f1403c = childAt.getRotationX();
                c0310a.f1296e.f1404d = childAt.getRotationY();
                c0310a.f1296e.f1405e = childAt.getScaleX();
                c0310a.f1296e.f1406f = childAt.getScaleY();
                float pivotX = childAt.getPivotX();
                float pivotY = childAt.getPivotY();
                if (pivotX != 0.0d || pivotY != 0.0d) {
                    C0315e c0315e = c0310a.f1296e;
                    c0315e.f1407g = pivotX;
                    c0315e.f1408h = pivotY;
                }
                c0310a.f1296e.f1410j = childAt.getTranslationX();
                c0310a.f1296e.f1411k = childAt.getTranslationY();
                c0310a.f1296e.f1412l = childAt.getTranslationZ();
                C0315e c0315e2 = c0310a.f1296e;
                if (c0315e2.f1413m) {
                    c0315e2.f1414n = childAt.getElevation();
                }
                if (childAt instanceof Barrier) {
                    Barrier barrier = (Barrier) childAt;
                    c0310a.f1295d.f1367o0 = barrier.getAllowsGoneWidget();
                    c0310a.f1295d.f1357j0 = barrier.getReferencedIds();
                    c0310a.f1295d.f1351g0 = barrier.getType();
                    c0310a.f1295d.f1353h0 = barrier.getMargin();
                }
            }
        }
    }

    /* renamed from: d */
    public final int[] m8356d(View view, String str) {
        int i;
        String[] split = str.split(",");
        Context context = view.getContext();
        int[] iArr = new int[split.length];
        int i2 = 0;
        int i3 = 0;
        while (i2 < split.length) {
            String trim = split[i2].trim();
            try {
                i = C4951d.class.getField(trim).getInt(null);
            } catch (Exception e) {
                i = 0;
            }
            int i4 = i;
            if (i == 0) {
                i4 = context.getResources().getIdentifier(trim, FacebookAdapter.KEY_ID, context.getPackageName());
            }
            int i5 = i4;
            if (i4 == 0) {
                i5 = i4;
                if (view.isInEditMode()) {
                    i5 = i4;
                    if (view.getParent() instanceof ConstraintLayout) {
                        Object m8378c = ((ConstraintLayout) view.getParent()).m8378c(0, trim);
                        i5 = i4;
                        if (m8378c != null) {
                            i5 = i4;
                            if (m8378c instanceof Integer) {
                                i5 = ((Integer) m8378c).intValue();
                            }
                        }
                    }
                }
            }
            iArr[i3] = i5;
            i2++;
            i3++;
        }
        int[] iArr2 = iArr;
        if (i3 != split.length) {
            iArr2 = Arrays.copyOf(iArr, i3);
        }
        return iArr2;
    }

    /* renamed from: e */
    public final C0310a m8355e(Context context, AttributeSet attributeSet, boolean z) {
        C0310a c0310a = new C0310a();
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, z ? C0713a.f2755g : C0713a.f2753e);
        if (z) {
            int indexCount = obtainStyledAttributes.getIndexCount();
            C0310a.C0311a c0311a = new C0310a.C0311a();
            c0310a.f1298g = c0311a;
            c0310a.f1294c.f1381a = false;
            c0310a.f1295d.f1340b = false;
            c0310a.f1293b.f1395a = false;
            c0310a.f1296e.f1401a = false;
            for (int i = 0; i < indexCount; i++) {
                int index = obtainStyledAttributes.getIndex(i);
                switch (f1288f.get(index)) {
                    case 2:
                        c0311a.m8347b(2, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1321J));
                        break;
                    case 3:
                    case 4:
                    case 9:
                    case 10:
                    case 25:
                    case 26:
                    case 29:
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    case C3681R.styleable.AppCompatTheme_panelMenuListWidth /* 88 */:
                    case C3681R.styleable.AppCompatTheme_popupMenuStyle /* 89 */:
                    case C3681R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
                    case C3681R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                    case C3681R.styleable.AppCompatTheme_ratingBarStyle /* 92 */:
                    default:
                        StringBuilder m8752j = C0082b.m8752j("Unknown attribute 0x");
                        m8752j.append(Integer.toHexString(index));
                        m8752j.append("   ");
                        m8752j.append(f1287e.get(index));
                        Log.w("ConstraintSet", m8752j.toString());
                        break;
                    case 5:
                        c0311a.m8346c(5, obtainStyledAttributes.getString(index));
                        break;
                    case 6:
                        c0311a.m8347b(6, obtainStyledAttributes.getDimensionPixelOffset(index, c0310a.f1295d.f1315D));
                        break;
                    case 7:
                        c0311a.m8347b(7, obtainStyledAttributes.getDimensionPixelOffset(index, c0310a.f1295d.f1316E));
                        break;
                    case 8:
                        c0311a.m8347b(8, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1322K));
                        break;
                    case 11:
                        c0311a.m8347b(11, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1328Q));
                        break;
                    case 12:
                        c0311a.m8347b(12, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1329R));
                        break;
                    case 13:
                        c0311a.m8347b(13, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1325N));
                        break;
                    case 14:
                        c0311a.m8347b(14, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1327P));
                        break;
                    case 15:
                        c0311a.m8347b(15, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1330S));
                        break;
                    case 16:
                        c0311a.m8347b(16, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1326O));
                        break;
                    case 17:
                        c0311a.m8347b(17, obtainStyledAttributes.getDimensionPixelOffset(index, c0310a.f1295d.f1346e));
                        break;
                    case 18:
                        c0311a.m8347b(18, obtainStyledAttributes.getDimensionPixelOffset(index, c0310a.f1295d.f1348f));
                        break;
                    case 19:
                        c0311a.m8348a(19, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1350g));
                        break;
                    case 20:
                        c0311a.m8348a(20, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1377x));
                        break;
                    case 21:
                        c0311a.m8347b(21, obtainStyledAttributes.getLayoutDimension(index, c0310a.f1295d.f1344d));
                        break;
                    case 22:
                        c0311a.m8347b(22, f1286d[obtainStyledAttributes.getInt(index, c0310a.f1293b.f1396b)]);
                        break;
                    case 23:
                        c0311a.m8347b(23, obtainStyledAttributes.getLayoutDimension(index, c0310a.f1295d.f1342c));
                        break;
                    case 24:
                        c0311a.m8347b(24, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1318G));
                        break;
                    case 27:
                        c0311a.m8347b(27, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1317F));
                        break;
                    case 28:
                        c0311a.m8347b(28, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1319H));
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        c0311a.m8347b(31, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1323L));
                        break;
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        c0311a.m8347b(34, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1320I));
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        c0311a.m8348a(37, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1378y));
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        int resourceId = obtainStyledAttributes.getResourceId(index, c0310a.f1292a);
                        c0310a.f1292a = resourceId;
                        c0311a.m8347b(38, resourceId);
                        break;
                    case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        c0311a.m8348a(39, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1333V));
                        break;
                    case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        c0311a.m8348a(40, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1332U));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        c0311a.m8347b(41, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1334W));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        c0311a.m8347b(42, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1335X));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        c0311a.m8348a(43, obtainStyledAttributes.getFloat(index, c0310a.f1293b.f1398d));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        c0311a.m8345d(44, true);
                        c0311a.m8348a(44, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1414n));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        c0311a.m8348a(45, obtainStyledAttributes.getFloat(index, c0310a.f1296e.f1403c));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        c0311a.m8348a(46, obtainStyledAttributes.getFloat(index, c0310a.f1296e.f1404d));
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        c0311a.m8348a(47, obtainStyledAttributes.getFloat(index, c0310a.f1296e.f1405e));
                        break;
                    case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        c0311a.m8348a(48, obtainStyledAttributes.getFloat(index, c0310a.f1296e.f1406f));
                        break;
                    case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        c0311a.m8348a(49, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1407g));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                        c0311a.m8348a(50, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1408h));
                        break;
                    case 51:
                        c0311a.m8348a(51, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1410j));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        c0311a.m8348a(52, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1411k));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        c0311a.m8348a(53, obtainStyledAttributes.getDimension(index, c0310a.f1296e.f1412l));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        c0311a.m8347b(54, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1336Y));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        c0311a.m8347b(55, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1337Z));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                        c0311a.m8347b(56, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1339a0));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        c0311a.m8347b(57, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1341b0));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        c0311a.m8347b(58, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1343c0));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        c0311a.m8347b(59, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1345d0));
                        break;
                    case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        c0311a.m8348a(60, obtainStyledAttributes.getFloat(index, c0310a.f1296e.f1402b));
                        break;
                    case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        c0311a.m8347b(62, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1313B));
                        break;
                    case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        c0311a.m8348a(63, obtainStyledAttributes.getFloat(index, c0310a.f1295d.f1314C));
                        break;
                    case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                        int resourceId2 = obtainStyledAttributes.getResourceId(index, c0310a.f1294c.f1382b);
                        int i2 = resourceId2;
                        if (resourceId2 == -1) {
                            i2 = obtainStyledAttributes.getInt(index, -1);
                        }
                        c0311a.m8347b(64, i2);
                        break;
                    case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            c0311a.m8346c(65, obtainStyledAttributes.getString(index));
                            break;
                        } else {
                            c0311a.m8346c(65, C4442a.f13811c[obtainStyledAttributes.getInteger(index, 0)]);
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        c0311a.m8347b(66, obtainStyledAttributes.getInt(index, 0));
                        break;
                    case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        c0311a.m8348a(67, obtainStyledAttributes.getFloat(index, c0310a.f1294c.f1389i));
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        c0311a.m8348a(68, obtainStyledAttributes.getFloat(index, c0310a.f1293b.f1399e));
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextColor /* 69 */:
                        c0311a.m8348a(69, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextStyle /* 70 */:
                        c0311a.m8348a(70, obtainStyledAttributes.getFloat(index, 1.0f));
                        break;
                    case C3681R.styleable.AppCompatTheme_homeAsUpIndicator /* 71 */:
                        break;
                    case C3681R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                        c0311a.m8347b(72, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1351g0));
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /* 73 */:
                        c0311a.m8347b(73, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1353h0));
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated /* 74 */:
                        c0311a.m8346c(74, obtainStyledAttributes.getString(index));
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorSingleAnimated /* 75 */:
                        c0311a.m8345d(75, obtainStyledAttributes.getBoolean(index, c0310a.f1295d.f1367o0));
                        break;
                    case C3681R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                        c0311a.m8347b(76, obtainStyledAttributes.getInt(index, c0310a.f1294c.f1385e));
                        break;
                    case C3681R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                        c0311a.m8346c(77, obtainStyledAttributes.getString(index));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPopupWindowStyle /* 78 */:
                        c0311a.m8347b(78, obtainStyledAttributes.getInt(index, c0310a.f1293b.f1397c));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeight /* 79 */:
                        c0311a.m8348a(79, obtainStyledAttributes.getFloat(index, c0310a.f1294c.f1387g));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightLarge /* 80 */:
                        c0311a.m8345d(80, obtainStyledAttributes.getBoolean(index, c0310a.f1295d.f1363m0));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                        c0311a.m8345d(81, obtainStyledAttributes.getBoolean(index, c0310a.f1295d.f1365n0));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingEnd /* 82 */:
                        c0311a.m8347b(82, obtainStyledAttributes.getInteger(index, c0310a.f1294c.f1383c));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                        int resourceId3 = obtainStyledAttributes.getResourceId(index, c0310a.f1296e.f1409i);
                        int i3 = resourceId3;
                        if (resourceId3 == -1) {
                            i3 = obtainStyledAttributes.getInt(index, -1);
                        }
                        c0311a.m8347b(83, i3);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingRight /* 84 */:
                        c0311a.m8347b(84, obtainStyledAttributes.getInteger(index, c0310a.f1294c.f1391k));
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingStart /* 85 */:
                        c0311a.m8348a(85, obtainStyledAttributes.getFloat(index, c0310a.f1294c.f1390j));
                        break;
                    case C3681R.styleable.AppCompatTheme_panelBackground /* 86 */:
                        int i4 = obtainStyledAttributes.peekValue(index).type;
                        if (i4 == 1) {
                            c0310a.f1294c.f1394n = obtainStyledAttributes.getResourceId(index, -1);
                            c0311a.m8347b(89, c0310a.f1294c.f1394n);
                            C0313c c0313c = c0310a.f1294c;
                            if (c0313c.f1394n != -1) {
                                c0313c.f1393m = -2;
                                c0311a.m8347b(88, -2);
                                break;
                            } else {
                                break;
                            }
                        } else if (i4 == 3) {
                            c0310a.f1294c.f1392l = obtainStyledAttributes.getString(index);
                            c0311a.m8346c(90, c0310a.f1294c.f1392l);
                            if (c0310a.f1294c.f1392l.indexOf("/") > 0) {
                                c0310a.f1294c.f1394n = obtainStyledAttributes.getResourceId(index, -1);
                                c0311a.m8347b(89, c0310a.f1294c.f1394n);
                                c0310a.f1294c.f1393m = -2;
                                c0311a.m8347b(88, -2);
                                break;
                            } else {
                                c0310a.f1294c.f1393m = -1;
                                c0311a.m8347b(88, -1);
                                break;
                            }
                        } else {
                            C0313c c0313c2 = c0310a.f1294c;
                            c0313c2.f1393m = obtainStyledAttributes.getInteger(index, c0313c2.f1394n);
                            c0311a.m8347b(88, c0310a.f1294c.f1393m);
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
                        StringBuilder m8752j2 = C0082b.m8752j("unused attribute 0x");
                        m8752j2.append(Integer.toHexString(index));
                        m8752j2.append("   ");
                        m8752j2.append(f1287e.get(index));
                        Log.w("ConstraintSet", m8752j2.toString());
                        break;
                    case C3681R.styleable.AppCompatTheme_ratingBarStyleIndicator /* 93 */:
                        c0311a.m8347b(93, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1324M));
                        break;
                    case C3681R.styleable.AppCompatTheme_ratingBarStyleSmall /* 94 */:
                        c0311a.m8347b(94, obtainStyledAttributes.getDimensionPixelSize(index, c0310a.f1295d.f1331T));
                        break;
                    case C3681R.styleable.AppCompatTheme_searchViewStyle /* 95 */:
                        m8353g(c0311a, obtainStyledAttributes, index, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_seekBarStyle /* 96 */:
                        m8353g(c0311a, obtainStyledAttributes, index, 1);
                        break;
                    case C3681R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                        c0311a.m8347b(97, obtainStyledAttributes.getInt(index, c0310a.f1295d.f1369p0));
                        break;
                    case C3681R.styleable.AppCompatTheme_selectableItemBackgroundBorderless /* 98 */:
                        int i5 = C4797d.f14731O;
                        if (obtainStyledAttributes.peekValue(index).type == 3) {
                            obtainStyledAttributes.getString(index);
                            break;
                        } else {
                            c0310a.f1292a = obtainStyledAttributes.getResourceId(index, c0310a.f1292a);
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_spinnerDropDownItemStyle /* 99 */:
                        c0311a.m8345d(99, obtainStyledAttributes.getBoolean(index, c0310a.f1295d.f1352h));
                        break;
                }
            }
        } else {
            int indexCount2 = obtainStyledAttributes.getIndexCount();
            for (int i6 = 0; i6 < indexCount2; i6++) {
                int index2 = obtainStyledAttributes.getIndex(i6);
                if (index2 != 1 && 23 != index2 && 24 != index2) {
                    c0310a.f1294c.f1381a = true;
                    c0310a.f1295d.f1340b = true;
                    c0310a.f1293b.f1395a = true;
                    c0310a.f1296e.f1401a = true;
                }
                switch (f1287e.get(index2)) {
                    case 1:
                        C0312b c0312b = c0310a.f1295d;
                        int resourceId4 = obtainStyledAttributes.getResourceId(index2, c0312b.f1370q);
                        int i7 = resourceId4;
                        if (resourceId4 == -1) {
                            i7 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b.f1370q = i7;
                        break;
                    case 2:
                        C0312b c0312b2 = c0310a.f1295d;
                        c0312b2.f1321J = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b2.f1321J);
                        break;
                    case 3:
                        C0312b c0312b3 = c0310a.f1295d;
                        int resourceId5 = obtainStyledAttributes.getResourceId(index2, c0312b3.f1368p);
                        int i8 = resourceId5;
                        if (resourceId5 == -1) {
                            i8 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b3.f1368p = i8;
                        break;
                    case 4:
                        C0312b c0312b4 = c0310a.f1295d;
                        int resourceId6 = obtainStyledAttributes.getResourceId(index2, c0312b4.f1366o);
                        int i9 = resourceId6;
                        if (resourceId6 == -1) {
                            i9 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b4.f1366o = i9;
                        break;
                    case 5:
                        c0310a.f1295d.f1379z = obtainStyledAttributes.getString(index2);
                        break;
                    case 6:
                        C0312b c0312b5 = c0310a.f1295d;
                        c0312b5.f1315D = obtainStyledAttributes.getDimensionPixelOffset(index2, c0312b5.f1315D);
                        break;
                    case 7:
                        C0312b c0312b6 = c0310a.f1295d;
                        c0312b6.f1316E = obtainStyledAttributes.getDimensionPixelOffset(index2, c0312b6.f1316E);
                        break;
                    case 8:
                        C0312b c0312b7 = c0310a.f1295d;
                        c0312b7.f1322K = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b7.f1322K);
                        break;
                    case 9:
                        C0312b c0312b8 = c0310a.f1295d;
                        int resourceId7 = obtainStyledAttributes.getResourceId(index2, c0312b8.f1376w);
                        int i10 = resourceId7;
                        if (resourceId7 == -1) {
                            i10 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b8.f1376w = i10;
                        break;
                    case 10:
                        C0312b c0312b9 = c0310a.f1295d;
                        int resourceId8 = obtainStyledAttributes.getResourceId(index2, c0312b9.f1375v);
                        int i11 = resourceId8;
                        if (resourceId8 == -1) {
                            i11 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b9.f1375v = i11;
                        break;
                    case 11:
                        C0312b c0312b10 = c0310a.f1295d;
                        c0312b10.f1328Q = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b10.f1328Q);
                        break;
                    case 12:
                        C0312b c0312b11 = c0310a.f1295d;
                        c0312b11.f1329R = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b11.f1329R);
                        break;
                    case 13:
                        C0312b c0312b12 = c0310a.f1295d;
                        c0312b12.f1325N = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b12.f1325N);
                        break;
                    case 14:
                        C0312b c0312b13 = c0310a.f1295d;
                        c0312b13.f1327P = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b13.f1327P);
                        break;
                    case 15:
                        C0312b c0312b14 = c0310a.f1295d;
                        c0312b14.f1330S = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b14.f1330S);
                        break;
                    case 16:
                        C0312b c0312b15 = c0310a.f1295d;
                        c0312b15.f1326O = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b15.f1326O);
                        break;
                    case 17:
                        C0312b c0312b16 = c0310a.f1295d;
                        c0312b16.f1346e = obtainStyledAttributes.getDimensionPixelOffset(index2, c0312b16.f1346e);
                        break;
                    case 18:
                        C0312b c0312b17 = c0310a.f1295d;
                        c0312b17.f1348f = obtainStyledAttributes.getDimensionPixelOffset(index2, c0312b17.f1348f);
                        break;
                    case 19:
                        C0312b c0312b18 = c0310a.f1295d;
                        c0312b18.f1350g = obtainStyledAttributes.getFloat(index2, c0312b18.f1350g);
                        break;
                    case 20:
                        C0312b c0312b19 = c0310a.f1295d;
                        c0312b19.f1377x = obtainStyledAttributes.getFloat(index2, c0312b19.f1377x);
                        break;
                    case 21:
                        C0312b c0312b20 = c0310a.f1295d;
                        c0312b20.f1344d = obtainStyledAttributes.getLayoutDimension(index2, c0312b20.f1344d);
                        break;
                    case 22:
                        C0314d c0314d = c0310a.f1293b;
                        c0314d.f1396b = obtainStyledAttributes.getInt(index2, c0314d.f1396b);
                        C0314d c0314d2 = c0310a.f1293b;
                        c0314d2.f1396b = f1286d[c0314d2.f1396b];
                        break;
                    case 23:
                        C0312b c0312b21 = c0310a.f1295d;
                        c0312b21.f1342c = obtainStyledAttributes.getLayoutDimension(index2, c0312b21.f1342c);
                        break;
                    case 24:
                        C0312b c0312b22 = c0310a.f1295d;
                        c0312b22.f1318G = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b22.f1318G);
                        break;
                    case 25:
                        C0312b c0312b23 = c0310a.f1295d;
                        int resourceId9 = obtainStyledAttributes.getResourceId(index2, c0312b23.f1354i);
                        int i12 = resourceId9;
                        if (resourceId9 == -1) {
                            i12 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b23.f1354i = i12;
                        break;
                    case 26:
                        C0312b c0312b24 = c0310a.f1295d;
                        int resourceId10 = obtainStyledAttributes.getResourceId(index2, c0312b24.f1356j);
                        int i13 = resourceId10;
                        if (resourceId10 == -1) {
                            i13 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b24.f1356j = i13;
                        break;
                    case 27:
                        C0312b c0312b25 = c0310a.f1295d;
                        c0312b25.f1317F = obtainStyledAttributes.getInt(index2, c0312b25.f1317F);
                        break;
                    case 28:
                        C0312b c0312b26 = c0310a.f1295d;
                        c0312b26.f1319H = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b26.f1319H);
                        break;
                    case 29:
                        C0312b c0312b27 = c0310a.f1295d;
                        int resourceId11 = obtainStyledAttributes.getResourceId(index2, c0312b27.f1358k);
                        int i14 = resourceId11;
                        if (resourceId11 == -1) {
                            i14 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b27.f1358k = i14;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                        C0312b c0312b28 = c0310a.f1295d;
                        int resourceId12 = obtainStyledAttributes.getResourceId(index2, c0312b28.f1360l);
                        int i15 = resourceId12;
                        if (resourceId12 == -1) {
                            i15 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b28.f1360l = i15;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        C0312b c0312b29 = c0310a.f1295d;
                        c0312b29.f1323L = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b29.f1323L);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                        C0312b c0312b30 = c0310a.f1295d;
                        int resourceId13 = obtainStyledAttributes.getResourceId(index2, c0312b30.f1373t);
                        int i16 = resourceId13;
                        if (resourceId13 == -1) {
                            i16 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b30.f1373t = i16;
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        C0312b c0312b31 = c0310a.f1295d;
                        int resourceId14 = obtainStyledAttributes.getResourceId(index2, c0312b31.f1374u);
                        int i17 = resourceId14;
                        if (resourceId14 == -1) {
                            i17 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b31.f1374u = i17;
                        break;
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        C0312b c0312b32 = c0310a.f1295d;
                        c0312b32.f1320I = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b32.f1320I);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        C0312b c0312b33 = c0310a.f1295d;
                        int resourceId15 = obtainStyledAttributes.getResourceId(index2, c0312b33.f1364n);
                        int i18 = resourceId15;
                        if (resourceId15 == -1) {
                            i18 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b33.f1364n = i18;
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        C0312b c0312b34 = c0310a.f1295d;
                        int resourceId16 = obtainStyledAttributes.getResourceId(index2, c0312b34.f1362m);
                        int i19 = resourceId16;
                        if (resourceId16 == -1) {
                            i19 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b34.f1362m = i19;
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        C0312b c0312b35 = c0310a.f1295d;
                        c0312b35.f1378y = obtainStyledAttributes.getFloat(index2, c0312b35.f1378y);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        c0310a.f1292a = obtainStyledAttributes.getResourceId(index2, c0310a.f1292a);
                        break;
                    case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        C0312b c0312b36 = c0310a.f1295d;
                        c0312b36.f1333V = obtainStyledAttributes.getFloat(index2, c0312b36.f1333V);
                        break;
                    case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        C0312b c0312b37 = c0310a.f1295d;
                        c0312b37.f1332U = obtainStyledAttributes.getFloat(index2, c0312b37.f1332U);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        C0312b c0312b38 = c0310a.f1295d;
                        c0312b38.f1334W = obtainStyledAttributes.getInt(index2, c0312b38.f1334W);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        C0312b c0312b39 = c0310a.f1295d;
                        c0312b39.f1335X = obtainStyledAttributes.getInt(index2, c0312b39.f1335X);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        C0314d c0314d3 = c0310a.f1293b;
                        c0314d3.f1398d = obtainStyledAttributes.getFloat(index2, c0314d3.f1398d);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        C0315e c0315e = c0310a.f1296e;
                        c0315e.f1413m = true;
                        c0315e.f1414n = obtainStyledAttributes.getDimension(index2, c0315e.f1414n);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        C0315e c0315e2 = c0310a.f1296e;
                        c0315e2.f1403c = obtainStyledAttributes.getFloat(index2, c0315e2.f1403c);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        C0315e c0315e3 = c0310a.f1296e;
                        c0315e3.f1404d = obtainStyledAttributes.getFloat(index2, c0315e3.f1404d);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        C0315e c0315e4 = c0310a.f1296e;
                        c0315e4.f1405e = obtainStyledAttributes.getFloat(index2, c0315e4.f1405e);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        C0315e c0315e5 = c0310a.f1296e;
                        c0315e5.f1406f = obtainStyledAttributes.getFloat(index2, c0315e5.f1406f);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        C0315e c0315e6 = c0310a.f1296e;
                        c0315e6.f1407g = obtainStyledAttributes.getDimension(index2, c0315e6.f1407g);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                        C0315e c0315e7 = c0310a.f1296e;
                        c0315e7.f1408h = obtainStyledAttributes.getDimension(index2, c0315e7.f1408h);
                        break;
                    case 51:
                        C0315e c0315e8 = c0310a.f1296e;
                        c0315e8.f1410j = obtainStyledAttributes.getDimension(index2, c0315e8.f1410j);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        C0315e c0315e9 = c0310a.f1296e;
                        c0315e9.f1411k = obtainStyledAttributes.getDimension(index2, c0315e9.f1411k);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        C0315e c0315e10 = c0310a.f1296e;
                        c0315e10.f1412l = obtainStyledAttributes.getDimension(index2, c0315e10.f1412l);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        C0312b c0312b40 = c0310a.f1295d;
                        c0312b40.f1336Y = obtainStyledAttributes.getInt(index2, c0312b40.f1336Y);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        C0312b c0312b41 = c0310a.f1295d;
                        c0312b41.f1337Z = obtainStyledAttributes.getInt(index2, c0312b41.f1337Z);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                        C0312b c0312b42 = c0310a.f1295d;
                        c0312b42.f1339a0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b42.f1339a0);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        C0312b c0312b43 = c0310a.f1295d;
                        c0312b43.f1341b0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b43.f1341b0);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        C0312b c0312b44 = c0310a.f1295d;
                        c0312b44.f1343c0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b44.f1343c0);
                        break;
                    case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        C0312b c0312b45 = c0310a.f1295d;
                        c0312b45.f1345d0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b45.f1345d0);
                        break;
                    case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        C0315e c0315e11 = c0310a.f1296e;
                        c0315e11.f1402b = obtainStyledAttributes.getFloat(index2, c0315e11.f1402b);
                        break;
                    case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        C0312b c0312b46 = c0310a.f1295d;
                        int resourceId17 = obtainStyledAttributes.getResourceId(index2, c0312b46.f1312A);
                        int i20 = resourceId17;
                        if (resourceId17 == -1) {
                            i20 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b46.f1312A = i20;
                        break;
                    case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        C0312b c0312b47 = c0310a.f1295d;
                        c0312b47.f1313B = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b47.f1313B);
                        break;
                    case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        C0312b c0312b48 = c0310a.f1295d;
                        c0312b48.f1314C = obtainStyledAttributes.getFloat(index2, c0312b48.f1314C);
                        break;
                    case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                        C0313c c0313c3 = c0310a.f1294c;
                        int resourceId18 = obtainStyledAttributes.getResourceId(index2, c0313c3.f1382b);
                        int i21 = resourceId18;
                        if (resourceId18 == -1) {
                            i21 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0313c3.f1382b = i21;
                        break;
                    case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                        if (obtainStyledAttributes.peekValue(index2).type == 3) {
                            c0310a.f1294c.f1384d = obtainStyledAttributes.getString(index2);
                            break;
                        } else {
                            c0310a.f1294c.f1384d = C4442a.f13811c[obtainStyledAttributes.getInteger(index2, 0)];
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        c0310a.f1294c.f1386f = obtainStyledAttributes.getInt(index2, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        C0313c c0313c4 = c0310a.f1294c;
                        c0313c4.f1389i = obtainStyledAttributes.getFloat(index2, c0313c4.f1389i);
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        C0314d c0314d4 = c0310a.f1293b;
                        c0314d4.f1399e = obtainStyledAttributes.getFloat(index2, c0314d4.f1399e);
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextColor /* 69 */:
                        c0310a.f1295d.f1347e0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case C3681R.styleable.AppCompatTheme_editTextStyle /* 70 */:
                        c0310a.f1295d.f1349f0 = obtainStyledAttributes.getFloat(index2, 1.0f);
                        break;
                    case C3681R.styleable.AppCompatTheme_homeAsUpIndicator /* 71 */:
                        break;
                    case C3681R.styleable.AppCompatTheme_imageButtonStyle /* 72 */:
                        C0312b c0312b49 = c0310a.f1295d;
                        c0312b49.f1351g0 = obtainStyledAttributes.getInt(index2, c0312b49.f1351g0);
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceBackgroundIndicator /* 73 */:
                        C0312b c0312b50 = c0310a.f1295d;
                        c0312b50.f1353h0 = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b50.f1353h0);
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorMultipleAnimated /* 74 */:
                        c0310a.f1295d.f1359k0 = obtainStyledAttributes.getString(index2);
                        break;
                    case C3681R.styleable.AppCompatTheme_listChoiceIndicatorSingleAnimated /* 75 */:
                        C0312b c0312b51 = c0310a.f1295d;
                        c0312b51.f1367o0 = obtainStyledAttributes.getBoolean(index2, c0312b51.f1367o0);
                        break;
                    case C3681R.styleable.AppCompatTheme_listDividerAlertDialog /* 76 */:
                        C0313c c0313c5 = c0310a.f1294c;
                        c0313c5.f1385e = obtainStyledAttributes.getInt(index2, c0313c5.f1385e);
                        break;
                    case C3681R.styleable.AppCompatTheme_listMenuViewStyle /* 77 */:
                        c0310a.f1295d.f1361l0 = obtainStyledAttributes.getString(index2);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPopupWindowStyle /* 78 */:
                        C0314d c0314d5 = c0310a.f1293b;
                        c0314d5.f1397c = obtainStyledAttributes.getInt(index2, c0314d5.f1397c);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeight /* 79 */:
                        C0313c c0313c6 = c0310a.f1294c;
                        c0313c6.f1387g = obtainStyledAttributes.getFloat(index2, c0313c6.f1387g);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightLarge /* 80 */:
                        C0312b c0312b52 = c0310a.f1295d;
                        c0312b52.f1363m0 = obtainStyledAttributes.getBoolean(index2, c0312b52.f1363m0);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemHeightSmall /* 81 */:
                        C0312b c0312b53 = c0310a.f1295d;
                        c0312b53.f1365n0 = obtainStyledAttributes.getBoolean(index2, c0312b53.f1365n0);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingEnd /* 82 */:
                        C0313c c0313c7 = c0310a.f1294c;
                        c0313c7.f1383c = obtainStyledAttributes.getInteger(index2, c0313c7.f1383c);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingLeft /* 83 */:
                        C0315e c0315e12 = c0310a.f1296e;
                        int resourceId19 = obtainStyledAttributes.getResourceId(index2, c0315e12.f1409i);
                        int i22 = resourceId19;
                        if (resourceId19 == -1) {
                            i22 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0315e12.f1409i = i22;
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingRight /* 84 */:
                        C0313c c0313c8 = c0310a.f1294c;
                        c0313c8.f1391k = obtainStyledAttributes.getInteger(index2, c0313c8.f1391k);
                        break;
                    case C3681R.styleable.AppCompatTheme_listPreferredItemPaddingStart /* 85 */:
                        C0313c c0313c9 = c0310a.f1294c;
                        c0313c9.f1390j = obtainStyledAttributes.getFloat(index2, c0313c9.f1390j);
                        break;
                    case C3681R.styleable.AppCompatTheme_panelBackground /* 86 */:
                        int i23 = obtainStyledAttributes.peekValue(index2).type;
                        if (i23 == 1) {
                            c0310a.f1294c.f1394n = obtainStyledAttributes.getResourceId(index2, -1);
                            C0313c c0313c10 = c0310a.f1294c;
                            if (c0313c10.f1394n != -1) {
                                c0313c10.f1393m = -2;
                                break;
                            } else {
                                break;
                            }
                        } else if (i23 == 3) {
                            c0310a.f1294c.f1392l = obtainStyledAttributes.getString(index2);
                            if (c0310a.f1294c.f1392l.indexOf("/") > 0) {
                                c0310a.f1294c.f1394n = obtainStyledAttributes.getResourceId(index2, -1);
                                c0310a.f1294c.f1393m = -2;
                                break;
                            } else {
                                c0310a.f1294c.f1393m = -1;
                                break;
                            }
                        } else {
                            C0313c c0313c11 = c0310a.f1294c;
                            c0313c11.f1393m = obtainStyledAttributes.getInteger(index2, c0313c11.f1394n);
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_panelMenuListTheme /* 87 */:
                        StringBuilder m8752j3 = C0082b.m8752j("unused attribute 0x");
                        m8752j3.append(Integer.toHexString(index2));
                        m8752j3.append("   ");
                        m8752j3.append(f1287e.get(index2));
                        Log.w("ConstraintSet", m8752j3.toString());
                        break;
                    case C3681R.styleable.AppCompatTheme_panelMenuListWidth /* 88 */:
                    case C3681R.styleable.AppCompatTheme_popupMenuStyle /* 89 */:
                    case C3681R.styleable.AppCompatTheme_popupWindowStyle /* 90 */:
                    default:
                        StringBuilder m8752j4 = C0082b.m8752j("Unknown attribute 0x");
                        m8752j4.append(Integer.toHexString(index2));
                        m8752j4.append("   ");
                        m8752j4.append(f1287e.get(index2));
                        Log.w("ConstraintSet", m8752j4.toString());
                        break;
                    case C3681R.styleable.AppCompatTheme_radioButtonStyle /* 91 */:
                        C0312b c0312b54 = c0310a.f1295d;
                        int resourceId20 = obtainStyledAttributes.getResourceId(index2, c0312b54.f1371r);
                        int i24 = resourceId20;
                        if (resourceId20 == -1) {
                            i24 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b54.f1371r = i24;
                        break;
                    case C3681R.styleable.AppCompatTheme_ratingBarStyle /* 92 */:
                        C0312b c0312b55 = c0310a.f1295d;
                        int resourceId21 = obtainStyledAttributes.getResourceId(index2, c0312b55.f1372s);
                        int i25 = resourceId21;
                        if (resourceId21 == -1) {
                            i25 = obtainStyledAttributes.getInt(index2, -1);
                        }
                        c0312b55.f1372s = i25;
                        break;
                    case C3681R.styleable.AppCompatTheme_ratingBarStyleIndicator /* 93 */:
                        C0312b c0312b56 = c0310a.f1295d;
                        c0312b56.f1324M = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b56.f1324M);
                        break;
                    case C3681R.styleable.AppCompatTheme_ratingBarStyleSmall /* 94 */:
                        C0312b c0312b57 = c0310a.f1295d;
                        c0312b57.f1331T = obtainStyledAttributes.getDimensionPixelSize(index2, c0312b57.f1331T);
                        break;
                    case C3681R.styleable.AppCompatTheme_searchViewStyle /* 95 */:
                        m8353g(c0310a.f1295d, obtainStyledAttributes, index2, 0);
                        break;
                    case C3681R.styleable.AppCompatTheme_seekBarStyle /* 96 */:
                        m8353g(c0310a.f1295d, obtainStyledAttributes, index2, 1);
                        break;
                    case C3681R.styleable.AppCompatTheme_selectableItemBackground /* 97 */:
                        C0312b c0312b58 = c0310a.f1295d;
                        c0312b58.f1369p0 = obtainStyledAttributes.getInt(index2, c0312b58.f1369p0);
                        break;
                }
            }
            C0312b c0312b59 = c0310a.f1295d;
            if (c0312b59.f1359k0 != null) {
                c0312b59.f1357j0 = null;
            }
        }
        obtainStyledAttributes.recycle();
        return c0310a;
    }

    /* renamed from: f */
    public void m8354f(Context context, int i) {
        XmlResourceParser xml = context.getResources().getXml(i);
        try {
            for (int eventType = xml.getEventType(); eventType != 1; eventType = xml.next()) {
                if (eventType == 0) {
                    xml.getName();
                } else if (eventType == 2) {
                    String name = xml.getName();
                    C0310a m8355e = m8355e(context, Xml.asAttributeSet(xml), false);
                    if (name.equalsIgnoreCase("Guideline")) {
                        m8355e.f1295d.f1338a = true;
                    }
                    this.f1291c.put(Integer.valueOf(m8355e.f1292a), m8355e);
                }
            }
        } catch (IOException e) {
            e.printStackTrace();
        } catch (XmlPullParserException e2) {
            e2.printStackTrace();
        }
    }
}
