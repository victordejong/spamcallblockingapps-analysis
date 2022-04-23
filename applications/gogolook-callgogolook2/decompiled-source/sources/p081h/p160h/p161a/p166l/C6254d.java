package p081h.p160h.p161a.p166l;

import android.content.Context;
import com.mopub.nativeads.MoPubNative;
import com.mopub.nativeads.NativeAd;
import com.mopub.nativeads.NativeErrorCode;
import java.util.LinkedHashMap;
import kotlin.Metadata;
import p081h.p160h.p161a.EnumC6184a;
import p081h.p160h.p161a.p162h.C6211f;
import p081h.p160h.p161a.p168n.C6260a;
import p081h.p160h.p161a.p169o.C6262a;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0002\n��\u0018��2\u00020\u0001B\u0017\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0010\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0002\u001a\u00020\u0003H\u0014R\u001b\u0010\u0007\u001a\u00020\b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\t\u0010\n¨\u0006\u000f"}, m815d2 = {"Lcom/gogolook/adsdk/fetcher/NativeAdFetcher;", "Lcom/gogolook/adsdk/fetcher/BaseAdFetcher;", "context", "Landroid/content/Context;", "adUnitName", "", "(Landroid/content/Context;Ljava/lang/String;)V", "moPubNativeNetworkListener", "Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;", "getMoPubNativeNetworkListener", "()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;", "moPubNativeNetworkListener$delegate", "Lkotlin/Lazy;", "fetch", "", "adsdk_whoscallRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: h.h.a.l.d */
/* loaded from: classes2-dex2jar.jar:h/h/a/l/d.class */
public final class C6254d extends AbstractC6252c {

    /* renamed from: i */
    public static final /* synthetic */ AbstractC14906i[] f15490i;

    /* renamed from: h */
    public final AbstractC14974f f15491h = C14975g.m662a(new C6255a());

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\t\n��\n\u0002\b\u0003*\u0001\u0001\u0010��\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0002\u0010\u0003"}, m815d2 = {"<anonymous>", "com/gogolook/adsdk/fetcher/NativeAdFetcher$moPubNativeNetworkListener$2$1", "invoke", "()Lcom/gogolook/adsdk/fetcher/NativeAdFetcher$moPubNativeNetworkListener$2$1;"}, m814k = 3, m813mv = {1, 1, 13})
    /* renamed from: h.h.a.l.d$a */
    /* loaded from: classes2-dex2jar.jar:h/h/a/l/d$a.class */
    public static final class C6255a extends AbstractC15150l implements AbstractC15107a<C6256a> {

        /* renamed from: h.h.a.l.d$a$a */
        /* loaded from: classes2-dex2jar.jar:h/h/a/l/d$a$a.class */
        public static final class C6256a implements MoPubNative.MoPubNativeNetworkListener {
            public C6256a() {
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeFail(NativeErrorCode nativeErrorCode) {
                C6254d dVar = C6254d.this;
                dVar.m23489a(dVar.m23493a(nativeErrorCode));
            }

            @Override // com.mopub.nativeads.MoPubNative.MoPubNativeNetworkListener
            public void onNativeLoad(NativeAd nativeAd) {
                if (nativeAd == null) {
                    C6254d.this.m23489a(C6262a.EnumC6266d.ERROR_AD_OBJECT_INVALID.m23447a());
                } else {
                    C6254d.this.m23492a(new C6211f(nativeAd, -1));
                }
            }
        }

        public C6255a() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p626l.p641z.p642c.AbstractC15107a
        public final C6256a invoke() {
            return new C6256a();
        }
    }

    static {
        C15157s sVar = new C15157s(C15131a0.m419a(C6254d.class), "moPubNativeNetworkListener", "getMoPubNativeNetworkListener()Lcom/mopub/nativeads/MoPubNative$MoPubNativeNetworkListener;");
        C15131a0.m412a(sVar);
        f15490i = new AbstractC14906i[]{sVar};
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6254d(Context context, String str) {
        super(context, str, EnumC6184a.NATIVE);
        C15149k.m377b(str, "adUnitName");
    }

    @Override // p081h.p160h.p161a.p166l.AbstractC6252c
    /* renamed from: a */
    public void mo23478a(Context context) {
        C15149k.m377b(context, "context");
        String str = "[Native][fetch], adUnit: " + m23485d();
        MoPubNative moPubNative = new MoPubNative(context, m23486c().m23562a(), m23477k());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        linkedHashMap.put("com.gogolook.adsdk.fetcher.AdUnitName", m23485d());
        C6260a a = m23494a();
        if (a != null) {
            linkedHashMap.put("com.gogolook.adsdk.fetcher.AdFetchLog", a);
        }
        moPubNative.setLocalExtras(linkedHashMap);
        moPubNative.registerAdRenderer(m23486c().m23558d());
        moPubNative.makeRequest(m23486c().m23559c());
    }

    /* renamed from: k */
    public final MoPubNative.MoPubNativeNetworkListener m23477k() {
        AbstractC14974f fVar = this.f15491h;
        AbstractC14906i iVar = f15490i[0];
        return (MoPubNative.MoPubNativeNetworkListener) fVar.getValue();
    }
}
