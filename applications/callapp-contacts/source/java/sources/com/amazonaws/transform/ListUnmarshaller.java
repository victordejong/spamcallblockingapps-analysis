package com.amazonaws.transform;

import com.amazonaws.util.json.AwsJsonReader;
import com.amazonaws.util.json.AwsJsonToken;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/ListUnmarshaller.class */
public class ListUnmarshaller<T> implements Unmarshaller<List<T>, JsonUnmarshallerContext> {

    /* renamed from: a */
    private final Unmarshaller<T, JsonUnmarshallerContext> f12473a;

    public ListUnmarshaller(Unmarshaller<T, JsonUnmarshallerContext> unmarshaller) {
        this.f12473a = unmarshaller;
    }

    /* renamed from: a */
    public final List<T> unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
        AwsJsonReader reader = jsonUnmarshallerContext.getReader();
        if (reader.peek() == AwsJsonToken.VALUE_NULL) {
            reader.skipValue();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        reader.beginArray();
        while (reader.hasNext()) {
            arrayList.add(this.f12473a.unmarshall(jsonUnmarshallerContext));
        }
        reader.endArray();
        return arrayList;
    }
}
