package com.google.android.gms.ads.internal.util;

import android.content.Context;
import android.graphics.Point;
import android.graphics.Rect;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.TextView;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzabp;
import com.google.android.gms.internal.ads.zzazk;
import com.google.android.gms.internal.ads.zzdmw;
import com.google.android.gms.internal.ads.zzdvu;
import com.google.android.gms.internal.ads.zzdwk;
import com.google.android.gms.internal.ads.zzwr;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.Nonnull;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/internal/util/zzbn.class */
public final class zzbn {
    public static Point zza(MotionEvent motionEvent, View view) {
        int[] zzu = zzu(view);
        return new Point(((int) motionEvent.getRawX()) - zzu[0], ((int) motionEvent.getRawY()) - zzu[1]);
    }

    private static JSONObject zza(Context context, Point point, Point point2) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("x", zzd(context, point2.x));
            jSONObject.put("y", zzd(context, point2.y));
            jSONObject.put("start_x", zzd(context, point.x));
            jSONObject.put("start_y", zzd(context, point.y));
            return jSONObject;
        } catch (JSONException e) {
            zzazk.zzc("Error occurred while putting signals into JSON object.", e);
            return null;
        }
    }

    private static JSONObject zza(Context context, Rect rect) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("width", zzd(context, rect.right - rect.left));
        jSONObject.put("height", zzd(context, rect.bottom - rect.top));
        jSONObject.put("x", zzd(context, rect.left));
        jSONObject.put("y", zzd(context, rect.top));
        jSONObject.put("relative_to", "self");
        return jSONObject;
    }

    /* JADX WARN: Removed duplicated region for block: B:35:0x01b7  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01d0 A[Catch: JSONException -> 0x020c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x020c, blocks: (B:32:0x01aa, B:37:0x01c1, B:41:0x01d0, B:48:0x01eb, B:49:0x01f6, B:50:0x0201), top: B:58:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0201 A[Catch: JSONException -> 0x020c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {JSONException -> 0x020c, blocks: (B:32:0x01aa, B:37:0x01c1, B:41:0x01d0, B:48:0x01eb, B:49:0x01f6, B:50:0x0201), top: B:58:0x01aa }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.json.JSONObject zza(android.content.Context r6, android.view.View r7) {
        /*
            Method dump skipped, instructions count: 537
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.util.zzbn.zza(android.content.Context, android.view.View):org.json.JSONObject");
    }

    public static JSONObject zza(Context context, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View view) {
        JSONObject jSONObject;
        JSONObject jSONObject2 = new JSONObject();
        if (map != null && view != null) {
            int[] zzu = zzu(view);
            for (Map.Entry<String, WeakReference<View>> entry : map.entrySet()) {
                View view2 = entry.getValue().get();
                if (view2 != null) {
                    int[] zzu2 = zzu(view2);
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    try {
                        jSONObject4.put("width", zzd(context, view2.getMeasuredWidth()));
                        jSONObject4.put("height", zzd(context, view2.getMeasuredHeight()));
                        jSONObject4.put("x", zzd(context, zzu2[0] - zzu[0]));
                        jSONObject4.put("y", zzd(context, zzu2[1] - zzu[1]));
                        jSONObject4.put("relative_to", "ad_view");
                        jSONObject3.put("frame", jSONObject4);
                        Rect rect = new Rect();
                        if (view2.getLocalVisibleRect(rect)) {
                            jSONObject = zza(context, rect);
                        } else {
                            jSONObject = new JSONObject();
                            jSONObject.put("width", 0);
                            jSONObject.put("height", 0);
                            jSONObject.put("x", zzd(context, zzu2[0] - zzu[0]));
                            jSONObject.put("y", zzd(context, zzu2[1] - zzu[1]));
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
                                zzazk.zzex("Unable to get asset views information");
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

    public static JSONObject zza(String str, Context context, Point point, Point point2) {
        JSONObject jSONObject;
        Exception e;
        try {
            JSONObject jSONObject2 = new JSONObject();
            try {
                jSONObject2.put("click_point", zza(context, point, point2));
                jSONObject2.put("asset_id", str);
                jSONObject = jSONObject2;
            } catch (Exception e2) {
                e = e2;
                jSONObject = jSONObject2;
                zzazk.zzc("Error occurred while grabbing click signals.", e);
                return jSONObject;
            }
        } catch (Exception e3) {
            e = e3;
            jSONObject = null;
        }
        return jSONObject;
    }

    public static boolean zza(Context context, zzdmw zzdmwVar) {
        if (!zzdmwVar.zzhjo) {
            return false;
        }
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczk)).booleanValue()) {
            return ((Boolean) zzwr.zzqr().zzd(zzabp.zzczn)).booleanValue();
        }
        String str = (String) zzwr.zzqr().zzd(zzabp.zzczl);
        if (str.isEmpty() || context == null) {
            return false;
        }
        String packageName = context.getPackageName();
        for (String str2 : zzdwk.zza(zzdvu.zzb(';')).zza(str)) {
            if (str2.equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public static JSONObject zzb(Context context, View view) {
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            zzr.zzkr();
            jSONObject.put("can_show_on_lock_screen", zzj.zzq(view));
            zzr.zzkr();
            jSONObject.put("is_keyguard_locked", zzj.zzat(context));
        } catch (JSONException e) {
            zzazk.zzex("Unable to get lock screen information");
        }
        return jSONObject;
    }

    public static JSONObject zzbk(@Nonnull Context context) {
        JSONObject jSONObject = new JSONObject();
        zzr.zzkr();
        DisplayMetrics zza = zzj.zza((WindowManager) context.getSystemService("window"));
        try {
            jSONObject.put("width", zzd(context, zza.widthPixels));
            jSONObject.put("height", zzd(context, zza.heightPixels));
            return jSONObject;
        } catch (JSONException e) {
            return null;
        }
    }

    private static int zzd(Context context, int i) {
        return zzwr.zzqn().zzd(context, i);
    }

    public static boolean zzdh(int i) {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcso)).booleanValue()) {
            return ((Boolean) zzwr.zzqr().zzd(zzabp.zzcsp)).booleanValue() || i <= 15299999;
        }
        return true;
    }

    public static JSONObject zzt(View view) {
        boolean z;
        JSONObject jSONObject = new JSONObject();
        if (view == null) {
            return jSONObject;
        }
        try {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzczj)).booleanValue()) {
                zzr.zzkr();
                z = zzj.zzs(view);
            } else {
                zzr.zzkr();
                z = zzj.zzr(view) != -1;
            }
            jSONObject.put("contained_in_scroll_view", z);
        } catch (Exception e) {
        }
        return jSONObject;
    }

    private static int[] zzu(View view) {
        int[] iArr = new int[2];
        if (view != null) {
            view.getLocationOnScreen(iArr);
        }
        return iArr;
    }

    public static WindowManager.LayoutParams zzzq() {
        WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams(-2, -2, 0, 0, -2);
        layoutParams.flags = ((Integer) zzwr.zzqr().zzd(zzabp.zzczm)).intValue();
        layoutParams.type = 2;
        layoutParams.gravity = 8388659;
        return layoutParams;
    }
}
