package org.bson.json;

import org.bson.types.ObjectId;
/* loaded from: classes3-dex2jar.jar:org/bson/json/ShellObjectIdConverter.class */
class ShellObjectIdConverter implements Converter<ObjectId> {
    public void convert(ObjectId objectId, StrictJsonWriter strictJsonWriter) {
        strictJsonWriter.writeRaw(String.format("ObjectId(\"%s\")", objectId.toHexString()));
    }
}
