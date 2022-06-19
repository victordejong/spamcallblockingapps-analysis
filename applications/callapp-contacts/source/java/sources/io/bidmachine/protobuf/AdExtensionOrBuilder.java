package io.bidmachine.protobuf;

import com.explorestack.protobuf.ByteString;
import com.explorestack.protobuf.MessageOrBuilder;
import com.explorestack.protobuf.adcom.C9813Ad;
import io.bidmachine.protobuf.AdExtension;
import java.util.List;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/protobuf/AdExtensionOrBuilder.class */
public interface AdExtensionOrBuilder extends MessageOrBuilder {
    boolean containsCustomParams(String str);

    AdExtension.ControlAsset getCloseButton();

    AdExtension.ControlAssetOrBuilder getCloseButtonOrBuilder();

    int getCompanionSkipoffset();

    AdExtension.ControlAsset getCountdown();

    AdExtension.ControlAssetOrBuilder getCountdownOrBuilder();

    @Deprecated
    Map<String, String> getCustomParams();

    int getCustomParamsCount();

    Map<String, String> getCustomParamsMap();

    String getCustomParamsOrDefault(String str, String str2);

    String getCustomParamsOrThrow(String str);

    C9813Ad.Event getEvent(int i);

    int getEventCount();

    List<C9813Ad.Event> getEventList();

    C9813Ad.EventOrBuilder getEventOrBuilder(int i);

    List<? extends C9813Ad.EventOrBuilder> getEventOrBuilderList();

    boolean getIgnoresSafeAreaLayoutGuide();

    @Deprecated
    int getLoadSkipoffset();

    @Deprecated
    boolean getPreload();

    AdExtension.ControlAsset getProgress();

    int getProgressDuration();

    AdExtension.ControlAssetOrBuilder getProgressOrBuilder();

    boolean getR1();

    boolean getR2();

    int getSkipoffset();

    String getStoreUrl();

    ByteString getStoreUrlBytes();

    boolean getUseNativeClose();

    float getViewabilityDurationThreshold();

    boolean getViewabilityIgnoreWindowFocus();

    float getViewabilityPixelThreshold();

    int getViewabilityTimeThreshold();

    boolean hasCloseButton();

    boolean hasCountdown();

    boolean hasProgress();
}
