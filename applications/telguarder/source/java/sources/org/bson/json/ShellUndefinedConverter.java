package org.bson.json;

import com.google.android.gms.ads.AdError;
import org.bson.BsonUndefined;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellUndefinedConverter.class */
class ShellUndefinedConverter implements Converter<BsonUndefined> {
    public void convert(BsonUndefined bsonUndefined, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw(AdError.UNDEFINED_DOMAIN);
    }
}
