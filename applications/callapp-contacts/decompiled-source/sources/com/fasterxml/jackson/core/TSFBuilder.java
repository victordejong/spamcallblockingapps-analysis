package com.fasterxml.jackson.core;

import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.TSFBuilder;
import com.fasterxml.jackson.core.io.InputDecorator;
import com.fasterxml.jackson.core.io.OutputDecorator;
import com.fasterxml.jackson.core.json.JsonReadFeature;
import com.fasterxml.jackson.core.json.JsonWriteFeature;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/core/TSFBuilder.class */
public abstract class TSFBuilder<F extends JsonFactory, B extends TSFBuilder<F, B>> {
    protected int _factoryFeatures;
    protected InputDecorator _inputDecorator;
    protected OutputDecorator _outputDecorator;
    protected int _streamReadFeatures;
    protected int _streamWriteFeatures;
    protected static final int DEFAULT_FACTORY_FEATURE_FLAGS = JsonFactory.Feature.collectDefaults();
    protected static final int DEFAULT_PARSER_FEATURE_FLAGS = JsonParser.Feature.collectDefaults();
    protected static final int DEFAULT_GENERATOR_FEATURE_FLAGS = JsonGenerator.Feature.collectDefaults();

    /* JADX INFO: Access modifiers changed from: protected */
    public TSFBuilder() {
        this._factoryFeatures = DEFAULT_FACTORY_FEATURE_FLAGS;
        this._streamReadFeatures = DEFAULT_PARSER_FEATURE_FLAGS;
        this._streamWriteFeatures = DEFAULT_GENERATOR_FEATURE_FLAGS;
        this._inputDecorator = null;
        this._outputDecorator = null;
    }

