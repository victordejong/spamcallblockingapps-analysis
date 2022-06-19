package net.pubnative.lite.sdk.models;

import com.explorestack.iab.mraid.C9568h;
import com.mopub.common.AdType;
import java.io.Serializable;
import java.util.HashMap;
import java.util.Map;
import net.pubnative.lite.sdk.utils.json.BindField;
import net.pubnative.lite.sdk.utils.json.JsonModel;
import org.json.JSONObject;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/models/AdData.class */
public class AdData extends JsonModel implements Serializable {
    @BindField
    public Map<String, Object> data;
    @BindField
    public String type;

    public AdData() {
    }

    public AdData(String str, String str2, String str3) {
        HashMap hashMap = new HashMap();
        this.data = hashMap;
        hashMap.put(str, str3);
        this.type = str2;
    }

    public AdData(JSONObject jSONObject) throws Exception {
        fromJson(jSONObject);
    }

    protected Object getDataField(String str) {
        Map<String, Object> map = this.data;
        return (map == null || !map.containsKey(str)) ? null : this.data.get(str);
    }

    public Double getDoubleField(String str) {
        if (getDataField(str) instanceof Number) {
            return Double.valueOf(((Number) getDataField(str)).doubleValue());
        }
        return null;
    }

    public int getHeight() {
        return getIntField(C9568h.f32519a).intValue();
    }

    public String getHtml() {
        return getStringField(AdType.HTML);
    }

    public Integer getIntField(String str) {
        return (Integer) getDataField(str);
    }

    public String getJS() {
        return getStringField("js");
    }

    public Double getNumber() {
        return getDoubleField("number");
    }

    public String getStringField(String str) {
        return (String) getDataField(str);
    }

    public String getText() {
        return getStringField("text");
    }

    public String getURL() {
        return getStringField("url");
    }

    public int getWidth() {
        return getIntField("w").intValue();
    }
}
