package com.callapp.contacts.manager.asset.managers;

import com.callapp.contacts.activity.interfaces.OnUseMarketItemListener;
import com.callapp.contacts.event.EventBusManager;
import com.callapp.contacts.manager.preferences.Prefs;
import com.callapp.contacts.manager.preferences.prefs.BooleanPref;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager.class */
public class StoreItemAssetManager implements OnUseMarketItemListener {

    /* renamed from: b */
    public final SuperSkinListBackgroundAssetManager f25904b;

    /* renamed from: c */
    private CoverAssetManager f25905c;

    /* renamed from: d */
    private final Map<UrlAssetManager, AssetListener> f25906d;

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager$AssetListener.class */
    public interface AssetListener<T> {
        void onAssetReady(T t, String str);
    }

    /* loaded from: classes2-dex2jar.jar:com/callapp/contacts/manager/asset/managers/StoreItemAssetManager$Builder.class */
    public static class Builder {

        /* renamed from: a */
        public AssetListener<String> f25907a;

        /* renamed from: b */
        public AssetListener<String> f25908b;

        /* renamed from: c */
        public AssetListener<String> f25909c;

        /* renamed from: d */
        public AssetListener<String> f25910d;

        /* renamed from: f */
        private AssetListener<String> f25912f;

        /* renamed from: g */
        private AssetListener<String> f25913g;

        /* renamed from: h */
        private AssetListener<String> f25914h;

        /* renamed from: i */
        private AssetListener<String> f25915i;

        /* renamed from: e */
        public BooleanPref f25911e = null;

        /* renamed from: j */
        private BooleanPref f25916j = null;

        /* renamed from: k */
        private BooleanPref f25917k = null;

        /* renamed from: l */
        private BooleanPref f25918l = null;

        /* renamed from: m */
        private BooleanPref f25919m = null;

        /* renamed from: a */
        public final Builder m28415a(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.f25912f = assetListener;
            this.f25916j = booleanPref;
            return this;
        }

        /* renamed from: a */
        public final StoreItemAssetManager m28417a() {
            return new StoreItemAssetManager(this);
        }

        /* renamed from: b */
        public final Builder m28413b(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.f25913g = assetListener;
            this.f25917k = booleanPref;
            return this;
        }

        /* renamed from: c */
        public final Builder m28411c(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.f25914h = assetListener;
            this.f25918l = booleanPref;
            return this;
        }

        /* renamed from: d */
        public final Builder m28409d(BooleanPref booleanPref, AssetListener<String> assetListener) {
            this.f25915i = assetListener;
            this.f25919m = booleanPref;
            return this;
        }
    }

    private StoreItemAssetManager(Builder builder) {
        HashMap hashMap = new HashMap();
        this.f25906d = hashMap;
        EventBusManager.f25138a.m29048a(OnUseMarketItemListener.f23130a, this);
        SuperSkinListBackgroundAssetManager superSkinListBackgroundAssetManager = new SuperSkinListBackgroundAssetManager(builder.f25916j);
        this.f25904b = superSkinListBackgroundAssetManager;
        SuperSkinTopBarBackgroundAssetManager superSkinTopBarBackgroundAssetManager = new SuperSkinTopBarBackgroundAssetManager(builder.f25917k);
        SuperSkinWizardIconAssetManager superSkinWizardIconAssetManager = new SuperSkinWizardIconAssetManager(builder.f25918l);
        SuperSkinCardIconAssetManager superSkinCardIconAssetManager = new SuperSkinCardIconAssetManager(builder.f25911e);
        SuperSkinAnimationGifDownloaderAssetManager superSkinAnimationGifDownloaderAssetManager = new SuperSkinAnimationGifDownloaderAssetManager(builder.f25919m);
        KeypadAssetManager keypadAssetManager = new KeypadAssetManager(null);
        if (builder.f25907a != null) {
            hashMap.put(superSkinCardIconAssetManager, builder.f25907a);
        }
        if (builder.f25910d != null) {
            hashMap.put(keypadAssetManager, builder.f25910d);
        }
        if (builder.f25908b != null) {
            CoverAssetManager coverAssetManager = new CoverAssetManager();
            this.f25905c = coverAssetManager;
            hashMap.put(coverAssetManager, builder.f25908b);
        }
        if (builder.f25909c != null) {
            hashMap.put(new OverlayAssetManager(), builder.f25909c);
        }
        if (builder.f25912f != null) {
            hashMap.put(superSkinListBackgroundAssetManager, builder.f25912f);
        }
        if (builder.f25913g != null) {
            hashMap.put(superSkinTopBarBackgroundAssetManager, builder.f25913g);
        }
        if (builder.f25914h != null) {
            hashMap.put(superSkinWizardIconAssetManager, builder.f25914h);
        }
        if (builder.f25915i != null) {
            hashMap.put(superSkinAnimationGifDownloaderAssetManager, builder.f25915i);
        }
    }

    public static boolean isSuperSkinEnabled() {
        return Prefs.f26408dZ.get().booleanValue();
    }

    @Override // com.callapp.contacts.activity.interfaces.OnUseMarketItemListener
    /* renamed from: a */
    public final void mo28419a() {
        for (UrlAssetManager urlAssetManager : this.f25906d.keySet()) {
            urlAssetManager.setAsset(null);
        }
    }

    /* renamed from: b */
    public final void m28418b() {
        for (Map.Entry<UrlAssetManager, AssetListener> entry : this.f25906d.entrySet()) {
            entry.getKey();
        }
        this.f25906d.clear();
        EventBusManager.f25138a.m29045b(OnUseMarketItemListener.f23130a, this);
    }

    public void getAssets() {
        for (Map.Entry<UrlAssetManager, AssetListener> entry : this.f25906d.entrySet()) {
            UrlAssetManager key = entry.getKey();
            AssetListener<String> value = entry.getValue();
            if (key.m28397c()) {
                key.m28398a(value);
            }
        }
    }
}
