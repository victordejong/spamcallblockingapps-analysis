package p081h.p160h.p161a.p166l;

import android.content.Context;
import androidx.annotation.CallSuper;
import com.mopub.nativeads.NativeErrorCode;
import kotlin.Metadata;
import p081h.p160h.p161a.C6187d;
import p081h.p160h.p161a.C6199g;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.AbstractC6207d;
import p081h.p160h.p161a.p164j.AbstractC6218c;
import p081h.p160h.p161a.p164j.C6216a;
import p081h.p160h.p161a.p167m.AbstractC6257a;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.C14989s;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��T\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\u0007\b&\u0018�� 92\u00020\u0001:\u00019B\u001f\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\u000e\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u001eJ\u0017\u0010(\u001a\u00020\u00052\b\u0010)\u001a\u0004\u0018\u00010*H��¢\u0006\u0002\b+J\u0010\u0010,\u001a\u00020&2\u0006\u0010\u0002\u001a\u00020\u0003H$J\u000e\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020\u0005J\u0006\u0010/\u001a\u00020&J\u0006\u00100\u001a\u00020&J\u000e\u00101\u001a\u00020&2\u0006\u00102\u001a\u000203J\u0006\u00104\u001a\u00020&J\u000e\u00105\u001a\u00020&2\u0006\u00106\u001a\u00020 J\u0006\u00107\u001a\u00020&J\b\u00108\u001a\u00020&H\u0017R\u001c\u0010\t\u001a\u0004\u0018\u00010\nX\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b\u000b\u0010\f\"\u0004\b\r\u0010\u000eR\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u001a\u0010\u0011\u001a\u00020\u0012X\u0084.¢\u0006\u000e\n��\u001a\u0004\b\u0013\u0010\u0014\"\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0018R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0084\u000e¢\u0006\u000e\n��\u001a\u0004\b\u0019\u0010\u001a\"\u0004\b\u001b\u0010\u001cR\u0010\u0010\u001d\u001a\u0004\u0018\u00010\u001eX\u0082\u000e¢\u0006\u0002\n��R\u001a\u0010\u001f\u001a\u00020 X\u0086\u000e¢\u0006\u000e\n��\u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006:"}, m815d2 = {"Lcom/gogolook/adsdk/fetcher/BaseAdFetcher;", "", "context", "Landroid/content/Context;", "adUnitName", "", "adSource", "Lcom/gogolook/adsdk/Definition$AdSource;", "(Landroid/content/Context;Ljava/lang/String;Lcom/gogolook/adsdk/Definition$AdSource;)V", "adFetchLog", "Lcom/gogolook/adsdk/logs/AdFetchLog;", "getAdFetchLog", "()Lcom/gogolook/adsdk/logs/AdFetchLog;", "setAdFetchLog", "(Lcom/gogolook/adsdk/logs/AdFetchLog;)V", "getAdSource", "()Lcom/gogolook/adsdk/Definition$AdSource;", "adUnitConfig", "Lcom/gogolook/adsdk/config/AdUnitConfig;", "getAdUnitConfig", "()Lcom/gogolook/adsdk/config/AdUnitConfig;", "setAdUnitConfig", "(Lcom/gogolook/adsdk/config/AdUnitConfig;)V", "getAdUnitName", "()Ljava/lang/String;", "getContext", "()Landroid/content/Context;", "setContext", "(Landroid/content/Context;)V", "mAdFetchStatusListener", "Lcom/gogolook/adsdk/listener/AdFetchStatusListener;", "mIsUsingDebugAdUnit", "", "getMIsUsingDebugAdUnit", "()Z", "setMIsUsingDebugAdUnit", "(Z)V", "addAdFetchStatusListener", "", "adFetchStatusListener", "convertNativeErrorCode", "nativeErrorCode", "Lcom/mopub/nativeads/NativeErrorCode;", "convertNativeErrorCode$adsdk_whoscallRelease", "fetch", "notifyAdFetchFail", "errorMessage", "notifyAdFetchSkip", "notifyAdFetchStart", "notifyAdFetchSuccess", "adObject", "Lcom/gogolook/adsdk/adobject/BaseAdObject;", "removeAdFetchStatusListener", "setIsUsingDebugAdUnit", "isUsingDebugAdUnit", "startFetch", "stopFetch", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.l.c */
/* loaded from: classes2-dex2jar.jar:h/h/a/l/c.class */
public abstract class AbstractC6252c {

    /* renamed from: a */
    public C6260a f15483a;

    /* renamed from: b */
    public AbstractC6257a f15484b;

    /* renamed from: c */
    public boolean f15485c;

    /* renamed from: d */
    public C6216a f15486d;

    /* renamed from: e */
    public Context f15487e;

    /* renamed from: f */
    public final String f15488f;

    /* renamed from: g */
    public final EnumC6184a f15489g;

    /* renamed from: h.h.a.l.c$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/l/c$a.class */
    public static final class C6253a {
        public C6253a() {
        }

        public /* synthetic */ C6253a(C15145g gVar) {
            this();
        }
    }

    static {
        new C6253a(null);
    }

    public AbstractC6252c(Context context, String str, EnumC6184a aVar) {
        C15149k.m377b(str, "adUnitName");
        C15149k.m377b(aVar, "adSource");
        this.f15487e = context;
        this.f15488f = str;
        this.f15489g = aVar;
    }

    /* renamed from: a */
    public final C6260a m23494a() {
        return this.f15483a;
    }

    /* renamed from: a */
    public final String m23493a(NativeErrorCode nativeErrorCode) {
        return (nativeErrorCode != NativeErrorCode.UNSPECIFIED || C6187d.f15364g.m23621b()) ? String.valueOf(nativeErrorCode) : C6262a.EnumC6266d.ERROR_MOPUB_SDK_NOT_INITIALIZE.m23447a();
    }

    /* renamed from: a */
    public abstract void mo23478a(Context context);

    /* renamed from: a */
    public final void m23492a(AbstractC6207d dVar) {
        C15149k.m377b(dVar, "adObject");
        Context context = this.f15487e;
        if (context != null) {
            dVar.m23580a(context);
        }
        C6260a aVar = this.f15483a;
        if (aVar != null) {
            aVar.m23465c(C6262a.EnumC6267e.AD_FILL.name());
        }
        AbstractC6257a aVar2 = this.f15484b;
        if (aVar2 != null) {
            aVar2.mo23475a(this.f15489g, dVar);
        }
    }

    /* renamed from: a */
    public final void m23491a(AbstractC6257a aVar) {
        C15149k.m377b(aVar, "adFetchStatusListener");
        this.f15484b = aVar;
    }

    /* renamed from: a */
    public final void m23490a(C6260a aVar) {
        this.f15483a = aVar;
    }

    /* renamed from: a */
    public final void m23489a(String str) {
        C15149k.m377b(str, "errorMessage");
        C6260a aVar = this.f15483a;
        if (aVar != null) {
            aVar.m23465c(str);
        }
        AbstractC6257a aVar2 = this.f15484b;
        if (aVar2 != null) {
            aVar2.mo23474a(this.f15489g, str);
        }
    }

    /* renamed from: a */
    public final void m23488a(boolean z) {
        this.f15485c = z;
    }

    /* renamed from: b */
    public final EnumC6184a m23487b() {
        return this.f15489g;
    }

    /* renamed from: c */
    public final C6216a m23486c() {
        C6216a aVar = this.f15486d;
        if (aVar != null) {
            return aVar;
        }
        C15149k.m373d("adUnitConfig");
        throw null;
    }

    /* renamed from: d */
    public final String m23485d() {
        return this.f15488f;
    }

    /* renamed from: e */
    public final boolean m23484e() {
        return this.f15485c;
    }

    /* renamed from: f */
    public final void m23483f() {
        AbstractC6257a aVar = this.f15484b;
        if (aVar != null) {
            aVar.mo23473b(this.f15489g);
        }
    }

    /* renamed from: g */
    public final void m23482g() {
        C6260a aVar = this.f15483a;
        if (aVar != null) {
            aVar.m23455k();
        }
        AbstractC6257a aVar2 = this.f15484b;
        if (aVar2 != null) {
            aVar2.mo23476a(this.f15489g);
        }
    }

    /* renamed from: h */
    public final void m23481h() {
        this.f15484b = null;
    }

    /* renamed from: i */
    public final void m23480i() {
        Context context = this.f15487e;
        if (context != null) {
            AbstractC6218c a = C6199g.m23591a();
            if (a != null) {
                C6216a a2 = a.mo23554a(this.f15488f, this.f15489g, this.f15485c);
                if (a2.m23562a().length() == 0) {
                    m23489a(C6262a.EnumC6266d.ERROR_AD_UNIT_ID_INVALID.m23447a());
                    return;
                } else if (a2.m23558d() == null) {
                    m23489a(C6262a.EnumC6266d.ERROR_AD_RENDERER_INVALID.m23447a());
                    return;
                } else if (a2.m23559c() == null) {
                    m23489a(C6262a.EnumC6266d.ERROR_AD_PARAMETERS_INVALID.m23447a());
                    return;
                } else {
                    this.f15486d = a2;
                    mo23478a(context);
                    if (context != null) {
                        return;
                    }
                }
            } else {
                m23489a(C6262a.EnumC6266d.ERROR_MOPUB_AD_CONFIGURATION_IS_NULL.m23447a());
                return;
            }
        }
        m23489a(C6262a.EnumC6266d.ERROR_CONTEXT_INVALID.m23447a());
        C14989s sVar = C14989s.f33022a;
    }

    @CallSuper
    /* renamed from: j */
    public void mo23479j() {
        this.f15487e = null;
    }
}
