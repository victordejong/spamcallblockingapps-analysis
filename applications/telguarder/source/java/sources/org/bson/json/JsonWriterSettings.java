package org.bson.json;

import org.bson.BsonBinary;
import org.bson.BsonMaxKey;
import org.bson.BsonMinKey;
import org.bson.BsonNull;
import org.bson.BsonRegularExpression;
import org.bson.BsonTimestamp;
import org.bson.BsonUndefined;
import org.bson.BsonWriterSettings;
import org.bson.assertions.Assertions;
import org.bson.types.Decimal128;
import org.bson.types.ObjectId;
/* loaded from: classes3-dex2jar.jar:org/bson/json/JsonWriterSettings.class */
public class JsonWriterSettings extends BsonWriterSettings {
    private final Converter<BsonBinary> binaryConverter;
    private final Converter<Boolean> booleanConverter;
    private final Converter<Long> dateTimeConverter;
    private final Converter<Decimal128> decimal128Converter;
    private final Converter<Double> doubleConverter;
    private final boolean indent;
    private final String indentCharacters;
    private final Converter<Integer> int32Converter;
    private final Converter<Long> int64Converter;
    private final Converter<String> javaScriptConverter;
    private final Converter<BsonMaxKey> maxKeyConverter;
    private final int maxLength;
    private final Converter<BsonMinKey> minKeyConverter;
    private final String newLineCharacters;
    private final Converter<BsonNull> nullConverter;
    private final Converter<ObjectId> objectIdConverter;
    private final JsonMode outputMode;
    private final Converter<BsonRegularExpression> regularExpressionConverter;
    private final Converter<String> stringConverter;
    private final Converter<String> symbolConverter;
    private final Converter<BsonTimestamp> timestampConverter;
    private final Converter<BsonUndefined> undefinedConverter;
    private static final JsonNullConverter JSON_NULL_CONVERTER = new JsonNullConverter();
    private static final JsonStringConverter JSON_STRING_CONVERTER = new JsonStringConverter();
    private static final JsonBooleanConverter JSON_BOOLEAN_CONVERTER = new JsonBooleanConverter();
    private static final JsonDoubleConverter JSON_DOUBLE_CONVERTER = new JsonDoubleConverter();
    private static final ExtendedJsonDoubleConverter EXTENDED_JSON_DOUBLE_CONVERTER = new ExtendedJsonDoubleConverter();
    private static final RelaxedExtendedJsonDoubleConverter RELAXED_EXTENDED_JSON_DOUBLE_CONVERTER = new RelaxedExtendedJsonDoubleConverter();
    private static final JsonInt32Converter JSON_INT_32_CONVERTER = new JsonInt32Converter();
    private static final ExtendedJsonInt32Converter EXTENDED_JSON_INT_32_CONVERTER = new ExtendedJsonInt32Converter();
    private static final JsonSymbolConverter JSON_SYMBOL_CONVERTER = new JsonSymbolConverter();
    private static final ExtendedJsonMinKeyConverter EXTENDED_JSON_MIN_KEY_CONVERTER = new ExtendedJsonMinKeyConverter();
    private static final ShellMinKeyConverter SHELL_MIN_KEY_CONVERTER = new ShellMinKeyConverter();
    private static final ExtendedJsonMaxKeyConverter EXTENDED_JSON_MAX_KEY_CONVERTER = new ExtendedJsonMaxKeyConverter();
    private static final ShellMaxKeyConverter SHELL_MAX_KEY_CONVERTER = new ShellMaxKeyConverter();
    private static final ExtendedJsonUndefinedConverter EXTENDED_JSON_UNDEFINED_CONVERTER = new ExtendedJsonUndefinedConverter();
    private static final ShellUndefinedConverter SHELL_UNDEFINED_CONVERTER = new ShellUndefinedConverter();
    private static final LegacyExtendedJsonDateTimeConverter LEGACY_EXTENDED_JSON_DATE_TIME_CONVERTER = new LegacyExtendedJsonDateTimeConverter();
    private static final ExtendedJsonDateTimeConverter EXTENDED_JSON_DATE_TIME_CONVERTER = new ExtendedJsonDateTimeConverter();
    private static final RelaxedExtendedJsonDateTimeConverter RELAXED_EXTENDED_JSON_DATE_TIME_CONVERTER = new RelaxedExtendedJsonDateTimeConverter();
    private static final ShellDateTimeConverter SHELL_DATE_TIME_CONVERTER = new ShellDateTimeConverter();
    private static final ExtendedJsonBinaryConverter EXTENDED_JSON_BINARY_CONVERTER = new ExtendedJsonBinaryConverter();
    private static final LegacyExtendedJsonBinaryConverter LEGACY_EXTENDED_JSON_BINARY_CONVERTER = new LegacyExtendedJsonBinaryConverter();
    private static final ShellBinaryConverter SHELL_BINARY_CONVERTER = new ShellBinaryConverter();
    private static final ExtendedJsonInt64Converter EXTENDED_JSON_INT_64_CONVERTER = new ExtendedJsonInt64Converter();
    private static final RelaxedExtendedJsonInt64Converter RELAXED_JSON_INT_64_CONVERTER = new RelaxedExtendedJsonInt64Converter();
    private static final ShellInt64Converter SHELL_INT_64_CONVERTER = new ShellInt64Converter();
    private static final ExtendedJsonDecimal128Converter EXTENDED_JSON_DECIMAL_128_CONVERTER = new ExtendedJsonDecimal128Converter();
    private static final ShellDecimal128Converter SHELL_DECIMAL_128_CONVERTER = new ShellDecimal128Converter();
    private static final ExtendedJsonObjectIdConverter EXTENDED_JSON_OBJECT_ID_CONVERTER = new ExtendedJsonObjectIdConverter();
    private static final ShellObjectIdConverter SHELL_OBJECT_ID_CONVERTER = new ShellObjectIdConverter();
    private static final ExtendedJsonTimestampConverter EXTENDED_JSON_TIMESTAMP_CONVERTER = new ExtendedJsonTimestampConverter();
    private static final ShellTimestampConverter SHELL_TIMESTAMP_CONVERTER = new ShellTimestampConverter();
    private static final ExtendedJsonRegularExpressionConverter EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER = new ExtendedJsonRegularExpressionConverter();
    private static final LegacyExtendedJsonRegularExpressionConverter LEGACY_EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER = new LegacyExtendedJsonRegularExpressionConverter();
    private static final ShellRegularExpressionConverter SHELL_REGULAR_EXPRESSION_CONVERTER = new ShellRegularExpressionConverter();

