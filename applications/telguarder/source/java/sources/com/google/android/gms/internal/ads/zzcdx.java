package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcdx.class */
public interface zzcdx extends View.OnClickListener, View.OnTouchListener {
    void zza(String str, View view, boolean z);

    View zzajr();

    Map<String, WeakReference<View>> zzaov();

    Map<String, WeakReference<View>> zzaow();

    Map<String, WeakReference<View>> zzaox();

    String zzaoy();

    FrameLayout zzaoz();

    zzqs zzapa();

    IObjectWrapper zzapb();

    View zzgc(String str);

    JSONObject zztk();
}
