package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzp;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbau.class */
public final class zzbau {
    /* renamed from: a */
    public static int m15943a(Context context, int i) {
        return zzwm.m11170a().m15910a(context, i);
    }

    /* renamed from: a */
    public static Point m15938a(MotionEvent motionEvent, View view) {
        int[] b = m15933b(view);
        return new Point(((int) motionEvent.getRawX()) - b[0], ((int) motionEvent.getRawY()) - b[1]);
    }

    /* renamed from: a */
    public static WindowManager.LayoutParams m15946a() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) zzwm.m11166e().m16921a(zzabb.f23762W3)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    /* renamed from: a */
    public static JSONObject m15944a(Context context) {
        JSONObject jSONObject = new JSONObject();
        zzp.m17969c();
        DisplayMetrics a = zzayu.m16128a((WindowManager) context.getSystemService("window"));
        try {
            jSONObject.put("width", m15943a(context, a.widthPixels));
            jSONObject.put("height", m15943a(context, a.heightPixels));
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m15942a(Context context, Point point, Point point2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", m15943a(context, point2.x));
            jSONObject.put("y", m15943a(context, point2.y));
            jSONObject.put("start_x", m15943a(context, point.x));
            jSONObject.put("start_y", m15943a(context, point.y));
            return jSONObject;
        } catch (JSONException e) {
            zzbbq.m15855b("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    /* renamed from: a */
    public static JSONObject m15941a(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", m15943a(context, rect.right - rect.left));
        jSONObject.put("height", m15943a(context, rect.bottom - rect.top));
        jSONObject.put("x", m15943a(context, rect.left));
        jSONObject.put("y", m15943a(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x01b8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01d3 A[Catch: JSONException -> 0x0213, TRY_ENTER, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0213, blocks: (B:32:0x01aa, B:37:0x01c3, B:41:0x01d3, B:48:0x01ef, B:49:0x01fb, B:50:0x0207), top: B:56:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0207 A[Catch: JSONException -> 0x0213, TRY_ENTER, TRY_LEAVE, TryCatch #0 {JSONException -> 0x0213, blocks: (B:32:0x01aa, B:37:0x01c3, B:41:0x01d3, B:48:0x01ef, B:49:0x01fb, B:50:0x0207), top: B:56:0x01aa }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject m15940a(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 545
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbau.m15940a(android.content.Context, android.view.View):org.json.JSONObject");
    }

    /* renamed from: a */
    public static JSONObject m15939a(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (!(map == null || view == null)) {
            int[] b = m15933b(view);
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] b2 = m15933b(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", m15943a(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", m15943a(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", m15943a(context, b2[0] - b[0]));
                        jSONObject4.put("y", m15943a(context, b2[1] - b[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = m15941a(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", m15943a(context, b2[0] - b[0]));
                            jSONObject.put("y", m15943a(context, b2[1] - b[1]));
                            jSONObject.put("relative_to", "ad_view");
                        }
                        jSONObject3.put("visible_bounds", jSONObject);
                        if (view2 instanceof TextView) {
                            TextView textView = (TextView) view2;
                            jSONObject3.put("text_color", textView.getCurrentTextColor());
                            try {
                                jSONObject3.put("font_size", textView.getTextSize());
                                jSONObject3.put("text", textView.getText());
                            } catch (JSONException e) {
                                zzbbq.m15852d("Unable to get asset views information");
                            }
                        }
                        jSONObject3.put("is_clickable", map2 != null && map2.containsKey(entry.getKey()) && view2.isClickable());
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException e2) {
                    }
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static JSONObject m15937a(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23752U3)).booleanValue()) {
                zzp.m17969c();
                jSONObject.put("contained_in_scroll_view", zzayu.m16087g(view));
            } else {
                zzp.m17969c();
                jSONObject.put("contained_in_scroll_view", zzayu.m16089f(view) != -1);
            }
        } catch (Exception e) {
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m15935a(String str, Context context, Point point, Point point2) {
        Exception e;
        JSONObject jSONObject = null;
        try {
            jSONObject = new JSONObject();
        } catch (Exception e2) {
            e = e2;
        }
        try {
            jSONObject.put("click_point", m15942a(context, point, point2));
            jSONObject.put("asset_id", str);
        } catch (Exception e3) {
            e = e3;
            jSONObject = jSONObject;
            zzbbq.m15855b("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static boolean m15945a(int i) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23886s1)).booleanValue()) {
            return true;
        }
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23891t1)).booleanValue() || i <= 15299999;
    }

    /* renamed from: a */
    public static boolean m15936a(zzdnv zzdnvVar) {
        if (!((Boolean) zzwm.m11166e().m16921a(zzabb.f23757V3)).booleanValue() || !zzdnvVar.f27562I) {
            return false;
        }
        return ((Boolean) zzwm.m11166e().m16921a(zzabb.f23767X3)).booleanValue();
    }

    /* renamed from: b */
    public static JSONObject m15934b(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzp.m17969c();
            jSONObject.put("can_show_on_lock_screen", zzayu.m16092e(view));
            zzp.m17969c();
            jSONObject.put("is_keyguard_locked", zzayu.m16084j(context));
        } catch (JSONException e) {
            zzbbq.m15852d("Unable to get lock screen information");
        }
        return jSONObject;
    }

    /* renamed from: b */
    public static int[] m15933b(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }
}
