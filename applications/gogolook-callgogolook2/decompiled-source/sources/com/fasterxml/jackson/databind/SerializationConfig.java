package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonAutoDetect;
import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.PrettyPrinter;
import com.fasterxml.jackson.core.util.DefaultPrettyPrinter;
import com.fasterxml.jackson.core.util.Instantiatable;
import com.fasterxml.jackson.databind.cfg.BaseSettings;
import com.fasterxml.jackson.databind.cfg.MapperConfig;
import com.fasterxml.jackson.databind.cfg.MapperConfigBase;
import com.fasterxml.jackson.databind.introspect.SimpleMixInResolver;
import com.fasterxml.jackson.databind.introspect.VisibilityChecker;
import com.fasterxml.jackson.databind.jsontype.SubtypeResolver;
import com.fasterxml.jackson.databind.ser.FilterProvider;
import com.fasterxml.jackson.databind.util.RootNameLookup;
import java.io.Serializable;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/SerializationConfig.class */
public final class SerializationConfig extends MapperConfigBase<SerializationFeature, SerializationConfig> implements Serializable {
    public final PrettyPrinter _defaultPrettyPrinter;
    public final FilterProvider _filterProvider;
    public final int _formatWriteFeatures;
    public final int _formatWriteFeaturesToChange;
    public final int _generatorFeatures;
    public final int _generatorFeaturesToChange;
    public final int _serFeatures;
    public final JsonInclude.Value _serializationInclusion;
    public static final PrettyPrinter DEFAULT_PRETTY_PRINTER = new DefaultPrettyPrinter();
    public static final JsonInclude.Value DEFAULT_INCLUSION = JsonInclude.Value.empty();

    public SerializationConfig(SerializationConfig serializationConfig, int i, int i2, int i3, int i4, int i5, int i6) {
        super(serializationConfig, i);
        this._serFeatures = i2;
        this._serializationInclusion = serializationConfig._serializationInclusion;
        this._filterProvider = serializationConfig._filterProvider;
        this._defaultPrettyPrinter = serializationConfig._defaultPrettyPrinter;
        this._generatorFeatures = i3;
        this._generatorFeaturesToChange = i4;
        this._formatWriteFeatures = i5;
        this._formatWriteFeaturesToChange = i6;
    }

    public SerializationConfig(BaseSettings baseSettings, SubtypeResolver subtypeResolver, SimpleMixInResolver simpleMixInResolver, RootNameLookup rootNameLookup) {
        super(baseSettings, subtypeResolver, simpleMixInResolver, rootNameLookup);
        this._serFeatures = MapperConfig.collectFeatureDefaults(SerializationFeature.class);
        this._filterProvider = null;
        this._defaultPrettyPrinter = DEFAULT_PRETTY_PRINTER;
        this._generatorFeatures = 0;
        this._generatorFeaturesToChange = 0;
        this._formatWriteFeatures = 0;
        this._formatWriteFeaturesToChange = 0;
        this._serializationInclusion = DEFAULT_INCLUSION;
    }

