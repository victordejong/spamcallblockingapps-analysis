package io.bidmachine;

import android.content.Context;
import android.text.TextUtils;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.unified.UnifiedAdRequestParams;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/NetworkConfig.class */
public abstract class NetworkConfig {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final String CONFIG_ORIENTATION = "orientation";
    private static final String KEY_AD_UNITS = "ad_units";
    private static final String KEY_CLASSPATH = "classpath";
    private static final String KEY_FORMAT = "format";
    static final String KEY_NETWORK = "network";
    public static final List<String> PRIVATE_FIELDS = new ArrayList<String>() { // from class: io.bidmachine.NetworkConfig.1
        {
            add(NetworkConfig.KEY_NETWORK);
            add(NetworkConfig.KEY_FORMAT);
            add(NetworkConfig.KEY_AD_UNITS);
        }
    };
    private Map<String, String> baseMediationConfig;
    private AdsType[] mergedAdsTypes;
    private NetworkAdapter networkAdapter;
    private Map<String, String> networkParams;
    private AdsType[] supportedAdsTypes;
    private EnumMap<AdsFormat, List<Map<String, String>>> typedMediationConfigs;
    private h registerSource = h.Publisher;
    private NetworkConfigParams networkConfigParams = new NetworkConfigParams() { // from class: io.bidmachine.NetworkConfig.2
        @Override // io.bidmachine.NetworkConfigParams
        public final EnumMap<AdsFormat, List<Map<String, String>>> obtainNetworkMediationConfigs(AdsFormat... adsFormatArr) {
            ArrayList arrayList;
            List list;
            EnumMap<AdsFormat, List<Map<String, String>>> enumMap = null;
            if (adsFormatArr != null) {
                enumMap = null;
                if (adsFormatArr.length > 0) {
                    enumMap = null;
                    for (AdsFormat adsFormat : adsFormatArr) {
                        if (NetworkConfig.this.typedMediationConfigs == null || (list = (List) NetworkConfig.this.typedMediationConfigs.get(adsFormat)) == null) {
                            arrayList = null;
                        } else {
                            ArrayList arrayList2 = null;
                            int i = 0;
                            while (true) {
                                arrayList = arrayList2;
                                if (i >= list.size()) {
                                    break;
                                }
                                Map map = (Map) list.get(i);
                                Map<String, String> prepareTypedMediationConfig = map != null ? NetworkConfig.this.prepareTypedMediationConfig(map) : null;
                                arrayList2 = arrayList2;
                                if (prepareTypedMediationConfig != null) {
                                    arrayList2 = arrayList2;
                                    if (arrayList2 == null) {
                                        arrayList2 = new ArrayList();
                                    }
                                    arrayList2.add(prepareTypedMediationConfig);
                                }
                                i++;
                            }
                        }
                        enumMap = enumMap;
                        if (arrayList != null) {
                            enumMap = enumMap;
                            if (enumMap == null) {
                                enumMap = new EnumMap<>(AdsFormat.class);
                            }
                            enumMap.put((EnumMap<AdsFormat, List<Map<String, String>>>) adsFormat, (AdsFormat) arrayList);
                        }
                    }
                }
            }
            return enumMap;
        }

        @Override // io.bidmachine.NetworkConfigParams
        public final Map<String, String> obtainNetworkParams() {
            if (NetworkConfig.this.networkParams != null) {
                return new HashMap(NetworkConfig.this.networkParams);
            }
            return null;
        }
    };

    /* JADX INFO: Access modifiers changed from: protected */
    public NetworkConfig(Map<String, String> map) {
        withNetworkParams(map);
    }

