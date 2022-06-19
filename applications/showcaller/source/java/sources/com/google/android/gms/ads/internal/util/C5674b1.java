package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ScrollView;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C5667s;
import com.google.android.gms.internal.ads.C6679kw;
import com.google.android.gms.internal.ads.C7118wr;
import com.google.android.gms.internal.ads.C7192yr;
import com.google.android.gms.internal.ads.ei0;
import com.google.android.gms.internal.ads.ej2;
import com.google.android.gms.internal.ads.hv2;
import com.google.android.gms.internal.ads.ku2;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.ads.internal.util.b1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/b1.class */
public final class C5674b1 {
    /* renamed from: a */
    public static boolean m18119a(int i) {
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25629Y1)).booleanValue()) {
            return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25637Z1)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:33|(6:70|35|68|41|42|(6:44|(4:48|53|(2:55|(1:57)(1:58))(1:59)|67)|52|53|(0)(0)|67)(6:49|(4:51|53|(0)(0)|67)|52|53|(0)(0)|67))|40|68|41|42|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0240, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0241, code lost:
        com.google.android.gms.internal.ads.ei0.m15466d("Could not log native template signal to JSON", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0235 A[Catch: JSONException -> 0x0240, TRY_ENTER, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0240, blocks: (B:41:0x01dc, B:57:0x021f, B:58:0x022a, B:59:0x0235), top: B:68:0x01dc }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0241 -> B:67:0x0247). Please submit an issue!!! */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m18118b(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.C5674b1.m18118b(android.content.Context, android.view.View):org.json.JSONObject");
    }

    /* renamed from: c */
    public static JSONObject m18117c(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            boolean z = false;
            if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25481F5)).booleanValue()) {
                C5667s.m18160d();
                ViewParent parent = view.getParent();
                while (parent != null && !(parent instanceof ScrollView)) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            } else {
                C5667s.m18160d();
                ViewParent parent2 = view.getParent();
                while (parent2 != null && !(parent2 instanceof AdapterView)) {
                    parent2 = parent2.getParent();
                }
                boolean z2 = false;
                if ((parent2 == null ? -1 : ((AdapterView) parent2).getPositionForView(view)) != -1) {
                    z2 = true;
                }
                jSONObject.put("contained_in_scroll_view", z2);
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: d */
    public static JSONObject m18116d(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            C5667s.m18160d();
            jSONObject.put("can_show_on_lock_screen", C5679c2.m18080a0(view));
            C5667s.m18160d();
            jSONObject.put("is_keyguard_locked", C5679c2.m18069g(context));
        } catch (JSONException e) {
            ei0.m15464f("Unable to get lock screen information");
        }
        return jSONObject;
    }

    /* renamed from: e */
    public static JSONObject m18115e(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] m18113g = m18113g(view);
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                int[] m18113g2 = m18113g(view2);
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    try {
                        jSONObject4.put("width", C7118wr.m9485a().m9177a(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", C7118wr.m9485a().m9177a(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", C7118wr.m9485a().m9177a(context, m18113g2[0] - m18113g[0]));
                        jSONObject4.put("y", C7118wr.m9485a().m9177a(context, m18113g2[1] - m18113g[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = m18109k(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", C7118wr.m9485a().m9177a(context, m18113g2[0] - m18113g[0]));
                            jSONObject.put("y", C7118wr.m9485a().m9177a(context, m18113g2[1] - m18113g[1]));
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
                        ei0.m15464f("Unable to get asset views information");
                    }
                } catch (JSONException e3) {
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: f */
    public static JSONObject m18114f(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        Exception e;
        JSONObject jSONObject2;
        JSONObject jSONObject3;
        try {
            jSONObject2 = new JSONObject();
        } catch (Exception e2) {
            e = e2;
            jSONObject = null;
        }
        try {
            JSONObject jSONObject4 = new JSONObject();
            try {
                jSONObject4.put("x", C7118wr.m9485a().m9177a(context, point2.x));
                jSONObject4.put("y", C7118wr.m9485a().m9177a(context, point2.y));
                jSONObject4.put("start_x", C7118wr.m9485a().m9177a(context, point.x));
                jSONObject4.put("start_y", C7118wr.m9485a().m9177a(context, point.y));
                jSONObject3 = jSONObject4;
            } catch (JSONException e3) {
                ei0.m15466d("Error occurred while putting signals into JSON object.", e3);
                jSONObject3 = null;
            }
            jSONObject2.put("click_point", jSONObject3);
            jSONObject2.put("asset_id", str);
            jSONObject = jSONObject2;
        } catch (Exception e4) {
            e = e4;
            jSONObject = jSONObject2;
            ei0.m15466d("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    /* renamed from: g */
    public static int[] m18113g(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    /* renamed from: h */
    public static Point m18112h(MotionEvent motionEvent, View view) {
        int[] m18113g = m18113g(view);
        float rawX = motionEvent.getRawX();
        return new Point(((int) rawX) - m18113g[0], ((int) motionEvent.getRawY()) - m18113g[1]);
    }

    /* renamed from: i */
    public static boolean m18111i(Context context, ej2 ej2Var) {
        if (!ej2Var.f22202J) {
            return false;
        }
        if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25489G5)).booleanValue()) {
            return ((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25513J5)).booleanValue();
        }
        String str = (String) C7192yr.m8714c().m14263c(C6679kw.f25497H5);
        if (str.isEmpty() || context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String str2 : hv2.m14535b(ku2.m13780b(';')).m14533d(str)) {
            if (str2.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: j */
    public static WindowManager.LayoutParams m18110j() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) C7192yr.m8714c().m14263c(C6679kw.f25505I5)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    /* renamed from: k */
    private static JSONObject m18109k(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", C7118wr.m9485a().m9177a(context, rect.right - rect.left));
        jSONObject.put("height", C7118wr.m9485a().m9177a(context, rect.bottom - rect.top));
        jSONObject.put("x", C7118wr.m9485a().m9177a(context, rect.left));
        jSONObject.put("y", C7118wr.m9485a().m9177a(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }
}
