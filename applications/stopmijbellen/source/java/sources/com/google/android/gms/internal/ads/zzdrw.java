package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrw.class */
public interface zzdrw extends View.OnClickListener, View.OnTouchListener {
    View zzf();

    View zzg(String str);

    FrameLayout zzh();

    zzayb zzi();

    IObjectWrapper zzj();

    String zzk();

    Map<String, WeakReference<View>> zzl();

    Map<String, WeakReference<View>> zzm();

    Map<String, WeakReference<View>> zzn();

    JSONObject zzo();

    JSONObject zzp();

    void zzq(String str, View view, boolean z);
}
