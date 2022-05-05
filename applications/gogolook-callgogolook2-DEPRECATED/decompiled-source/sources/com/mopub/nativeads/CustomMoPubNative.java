package com.mopub.nativeads;

import android.content.Context;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.factories.CustomEventNativeFactory;
import gogolook.callgogolook2.gson.CallAction;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.Metadata;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p632u.C15021m;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15145g;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010%\n\u0002\u0010��\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018�� \u001e2\u00020\u0001:\u0001\u001eB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u0014\u001a\u00020\u0015H\u0002J\u0012\u0010\u0016\u001a\u00020\u00152\b\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u000e\u0010\u0019\u001a\u00020\u00152\u0006\u0010\u001a\u001a\u00020\u0005J\u001e\u0010\u001b\u001a\u00020\u00152\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f\u0018\u00010\u000bH\u0016J\u001a\u0010\u001d\u001a\u00020\u00152\u0012\u0010\u001c\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000bR\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0005X\u0082\u000e¢\u0006\u0002\n��R'\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\f0\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000f\u0010\u0010\u001a\u0004\b\r\u0010\u000eR'\u0010\u0011\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00050\u000b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0010\u001a\u0004\b\u0012\u0010\u000e¨\u0006\u001f"}, m815d2 = {"Lcom/mopub/nativeads/CustomMoPubNative;", "Lcom/mopub/nativeads/MoPubNative;", "context", "Landroid/content/Context;", "adUnitId", "", "moPubNativeNetworkListener", "Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;", "(Landroid/content/Context;Ljava/lang/String;Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;)V", "customEventNativeClassName", "localExtras", "", "", "getLocalExtras", "()Ljava/util/Map;", "localExtras$delegate", "Lkotlin/Lazy;", "serverExtras", "getServerExtras", "serverExtras$delegate", "loadNativeAd", "", "makeRequest", "requestParameters", "Lcom/mopub/nativeads/RequestParameters;", "setCustomNativeClassName", "className", "setLocalExtras", "extras", "setServerExtras", "Companion", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomMoPubNative.class */
public final class CustomMoPubNative extends MoPubNative {
    public static final Companion Companion = new Companion(null);

    /* renamed from: o */
    public static final /* synthetic */ AbstractC14906i[] f9053o;

    /* renamed from: k */
    public final AbstractC14974f f9054k = C14975g.m662a(C3949a.INSTANCE);

    /* renamed from: l */
    public final AbstractC14974f f9055l = C14975g.m662a(C3950b.INSTANCE);

    /* renamed from: m */
    public String f9056m = "";

    /* renamed from: n */
    public final String f9057n;

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n��\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0005"}, m815d2 = {"Lcom/mopub/nativeads/CustomMoPubNative$Companion;", "", "()V", CallAction.DONE_TAG, "", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomMoPubNative$Companion.class */
    public static final class Companion {
        public Companion() {
        }

        public /* synthetic */ Companion(C15145g gVar) {
            this();
        }
    }

    /* renamed from: com.mopub.nativeads.CustomMoPubNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomMoPubNative$a.class */
    public static final class C3949a extends AbstractC15150l implements AbstractC15107a<Map<String, Object>> {
        public static final C3949a INSTANCE = new C3949a();

        public C3949a() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<String, Object> invoke() {
            return new LinkedHashMap();
        }
    }

    /* renamed from: com.mopub.nativeads.CustomMoPubNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/CustomMoPubNative$b.class */
    public static final class C3950b extends AbstractC15150l implements AbstractC15107a<Map<String, String>> {
        public static final C3950b INSTANCE = new C3950b();

        public C3950b() {
            super(0);
        }