    public PrettyPrinter constructDefaultPrettyPrinter() {
        PrettyPrinter prettyPrinter = this._defaultPrettyPrinter;
        PrettyPrinter prettyPrinter2 = prettyPrinter;
        if (prettyPrinter instanceof Instantiatable) {
            prettyPrinter2 = (PrettyPrinter) ((Instantiatable) prettyPrinter).createInstance();
        }
        return prettyPrinter2;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public AnnotationIntrospector getAnnotationIntrospector() {
        return isEnabled(MapperFeature.USE_ANNOTATIONS) ? super.getAnnotationIntrospector() : AnnotationIntrospector.nopInstance();
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonFormat.Value getDefaultPropertyFormat(Class<?> cls) {
        return MapperConfig.EMPTY_FORMAT;
    }

    public JsonInclude.Value getDefaultPropertyInclusion() {
        return this._serializationInclusion;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public JsonInclude.Value getDefaultPropertyInclusion(Class<?> cls) {
        return this._serializationInclusion;
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public VisibilityChecker<?> getDefaultVisibilityChecker() {
        VisibilityChecker<?> defaultVisibilityChecker = super.getDefaultVisibilityChecker();
        VisibilityChecker<?> visibilityChecker = defaultVisibilityChecker;
        if (!isEnabled(MapperFeature.AUTO_DETECT_GETTERS)) {
            visibilityChecker = defaultVisibilityChecker.withGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        VisibilityChecker<?> visibilityChecker2 = visibilityChecker;
        if (!isEnabled(MapperFeature.AUTO_DETECT_IS_GETTERS)) {
            visibilityChecker2 = visibilityChecker.withIsGetterVisibility(JsonAutoDetect.Visibility.NONE);
        }
        VisibilityChecker<?> visibilityChecker3 = visibilityChecker2;
        if (!isEnabled(MapperFeature.AUTO_DETECT_FIELDS)) {
            visibilityChecker3 = visibilityChecker2.withFieldVisibility(JsonAutoDetect.Visibility.NONE);
        }
        return visibilityChecker3;
    }

    public FilterProvider getFilterProvider() {
        return this._filterProvider;
    }

    public void initialize(JsonGenerator jsonGenerator) {
        PrettyPrinter constructDefaultPrettyPrinter;
        if (SerializationFeature.INDENT_OUTPUT.enabledIn(this._serFeatures) && jsonGenerator.getPrettyPrinter() == null && (constructDefaultPrettyPrinter = constructDefaultPrettyPrinter()) != null) {
            jsonGenerator.setPrettyPrinter(constructDefaultPrettyPrinter);
        }
        boolean enabledIn = SerializationFeature.WRITE_BIGDECIMAL_AS_PLAIN.enabledIn(this._serFeatures);
        int i = this._generatorFeaturesToChange;
        if (i != 0 || enabledIn) {
            int i2 = this._generatorFeatures;
            int i3 = i;
            int i4 = i2;
            if (enabledIn) {
                int mask = JsonGenerator.Feature.WRITE_BIGDECIMAL_AS_PLAIN.getMask();
                i4 = i2 | mask;
                i3 = i | mask;
            }
            jsonGenerator.overrideStdFeatures(i4, i3);
        }
        int i5 = this._formatWriteFeaturesToChange;
        if (i5 != 0) {
            jsonGenerator.overrideFormatFeatures(this._formatWriteFeatures, i5);
        }
    }

    public <T extends BeanDescription> T introspect(JavaType javaType) {
        return (T) getClassIntrospector().forSerialization(this, javaType, this);
    }

    @Override // com.fasterxml.jackson.databind.cfg.MapperConfig
    public BeanDescription introspectClassAnnotations(JavaType javaType) {
        return getClassIntrospector().forClassAnnotations(this, javaType, this);
    }

    public final boolean isEnabled(SerializationFeature serializationFeature) {
        return (serializationFeature.getMask() & this._serFeatures) != 0;
    }

    public String toString() {
        return "[SerializationConfig: flags=0x" + Integer.toHexString(this._serFeatures) + "]";
    }

    public SerializationConfig with(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i |= mapperFeature.getMask();
        }
        return i == this._mapperFeatures ? this : new SerializationConfig(this, i, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }

    public SerializationConfig without(MapperFeature... mapperFeatureArr) {
        int i = this._mapperFeatures;
        for (MapperFeature mapperFeature : mapperFeatureArr) {
            i &= mapperFeature.getMask() ^ (-1);
        }
        return i == this._mapperFeatures ? this : new SerializationConfig(this, i, this._serFeatures, this._generatorFeatures, this._generatorFeaturesToChange, this._formatWriteFeatures, this._formatWriteFeaturesToChange);
    }
}
