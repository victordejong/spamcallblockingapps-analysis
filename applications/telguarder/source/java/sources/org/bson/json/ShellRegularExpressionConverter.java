package org.bson.json;

import org.bson.BsonRegularExpression;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellRegularExpressionConverter.class */
class ShellRegularExpressionConverter implements Converter<BsonRegularExpression> {
    public void convert(BsonRegularExpression bsonRegularExpression, StrictJsonWriter strictJsonWriter) {
        String replace = bsonRegularExpression.getPattern().equals("") ? "(?:)" : bsonRegularExpression.getPattern().replace("/", "\\/");
        strictJsonWriter.writeRaw("/" + replace + "/" + bsonRegularExpression.getOptions());
    }
}
