package p068d2;

import android.content.Context;
import android.graphics.Point;
import android.view.View;
import android.view.WindowManager;
/* renamed from: d2.v */
/* loaded from: classes-dex2jar.jar:d2/v.class */
public class C2424v {

    /* renamed from: a */
    public static int f8585a;

    /* renamed from: b */
    public static int f8586b;

    /* renamed from: c */
    public static int f8587c;

    /* renamed from: d */
    public static int f8588d;

    /* JADX WARN: Code restructure failed: missing block: B:110:0x030b, code lost:
        r18 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00bb, code lost:
        if (r15 != null) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00bf, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00c0, code lost:
        r0 = r0.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00ce, code lost:
        if (r0.hasNext() == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00d1, code lost:
        r0 = (android.view.View) r0.next();
        r0 = (android.view.ViewGroup) r0.getParent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00e7, code lost:
        if (r0 != null) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00eb, code lost:
        return r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00f9, code lost:
        if ("viewpager".equalsIgnoreCase(r0.getClass().getSimpleName()) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00ff, code lost:
        r18 = r0.indexOfChild(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0110, code lost:
        if (r18 >= (r0.getChildCount() - 1)) goto L176;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0113, code lost:
        r19 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0117, code lost:
        r0 = r18 + 1;
        r17 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0128, code lost:
        if (r0 >= r0.getChildCount()) goto L182;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x012b, code lost:
        r0 = r0.getChildAt(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0139, code lost:
        if (m3564e(r0) != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0141, code lost:
        if (r0.getVisibility() != 0) goto L185;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x014c, code lost:
        if (r0.getAlpha() == r19) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x014f, code lost:
        r0.addFirst(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x015e, code lost:
        if ((r0 instanceof android.view.ViewGroup) != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0169, code lost:
        if (r0.getVisibility() != 0) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0174, code lost:
        if (r0.getAlpha() != r19) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x017a, code lost:
        r0 = new java.util.LinkedList();
        r6 = new java.util.ArrayList();
        r0.add((android.view.ViewGroup) r0);
        r0 = r0.listIterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01a4, code lost:
        if (r0.hasNext() == false) goto L189;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01a7, code lost:
        r0 = (android.view.ViewGroup) r0.next();
        r0.remove();
        r0 = r0.getChildCount();
        r18 = 0;
        r0 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01c8, code lost:
        r17 = r0;
        r19 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x01d0, code lost:
        if (r18 >= r0) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x01d3, code lost:
        r0 = r0.getChildAt(r18);
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x01e1, code lost:
        if (r0.getVisibility() != 0) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x01ec, code lost:
        if (r0.getAlpha() == r17) goto L193;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x01f4, code lost:
        if ((r0 instanceof android.view.ViewGroup) == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x01fc, code lost:
        if (m3564e(r0) == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ff, code lost:
        r0.add((android.view.ViewGroup) r0);
        r0.previous();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0216, code lost:
        r6.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0225, code lost:
        if (m3564e(r0) != false) goto L196;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0228, code lost:
        r6.add(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x022f, code lost:
        r18 = r18 + 1;
        r0 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x023c, code lost:
        if (r6.isEmpty() != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0242, code lost:
        r6 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0245, code lost:
        if (r6 == null) goto L188;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0248, code lost:
        r0.addAll(0, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0250, code lost:
        r19 = 0.0f;
        r18 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x025a, code lost:
        r17 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0260, code lost:
        r0 = r0.iterator();
        r19 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x026f, code lost:
        if (r0.hasNext() == false) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0272, code lost:
        r0 = (android.view.View) r0.next();
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0281, code lost:
        if (r19 < r8) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0289, code lost:
        if (r0 == null) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0291, code lost:
        if (r0.getTag() == null) goto L197;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x02a5, code lost:
        if (((java.lang.String) r0.getTag()).contains("BTN_CLOSE") == false) goto L199;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static float m3568a(android.view.View r6, android.graphics.Rect r7, float r8, boolean r9) {
        /*
            Method dump skipped, instructions count: 1274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2424v.m3568a(android.view.View, android.graphics.Rect, float, boolean):float");
    }

    /* renamed from: b */
    public static int m3567b(Context context) {
        int i;
        int i2;
        int i3 = context.getResources().getConfiguration().orientation;
        if (i3 != 2 || (i2 = f8585a) <= 0) {
            if (i3 == 1 && (i = f8587c) > 0) {
                return i;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
                Point point = new Point();
                windowManager.getDefaultDisplay().getSize(point);
                int i4 = point.y;
                if (i3 == 2) {
                    f8585a = i4;
                } else if (i3 == 1) {
                    f8587c = i4;
                }
                return i4;
            } catch (Exception e) {
                return 0;
            }
        }
        return i2;
    }

    /* renamed from: c */
    public static float m3566c(View view) {
        return view.getAlpha();
    }

    /* renamed from: d */
    public static int m3565d(Context context) {
        int i;
        int i2;
        int i3 = context.getResources().getConfiguration().orientation;
        if (i3 != 2 || (i2 = f8586b) <= 0) {
            if (i3 == 1 && (i = f8588d) > 0) {
                return i;
            }
            try {
                WindowManager windowManager = (WindowManager) context.getApplicationContext().getSystemService("window");
                Point point = new Point();
                windowManager.getDefaultDisplay().getSize(point);
                int i4 = point.x;
                if (i3 == 2) {
                    f8586b = i4;
                } else if (i3 == 1) {
                    f8588d = i4;
                }
                return i4;
            } catch (Exception e) {
                return 0;
            }
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0022, code lost:
        if (r3.getBackground().getAlpha() == 0) goto L11;
     */
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m3564e(android.view.View r3) {
        /*
            r0 = 0
            r4 = r0
            r0 = r3
            if (r0 != 0) goto L8
            r0 = 0
            return r0
        L8:
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getBackground()
            if (r0 == 0) goto L25
            r0 = r4
            r5 = r0
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 18
            if (r0 <= r1) goto L27
            r0 = r4
            r5 = r0
            r0 = r3
            android.graphics.drawable.Drawable r0 = r0.getBackground()
            int r0 = r0.getAlpha()
            if (r0 != 0) goto L27
        L25:
            r0 = 1
            r5 = r0
        L27:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2424v.m3564e(android.view.View):boolean");
    }
}
