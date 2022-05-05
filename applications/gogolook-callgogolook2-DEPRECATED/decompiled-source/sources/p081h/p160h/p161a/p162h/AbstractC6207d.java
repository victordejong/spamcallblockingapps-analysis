package p081h.p160h.p161a.p162h;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.aotter.net.trek.model.CatWalkWebPayload;
import com.mopub.nativeads.BaseNativeAd;
import com.mopub.nativeads.BaseNativeAdRenderer;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.StaticNativeAd;
import gogolook.callgogolook2.realm.obj.iap.IapProductRealmObject;
import java.util.Calendar;
import java.util.Date;
import kotlin.Metadata;
import p081h.p160h.p161a.p170p.C6272d;
import p626l.C14986p;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��X\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0006\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018�� *2\u00020\u0001:\u0002)*B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0016\u001a\u00020\u00172\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&J\b\u0010\u001a\u001a\u00020\u0017H&J\b\u0010\u001b\u001a\u0004\u0018\u00010\u001cJ\u0015\u0010\u001d\u001a\u00020\u00172\u0006\u0010\u001e\u001a\u00020\u001fH��¢\u0006\u0002\b J\u001e\u0010!\u001a\u0004\u0018\u00010\"2\b\u0010\u001e\u001a\u0004\u0018\u00010\u001f2\b\u0010\u0018\u001a\u0004\u0018\u00010\u0019H&J\u0010\u0010#\u001a\u00020\u00172\u0006\u0010$\u001a\u00020%H&J\u0012\u0010&\u001a\u00020\u00172\b\u0010'\u001a\u0004\u0018\u00010\u000fH&J\u0010\u0010(\u001a\u00020\u00172\u0006\u0010\u0003\u001a\u00020\u0004H\u0002R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0001X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0006\u0010\u0007\"\u0004\b\b\u0010\tR\u0011\u0010\n\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\n\u0010\fR\u0011\u0010\r\u001a\u00020\u000b8F¢\u0006\u0006\u001a\u0004\b\r\u0010\fR\u001c\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0010\u0010\u0011\"\u0004\b\u0012\u0010\u0013R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0082\u000e¢\u0006\u0002\n��¨\u0006+"}, m815d2 = {"Lcom/gogolook/adsdk/adobject/BaseAdObject;", "", CatWalkWebPayload.CATWALK_AD_KEY, IapProductRealmObject.EXPIRED_TIME, "", "(Ljava/lang/Object;I)V", "getAd", "()Ljava/lang/Object;", "setAd", "(Ljava/lang/Object;)V", "isAdFetched", "", "()Z", "isExpired", "mAdEventListener", "Lcom/gogolook/adsdk/adobject/BaseAdObject$AdEventListener;", "getMAdEventListener", "()Lcom/gogolook/adsdk/adobject/BaseAdObject$AdEventListener;", "setMAdEventListener", "(Lcom/gogolook/adsdk/adobject/BaseAdObject$AdEventListener;)V", "mDateOfExpiration", "Ljava/util/Date;", "clearAd", "", "adContainer", "Landroid/view/ViewGroup;", "destroy", "getNativeAd", "Lcom/mopub/nativeads/NativeAd;", "preloadImage", "context", "Landroid/content/Context;", "preloadImage$adsdk_whoscallRelease", "renderAd", "Landroid/view/View;", "setAdCustomActionListener", "customActionListener", "Lcom/mopub/nativeads/BaseNativeAdRenderer$AdCustomActionListener;", "setAdEventListener", "listener", "setExpirationTime", "AdEventListener", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.h.d */
/* loaded from: classes2-dex2jar.jar:h/h/a/h/d.class */
public abstract class AbstractC6207d {

    /* renamed from: a */
    public Object f15401a;

    /* renamed from: b */
    public AbstractC6208a f15402b;

    /* renamed from: c */
    public Date f15403c;

    /* renamed from: h.h.a.h.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/h/d$a.class */
    public interface AbstractC6208a {
        /* renamed from: a */
        void mo5002a();

        void onAdImpression();
    }

    /* renamed from: h.h.a.h.d$b */
    /* loaded from: classes2-dex2jar.jar:h/h/a/h/d$b.class */
    public static final class C6209b {
        public C6209b() {
        }

        public /* synthetic */ C6209b(C15145g gVar) {
            this();
        }
    }

    static {
        new C6209b(null);
    }

    public AbstractC6207d(Object obj, int i) {
        this.f15401a = obj;
        m23581a(i);
    }

    /* renamed from: a */
    public abstract View mo23572a(Context context, ViewGroup viewGroup);

    /* renamed from: a */
    public final void m23581a(int i) {
        if (i < 0) {
            this.f15403c = null;
            return;
        }
        this.f15403c = new Date();
        Calendar instance = Calendar.getInstance();
        C15149k.m383a((Object) instance, "cal");
        instance.setTime(this.f15403c);
        int i2 = i;
        if (i < 59) {
            i2 = 59;
        }
        instance.add(12, i2);
        this.f15403c = instance.getTime();
    }

    /* renamed from: a */
    public final void m23580a(Context context) {
        C15149k.m377b(context, "context");
        NativeAd e = m23575e();
        BaseNativeAd baseNativeAd = e != null ? e.getBaseNativeAd() : null;
        BaseNativeAd baseNativeAd2 = baseNativeAd;
        if (!(baseNativeAd instanceof StaticNativeAd)) {
            baseNativeAd2 = null;
        }
        StaticNativeAd staticNativeAd = (StaticNativeAd) baseNativeAd2;
        if (staticNativeAd != null) {
            C6272d.m23431a(context, staticNativeAd.getMainImageUrl());
            C6272d.m23431a(context, staticNativeAd.getIconImageUrl());
        }
    }

    /* renamed from: a */
    public abstract void mo23571a(ViewGroup viewGroup);

    /* renamed from: a */
    public abstract void mo23570a(BaseNativeAdRenderer.AdCustomActionListener adCustomActionListener);

    /* renamed from: a */
    public abstract void mo23569a(AbstractC6208a aVar);

    /* renamed from: a */
    public final void m23579a(Object obj) {
        this.f15401a = obj;
    }

    /* renamed from: b */
    public abstract void mo23568b();

    /* renamed from: b */
    public final void m23578b(AbstractC6208a aVar) {
        this.f15402b = aVar;
    }

    /* renamed from: c */
    public final Object m23577c() {
        return this.f15401a;
    }

    /* renamed from: d */
    public final AbstractC6208a m23576d() {
        return this.f15402b;
    }

    /* renamed from: e */
    public final NativeAd m23575e() {
        Object obj = this.f15401a;
        NativeAd nativeAd = null;
        if (obj != null) {
            if (!(obj instanceof NativeAd)) {
                obj = null;
            }
            nativeAd = null;
            if (obj != null) {
                if (obj != null) {
                    nativeAd = (NativeAd) obj;
                } else {
                    throw new C14986p("null cannot be cast to non-null type com.mopub.nativeads.NativeAd");
                }
            }
        }
        return nativeAd;
    }

    /* renamed from: f */
    public final boolean m23574f() {
        boolean z;
        Date date = this.f15403c;
        if (date != null) {
            if (date == null) {
                C15149k.m378b();
                throw null;
            } else if (date.before(new Date())) {
                z = true;
                return z;
            }
        }
        z = false;
        return z;
    }
}
