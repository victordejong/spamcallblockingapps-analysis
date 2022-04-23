package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdj.class */
public final class bdj extends ec implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ben {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<View> f24210a;

    /* renamed from: b  reason: collision with root package name */
    private final Map<String, WeakReference<View>> f24211b = new HashMap();

    /* renamed from: c  reason: collision with root package name */
    private final Map<String, WeakReference<View>> f24212c = new HashMap();

    /* renamed from: d  reason: collision with root package name */
    private final Map<String, WeakReference<View>> f24213d = new HashMap();
    private bcf e;
    private eec f;

    public bdj(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzr.zzls();
        zx.a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzls();
        zx.a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f24210a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f24211b.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f24213d.putAll(this.f24211b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f24212c.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f24213d.putAll(this.f24212c);
        this.f = new eec(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.ed
    public final void a() {
        synchronized (this) {
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.b(this);
                this.e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ed
    public final void a(b bVar) {
        synchronized (this) {
            Object a2 = d.a(bVar);
            if (!(a2 instanceof bcf)) {
                zzd.zzez("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.b(this);
            }
            if (((bcf) a2).f24161c.c()) {
                bcf bcfVar2 = (bcf) a2;
                this.e = bcfVar2;
                bcfVar2.a(this);
                this.e.c(c());
                return;
            }
            zzd.zzex("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final void a(String str, View view) {
        synchronized (this) {
            if (view == null) {
                this.f24213d.remove(str);
                this.f24211b.remove(str);
                this.f24212c.remove(str);
                return;
            }
            this.f24213d.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                this.f24211b.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final View a_(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.f24213d.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final FrameLayout b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ed
    public final void b(b bVar) {
        synchronized (this) {
            if (this.e != null) {
                Object a2 = d.a(bVar);
                if (!(a2 instanceof View)) {
                    zzd.zzez("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.e.a((View) a2);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final View c() {
        return this.f24210a.get();
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final eec d() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f24213d;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f24211b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final Map<String, WeakReference<View>> g() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f24212c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final String h() {
        synchronized (this) {
        }
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final b i() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ben
    public final JSONObject j() {
        synchronized (this) {
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.a(view, c(), e(), f(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.a(c(), e(), f(), bcf.b(c()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.a(c(), e(), f(), bcf.b(c()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            bcf bcfVar = this.e;
            if (bcfVar != null) {
                bcfVar.a(motionEvent, c());
            }
        }
        return false;
    }
}