    private boolean contains(Object[] objArr, Object obj) {
        for (Object obj2 : objArr) {
            if (obj2 == obj) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NetworkConfig create(Context context, String str, Map<String, String> map) {
        String readAssetByNetworkName = readAssetByNetworkName(context, str);
        if (TextUtils.isEmpty(readAssetByNetworkName)) {
            return null;
        }
        try {
            return (NetworkConfig) Class.forName(new JSONObject(readAssetByNetworkName).getString(KEY_CLASSPATH)).getConstructor(Map.class).newInstance(map);
        } catch (Throwable th) {
            Logger.log(String.format("Network (%s) load fail!", str));
            Logger.log(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static NetworkConfig create(Context context, JSONObject jSONObject) {
        String str;
        Throwable th;
        String string;
        if (context == null) {
            return null;
        }
        try {
            string = jSONObject.getString(KEY_NETWORK);
        } catch (Throwable th2) {
            th = th2;
            str = null;
        }
        try {
            NetworkConfig create = create(context, string, toMap(jSONObject));
            if (create == null) {
                return null;
            }
            JSONArray jSONArray = jSONObject.getJSONArray(KEY_AD_UNITS);
            for (int i = 0; i < jSONArray.length(); i++) {
                JSONObject jSONObject2 = jSONArray.getJSONObject(i);
                AdsFormat byRemoteName = AdsFormat.byRemoteName(jSONObject2.getString(KEY_FORMAT));
                if (byRemoteName != null) {
                    create.withMediationConfig(byRemoteName, toMap(jSONObject2));
                } else {
                    Logger.log(String.format("Network (%s) adUnit register fail: %s not provided", string, KEY_FORMAT));
                }
            }
            Logger.log(String.format("Load network from json config completed successfully: %s, %s", create.getKey(), create.getVersion()));
            return create;
        } catch (Throwable th3) {
            th = th3;
            str = string;
            Logger.log(String.format("Network (%s) load fail!", str));
            Logger.log(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Map<String, String> prepareTypedMediationConfig(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        if (this.networkParams != null && useNetworkParamsAsMediationBase()) {
            hashMap.putAll(this.networkParams);
        }
        Map<String, String> map2 = this.baseMediationConfig;
        if (map2 != null) {
            hashMap.putAll(map2);
        }
        hashMap.putAll(map);
        return hashMap;
    }

    private static String readAssetByNetworkName(Context context, String str) {
        Throwable th;
        InputStream inputStream;
        try {
            inputStream = context.getAssets().open(String.format("bm_networks/%s.bmnetwork", str));
            try {
                return Utils.streamToString(inputStream);
            } catch (Throwable th2) {
                th = th2;
                try {
                    Logger.log(th);
                    Utils.close(inputStream);
                    return null;
                } finally {
                    Utils.close(inputStream);
                }
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
        }
    }

    private static Map<String, String> toMap(JSONObject jSONObject) throws JSONException {
        HashMap hashMap = new HashMap();
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            Object opt = jSONObject.opt(next);
            if (opt != null) {
                hashMap.put(next, opt.toString());
            }
        }
        return hashMap;
    }

    protected abstract NetworkAdapter createNetworkAdapter();

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return getKey().equals(((NetworkConfig) obj).getKey());
    }

    public NetworkConfig forAdTypes(AdsType... adsTypeArr) {
        this.supportedAdsTypes = adsTypeArr;
        return this;
    }

    public String getKey() {
        return obtainNetworkAdapter().getKey();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NetworkConfigParams getNetworkConfigParams() {
        return this.networkConfigParams;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h getRegisterSource() {
        return this.registerSource;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdsType[] getSupportedAdsTypes() {
        if (this.mergedAdsTypes == null) {
            AdsType[] supportedTypes = obtainNetworkAdapter().getSupportedTypes();
            ArrayList arrayList = new ArrayList();
            for (AdsType adsType : supportedTypes) {
                Object[] objArr = this.supportedAdsTypes;
                if (objArr == null || contains(objArr, adsType)) {
                    arrayList.add(adsType);
                }
            }
            this.mergedAdsTypes = (AdsType[]) arrayList.toArray(new AdsType[0]);
        }
        return this.mergedAdsTypes;
    }

    public String getVersion() {
        return obtainNetworkAdapter().getVersion();
    }

    public int hashCode() {
        return getKey().hashCode();
    }

    boolean isOrientationMatched(Map<String, String> map) {
        if (map == null) {
            return true;
        }
        String str = map.get(CONFIG_ORIENTATION);
        if (TextUtils.isEmpty(str)) {
            return true;
        }
        try {
            Orientation valueOf = Orientation.valueOf(Utils.capitalize(str));
            if (valueOf == Orientation.Undefined) {
                return true;
            }
            int orientation = Utils.getOrientation();
            if (valueOf == Orientation.Portrait && orientation == 1) {
                return true;
            }
            return valueOf == Orientation.Landscape && orientation == 2;
        } catch (Exception e) {
            return true;
        }
    }

    public NetworkAdapter obtainNetworkAdapter() {
        if (this.networkAdapter == null) {
            this.networkAdapter = createNetworkAdapter();
        }
        return this.networkAdapter;
    }

    public <T extends UnifiedAdRequestParams> List<Map<String, String>> peekMediationConfig(AdsType adsType, T t, AdContentType adContentType) {
        List<Map<String, String>> value;
        ArrayList arrayList = new ArrayList();
        EnumMap<AdsFormat, List<Map<String, String>>> enumMap = this.typedMediationConfigs;
        if (enumMap != null) {
            for (Map.Entry<AdsFormat, List<Map<String, String>>> entry : enumMap.entrySet()) {
                if (entry.getKey().isMatch(adsType, t, adContentType) && (value = entry.getValue()) != null) {
                    for (Map<String, String> map : value) {
                        if (isOrientationMatched(map)) {
                            arrayList.add(map);
                        }
                    }
                }
            }
        }
        for (int i = 0; i < arrayList.size(); i++) {
            arrayList.set(i, prepareTypedMediationConfig((Map) arrayList.get(i)));
        }
        return arrayList;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends NetworkConfig> T setBaseMediationParam(String str, String str2) {
        if (this.baseMediationConfig == null) {
            this.baseMediationConfig = new HashMap();
        }
        this.baseMediationConfig.put(str, str2);
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends NetworkConfig> T setNetworkParam(String str, String str2) {
        if (this.networkParams == null) {
            this.networkParams = new HashMap();
        }
        this.networkParams.put(str, str2);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setRegisterSource(h hVar) {
        this.registerSource = hVar;
    }

    protected boolean useNetworkParamsAsMediationBase() {
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends NetworkConfig> T withBaseMediationConfig(Map<String, String> map) {
        this.baseMediationConfig = map;
        return this;
    }

    public <T extends NetworkConfig> T withMediationConfig(AdsFormat adsFormat, Map<String, String> map) {
        return (T) withMediationConfig(adsFormat, map, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends NetworkConfig> T withMediationConfig(AdsFormat adsFormat, Map<String, String> map, Orientation orientation) {
        if (map == null) {
            EnumMap<AdsFormat, List<Map<String, String>>> enumMap = this.typedMediationConfigs;
            if (enumMap != null) {
                enumMap.remove(adsFormat);
            }
        } else {
            if (orientation != null) {
                map.put(CONFIG_ORIENTATION, orientation.toString().toLowerCase());
            }
            if (this.typedMediationConfigs == null) {
                this.typedMediationConfigs = new EnumMap<>(AdsFormat.class);
            }
            List<Map<String, String>> list = this.typedMediationConfigs.get(adsFormat);
            List<Map<String, String>> list2 = list;
            if (list == null) {
                list2 = new ArrayList<>();
                this.typedMediationConfigs.put((EnumMap<AdsFormat, List<Map<String, String>>>) adsFormat, (AdsFormat) list2);
            }
            list2.add(map);
        }
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T extends NetworkConfig> T withNetworkParams(Map<String, String> map) {
        this.networkParams = map;
        return this;
    }
}
