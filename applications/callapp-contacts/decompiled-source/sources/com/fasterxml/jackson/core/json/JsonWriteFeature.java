package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.JsonGenerator;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/JsonWriteFeature.class */
public enum JsonWriteFeature implements FormatFeature {
    QUOTE_FIELD_NAMES(true, JsonGenerator.Feature.QUOTE_FIELD_NAMES),
    WRITE_NAN_AS_STRINGS(true, JsonGenerator.Feature.QUOTE_NON_NUMERIC_NUMBERS),
    WRITE_NUMBERS_AS_STRINGS(false, JsonGenerator.Feature.WRITE_NUMBERS_AS_STRINGS),
    ESCAPE_NON_ASCII(false, JsonGenerator.Feature.ESCAPE_NON_ASCII);
    
    private final boolean _defaultState;
    private final JsonGenerator.Feature _mappedFeature;
    private final int _mask = 1 << ordinal();

    JsonWriteFeature(boolean z, JsonGenerator.Feature feature) {
        this._defaultState = z;
        this._mappedFeature = feature;
    }

    public static int collectDefaults() {
        JsonWriteFeature[] values;
        int i = 0;
        for (JsonWriteFeature jsonWriteFeature : values()) {
            i = i;
            if (jsonWriteFeature.enabledByDefault()) {
                i |= jsonWriteFeature.getMask();
            }
        }
        return i;
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
