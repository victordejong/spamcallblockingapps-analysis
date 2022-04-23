package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.common.util.f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdr.class */
public final class bdr implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    final bgy f24231a;

    /* renamed from: b  reason: collision with root package name */
    fs f24232b;

    /* renamed from: c  reason: collision with root package name */
    hi<Object> f24233c;

    /* renamed from: d  reason: collision with root package name */
    String f24234d;
    Long e;
    WeakReference<View> f;
    private final f g;

    public bdr(bgy bgyVar, f fVar) {
        this.f24231a = bgyVar;
        this.g = fVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        View view;
        this.f24234d = null;
        this.e = null;
        WeakReference<View> weakReference = this.f;
        if (weakReference != null && (view = weakReference.get()) != null) {
            view.setClickable(false);
            view.setOnClickListener(null);
            this.f = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f;
        if (weakReference != null && weakReference.get() == view) {
            if (!(this.f24234d == null || this.e == null)) {
                HashMap hashMap = new HashMap();
                hashMap.put("id", this.f24234d);
                hashMap.put("time_interval", String.valueOf(this.g.a() - this.e.longValue()));
                hashMap.put("messageType", "onePointFiveClick");
                this.f24231a.a("sendMessageToNativeJs", hashMap);
            }
            a();
        }
    }
}