        @Override // p626l.p641z.p642c.AbstractC15107a
        public final Map<String, String> invoke() {
            return new LinkedHashMap();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(CustomMoPubNative.class), "localExtras", "getLocalExtras()Ljava/util/Map;");
        C15131a0.m412a(sVar);
        C15157s sVar2 = new C15157s(C15131a0.m419a(CustomMoPubNative.class), "serverExtras", "getServerExtras()Ljava/util/Map;");
        C15131a0.m412a(sVar2);
        f9053o = new AbstractC14906i[]{sVar, sVar2};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CustomMoPubNative(Context context, String str, MoPubNative.MoPubNativeNetworkListener moPubNativeNetworkListener) {
        super(context, str, moPubNativeNetworkListener);
        C15149k.m377b(context, "context");
        C15149k.m377b(str, "adUnitId");
        C15149k.m377b(moPubNativeNetworkListener, "moPubNativeNetworkListener");
        this.f9057n = str;
    }

    /* renamed from: c */
    public final Map<String, Object> m30189c() {
        AbstractC14974f fVar = this.f9054k;
        AbstractC14906i iVar = f9053o[0];
        return (Map) fVar.getValue();
    }

    /* renamed from: d */
    public final Map<String, String> m30188d() {
        AbstractC14974f fVar = this.f9055l;
        AbstractC14906i iVar = f9053o[1];
        return (Map) fVar.getValue();
    }

    /* renamed from: e */
    public final void m30187e() {
        final Context a = m30143a();
        if (a != null) {
            CustomEventNative.CustomEventNativeListener customMoPubNative$loadNativeAd$$inlined$let$lambda$1 = new CustomEventNative.CustomEventNativeListener() { // from class: com.mopub.nativeads.CustomMoPubNative$loadNativeAd$$inlined$let$lambda$1
                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdFailed(NativeErrorCode nativeErrorCode) {
                    this.m30135b().onNativeFail(nativeErrorCode);
                }

                @Override // com.mopub.nativeads.CustomEventNative.CustomEventNativeListener
                public void onNativeAdLoaded(BaseNativeAd baseNativeAd) {
                    String str;
                    if (baseNativeAd != null) {
                        MoPubAdRenderer rendererForAd = this.f9149i.getRendererForAd(baseNativeAd);
                        if (rendererForAd != null) {
                            MoPubNative.MoPubNativeNetworkListener b = this.m30135b();
                            Context context = a;
                            List a2 = C15021m.m565a();
                            str = this.f9057n;
                            b.onNativeLoad(new NativeAd(context, a2, "", str, baseNativeAd, rendererForAd));
                            return;
                        }
                        onNativeAdFailed(NativeErrorCode.NATIVE_RENDERER_CONFIGURATION_ERROR);
                    }
                }
            };
            String str = "Attempting to invoke custom event: " + this.f9056m;
            try {
                CustomEventNative create = CustomEventNativeFactory.create(this.f9056m);
                C15149k.m383a((Object) create, "CustomEventNativeFactory…stomEventNativeClassName)");
                try {
                    create.loadNativeAd(a, customMoPubNative$loadNativeAd$$inlined$let$lambda$1, m30189c(), m30188d());
                } catch (Exception e) {
                    customMoPubNative$loadNativeAd$$inlined$let$lambda$1.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
                }
            } catch (Exception e2) {
                String str2 = "Failed to load Custom Event Native class: " + this.f9056m;
                customMoPubNative$loadNativeAd$$inlined$let$lambda$1.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_NOT_FOUND);
            }
        } else {
            m30135b().onNativeFail(NativeErrorCode.UNSPECIFIED);
        }
    }

    @Override // com.mopub.nativeads.MoPubNative
    public void makeRequest(RequestParameters requestParameters) {
        m30187e();
    }

    public final void setCustomNativeClassName(String str) {
        C15149k.m377b(str, "className");
        if (!(str.length() > 0)) {
            str = null;
        }
        if (str != null) {
            this.f9056m = str;
            return;
        }
        throw new IllegalArgumentException("The custom event class name must be not empty.");
    }

    @Override // com.mopub.nativeads.MoPubNative
    public void setLocalExtras(Map<String, Object> map) {
        if (map != null) {
            m30189c().putAll(map);
        }
    }

    public final void setServerExtras(Map<String, String> map) {
        C15149k.m377b(map, "extras");
        m30188d().putAll(map);
    }
}
