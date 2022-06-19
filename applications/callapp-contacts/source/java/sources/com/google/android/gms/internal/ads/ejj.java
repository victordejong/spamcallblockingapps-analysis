package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.FrameLayout;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ejj.class */
public class ejj {

    /* renamed from: a */
    private final eiz f49088a;

    /* renamed from: b */
    private final eiw f49089b;

    /* renamed from: c */
    private final C12260c f49090c;

    /* renamed from: d */
    private final C12568fx f49091d;

    /* renamed from: e */
    private final C12954ud f49092e;

    /* renamed from: f */
    private final C12984vg f49093f;

    /* renamed from: g */
    private final C12866qx f49094g;

    /* renamed from: h */
    private final C12572ga f49095h;

    public ejj(eiz eizVar, eiw eiwVar, C12260c c12260c, C12568fx c12568fx, C12954ud c12954ud, C12984vg c12984vg, C12866qx c12866qx, C12572ga c12572ga) {
        this.f49088a = eizVar;
        this.f49089b = eiwVar;
        this.f49090c = c12260c;
        this.f49091d = c12568fx;
        this.f49092e = c12954ud;
        this.f49093f = c12984vg;
        this.f49094g = c12866qx;
        this.f49095h = c12572ga;
    }

    /* renamed from: a */
    public static /* synthetic */ void m14857a(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        ekb.m14835a().m13948a(context, ekb.m14829g().zzbrz, "gmob-apps", bundle);
    }

    /* renamed from: a */
    public final AbstractC12428dv m14860a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new ejx(this, frameLayout, frameLayout2, context).m14843a(context, false);
    }

    /* renamed from: a */
    public final AbstractC12439ed m14855a(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        return new ejw(this, view, hashMap, hashMap2).m14843a(view.getContext(), false);
    }

    /* renamed from: a */
    public final ekp m14856a(Context context, String str, AbstractC12746mm abstractC12746mm) {
        return new ejv(this, context, str, abstractC12746mm).m14843a(context, false);
    }

    /* renamed from: a */
    public final ekw m14858a(Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm) {
        return new ejq(this, context, zzvtVar, str, abstractC12746mm).m14843a(context, false);
    }

    /* renamed from: a */
    public final AbstractC12854ql m14859a(Context context, AbstractC12746mm abstractC12746mm) {
        return new ejo(this, context, abstractC12746mm).m14843a(context, false);
    }

    /* renamed from: b */
    public final ekw m14853b(Context context, zzvt zzvtVar, String str, AbstractC12746mm abstractC12746mm) {
        return new ejs(this, context, zzvtVar, str, abstractC12746mm).m14843a(context, false);
    }

    /* renamed from: b */
    public final AbstractC12967uq m14852b(Context context, String str, AbstractC12746mm abstractC12746mm) {
        return new ejk(this, context, str, abstractC12746mm).m14843a(context, false);
    }
}