    /* loaded from: classes3-dex2jar.jar:org/bson/json/JsonWriterSettings$Builder.class */
    public static final class Builder {
        private Converter<BsonBinary> binaryConverter;
        private Converter<Boolean> booleanConverter;
        private Converter<Long> dateTimeConverter;
        private Converter<Decimal128> decimal128Converter;
        private Converter<Double> doubleConverter;
        private boolean indent;
        private String indentCharacters;
        private Converter<Integer> int32Converter;
        private Converter<Long> int64Converter;
        private Converter<String> javaScriptConverter;
        private Converter<BsonMaxKey> maxKeyConverter;
        private int maxLength;
        private Converter<BsonMinKey> minKeyConverter;
        private String newLineCharacters;
        private Converter<BsonNull> nullConverter;
        private Converter<ObjectId> objectIdConverter;
        private JsonMode outputMode;
        private Converter<BsonRegularExpression> regularExpressionConverter;
        private Converter<String> stringConverter;
        private Converter<String> symbolConverter;
        private Converter<BsonTimestamp> timestampConverter;
        private Converter<BsonUndefined> undefinedConverter;

        private Builder() {
            this.newLineCharacters = System.getProperty("line.separator");
            this.indentCharacters = "  ";
            this.outputMode = JsonMode.RELAXED;
        }

