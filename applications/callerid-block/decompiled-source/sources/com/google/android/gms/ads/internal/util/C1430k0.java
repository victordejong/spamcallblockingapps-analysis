package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C1407r;
import com.google.android.gms.internal.ads.C1674c;
import com.google.android.gms.internal.ads.C1842m3;
import com.google.android.gms.internal.ads.C1894po;
import com.google.android.gms.internal.ads.al1;
import com.google.android.gms.internal.ads.bw1;
import com.google.android.gms.internal.ads.m03;
import com.google.android.gms.internal.ads.sw1;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.k0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/k0.class */
public final class C1430k0 {
    /* renamed from: a */
    public static boolean m8821a(int i) {
        if (!((Boolean) C1674c.m7906c().m6878b(C1842m3.f7258H1)).booleanValue()) {
            return true;
        }
        return ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7264I1)).booleanValue() || i <= 15299999;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:33|(6:70|35|68|41|42|(7:44|(5:48|53|(2:55|(2:57|67)(1:58))|59|67)|52|53|(0)|59|67)(7:49|(5:51|53|(0)|59|67)|52|53|(0)|59|67))|40|68|41|42|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x023c, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x023d, code lost:
        com.google.android.gms.internal.ads.C1894po.m6182d("Could not log native template signal to JSON", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x021c  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x023d -> B:67:0x0243). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m8820b(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 585
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C1430k0.m8820b(android.content.Context, android.view.View):org.json.JSONObject");
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0044, code lost:
        if (r4 == null) goto L_0x004d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        r8 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x004d, code lost:
        r0.put("contained_in_scroll_view", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x008e, code lost:
        if ((r6 == null ? -1 : ((android.widget.AdapterView) r6).getPositionForView(r4)) != (-1)) goto L_0x004a;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m8819c(android.view.View r4) {
        /*
            org.json.JSONObject r0 = new org.json.JSONObject
            r1 = r0
            r1.<init>()
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L_0x0094
            com.google.android.gms.internal.ads.e3<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.C1842m3.f7228C4     // Catch: Exception -> 0x0096
            r6 = r0
            com.google.android.gms.internal.ads.k3 r0 = com.google.android.gms.internal.ads.C1674c.m7906c()     // Catch: Exception -> 0x0096
            r1 = r6
            java.lang.Object r0 = r0.m6878b(r1)     // Catch: Exception -> 0x0096
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: Exception -> 0x0096
            boolean r0 = r0.booleanValue()     // Catch: Exception -> 0x0096
            r7 = r0
            r0 = 0
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0059
            com.google.android.gms.ads.internal.util.l1 r0 = com.google.android.gms.ads.internal.C1407r.m8920d()     // Catch: Exception -> 0x0096
            r0 = r4
            android.view.ViewParent r0 = r0.getParent()     // Catch: Exception -> 0x0096
            r4 = r0
        L_0x002e:
            r0 = r4
            if (r0 == 0) goto L_0x0043
            r0 = r4
            boolean r0 = r0 instanceof android.widget.ScrollView     // Catch: Exception -> 0x0096
            if (r0 != 0) goto L_0x0043
            r0 = r4
            android.view.ViewParent r0 = r0.getParent()     // Catch: Exception -> 0x0096
            r4 = r0
            goto L_0x002e
        L_0x0043:
            r0 = r4
            if (r0 != 0) goto L_0x004a
            goto L_0x004d
        L_0x004a:
            r0 = 1
            r8 = r0
        L_0x004d:
            r0 = r5
            java.lang.String r1 = "contained_in_scroll_view"
            r2 = r8
            org.json.JSONObject r0 = r0.put(r1, r2)     // Catch: Exception -> 0x0096
            goto L_0x0094
        L_0x0059:
            com.google.android.gms.ads.internal.util.l1 r0 = com.google.android.gms.ads.internal.C1407r.m8920d()     // Catch: Exception -> 0x0096
            r0 = r4
            android.view.ViewParent r0 = r0.getParent()     // Catch: Exception -> 0x0096
            r6 = r0
        L_0x0062:
            r0 = r6
            if (r0 == 0) goto L_0x0077
            r0 = r6
            boolean r0 = r0 instanceof android.widget.AdapterView     // Catch: Exception -> 0x0096
            if (r0 != 0) goto L_0x0077
            r0 = r6
            android.view.ViewParent r0 = r0.getParent()     // Catch: Exception -> 0x0096
            r6 = r0
            goto L_0x0062
        L_0x0077:
            r0 = r6
            if (r0 != 0) goto L_0x0081
            r0 = -1
            r9 = r0
            goto L_0x008b
        L_0x0081:
            r0 = r6
            android.widget.AdapterView r0 = (android.widget.AdapterView) r0     // Catch: Exception -> 0x0096
            r1 = r4
            int r0 = r0.getPositionForView(r1)     // Catch: Exception -> 0x0096
            r9 = r0
        L_0x008b:
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L_0x004d
            goto L_0x004a
        L_0x0094:
            r0 = r5
            return r0
        L_0x0096:
            r4 = move-exception
            goto L_0x0094
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C1430k0.m8819c(android.view.View):org.json.JSONObject");
    }

    /* renamed from: d */
    public static JSONObject m8818d(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            C1407r.m8920d();
            jSONObject.put("can_show_on_lock_screen", C1433l1.m8773Y(view));
            C1407r.m8920d();
            jSONObject.put("is_keyguard_locked", C1433l1.m8761f(context));
        } catch (JSONException e) {
            C1894po.m6180f("Unable to get lock screen information");
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static JSONObject m8817e(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] g = m8815g(view);
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                int[] g2 = m8815g(view2);
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    try {
                        jSONObject4.put("width", m03.m6636a().m7143a(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", m03.m6636a().m7143a(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", m03.m6636a().m7143a(context, g2[0] - g[0]));
                        jSONObject4.put("y", m03.m6636a().m7143a(context, g2[1] - g[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = m8811k(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", m03.m6636a().m7143a(context, g2[0] - g[0]));
                            jSONObject.put("y", m03.m6636a().m7143a(context, g2[1] - g[1]));
                            jSONObject.put("relative_to", "ad_view");
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            jSONObject3.put("font_size", textView.getTextSize());
                            jSONObject3.put("text", textView.getText());
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                    } catch (JSONException e) {
                    }
                    try {
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException e2) {
                        C1894po.m6180f("Unable to get asset views information");
                    }
                } catch (JSONException e3) {
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: f */
    public static JSONObject m8816f(String str, Context context, Point point, Point point2) {
        Exception e;
        JSONObject jSONObject;
        JSONObject jSONObject2 = null;
        JSONObject jSONObject3 = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("x", m03.m6636a().m7143a(context, point2.x));
                jSONObject4.put("y", m03.m6636a().m7143a(context, point2.y));
                jSONObject4.put("start_x", m03.m6636a().m7143a(context, point.x));
                jSONObject4.put("start_y", m03.m6636a().m7143a(context, point.y));
                jSONObject3 = jSONObject4;
            } catch (JSONException e3) {
                C1894po.m6182d("Error occurred while putting signals into JSON object.", e3);
            }
            jSONObject.put("click_point", jSONObject3);
            jSONObject.put("asset_id", str);
            jSONObject2 = jSONObject;
        } catch (Exception e4) {
            e = e4;
            jSONObject2 = jSONObject;
            C1894po.m6182d("Error occurred while grabbing click signals.", e);
            return jSONObject2;
        }
        return jSONObject2;
    }

    /* renamed from: g */
    public static int[] m8815g(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    /* renamed from: h */
    public static Point m8814h(MotionEvent motionEvent, View view) {
        int[] g = m8815g(view);
        float rawX = motionEvent.getRawX();
        return new Point(((int) rawX) - g[0], ((int) motionEvent.getRawY()) - g[1]);
    }

    /* renamed from: i */
    public static boolean m8813i(Context context, al1 al1Var) {
        if (!al1Var.f5989I) {
            return false;
        }
        if (((Boolean) C1674c.m7906c().m6878b(C1842m3.f7235D4)).booleanValue()) {
            return ((Boolean) C1674c.m7906c().m6878b(C1842m3.f7255G4)).booleanValue();
        }
        String str = (String) C1674c.m7906c().m6878b(C1842m3.f7242E4);
        if (str.isEmpty() || context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String str2 : sw1.m5559a(bw1.m7913b(';')).m5558b(str)) {
            if (str2.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static WindowManager.LayoutParams m8812j() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) C1674c.m7906c().m6878b(C1842m3.f7249F4)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    /* renamed from: k */
    private static JSONObject m8811k(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", m03.m6636a().m7143a(context, rect.right - rect.left));
        jSONObject.put("height", m03.m6636a().m7143a(context, rect.bottom - rect.top));
        jSONObject.put("x", m03.m6636a().m7143a(context, rect.left));
        jSONObject.put("y", m03.m6636a().m7143a(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }
}
