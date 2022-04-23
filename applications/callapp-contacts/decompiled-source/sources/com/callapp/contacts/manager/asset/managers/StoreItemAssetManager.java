package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.activity.interfaces.OnUseMarketItemListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager.class */
public class StoreItemAssetManager implements OnUseMarketItemListener {

    /* renamed from: b  reason: collision with root package name */
    public final SuperSkinListBackgroundAssetManager f14980b;

    /* renamed from: c  reason: collision with root package name */
    private CoverAssetManager f14981c;

    /* renamed from: d  reason: collision with root package name */
    private final Map<UrlAssetManager, AssetListener> f14982d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener.class */
    public interface AssetListener<T> {
        void onAssetReady(T t, String str);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder.class */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public AssetListener<String> f14983a;

        /* renamed from: b  reason: collision with root package name */
        public AssetListener<String> f14984b;

        /* renamed from: c  reason: collision with root package name */
        public AssetListener<String> f14985c;

        /* renamed from: d  reason: collision with root package name */
        public AssetListener<String> f14986d;
        private AssetListener<String> f;
        private AssetListener<String> g;
        private AssetListener<String> h;
        private AssetListener<String> i;
        public BooleanPref e = null;
        private BooleanPref j = null;
        private BooleanPref k = null;
        private BooleanPref l = null;
        private BooleanPref m = null;

        public final Builder a(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.f = assetListener;
            this.j = booleanPref;
            return this;
        }

        public final StoreItemAssetManager a() {
            return new StoreItemAssetManager(this);
        }

        public final Builder b(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.g = assetListener;
            this.k = booleanPref;
            return this;
        }

        public final Builder c(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.h = assetListener;
            this.l = booleanPref;
            return this;
        }

        public final Builder d(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.i = assetListener;
            this.m = booleanPref;
            return this;
        }
    }

    private StoreItemAssetManager(Builder builder) {
        HashMap hashMap = new HashMap();
        this.f14982d = hashMap;
        EventBusManager.f14368a.a(OnUseMarketItemListener.f12956a, this);
        SuperSkinListBackgroundAssetManager superSkinListBackgroundAssetManager = new SuperSkinListBackgroundAssetManager(builder.j);
        this.f14980b = superSkinListBackgroundAssetManager;
        SuperSkinTopBarBackgroundAssetManager superSkinTopBarBackgroundAssetManager = new SuperSkinTopBarBackgroundAssetManager(builder.k);
        SuperSkinWizardIconAssetManager superSkinWizardIconAssetManager = new SuperSkinWizardIconAssetManager(builder.l);
        SuperSkinCardIconAssetManager superSkinCardIconAssetManager = new SuperSkinCardIconAssetManager(builder.e);
        SuperSkinAnimationGifDownloaderAssetManager superSkinAnimationGifDownloaderAssetManager = new SuperSkinAnimationGifDownloaderAssetManager(builder.m);
        KeypadAssetManager keypadAssetManager = new KeypadAssetManager(null);
        if (builder.f14983a != null) {
            hashMap.put(superSkinCardIconAssetManager, builder.f14983a);
        }
        if (builder.f14986d != null) {
            hashMap.put(keypadAssetManager, builder.f14986d);
        }
        if (builder.f14984b != null) {
            CoverAssetManager coverAssetManager = new CoverAssetManager();
            this.f14981c = coverAssetManager;
            hashMap.put(coverAssetManager, builder.f14984b);
        }
        if (builder.f14985c != null) {
            hashMap.put(new OverlayAssetManager(), builder.f14985c);
        }
        if (builder.f != null) {
            hashMap.put(superSkinListBackgroundAssetManager, builder.f);
        }
        if (builder.g != null) {
            hashMap.put(superSkinTopBarBackgroundAssetManager, builder.g);
        }
        if (builder.h != null) {
            hashMap.put(superSkinWizardIconAssetManager, builder.h);
        }
        if (builder.i != null) {
            hashMap.put(superSkinAnimationGifDownloaderAssetManager, builder.i);
        }
    }

    public static boolean isSuperSkinEnabled() {
        return Prefs.dZ.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.interfaces.OnUseMarketItemListener
    public final void a() {
        for (UrlAssetManager urlAssetManager : this.f14982d.keySet()) {
            urlAssetManager.setAsset(null);
        }
    }

    public final void b() {
        for (Map.Entry<UrlAssetManager, AssetListener> entry : this.f14982d.entrySet()) {
            entry.getKey();
        }
        this.f14982d.clear();
        EventBusManager.f14368a.b(OnUseMarketItemListener.f12956a, this);
    }

    public void getAssets() {
        for (Map.Entry<UrlAssetManager, AssetListener> entry : this.f14982d.entrySet()) {
            UrlAssetManager key = entry.getKey();
            AssetListener<String> value = entry.getValue();
            if (key.c()) {
                key.a(value);
            }
        }
    }
}
