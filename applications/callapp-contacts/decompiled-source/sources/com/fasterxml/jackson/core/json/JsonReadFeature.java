package com.fasterxml.jackson.core.json;

import com.fasterxml.jackson.core.FormatFeature;
import com.fasterxml.jackson.core.JsonParser;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/json/JsonReadFeature.class */
public enum JsonReadFeature implements FormatFeature {
    ALLOW_JAVA_COMMENTS(false, JsonParser.Feature.ALLOW_COMMENTS),
    ALLOW_YAML_COMMENTS(false, JsonParser.Feature.ALLOW_YAML_COMMENTS),
    ALLOW_SINGLE_QUOTES(false, JsonParser.Feature.ALLOW_SINGLE_QUOTES),
    ALLOW_UNQUOTED_FIELD_NAMES(false, JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES),
    ALLOW_UNESCAPED_CONTROL_CHARS(false, JsonParser.Feature.ALLOW_UNQUOTED_CONTROL_CHARS),
    ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER(false, JsonParser.Feature.ALLOW_BACKSLASH_ESCAPING_ANY_CHARACTER),
    ALLOW_LEADING_ZEROS_FOR_NUMBERS(false, JsonParser.Feature.ALLOW_NUMERIC_LEADING_ZEROS),
    ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS(false, JsonParser.Feature.ALLOW_LEADING_DECIMAL_POINT_FOR_NUMBERS),
    ALLOW_NON_NUMERIC_NUMBERS(false, JsonParser.Feature.ALLOW_NON_NUMERIC_NUMBERS),
    ALLOW_MISSING_VALUES(false, JsonParser.Feature.ALLOW_MISSING_VALUES),
    ALLOW_TRAILING_COMMA(false, JsonParser.Feature.ALLOW_TRAILING_COMMA);
    
    private final boolean _defaultState;
    private final JsonParser.Feature _mappedFeature;
    private final int _mask = 1 << ordinal();

    JsonReadFeature(boolean z, JsonParser.Feature feature) {
        this._defaultState = z;
        this._mappedFeature = feature;
    }

    public static int collectDefaults() {
        JsonReadFeature[] values;
        int i = 0;
        for (JsonReadFeature jsonReadFeature : values()) {
            i = i;
            if (jsonReadFeature.enabledByDefault()) {
                i |= jsonReadFeature.getMask();
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

    public final JsonParser.Feature mappedFeature() {
        return this._mappedFeature;
    }
}
