package io.bidmachine;

import java.util.EnumMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/NetworkConfigParams.class */
public interface NetworkConfigParams {
    EnumMap<AdsFormat, List<Map<String, String>>> obtainNetworkMediationConfigs(AdsFormat... adsFormatArr);

    Map<String, String> obtainNetworkParams();
}
