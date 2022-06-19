package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/StreamWriteFeature.class */
public enum StreamWriteFeature implements JacksonFeature {
    AUTO_CLOSE_TARGET(JsonGenerator.Feature.AUTO_CLOSE_TARGET),
    AUTO_CLOSE_CONTENT(JsonGenerator.Feature.AUTO_CLOSE_JSON_CONTENT),
    FLUSH_PASSED_TO_STREAM(JsonGenerator.Feature.FLUSH_PASSED_TO_STREAM),
    WRITE_BIGDECIMAL_AS_PLAIN(JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN),
    STRICT_DUPLICATE_DETECTION(JsonGenerator.Feature.STRICT_DUPLICATE_DETECTION),
    IGNORE_UNKNOWN(JsonGenerator.Feature.IGNORE_UNKNOWN);
    
    private final boolean _defaultState;
    private final JsonGenerator.Feature _mappedFeature;
    private final int _mask;

    StreamWriteFeature(JsonGenerator.Feature feature) {
        this._mappedFeature = feature;
        this._mask = feature.getMask();
        this._defaultState = feature.enabledByDefault();
    }

    public static int collectDefaults() {
        StreamWriteFeature[] values = values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                StreamWriteFeature streamWriteFeature = values[i];
                int i4 = i3;
                if (streamWriteFeature.enabledByDefault()) {
                    i4 = i3 | streamWriteFeature.getMask();
                }
                i++;
                i2 = i4;
            } else {
                return i3;
            }
        }
    }

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    public final boolean enabledByDefault() {
        return this._defaultState;
    }

    public final boolean enabledIn(int i) {
        return (i & this._mask) != 0;
    }

    @Override // com.fasterxml.jackson.core.util.JacksonFeature
    public final int getMask() {
        return this._mask;
    }

    public final JsonGenerator.Feature mappedFeature() {
        return this._mappedFeature;
    }
}
