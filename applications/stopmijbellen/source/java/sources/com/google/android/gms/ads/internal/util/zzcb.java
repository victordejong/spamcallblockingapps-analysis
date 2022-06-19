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
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.internal.ads.zzbgo;
import com.google.android.gms.internal.ads.zzbgq;
import com.google.android.gms.internal.ads.zzblj;
import com.google.android.gms.internal.ads.zzciz;
import com.google.android.gms.internal.ads.zzfdn;
import com.google.android.gms.internal.ads.zzfps;
import com.google.android.gms.internal.ads.zzfqp;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzcb.class */
public final class zzcb {
    public static Point zza(MotionEvent motionEvent, View view) {
        int[] zzj = zzj(view);
        float rawX = motionEvent.getRawX();
        return new Point(((int) rawX) - zzj[0], ((int) motionEvent.getRawY()) - zzj[1]);
    }

    public static WindowManager.LayoutParams zzb() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) zzbgq.zzc().zzb(zzblj.zzfP)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    public static JSONObject zzc(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        Exception e;
        JSONObject jSONObject2;
        try {
            JSONObject jSONObject3 = new JSONObject();
            try {
                JSONObject jSONObject4 = new JSONObject();
                try {
                    jSONObject4.put("x", zzbgo.zzb().zzb(context, point2.x));
                    jSONObject4.put("y", zzbgo.zzb().zzb(context, point2.y));
                    jSONObject4.put("start_x", zzbgo.zzb().zzb(context, point.x));
                    jSONObject4.put("start_y", zzbgo.zzb().zzb(context, point.y));
                    jSONObject2 = jSONObject4;
                } catch (JSONException e2) {
                    zzciz.zzh("Error occurred while putting signals into JSON object.", e2);
                    jSONObject2 = null;
                }
                jSONObject3.put("click_point", jSONObject2);
                jSONObject3.put("asset_id", str);
                jSONObject = jSONObject3;
            } catch (Exception e3) {
                e = e3;
                jSONObject = jSONObject3;
                zzciz.zzh("Error occurred while grabbing click signals.", e);
                return jSONObject;
            }
        } catch (Exception e4) {
            e = e4;
            jSONObject = null;
        }
        return jSONObject;
    }

    public static JSONObject zzd(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] zzj = zzj(view);
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                int[] zzj2 = zzj(view2);
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    try {
                        jSONObject4.put("width", zzbgo.zzb().zzb(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", zzbgo.zzb().zzb(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", zzbgo.zzb().zzb(context, zzj2[0] - zzj[0]));
                        jSONObject4.put("y", zzbgo.zzb().zzb(context, zzj2[1] - zzj[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zzk(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", zzbgo.zzb().zzb(context, zzj2[0] - zzj[0]));
                            jSONObject.put("y", zzbgo.zzb().zzb(context, zzj2[1] - zzj[1]));
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
                        zzciz.zzj("Unable to get asset views information");
                    }
                } catch (JSONException e3) {
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject zze(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzt.zzp();
            jSONObject.put("can_show_on_lock_screen", zzt.zzt(view));
            zzt.zzp();
            jSONObject.put("is_keyguard_locked", zzt.zzH(context));
        } catch (JSONException e) {
            zzciz.zzj("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject zzf(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            boolean z = false;
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfM)).booleanValue()) {
                zzt.zzp();
                ViewParent parent = view.getParent();
                while (parent != null && !(parent instanceof ScrollView)) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            } else {
                zzt.zzp();
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

    /* JADX WARN: Can't wrap try/catch for region: R(7:33|(6:70|35|68|41|42|(6:44|(4:48|53|(2:55|(1:57)(1:58))(1:59)|67)|52|53|(0)(0)|67)(6:49|(4:51|53|(0)(0)|67)|52|53|(0)(0)|67))|40|68|41|42|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x024f, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0250, code lost:
        com.google.android.gms.internal.ads.zzciz.zzh("Could not log native template signal to JSON", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01f2  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x020d  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0243 A[Catch: JSONException -> 0x024f, TRY_ENTER, TRY_LEAVE, TryCatch #5 {JSONException -> 0x024f, blocks: (B:41:0x01e4, B:57:0x022b, B:58:0x0237, B:59:0x0243), top: B:68:0x01e4 }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0250 -> B:67:0x0257). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zzg(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 605
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzcb.zzg(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static boolean zzh(Context context, zzfdn zzfdnVar) {
        if (!zzfdnVar.zzK) {
            return false;
        }
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzfN)).booleanValue()) {
            return ((Boolean) zzbgq.zzc().zzb(zzblj.zzfQ)).booleanValue();
        }
        String str = (String) zzbgq.zzc().zzb(zzblj.zzfO);
        if (str.isEmpty() || context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String str2 : zzfqp.zzc(zzfps.zzb(';')).zzd(str)) {
            if (str2.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static boolean zzi(int i) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzcf)).booleanValue()) {
            return ((Boolean) zzbgq.zzc().zzb(zzblj.zzcg)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    public static int[] zzj(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    private static JSONObject zzk(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", zzbgo.zzb().zzb(context, rect.right - rect.left));
        jSONObject.put("height", zzbgo.zzb().zzb(context, rect.bottom - rect.top));
        jSONObject.put("x", zzbgo.zzb().zzb(context, rect.left));
        jSONObject.put("y", zzbgo.zzb().zzb(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }
}
