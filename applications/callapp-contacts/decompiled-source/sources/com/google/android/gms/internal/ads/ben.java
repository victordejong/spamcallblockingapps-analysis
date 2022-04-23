package com.google.android.gms.internal.ads;

import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.b;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ben.class */
public interface ben extends View.OnClickListener, View.OnTouchListener {
    void a(String str, View view);

    View a_(String str);

    FrameLayout b();

    View c();

    eec d();

    Map<String, WeakReference<View>> e();

    Map<String, WeakReference<View>> f();

    Map<String, WeakReference<View>> g();

    String h();

    b i();

    JSONObject j();
}
