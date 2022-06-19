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
        JsonWriteFeature[] values = values();
        int length = values.length;
        int i = 0;
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i < length) {
                JsonWriteFeature jsonWriteFeature = values[i];
                int i4 = i3;
                if (jsonWriteFeature.enabledByDefault()) {
                    i4 = i3 | jsonWriteFeature.getMask();
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
