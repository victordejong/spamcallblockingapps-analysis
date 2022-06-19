package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.widget.TextView;
import com.google.android.gms.ads.internal.C2341q;
import java.lang.ref.WeakReference;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.android.gms.internal.ads.xf */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/xf.class */
public final class C3622xf {
    /* renamed from: a */
    private static int m6836a(Context context, int i) {
        return dyx.m8162a().m6788b(context, i);
    }

    /* renamed from: a */
    public static Point m6831a(MotionEvent motionEvent, View view) {
        int[] m6827b = m6827b(view);
        return new Point(((int) motionEvent.getRawX()) - m6827b[0], ((int) motionEvent.getRawY()) - m6827b[1]);
    }

    /* renamed from: a */
    private static JSONObject m6835a(Context context, Point point, Point point2) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        try {
            jSONObject2.put("x", m6836a(context, point2.x));
            jSONObject2.put("y", m6836a(context, point2.y));
            jSONObject2.put("start_x", m6836a(context, point.x));
            jSONObject2.put("start_y", m6836a(context, point.y));
            jSONObject = jSONObject2;
        } catch (JSONException e) {
            C3556uu.m6748c("Error occurred while putting signals into JSON object.", e);
            jSONObject = null;
        }
        return jSONObject;
    }

    /* renamed from: a */
    private static JSONObject m6834a(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", m6836a(context, rect.right - rect.left));
        jSONObject.put("height", m6836a(context, rect.bottom - rect.top));
        jSONObject.put("x", m6836a(context, rect.left));
        jSONObject.put("y", m6836a(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x015e -> B:11:0x0090). Please submit an issue!!! */
    /* renamed from: a */
    public static JSONObject m6833a(Context context, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (view != null) {
            try {
                int[] m6827b = m6827b(view);
                JSONObject jSONObject3 = new JSONObject();
                jSONObject3.put("width", m6836a(context, view.getMeasuredWidth()));
                jSONObject3.put("height", m6836a(context, view.getMeasuredHeight()));
                jSONObject3.put("x", m6836a(context, m6827b[0]));
                jSONObject3.put("y", m6836a(context, m6827b[1]));
                jSONObject3.put("relative_to", "window");
                jSONObject2.put("frame", jSONObject3);
                Rect rect = new Rect();
                if (view.getGlobalVisibleRect(rect)) {
                    jSONObject = m6834a(context, rect);
                } else {
                    JSONObject jSONObject4 = new JSONObject();
                    jSONObject4.put("width", 0);
                    jSONObject4.put("height", 0);
                    jSONObject4.put("x", m6836a(context, m6827b[0]));
                    jSONObject4.put("y", m6836a(context, m6827b[1]));
                    jSONObject4.put("relative_to", "window");
                    jSONObject = jSONObject4;
                }
                jSONObject2.put("visible_bounds", jSONObject);
            } catch (Exception e) {
                C3556uu.m6745e("Unable to get native ad view bounding box");
            }
            if (((Boolean) dyx.m8158e().m7876a(edi.f16529dc)).booleanValue()) {
                ViewParent parent = view.getParent();
                String str = "";
                if (parent != null) {
                    try {
                        str = (String) parent.getClass().getMethod("getTemplateTypeName", new Class[0]).invoke(parent, new Object[0]);
                    } catch (IllegalAccessException e2) {
                        e = e2;
                        C3556uu.m6748c("Cannot access method getTemplateTypeName: ", e);
                        str = "";
                    } catch (NoSuchMethodException e3) {
                        str = "";
                    } catch (SecurityException e4) {
                        e = e4;
                        C3556uu.m6748c("Cannot access method getTemplateTypeName: ", e);
                        str = "";
                    } catch (InvocationTargetException e5) {
                        e = e5;
                        C3556uu.m6748c("Cannot access method getTemplateTypeName: ", e);
                        str = "";
                    }
                }
                boolean z = true;
                try {
                    switch (str.hashCode()) {
                        case -2066603854:
                            if (str.equals("small_template")) {
                                z = false;
                                break;
                            }
                            break;
                        case 2019754500:
                            if (str.equals("medium_template")) {
                                z = true;
                                break;
                            }
                            break;
                    }
                    switch (z) {
                        case false:
                            jSONObject2.put("native_template_type", 1);
                            break;
                        case true:
                            jSONObject2.put("native_template_type", 2);
                            break;
                        default:
                            jSONObject2.put("native_template_type", 0);
                            break;
                    }
                } catch (JSONException e6) {
                    C3556uu.m6748c("Could not log native template signal to JSON", e6);
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static JSONObject m6832a(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] m6827b = m6827b(view);
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] m6827b2 = m6827b(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", m6836a(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", m6836a(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", m6836a(context, m6827b2[0] - m6827b[0]));
                        jSONObject4.put("y", m6836a(context, m6827b2[1] - m6827b[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = m6834a(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", m6836a(context, m6827b2[0] - m6827b[0]));
                            jSONObject.put("y", m6836a(context, m6827b2[1] - m6827b[1]));
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
                        jSONObject2.put(entry.getKey(), jSONObject3);
                    } catch (JSONException e) {
                        C3556uu.m6745e("Unable to get asset views information");
                    }
                }
            }
        }
        return jSONObject2;
    }

    /* renamed from: a */
    public static JSONObject m6830a(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                C2341q.m14744c();
                jSONObject.put("contained_in_scroll_view", C3567ve.m6960d(view) != -1);
            } catch (Exception e) {
            }
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static JSONObject m6829a(String str, Context context, Point point, Point point2) {
        Exception e;
        JSONObject jSONObject;
        JSONObject jSONObject2;
        try {
            jSONObject2 = new JSONObject();
        } catch (Exception e2) {
            e = e2;
            jSONObject = null;
        }
        try {
            jSONObject2.put("click_point", m6835a(context, point, point2));
            jSONObject2.put("asset_id", str);
            jSONObject = jSONObject2;
        } catch (Exception e3) {
            e = e3;
            jSONObject = jSONObject2;
            C3556uu.m6748c("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    /* renamed from: a */
    public static boolean m6837a(int i) {
        boolean z;
        if (((Boolean) dyx.m8158e().m7876a(edi.f16435bo)).booleanValue()) {
            if (!((Boolean) dyx.m8158e().m7876a(edi.f16436bp)).booleanValue() && i > 15299999) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: b */
    public static JSONObject m6828b(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view != null) {
            try {
                C2341q.m14744c();
                jSONObject.put("can_show_on_lock_screen", C3567ve.m6964c(view));
                C2341q.m14744c();
                jSONObject.put("is_keyguard_locked", C3567ve.m6950i(context));
            } catch (JSONException e) {
                C3556uu.m6745e("Unable to get lock screen information");
            }
        }
        return jSONObject;
    }

    /* renamed from: b */
    private static int[] m6827b(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }
}
