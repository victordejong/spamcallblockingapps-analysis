package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdp.class */
final class bdp implements AbstractC12330dg {

    /* renamed from: a */
    private final /* synthetic */ ben f43665a;

    /* renamed from: b */
    private final /* synthetic */ ViewGroup f43666b;

    /* renamed from: c */
    private final /* synthetic */ bdo f43667c;

    public bdp(bdo bdoVar, ben benVar, ViewGroup viewGroup) {
        this.f43667c = bdoVar;
        this.f43665a = benVar;
        this.f43666b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12330dg
    /* renamed from: a */
    public final void mo16781a() {
        ben benVar = this.f43665a;
        String[] strArr = bdm.f43639a;
        Map<String, WeakReference<View>> mo17923f = benVar.mo17923f();
        boolean z = false;
        if (mo17923f != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (mo17923f.get(strArr[i]) != null) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        if (z) {
            this.f43665a.onClick(this.f43666b);
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12330dg
    /* renamed from: a */
    public final void mo16780a(MotionEvent motionEvent) {
        this.f43665a.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12330dg
    /* renamed from: b */
    public final JSONObject mo16779b() {
        return this.f43665a.mo17919j();
    }
}