    protected TSFBuilder(int i, int i2, int i3) {
        this._factoryFeatures = i;
        this._streamReadFeatures = i2;
        this._streamWriteFeatures = i3;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public TSFBuilder(JsonFactory jsonFactory) {
        this(jsonFactory._factoryFeatures, jsonFactory._parserFeatures, jsonFactory._generatorFeatures);
    }

    private B _failNonJSON(Object obj) {
        throw new IllegalArgumentException("Feature " + obj.getClass().getName() + "#" + obj.toString() + " not supported for non-JSON backend");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _legacyDisable(JsonGenerator.Feature feature) {
        if (feature != null) {
            this._streamWriteFeatures = (feature.getMask() ^ (-1)) & this._streamWriteFeatures;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _legacyDisable(JsonParser.Feature feature) {
        if (feature != null) {
            this._streamReadFeatures = (feature.getMask() ^ (-1)) & this._streamReadFeatures;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _legacyEnable(JsonGenerator.Feature feature) {
        if (feature != null) {
            this._streamWriteFeatures = feature.getMask() | this._streamWriteFeatures;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _legacyEnable(JsonParser.Feature feature) {
        if (feature != null) {
            this._streamReadFeatures = feature.getMask() | this._streamReadFeatures;
        }
    }

    protected final B _this() {
        return this;
    }

    public abstract F build();

    public B configure(JsonFactory.Feature feature, boolean z) {
        return z ? enable(feature) : disable(feature);
    }

    public B configure(StreamReadFeature streamReadFeature, boolean z) {
        return z ? enable(streamReadFeature) : disable(streamReadFeature);
    }

    public B configure(StreamWriteFeature streamWriteFeature, boolean z) {
        return z ? enable(streamWriteFeature) : disable(streamWriteFeature);
    }

    public B configure(JsonReadFeature jsonReadFeature, boolean z) {
        return _failNonJSON(jsonReadFeature);
    }

    public B configure(JsonWriteFeature jsonWriteFeature, boolean z) {
        return _failNonJSON(jsonWriteFeature);
    }

    public B disable(JsonFactory.Feature feature) {
        this._factoryFeatures = (feature.getMask() ^ (-1)) & this._factoryFeatures;
        return _this();
    }

    public B disable(StreamReadFeature streamReadFeature) {
        this._streamReadFeatures = (streamReadFeature.mappedFeature().getMask() ^ (-1)) & this._streamReadFeatures;
        return _this();
    }

    public B disable(StreamReadFeature streamReadFeature, StreamReadFeature... streamReadFeatureArr) {
        this._streamReadFeatures = (streamReadFeature.mappedFeature().getMask() ^ (-1)) & this._streamReadFeatures;
        for (StreamReadFeature streamReadFeature2 : streamReadFeatureArr) {
            this._streamReadFeatures = (streamReadFeature2.mappedFeature().getMask() ^ (-1)) & this._streamReadFeatures;
        }
        return _this();
    }

    public B disable(StreamWriteFeature streamWriteFeature) {
        this._streamWriteFeatures = (streamWriteFeature.mappedFeature().getMask() ^ (-1)) & this._streamWriteFeatures;
        return _this();
    }

    public B disable(StreamWriteFeature streamWriteFeature, StreamWriteFeature... streamWriteFeatureArr) {
        this._streamWriteFeatures = (streamWriteFeature.mappedFeature().getMask() ^ (-1)) & this._streamWriteFeatures;
        for (StreamWriteFeature streamWriteFeature2 : streamWriteFeatureArr) {
            this._streamWriteFeatures = (streamWriteFeature2.mappedFeature().getMask() ^ (-1)) & this._streamWriteFeatures;
        }
        return _this();
    }

    public B disable(JsonReadFeature jsonReadFeature) {
        return _failNonJSON(jsonReadFeature);
    }

    public B disable(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        return _failNonJSON(jsonReadFeature);
    }

    public B disable(JsonWriteFeature jsonWriteFeature) {
        return _failNonJSON(jsonWriteFeature);
    }

    public B disable(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        return _failNonJSON(jsonWriteFeature);
    }

    public B enable(JsonFactory.Feature feature) {
        this._factoryFeatures = feature.getMask() | this._factoryFeatures;
        return _this();
    }

    public B enable(StreamReadFeature streamReadFeature) {
        this._streamReadFeatures = streamReadFeature.mappedFeature().getMask() | this._streamReadFeatures;
        return _this();
    }

    public B enable(StreamReadFeature streamReadFeature, StreamReadFeature... streamReadFeatureArr) {
        this._streamReadFeatures = streamReadFeature.mappedFeature().getMask() | this._streamReadFeatures;
        for (StreamReadFeature streamReadFeature2 : streamReadFeatureArr) {
            this._streamReadFeatures = streamReadFeature2.mappedFeature().getMask() | this._streamReadFeatures;
        }
        return _this();
    }

    public B enable(StreamWriteFeature streamWriteFeature) {
        this._streamWriteFeatures = streamWriteFeature.mappedFeature().getMask() | this._streamWriteFeatures;
        return _this();
    }

    public B enable(StreamWriteFeature streamWriteFeature, StreamWriteFeature... streamWriteFeatureArr) {
        this._streamWriteFeatures = streamWriteFeature.mappedFeature().getMask() | this._streamWriteFeatures;
        for (StreamWriteFeature streamWriteFeature2 : streamWriteFeatureArr) {
            this._streamWriteFeatures = streamWriteFeature2.mappedFeature().getMask() | this._streamWriteFeatures;
        }
        return _this();
    }

    public B enable(JsonReadFeature jsonReadFeature) {
        return _failNonJSON(jsonReadFeature);
    }

    public B enable(JsonReadFeature jsonReadFeature, JsonReadFeature... jsonReadFeatureArr) {
        return _failNonJSON(jsonReadFeature);
    }

    public B enable(JsonWriteFeature jsonWriteFeature) {
        return _failNonJSON(jsonWriteFeature);
    }

    public B enable(JsonWriteFeature jsonWriteFeature, JsonWriteFeature... jsonWriteFeatureArr) {
        return _failNonJSON(jsonWriteFeature);
    }

    public int factoryFeaturesMask() {
        return this._factoryFeatures;
    }

    public B inputDecorator(InputDecorator inputDecorator) {
        this._inputDecorator = inputDecorator;
        return _this();
    }

    public InputDecorator inputDecorator() {
        return this._inputDecorator;
    }

    public B outputDecorator(OutputDecorator outputDecorator) {
        this._outputDecorator = outputDecorator;
        return _this();
    }

    public OutputDecorator outputDecorator() {
        return this._outputDecorator;
    }

    public int streamReadFeatures() {
        return this._streamReadFeatures;
    }

    public int streamWriteFeatures() {
        return this._streamWriteFeatures;
    }
}
