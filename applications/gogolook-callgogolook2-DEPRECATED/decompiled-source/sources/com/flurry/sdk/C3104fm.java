package com.flurry.sdk;

import android.view.View;
import java.lang.ref.WeakReference;
/* renamed from: com.flurry.sdk.fm */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/fm.class */
public class C3104fm implements AbstractC3108fq {

    /* renamed from: a */
    public static final String f5016a = "fm";

    /* renamed from: b */
    public WeakReference<View> f5017b;

    /* renamed from: c */
    public boolean f5018c = false;

    public C3104fm(View view) {
        this.f5017b = new WeakReference<>(null);
        this.f5017b = new WeakReference<>(view);
    }

    @Override // com.flurry.sdk.AbstractC3108fq
    /* renamed from: a */
    public final boolean mo33057a() {
        WeakReference<View> weakReference;
        View view = this.f5017b.get();
        boolean z = false;
        if (view == null || !view.hasWindowFocus()) {
            C3356jq.m32613a(f5016a, "Tracking view is null or lost window focus");
            return false;
        }
        if (C3019ef.m33278a(view) >= 0) {
            z = true;
        }
        this.f5018c = z;
        if (!(!this.f5018c || (weakReference = this.f5017b) == null || weakReference.get() == null)) {
            weakReference.clear();
        }
        return this.f5018c;
    }

    @Override // com.flurry.sdk.AbstractC3108fq
    /* renamed from: b */
    public final boolean mo33056b() {
        if (this.f5018c) {
            return false;
        }
        if (this.f5017b.get() != null) {
            return true;
        }
        C3356jq.m32613a(f5016a, "Tracking view is null, remove from Tracker");
        return false;
    }
}
