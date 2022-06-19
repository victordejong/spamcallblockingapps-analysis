package com.callapp.contacts.util.ads;

import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018�� \u00042\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, m4298d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;", "", "()V", "AdData", "Companion", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache.class */
public final class MultiSizeAdLoaderCache {

    /* renamed from: a */
    public static final Companion f28029a = new Companion(null);

    /* renamed from: b */
    private static final HashMap<Class<?>, AdData> f28030b = new HashMap<>();

    /* renamed from: c */
    private static final ReentrantLock f28031c = new ReentrantLock();

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J5\u0010\u0017\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, m4298d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;", "", "adLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "moPubView", "Lcom/mopub/mobileads/MoPubView;", "nativeAd", "Lcom/mopub/nativeads/NativeAd;", "disableRefresh", "", "(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V", "getAdLoader", "()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "getDisableRefresh", "()Z", "getMoPubView", "()Lcom/mopub/mobileads/MoPubView;", "getNativeAd", "()Lcom/mopub/nativeads/NativeAd;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData.class */
    public static final class AdData {

        /* renamed from: a */
        private final BaseMultiSizeAdLoader f28032a;

        /* renamed from: b */
        private final MoPubView f28033b;

        /* renamed from: c */
        private final NativeAd f28034c;

        /* renamed from: d */
        private final boolean f28035d;

        public AdData(BaseMultiSizeAdLoader adLoader, MoPubView moPubView, NativeAd nativeAd, boolean z) {
            C18524p.m3840d(adLoader, "adLoader");
            this.f28032a = adLoader;
            this.f28033b = moPubView;
            this.f28034c = nativeAd;
            this.f28035d = z;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (!(obj instanceof AdData)) {
                    return false;
                }
                AdData adData = (AdData) obj;
                return C18524p.m3850a(this.f28032a, adData.f28032a) && C18524p.m3850a(this.f28033b, adData.f28033b) && C18524p.m3850a(this.f28034c, adData.f28034c) && this.f28035d == adData.f28035d;
            }
            return true;
        }

        public final BaseMultiSizeAdLoader getAdLoader() {
            return this.f28032a;
        }

        public final boolean getDisableRefresh() {
            return this.f28035d;
        }

        public final MoPubView getMoPubView() {
            return this.f28033b;
        }

        public final NativeAd getNativeAd() {
            return this.f28034c;
        }

        public final int hashCode() {
            BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.f28032a;
            int i = 0;
            int hashCode = baseMultiSizeAdLoader != null ? baseMultiSizeAdLoader.hashCode() : 0;
            MoPubView moPubView = this.f28033b;
            int hashCode2 = moPubView != null ? moPubView.hashCode() : 0;
            NativeAd nativeAd = this.f28034c;
            if (nativeAd != null) {
                i = nativeAd.hashCode();
            }
            boolean z = this.f28035d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
        }

        public final String toString() {
            return "AdData(adLoader=" + this.f28032a + ", moPubView=" + this.f28033b + ", nativeAd=" + this.f28034c + ", disableRefresh=" + this.f28035d + ")";
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\f\b\u0001\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00052\b\b\u0001\u0010\f\u001a\u00020\u0006J\u0016\u0010\r\u001a\u0004\u0018\u00010\u00062\f\b\u0001\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0005R\u001e\u0010\u0003\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, m4298d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;", "", "()V", "adLoaderCache", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "add", "", "classType", "adData", "getAndRemove", "callapp-client_playRelease"}, m4297k = 1, m4296mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        public static AdData m27219a(Class<?> classType) {
            C18524p.m3840d(classType, "classType");
            try {
                MultiSizeAdLoaderCache.f28031c.lock();
                AdData adData = (AdData) MultiSizeAdLoaderCache.f28030b.get(classType);
                if (adData != null) {
                    MultiSizeAdLoaderCache.f28030b.remove(classType);
                }
                MultiSizeAdLoaderCache.f28031c.unlock();
                return adData;
            } catch (Throwable th) {
                MultiSizeAdLoaderCache.f28031c.unlock();
                throw th;
            }
        }

        /* renamed from: a */
        public static void m27218a(Class<?> classType, AdData adData) {
            C18524p.m3840d(classType, "classType");
            C18524p.m3840d(adData, "adData");
            try {
                MultiSizeAdLoaderCache.f28031c.lock();
                MultiSizeAdLoaderCache.f28030b.put(classType, adData);
                MultiSizeAdLoaderCache.f28031c.unlock();
            } catch (Throwable th) {
                MultiSizeAdLoaderCache.f28031c.unlock();
                throw th;
            }
        }
    }
}
