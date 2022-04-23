package com.inmobi.ads;

import android.app.Activity;
import android.view.View;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/AdContainer.class */
public interface AdContainer {

    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/AdContainer$RenderingProperties.class */
    public static final class RenderingProperties {

        /* renamed from: a */
        public PlacementType f31277a;

        /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/AdContainer$RenderingProperties$PlacementType.class */
        public enum PlacementType {
            PLACEMENT_TYPE_INLINE,
            PLACEMENT_TYPE_FULLSCREEN
        }

        public RenderingProperties(PlacementType placementType) {
            this.f31277a = placementType;
        }
    }

    /* renamed from: com.inmobi.ads.AdContainer$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/AdContainer$a.class */
    public interface AbstractC8007a {
        /* renamed from: a */
        void mo5558a();

        /* renamed from: a */
        void mo5557a(Object obj);

        /* renamed from: b */
        void mo5556b(Object obj);
    }

    /* renamed from: a */
    void mo5607a();

    /* renamed from: a */
    void mo5606a(int i, Map<String, String> map);

    /* renamed from: b */
    void mo5592b();

    /* renamed from: c */
    boolean mo5585c();

    void destroy();

    C8297o getApkDownloader();

    Object getDataModel();

    AbstractC8007a getFullScreenEventsListener();

    String getMarkupType();

    RenderingProperties getRenderingProperties();

    View getVideoContainerView();

    AbstractC8213cb getViewableAd();

    void setFullScreenActivityContext(Activity activity);

    void setRequestedScreenOrientation();
}