        public Builder binaryConverter(Converter<BsonBinary> converter) {
            this.binaryConverter = converter;
            return this;
        }

        public Builder booleanConverter(Converter<Boolean> converter) {
            this.booleanConverter = converter;
            return this;
        }

        public JsonWriterSettings build() {
            return new JsonWriterSettings(this);
        }

        public Builder dateTimeConverter(Converter<Long> converter) {
            this.dateTimeConverter = converter;
            return this;
        }

        public Builder decimal128Converter(Converter<Decimal128> converter) {
            this.decimal128Converter = converter;
            return this;
        }

        public Builder doubleConverter(Converter<Double> converter) {
            this.doubleConverter = converter;
            return this;
        }

        public Builder indent(boolean z) {
            this.indent = z;
            return this;
        }

        public Builder indentCharacters(String str) {
            Assertions.notNull("indentCharacters", str);
            this.indentCharacters = str;
            return this;
        }

        public Builder int32Converter(Converter<Integer> converter) {
            this.int32Converter = converter;
            return this;
        }

        public Builder int64Converter(Converter<Long> converter) {
            this.int64Converter = converter;
            return this;
        }

        public Builder javaScriptConverter(Converter<String> converter) {
            this.javaScriptConverter = converter;
            return this;
        }

        public Builder maxKeyConverter(Converter<BsonMaxKey> converter) {
            this.maxKeyConverter = converter;
            return this;
        }

        public Builder maxLength(int i) {
            Assertions.isTrueArgument("maxLength >= 0", i >= 0);
            this.maxLength = i;
            return this;
        }

        public Builder minKeyConverter(Converter<BsonMinKey> converter) {
            this.minKeyConverter = converter;
            return this;
        }

        public Builder newLineCharacters(String str) {
            Assertions.notNull("newLineCharacters", str);
            this.newLineCharacters = str;
            return this;
        }

        public Builder nullConverter(Converter<BsonNull> converter) {
            this.nullConverter = converter;
            return this;
        }

        public Builder objectIdConverter(Converter<ObjectId> converter) {
            this.objectIdConverter = converter;
            return this;
        }

        public Builder outputMode(JsonMode jsonMode) {
            Assertions.notNull("outputMode", jsonMode);
            this.outputMode = jsonMode;
            return this;
        }

        public Builder regularExpressionConverter(Converter<BsonRegularExpression> converter) {
            this.regularExpressionConverter = converter;
            return this;
        }

        public Builder stringConverter(Converter<String> converter) {
            this.stringConverter = converter;
            return this;
        }

        public Builder symbolConverter(Converter<String> converter) {
            this.symbolConverter = converter;
            return this;
        }

        public Builder timestampConverter(Converter<BsonTimestamp> converter) {
            this.timestampConverter = converter;
            return this;
        }

        public Builder undefinedConverter(Converter<BsonUndefined> converter) {
            this.undefinedConverter = converter;
            return this;
        }
    }

    @Deprecated
    public JsonWriterSettings() {
        this(builder().outputMode(JsonMode.STRICT));
    }

    @Deprecated
    public JsonWriterSettings(JsonMode jsonMode) {
        this(builder().outputMode(jsonMode));
    }

    @Deprecated
    public JsonWriterSettings(JsonMode jsonMode, String str) {
        this(builder().outputMode(jsonMode).indent(true).indentCharacters(str));
    }

    @Deprecated
    public JsonWriterSettings(JsonMode jsonMode, String str, String str2) {
        this(builder().outputMode(jsonMode).indent(true).indentCharacters(str).newLineCharacters(str2));
    }

    @Deprecated
    public JsonWriterSettings(JsonMode jsonMode, boolean z) {
        this(builder().outputMode(jsonMode).indent(z));
    }

