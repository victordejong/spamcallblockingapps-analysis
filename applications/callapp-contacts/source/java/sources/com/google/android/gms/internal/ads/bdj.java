package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.dynamic.AbstractC12126b;
import com.google.android.gms.dynamic.BinderC12129d;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdj.class */
public final class bdj extends AbstractBinderC12438ec implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, ben {

    /* renamed from: a */
    private final WeakReference<View> f43631a;

    /* renamed from: b */
    private final Map<String, WeakReference<View>> f43632b = new HashMap();

    /* renamed from: c */
    private final Map<String, WeakReference<View>> f43633c = new HashMap();

    /* renamed from: d */
    private final Map<String, WeakReference<View>> f43634d = new HashMap();

    /* renamed from: e */
    private bcf f43635e;

    /* renamed from: f */
    private eec f43636f;

    public bdj(View view, HashMap<String, View> hashMap, HashMap<String, View> hashMap2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzr.zzls();
        C13111zx.m13890a(view, (ViewTreeObserver.OnGlobalLayoutListener) this);
        zzr.zzls();
        C13111zx.m13889a(view, (ViewTreeObserver.OnScrollChangedListener) this);
        this.f43631a = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : hashMap.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.f43632b.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.f43634d.putAll(this.f43632b);
        for (Map.Entry<String, View> entry2 : hashMap2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.f43633c.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.f43634d.putAll(this.f43633c);
        this.f43636f = new eec(view.getContext(), view);
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: a */
    public final void mo14517a() {
        synchronized (this) {
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18218b(this);
                this.f43635e = null;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: a */
    public final void mo14516a(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            Object m18980a = BinderC12129d.m18980a(abstractC12126b);
            if (!(m18980a instanceof bcf)) {
                zzd.zzez("Not an instance of InternalNativeAd. This is most likely a transient error");
                return;
            }
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18218b(this);
            }
            if (!((bcf) m18980a).f43525c.mo18140c()) {
                zzd.zzex("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
                return;
            }
            bcf bcfVar2 = (bcf) m18980a;
            this.f43635e = bcfVar2;
            bcfVar2.m18228a(this);
            this.f43635e.m18215c(mo17926c());
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: a */
    public final void mo17929a(String str, View view) {
        synchronized (this) {
            if (view == null) {
                this.f43634d.remove(str);
                this.f43632b.remove(str);
                this.f43633c.remove(str);
                return;
            }
            this.f43634d.put(str, new WeakReference<>(view));
            if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
                this.f43632b.put(str, new WeakReference<>(view));
                view.setClickable(true);
                view.setOnClickListener(this);
                view.setOnTouchListener(this);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: a_ */
    public final View mo17928a_(String str) {
        synchronized (this) {
            WeakReference<View> weakReference = this.f43634d.get(str);
            if (weakReference == null) {
                return null;
            }
            return weakReference.get();
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: b */
    public final FrameLayout mo17927b() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.AbstractC12439ed
    /* renamed from: b */
    public final void mo14515b(AbstractC12126b abstractC12126b) {
        synchronized (this) {
            if (this.f43635e != null) {
                Object m18980a = BinderC12129d.m18980a(abstractC12126b);
                if (!(m18980a instanceof View)) {
                    zzd.zzez("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
                }
                this.f43635e.m18232a((View) m18980a);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: c */
    public final View mo17926c() {
        return this.f43631a.get();
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: d */
    public final eec mo17925d() {
        return this.f43636f;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: e */
    public final Map<String, WeakReference<View>> mo17924e() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f43634d;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: f */
    public final Map<String, WeakReference<View>> mo17923f() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f43632b;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: g */
    public final Map<String, WeakReference<View>> mo17922g() {
        Map<String, WeakReference<View>> map;
        synchronized (this) {
            map = this.f43633c;
        }
        return map;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: h */
    public final String mo17921h() {
        synchronized (this) {
        }
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: i */
    public final AbstractC12126b mo17920i() {
        synchronized (this) {
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.ben
    /* renamed from: j */
    public final JSONObject mo17919j() {
        synchronized (this) {
        }
        return null;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        synchronized (this) {
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18231a(view, mo17926c(), mo17924e(), mo17923f(), true);
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        synchronized (this) {
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18229a(mo17926c(), mo17924e(), mo17923f(), bcf.m18219b(mo17926c()));
            }
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        synchronized (this) {
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18229a(mo17926c(), mo17924e(), mo17923f(), bcf.m18219b(mo17926c()));
            }
        }
    }

    @Override // android.view.View.OnTouchListener
    public final boolean onTouch(View view, MotionEvent motionEvent) {
        synchronized (this) {
            bcf bcfVar = this.f43635e;
            if (bcfVar != null) {
                bcfVar.m18233a(motionEvent, mo17926c());
            }
        }
        return false;
    }
}
