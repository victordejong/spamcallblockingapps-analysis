package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.view.MotionEvent;
import android.view.View;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bcz.class */
public interface bcz {
    JSONObject a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    void a();

    void a(Bundle bundle);

    void a(MotionEvent motionEvent, View view);

    void a(View view);

    void a(View view, View view2, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener);

    void a(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2, boolean z);

    void a(elu eluVar);

    void a(ely elyVar);

    void a(fs fsVar);

    void a(String str);

    void b(Bundle bundle);

    void b(View view);

    void b(View view, Map<String, WeakReference<View>> map, Map<String, WeakReference<View>> map2);

    boolean b();

    void c();

    boolean c(Bundle bundle);

    void d();

    void e();

    void f();

    void g();
}