    private JsonWriterSettings(Builder builder) {
        this.indent = builder.indent;
        this.newLineCharacters = builder.newLineCharacters != null ? builder.newLineCharacters : System.getProperty("line.separator");
        this.indentCharacters = builder.indentCharacters;
        JsonMode jsonMode = builder.outputMode;
        this.outputMode = jsonMode;
        this.maxLength = builder.maxLength;
        if (builder.nullConverter != null) {
            this.nullConverter = builder.nullConverter;
        } else {
            this.nullConverter = JSON_NULL_CONVERTER;
        }
        if (builder.stringConverter != null) {
            this.stringConverter = builder.stringConverter;
        } else {
            this.stringConverter = JSON_STRING_CONVERTER;
        }
        if (builder.booleanConverter != null) {
            this.booleanConverter = builder.booleanConverter;
        } else {
            this.booleanConverter = JSON_BOOLEAN_CONVERTER;
        }
        if (builder.doubleConverter != null) {
            this.doubleConverter = builder.doubleConverter;
        } else if (jsonMode == JsonMode.EXTENDED) {
            this.doubleConverter = EXTENDED_JSON_DOUBLE_CONVERTER;
        } else if (jsonMode == JsonMode.RELAXED) {
            this.doubleConverter = RELAXED_EXTENDED_JSON_DOUBLE_CONVERTER;
        } else {
            this.doubleConverter = JSON_DOUBLE_CONVERTER;
        }
        if (builder.int32Converter != null) {
            this.int32Converter = builder.int32Converter;
        } else if (jsonMode == JsonMode.EXTENDED) {
            this.int32Converter = EXTENDED_JSON_INT_32_CONVERTER;
        } else {
            this.int32Converter = JSON_INT_32_CONVERTER;
        }
        if (builder.symbolConverter != null) {
            this.symbolConverter = builder.symbolConverter;
        } else {
            this.symbolConverter = JSON_SYMBOL_CONVERTER;
        }
        if (builder.javaScriptConverter != null) {
            this.javaScriptConverter = builder.javaScriptConverter;
        } else {
            this.javaScriptConverter = new JsonJavaScriptConverter();
        }
        if (builder.minKeyConverter != null) {
            this.minKeyConverter = builder.minKeyConverter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.minKeyConverter = EXTENDED_JSON_MIN_KEY_CONVERTER;
        } else {
            this.minKeyConverter = SHELL_MIN_KEY_CONVERTER;
        }
        if (builder.maxKeyConverter != null) {
            this.maxKeyConverter = builder.maxKeyConverter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.maxKeyConverter = EXTENDED_JSON_MAX_KEY_CONVERTER;
        } else {
            this.maxKeyConverter = SHELL_MAX_KEY_CONVERTER;
        }
        if (builder.undefinedConverter != null) {
            this.undefinedConverter = builder.undefinedConverter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.undefinedConverter = EXTENDED_JSON_UNDEFINED_CONVERTER;
        } else {
            this.undefinedConverter = SHELL_UNDEFINED_CONVERTER;
        }
        if (builder.dateTimeConverter != null) {
            this.dateTimeConverter = builder.dateTimeConverter;
        } else if (jsonMode == JsonMode.STRICT) {
            this.dateTimeConverter = LEGACY_EXTENDED_JSON_DATE_TIME_CONVERTER;
        } else if (jsonMode == JsonMode.EXTENDED) {
            this.dateTimeConverter = EXTENDED_JSON_DATE_TIME_CONVERTER;
        } else if (jsonMode == JsonMode.RELAXED) {
            this.dateTimeConverter = RELAXED_EXTENDED_JSON_DATE_TIME_CONVERTER;
        } else {
            this.dateTimeConverter = SHELL_DATE_TIME_CONVERTER;
        }
        if (builder.binaryConverter != null) {
            this.binaryConverter = builder.binaryConverter;
        } else if (jsonMode == JsonMode.STRICT) {
            this.binaryConverter = LEGACY_EXTENDED_JSON_BINARY_CONVERTER;
        } else if (jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.binaryConverter = EXTENDED_JSON_BINARY_CONVERTER;
        } else {
            this.binaryConverter = SHELL_BINARY_CONVERTER;
        }
        if (builder.int64Converter != null) {
            this.int64Converter = builder.int64Converter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED) {
            this.int64Converter = EXTENDED_JSON_INT_64_CONVERTER;
        } else if (jsonMode == JsonMode.RELAXED) {
            this.int64Converter = RELAXED_JSON_INT_64_CONVERTER;
        } else {
            this.int64Converter = SHELL_INT_64_CONVERTER;
        }
        if (builder.decimal128Converter != null) {
            this.decimal128Converter = builder.decimal128Converter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.decimal128Converter = EXTENDED_JSON_DECIMAL_128_CONVERTER;
        } else {
            this.decimal128Converter = SHELL_DECIMAL_128_CONVERTER;
        }
        if (builder.objectIdConverter != null) {
            this.objectIdConverter = builder.objectIdConverter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.objectIdConverter = EXTENDED_JSON_OBJECT_ID_CONVERTER;
        } else {
            this.objectIdConverter = SHELL_OBJECT_ID_CONVERTER;
        }
        if (builder.timestampConverter != null) {
            this.timestampConverter = builder.timestampConverter;
        } else if (jsonMode == JsonMode.STRICT || jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.timestampConverter = EXTENDED_JSON_TIMESTAMP_CONVERTER;
        } else {
            this.timestampConverter = SHELL_TIMESTAMP_CONVERTER;
        }
        if (builder.regularExpressionConverter != null) {
            this.regularExpressionConverter = builder.regularExpressionConverter;
        } else if (jsonMode == JsonMode.EXTENDED || jsonMode == JsonMode.RELAXED) {
            this.regularExpressionConverter = EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER;
        } else if (jsonMode == JsonMode.STRICT) {
            this.regularExpressionConverter = LEGACY_EXTENDED_JSON_REGULAR_EXPRESSION_CONVERTER;
        } else {
            this.regularExpressionConverter = SHELL_REGULAR_EXPRESSION_CONVERTER;
        }
    }

