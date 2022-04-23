package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import java.lang.ref.WeakReference;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdp.class */
final class bdp implements dg {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ ben f24226a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ ViewGroup f24227b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ bdo f24228c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public bdp(bdo bdoVar, ben benVar, ViewGroup viewGroup) {
        this.f24228c = bdoVar;
        this.f24226a = benVar;
        this.f24227b = viewGroup;
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final void a() {
        ben benVar = this.f24226a;
        String[] strArr = bdm.f24216a;
        Map<String, WeakReference<View>> f = benVar.f();
        boolean z = false;
        if (f != null) {
            int length = strArr.length;
            int i = 0;
            while (true) {
                z = false;
                if (i >= length) {
                    break;
                } else if (f.get(strArr[i]) != null) {
                    z = true;
                    break;
                } else {
                    i++;
                }
            }
        }
        if (z) {
            this.f24226a.onClick(this.f24227b);
        }
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final void a(MotionEvent motionEvent) {
        this.f24226a.onTouch(null, motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.dg
    public final JSONObject b() {
        return this.f24226a.j();
    }
}
