package com.criteo.publisher.advancednative;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.BidToken;
import com.criteo.publisher.C1963b;
import com.criteo.publisher.C1974i;
import com.criteo.publisher.C2019l;
import com.criteo.publisher.CriteoErrorCode;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.model.NativeAdUnit;
import com.criteo.publisher.model.p021z.AbstractC2075n;
import com.criteo.publisher.model.p021z.C2081s;
import com.criteo.publisher.p020a0.C1928p;
import com.criteo.publisher.p026s.ExecutorC2095a;
import java.lang.ref.WeakReference;
@Keep
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader.class */
public class CriteoNativeLoader {
    @NonNull
    public final NativeAdUnit adUnit;
    @NonNull
    public final CriteoNativeAdListener listener;
    @NonNull
    public final CriteoNativeRenderer publisherRenderer;
    @Nullable
    public CriteoNativeRenderer renderer;

    /* renamed from: com.criteo.publisher.advancednative.CriteoNativeLoader$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader$a.class */
    public class RunnableC1935a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CriteoNativeAd f2057a;

        public RunnableC1935a(CriteoNativeAd criteoNativeAd) {
            this.f2057a = criteoNativeAd;
        }

        @Override // java.lang.Runnable
        public void run() {
            CriteoNativeLoader.this.listener.onAdReceived(this.f2057a);
        }
    }

    /* renamed from: com.criteo.publisher.advancednative.CriteoNativeLoader$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/advancednative/CriteoNativeLoader$b.class */
    public class RunnableC1936b implements Runnable {
        public RunnableC1936b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            CriteoNativeLoader.this.listener.onAdFailedToReceive(CriteoErrorCode.ERROR_CODE_NO_FILL);
        }
    }

    public CriteoNativeLoader(@NonNull NativeAdUnit nativeAdUnit, @NonNull CriteoNativeAdListener criteoNativeAdListener, @NonNull CriteoNativeRenderer criteoNativeRenderer) {
        this.adUnit = nativeAdUnit;
        this.listener = criteoNativeAdListener;
        this.publisherRenderer = criteoNativeRenderer;
    }

    private void doLoad() {
        C2052w a = getBidManager().m35957a(this.adUnit);
        handleNativeAssets(a == null ? null : a.m35793f());
    }

    private void doLoad(@Nullable BidToken bidToken) {
        C2081s a = getInHouse().m35876a(bidToken);
        handleNativeAssets(a == null ? null : a.m35718b());
    }

    @NonNull
    private C1941b getAdChoiceOverlay() {
        return C1974i.m35912U().m35911a();
    }

    @NonNull
    private C1963b getBidManager() {
        return C1974i.m35912U().m35901h();
    }

    @NonNull
    public static C1952h getImageLoaderHolder() {
        return C1974i.m35912U().m35887v();
    }

    @NonNull
    private C2019l getInHouse() {
        return C1974i.m35912U().m35886w();
    }

    @NonNull
    private C1957k getNativeAdMapper() {
        return C1974i.m35912U().m35928E();
    }

    @NonNull
    private CriteoNativeRenderer getRenderer() {
        if (this.renderer == null) {
            this.renderer = new AdChoiceOverlayNativeRenderer(this.publisherRenderer, getAdChoiceOverlay());
        }
        return this.renderer;
    }

    @NonNull
    private ExecutorC2095a getUiThreadExecutor() {
        return C1974i.m35912U().m35920M();
    }

    private void handleNativeAssets(@Nullable AbstractC2075n nVar) {
        if (nVar == null) {
            notifyForFailureAsync();
        } else {
            notifyForAdAsync(getNativeAdMapper().m35970a(nVar, new WeakReference<>(this.listener), getRenderer()));
        }
    }

    private void notifyForAdAsync(@NonNull CriteoNativeAd criteoNativeAd) {
        getUiThreadExecutor().m35699a(new RunnableC1935a(criteoNativeAd));
    }

    private void notifyForFailureAsync() {
        getUiThreadExecutor().m35699a(new RunnableC1936b());
    }

    public static void setImageLoader(@NonNull ImageLoader imageLoader) {
        getImageLoaderHolder().m35973a(imageLoader);
    }

    @NonNull
    public View createEmptyNativeView(@NonNull Context context, @Nullable ViewGroup viewGroup) {
        return getRenderer().createNativeView(context, viewGroup);
    }

    public void loadAd() {
        try {
            doLoad();
        } catch (Throwable th) {
            C1928p.m36001a(th);
        }
    }

    public void loadAd(@Nullable BidToken bidToken) {
        try {
            doLoad(bidToken);
        } catch (Throwable th) {
            C1928p.m36001a(th);
        }
    }
}
