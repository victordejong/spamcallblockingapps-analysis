package org.bson.json;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import org.bson.BsonRegularExpression;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ExtendedJsonRegularExpressionConverter.class */
class ExtendedJsonRegularExpressionConverter implements Converter<BsonRegularExpression> {
    public void convert(BsonRegularExpression bsonRegularExpression, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeStartObject("$regularExpression");
        strictJsonWriter.writeString("pattern", bsonRegularExpression.getPattern());
        strictJsonWriter.writeString(SDKConstants.PARAM_GAME_REQUESTS_OPTIONS, bsonRegularExpression.getOptions());
        strictJsonWriter.writeEndObject();
        strictJsonWriter.writeEndObject();
    }
}
