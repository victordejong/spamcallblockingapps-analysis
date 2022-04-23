package com.amazonaws.transform;

import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.AwsJsonToken;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/MapUnmarshaller.class */
public class MapUnmarshaller<V> implements Unmarshaller<Map<String, V>, JsonUnmarshallerContext> {

    /* renamed from: a  reason: collision with root package name */
    private final Unmarshaller<V, JsonUnmarshallerContext> f6886a;

    public MapUnmarshaller(Unmarshaller<V, JsonUnmarshallerContext> unmarshaller) {
        this.f6886a = unmarshaller;
    }

    /* renamed from: a */
    public final Map<String, V> unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        if (reader.peek() == AwsJsonToken.VALUE_NULL) {
            reader.skipValue();
            return null;
        }
        HashMap hashMap = new HashMap();
        reader.beginObject();
        while (reader.hasNext()) {
            hashMap.put(reader.nextName(), this.f6886a.unmarshall(jsonUnmarshallerContext));
        }
        reader.endObject();
        return hashMap;
    }
}
