package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.util.JacksonFeature;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/StreamReadFeature.class */
public enum StreamReadFeature implements JacksonFeature {
    AUTO_CLOSE_SOURCE(JsonParser.Feature.AUTO_CLOSE_SOURCE),
    STRICT_DUPLICATE_DETECTION(JsonParser.Feature.STRICT_DUPLICATE_DETECTION),
    IGNORE_UNDEFINED(JsonParser.Feature.IGNORE_UNDEFINED),
    INCLUDE_SOURCE_IN_LOCATION(JsonParser.Feature.INCLUDE_SOURCE_IN_LOCATION);
    
    private final boolean _defaultState;
    private final JsonParser.Feature _mappedFeature;
    private final int _mask;

    StreamReadFeature(JsonParser.Feature feature) {
        this._mappedFeature = feature;
        this._mask = feature.getMask();
        this._defaultState = feature.enabledByDefault();
    }

    public static int collectDefaults() {
        StreamReadFeature[] values = values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                StreamReadFeature streamReadFeature = values[i];
                int i4 = i3;
                if (streamReadFeature.enabledByDefault()) {
                    i4 = i3 | streamReadFeature.getMask();
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

    public final JsonParser.Feature mappedFeature() {
        return this._mappedFeature;
    }
}
