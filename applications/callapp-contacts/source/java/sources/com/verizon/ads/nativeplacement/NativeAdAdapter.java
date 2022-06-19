package com.verizon.ads.nativeplacement;

import android.content.Context;
import android.view.ViewGroup;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.Component;
import com.verizon.ads.ErrorInfo;
import java.util.Map;
import java.util.Set;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdAdapter.class */
public interface NativeAdAdapter extends AdAdapter {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdAdapter$LoadComponentsListener.class */
    public interface LoadComponentsListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/nativeplacement/NativeAdAdapter$NativeAdAdapterListener.class */
    public interface NativeAdAdapterListener {
        void onAdLeftApplication();

        void onClicked(Component component);

        void onClosed();

        void onEvent(String str, String str2, Map<String, Object> map);
    }

    void abortLoadComponents();

    void fireImpression(Context context);

    String getAdType();

    Component getComponent(NativeComponentBundle nativeComponentBundle, String str);

    Set<String> getComponentIds(NativeComponentBundle nativeComponentBundle);

    JSONObject getJSON(NativeComponentBundle nativeComponentBundle);

    JSONObject getJSON(NativeComponentBundle nativeComponentBundle, String str);

    Set<String> getRequiredComponentIds();

    NativeComponentBundle getRootBundle();

    void invokeDefaultAction(Context context);

    void loadComponents(boolean z, int i, LoadComponentsListener loadComponentsListener);

    boolean registerContainerView(ViewGroup viewGroup);

    void release();

    void setListener(NativeAdAdapterListener nativeAdAdapterListener);
}
