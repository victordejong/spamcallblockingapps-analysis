package org.bson.json;

import org.bson.BsonRegularExpression;
/* loaded from: classes3-dex2jar.jar:org/bson/json/LegacyExtendedJsonRegularExpressionConverter.class */
class LegacyExtendedJsonRegularExpressionConverter implements Converter<BsonRegularExpression> {
    public void convert(BsonRegularExpression bsonRegularExpression, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeStartObject();
        strictJsonWriter.writeString("$regex", bsonRegularExpression.getPattern());
        strictJsonWriter.writeString("$options", bsonRegularExpression.getOptions());
        strictJsonWriter.writeEndObject();
    }
}