    @Deprecated
    public JsonWriterSettings(boolean z) {
        this(builder().indent(z));
    }

    public static Builder builder() {
        return new Builder();
    }

    public Converter<BsonBinary> getBinaryConverter() {
        return this.binaryConverter;
    }

    public Converter<Boolean> getBooleanConverter() {
        return this.booleanConverter;
    }

    public Converter<Long> getDateTimeConverter() {
        return this.dateTimeConverter;
    }

    public Converter<Decimal128> getDecimal128Converter() {
        return this.decimal128Converter;
    }

    public Converter<Double> getDoubleConverter() {
        return this.doubleConverter;
    }

    public String getIndentCharacters() {
        return this.indentCharacters;
    }

    public Converter<Integer> getInt32Converter() {
        return this.int32Converter;
    }

    public Converter<Long> getInt64Converter() {
        return this.int64Converter;
    }

    public Converter<String> getJavaScriptConverter() {
        return this.javaScriptConverter;
    }

    public Converter<BsonMaxKey> getMaxKeyConverter() {
        return this.maxKeyConverter;
    }

    public int getMaxLength() {
        return this.maxLength;
    }

    public Converter<BsonMinKey> getMinKeyConverter() {
        return this.minKeyConverter;
    }

    public String getNewLineCharacters() {
        return this.newLineCharacters;
    }

    public Converter<BsonNull> getNullConverter() {
        return this.nullConverter;
    }

    public Converter<ObjectId> getObjectIdConverter() {
        return this.objectIdConverter;
    }

    public JsonMode getOutputMode() {
        return this.outputMode;
    }

    public Converter<BsonRegularExpression> getRegularExpressionConverter() {
        return this.regularExpressionConverter;
    }

    public Converter<String> getStringConverter() {
        return this.stringConverter;
    }

    public Converter<String> getSymbolConverter() {
        return this.symbolConverter;
    }

    public Converter<BsonTimestamp> getTimestampConverter() {
        return this.timestampConverter;
    }

    public Converter<BsonUndefined> getUndefinedConverter() {
        return this.undefinedConverter;
    }

    public boolean isIndent() {
        return this.indent;
    }
}
