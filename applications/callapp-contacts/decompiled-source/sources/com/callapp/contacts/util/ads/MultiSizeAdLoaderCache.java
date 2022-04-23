package com.callapp.contacts.util.ads;

import com.callapp.contacts.util.ads.loaders.BaseMultiSizeAdLoader;
import com.mopub.mobileads.MoPubView;
import com.mopub.nativeads.NativeAd;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0004\u0018�� \u00042\u00020\u0001:\u0002\u0003\u0004B\u0005¢\u0006\u0002\u0010\u0002¨\u0006\u0005"}, d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache;", "", "()V", "AdData", "Companion", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache.class */
public final class MultiSizeAdLoaderCache {

    /* renamed from: a  reason: collision with root package name */
    public static final Companion f16077a = new Companion(null);

    /* renamed from: b  reason: collision with root package name */
    private static final HashMap<Class<?>, AdData> f16078b = new HashMap<>();

    /* renamed from: c  reason: collision with root package name */
    private static final ReentrantLock f16079c = new ReentrantLock();

    @Metadata(bv = {1, 0, 3}, d1 = {"��0\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0011\n\u0002\u0010\b\n��\n\u0002\u0010\u000e\n��\b\u0086\b\u0018��2\u00020\u0001B)\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\b\u001a\u00020\t¢\u0006\u0002\u0010\nJ\t\u0010\u0013\u001a\u00020\u0003HÆ\u0003J\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0005HÆ\u0003J\u000b\u0010\u0015\u001a\u0004\u0018\u00010\u0007HÆ\u0003J\t\u0010\u0016\u001a\u00020\tHÆ\u0003J5\u0010\u0017\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\b\b\u0002\u0010\b\u001a\u00020\tHÆ\u0001J\u0013\u0010\u0018\u001a\u00020\t2\b\u0010\u0019\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010\u001a\u001a\u00020\u001bHÖ\u0001J\t\u0010\u001c\u001a\u00020\u001dHÖ\u0001R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n��\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\b\u001a\u00020\t¢\u0006\b\n��\u001a\u0004\b\r\u0010\u000eR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\b\n��\u001a\u0004\b\u000f\u0010\u0010R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u001e"}, d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;", "", "adLoader", "Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "moPubView", "Lcom/mopub/mobileads/MoPubView;", "nativeAd", "Lcom/mopub/nativeads/NativeAd;", "disableRefresh", "", "(Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;Lcom/mopub/mobileads/MoPubView;Lcom/mopub/nativeads/NativeAd;Z)V", "getAdLoader", "()Lcom/callapp/contacts/util/ads/loaders/BaseMultiSizeAdLoader;", "getDisableRefresh", "()Z", "getMoPubView", "()Lcom/mopub/mobileads/MoPubView;", "getNativeAd", "()Lcom/mopub/nativeads/NativeAd;", "component1", "component2", "component3", "component4", "copy", "equals", "other", "hashCode", "", "toString", "", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData.class */
    public static final class AdData {

        /* renamed from: a  reason: collision with root package name */
        private final BaseMultiSizeAdLoader f16080a;

        /* renamed from: b  reason: collision with root package name */
        private final MoPubView f16081b;

        /* renamed from: c  reason: collision with root package name */
        private final NativeAd f16082c;

        /* renamed from: d  reason: collision with root package name */
        private final boolean f16083d;

        public AdData(BaseMultiSizeAdLoader adLoader, MoPubView moPubView, NativeAd nativeAd, boolean z) {
            p.d(adLoader, "adLoader");
            this.f16080a = adLoader;
            this.f16081b = moPubView;
            this.f16082c = nativeAd;
            this.f16083d = z;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof AdData)) {
                return false;
            }
            AdData adData = (AdData) obj;
            return p.a(this.f16080a, adData.f16080a) && p.a(this.f16081b, adData.f16081b) && p.a(this.f16082c, adData.f16082c) && this.f16083d == adData.f16083d;
        }

        public final BaseMultiSizeAdLoader getAdLoader() {
            return this.f16080a;
        }

        public final boolean getDisableRefresh() {
            return this.f16083d;
        }

        public final MoPubView getMoPubView() {
            return this.f16081b;
        }

        public final NativeAd getNativeAd() {
            return this.f16082c;
        }

        public final int hashCode() {
            BaseMultiSizeAdLoader baseMultiSizeAdLoader = this.f16080a;
            int i = 0;
            int hashCode = baseMultiSizeAdLoader != null ? baseMultiSizeAdLoader.hashCode() : 0;
            MoPubView moPubView = this.f16081b;
            int hashCode2 = moPubView != null ? moPubView.hashCode() : 0;
            NativeAd nativeAd = this.f16082c;
            if (nativeAd != null) {
                i = nativeAd.hashCode();
            }
            boolean z = this.f16083d;
            int i2 = z ? 1 : 0;
            if (z) {
                i2 = 1;
            }
            return (((((hashCode * 31) + hashCode2) * 31) + i) * 31) + i2;
        }

        public final String toString() {
            return "AdData(adLoader=" + this.f16080a + ", moPubView=" + this.f16081b + ", nativeAd=" + this.f16082c + ", disableRefresh=" + this.f16083d + ")";
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001e\u0010\t\u001a\u00020\n2\f\b\u0001\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u00052\b\b\u0001\u0010\f\u001a\u00020\u0006J\u0016\u0010\r\u001a\u0004\u0018\u00010\u00062\f\b\u0001\u0010\u000b\u001a\u0006\u0012\u0002\b\u00030\u0005R\u001e\u0010\u0003\u001a\u0012\u0012\b\u0012\u0006\u0012\u0002\b\u00030\u0005\u0012\u0004\u0012\u00020\u00060\u0004X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000e"}, d2 = {"Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion;", "", "()V", "adLoaderCache", "Ljava/util/HashMap;", "Ljava/lang/Class;", "Lcom/callapp/contacts/util/ads/MultiSizeAdLoaderCache$AdData;", "lock", "Ljava/util/concurrent/locks/ReentrantLock;", "add", "", "classType", "adData", "getAndRemove", "callapp-client_playRelease"}, k = 1, mv = {1, 4, 2})
    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/ads/MultiSizeAdLoaderCache$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static AdData a(Class<?> classType) {
            p.d(classType, "classType");
            try {
                MultiSizeAdLoaderCache.f16079c.lock();
                AdData adData = (AdData) MultiSizeAdLoaderCache.f16078b.get(classType);
                if (adData != null) {
                    MultiSizeAdLoaderCache.f16078b.remove(classType);
                }
                MultiSizeAdLoaderCache.f16079c.unlock();
                return adData;
            } catch (Throwable th) {
                MultiSizeAdLoaderCache.f16079c.unlock();
                throw th;
            }
        }

        public static void a(Class<?> classType, AdData adData) {
            p.d(classType, "classType");
            p.d(adData, "adData");
            try {
                MultiSizeAdLoaderCache.f16079c.lock();
                MultiSizeAdLoaderCache.f16078b.put(classType, adData);
                MultiSizeAdLoaderCache.f16079c.unlock();
            } catch (Throwable th) {
                MultiSizeAdLoaderCache.f16079c.unlock();
                throw th;
            }
        }
    }
}
