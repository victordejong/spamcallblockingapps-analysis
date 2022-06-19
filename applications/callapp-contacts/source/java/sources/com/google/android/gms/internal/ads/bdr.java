package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.common.util.AbstractC12102f;
import java.lang.ref.WeakReference;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdr.class */
public final class bdr implements View.OnClickListener {

    /* renamed from: a */
    final bgy f43670a;

    /* renamed from: b */
    AbstractC12563fs f43671b;

    /* renamed from: c */
    AbstractC12607hi<Object> f43672c;

    /* renamed from: d */
    String f43673d;

    /* renamed from: e */
    Long f43674e;

    /* renamed from: f */
    WeakReference<View> f43675f;

    /* renamed from: g */
    private final AbstractC12102f f43676g;

    public bdr(bgy bgyVar, AbstractC12102f abstractC12102f) {
        this.f43670a = bgyVar;
        this.f43676g = abstractC12102f;
    }

    /* renamed from: a */
    public final void m18121a() {
        View view;
        this.f43673d = null;
        this.f43674e = null;
        WeakReference<View> weakReference = this.f43675f;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        view.setClickable(false);
        view.setOnClickListener(null);
        this.f43675f = null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        WeakReference<View> weakReference = this.f43675f;
        if (weakReference == null || weakReference.get() != view) {
            return;
        }
        if (this.f43673d != null && this.f43674e != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("id", this.f43673d);
            hashMap.put("time_interval", String.valueOf(this.f43676g.mo19039a() - this.f43674e.longValue()));
            hashMap.put("messageType", "onePointFiveClick");
            this.f43670a.m17868a("sendMessageToNativeJs", hashMap);
        }
        m18121a();
    }
}
