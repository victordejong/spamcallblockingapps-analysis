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
import com.google.android.gms.internal.ads.zzber;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjl;
import com.google.android.gms.internal.ads.zzcgt;
import com.google.android.gms.internal.ads.zzezz;
import com.google.android.gms.internal.ads.zzflk;
import com.google.android.gms.internal.ads.zzfmg;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/internal/util/zzca.class */
public final class zzca {
    public static boolean zza(int i) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzbY)).booleanValue()) {
            return ((Boolean) zzbet.zzc().zzc(zzbjl.zzbZ)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(7:33|(6:70|35|68|41|42|(6:44|(4:48|53|(2:55|(1:57)(1:58))(1:59)|67)|52|53|(0)(0)|67)(6:49|(4:51|53|(0)(0)|67)|52|53|(0)(0)|67))|40|68|41|42|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0240, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0241, code lost:
        com.google.android.gms.internal.ads.zzcgt.zzg("Could not log native template signal to JSON", r6);
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01e9  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0219  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x0235 A[Catch: JSONException -> 0x0240, TRY_ENTER, TRY_LEAVE, TryCatch #4 {JSONException -> 0x0240, blocks: (B:41:0x01dc, B:57:0x021f, B:58:0x022a, B:59:0x0235), top: B:68:0x01dc }] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x0241 -> B:67:0x0247). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zzb(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzca.zzb(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static JSONObject zzc(View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            boolean z = false;
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfF)).booleanValue()) {
                zzt.zzc();
                ViewParent parent = view.getParent();
                while (parent != null && !(parent instanceof ScrollView)) {
                    parent = parent.getParent();
                }
                if (parent != null) {
                    z = true;
                }
                jSONObject.put("contained_in_scroll_view", z);
            } else {
                zzt.zzc();
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

    public static JSONObject zzd(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzt.zzc();
            jSONObject.put("can_show_on_lock_screen", zzs.zzt(view));
            zzt.zzc();
            jSONObject.put("is_keyguard_locked", zzs.zzG(context));
        } catch (JSONException e) {
            zzcgt.zzi("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject zze(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map == null || view == null) {
            return jSONObject2;
        }
        int[] zzg = zzg(view);
        for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
            View view2 = entry.getValue().get();
            if (view2 != null) {
                int[] zzg2 = zzg(view2);
                JSONObject jSONObject3 = new JSONObject();
                JSONObject jSONObject4 = new JSONObject();
                try {
                    try {
                        jSONObject4.put("width", zzber.zza().zza(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", zzber.zza().zza(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", zzber.zza().zza(context, zzg2[0] - zzg[0]));
                        jSONObject4.put("y", zzber.zza().zza(context, zzg2[1] - zzg[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zzk(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", zzber.zza().zza(context, zzg2[0] - zzg[0]));
                            jSONObject.put("y", zzber.zza().zza(context, zzg2[1] - zzg[1]));
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
                        zzcgt.zzi("Unable to get asset views information");
                    }
                } catch (JSONException e3) {
                }
            }
        }
        return jSONObject2;
    }

    public static JSONObject zzf(String str, Context context, Point point, Point point2) {
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
                jSONObject4.put("x", zzber.zza().zza(context, point2.x));
                jSONObject4.put("y", zzber.zza().zza(context, point2.y));
                jSONObject4.put("start_x", zzber.zza().zza(context, point.x));
                jSONObject4.put("start_y", zzber.zza().zza(context, point.y));
                jSONObject3 = jSONObject4;
            } catch (JSONException e3) {
                zzcgt.zzg("Error occurred while putting signals into JSON object.", e3);
                jSONObject3 = null;
            }
            jSONObject2.put("click_point", jSONObject3);
            jSONObject2.put("asset_id", str);
            jSONObject = jSONObject2;
        } catch (Exception e4) {
            e = e4;
            jSONObject = jSONObject2;
            zzcgt.zzg("Error occurred while grabbing click signals.", e);
            return jSONObject;
        }
        return jSONObject;
    }

    public static int[] zzg(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    public static Point zzh(MotionEvent motionEvent, View view) {
        int[] zzg = zzg(view);
        float rawX = motionEvent.getRawX();
        return new Point(((int) rawX) - zzg[0], ((int) motionEvent.getRawY()) - zzg[1]);
    }

    public static boolean zzi(Context context, zzezz zzezzVar) {
        if (!zzezzVar.zzJ) {
            return false;
        }
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzfG)).booleanValue()) {
            return ((Boolean) zzbet.zzc().zzc(zzbjl.zzfJ)).booleanValue();
        }
        String str = (String) zzbet.zzc().zzc(zzbjl.zzfH);
        if (str.isEmpty() || context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String str2 : zzfmg.zzb(zzflk.zzb(';')).zzd(str)) {
            if (str2.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static WindowManager.LayoutParams zzj() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) zzbet.zzc().zzc(zzbjl.zzfI)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }

    private static JSONObject zzk(Context context, Rect rect) throws JSONException {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", zzber.zza().zza(context, rect.right - rect.left));
        jSONObject.put("height", zzber.zza().zza(context, rect.bottom - rect.top));
        jSONObject.put("x", zzber.zza().zza(context, rect.left));
        jSONObject.put("y", zzber.zza().zza(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }
}
