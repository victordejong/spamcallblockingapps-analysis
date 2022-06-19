package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqk.class */
public interface zzdqk {
    boolean zzA(Bundle bundle);

    JSONObject zzd(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    JSONObject zze(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void zzf();

    void zzg();

    void zzh();

    void zzi(zzbij zzbijVar);

    void zzj(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void zzk(String str);

    void zzl(Bundle bundle);

    void zzn(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void zzo();

    void zzp(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void zzq();

    void zzr(View view, MotionEvent motionEvent, View view2);

    void zzs(Bundle bundle);

    void zzt(View view);

    void zzu();

    void zzv(zzbif zzbifVar);

    void zzw(zzbqc zzbqcVar);

    void zzx(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void zzy(View view, Map<String, WeakReference<View>> map);

    boolean zzz();
}
