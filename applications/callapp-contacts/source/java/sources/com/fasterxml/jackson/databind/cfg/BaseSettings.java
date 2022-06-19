package com.fasterxml.jackson.databind.cfg;

import com.fasterxml.jackson.core.Base64Variant;
import com.fasterxml.jackson.databind.AnnotationIntrospector;
import com.fasterxml.jackson.databind.PropertyNamingStrategy;
import com.fasterxml.jackson.databind.introspect.AccessorNamingStrategy;
import com.fasterxml.jackson.databind.introspect.ClassIntrospector;
import com.fasterxml.jackson.databind.introspect.DefaultAccessorNamingStrategy;
import com.fasterxml.jackson.databind.jsontype.PolymorphicTypeValidator;
import com.fasterxml.jackson.databind.jsontype.TypeResolverBuilder;
import com.fasterxml.jackson.databind.type.TypeFactory;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.Serializable;
import java.text.DateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/cfg/BaseSettings.class */
public final class BaseSettings implements Serializable {
    private static final TimeZone DEFAULT_TIMEZONE = TimeZone.getTimeZone("UTC");
    protected final AccessorNamingStrategy.Provider _accessorNaming;
    protected final AnnotationIntrospector _annotationIntrospector;
    protected final ClassIntrospector _classIntrospector;
    protected final DateFormat _dateFormat;
    protected final Base64Variant _defaultBase64;
    protected final HandlerInstantiator _handlerInstantiator;
    protected final Locale _locale;
    protected final PropertyNamingStrategy _propertyNamingStrategy;
    protected final TimeZone _timeZone;
    protected final TypeFactory _typeFactory;
    protected final TypeResolverBuilder<?> _typeResolverBuilder;
    protected final PolymorphicTypeValidator _typeValidator;

    @Deprecated
    public BaseSettings(ClassIntrospector classIntrospector, AnnotationIntrospector annotationIntrospector, PropertyNamingStrategy propertyNamingStrategy, TypeFactory typeFactory, TypeResolverBuilder<?> typeResolverBuilder, DateFormat dateFormat, HandlerInstantiator handlerInstantiator, Locale locale, TimeZone timeZone, Base64Variant base64Variant, PolymorphicTypeValidator polymorphicTypeValidator) {
        this(classIntrospector, annotationIntrospector, propertyNamingStrategy, typeFactory, typeResolverBuilder, dateFormat, handlerInstantiator, locale, timeZone, base64Variant, polymorphicTypeValidator, new DefaultAccessorNamingStrategy.Provider());
    }

    public BaseSettings(ClassIntrospector classIntrospector, AnnotationIntrospector annotationIntrospector, PropertyNamingStrategy propertyNamingStrategy, TypeFactory typeFactory, TypeResolverBuilder<?> typeResolverBuilder, DateFormat dateFormat, HandlerInstantiator handlerInstantiator, Locale locale, TimeZone timeZone, Base64Variant base64Variant, PolymorphicTypeValidator polymorphicTypeValidator, AccessorNamingStrategy.Provider provider) {
        this._classIntrospector = classIntrospector;
        this._annotationIntrospector = annotationIntrospector;
        this._propertyNamingStrategy = propertyNamingStrategy;
        this._typeFactory = typeFactory;
        this._typeResolverBuilder = typeResolverBuilder;
        this._dateFormat = dateFormat;
        this._handlerInstantiator = handlerInstantiator;
        this._locale = locale;
        this._timeZone = timeZone;
        this._defaultBase64 = base64Variant;
        this._typeValidator = polymorphicTypeValidator;
        this._accessorNaming = provider;
    }

    private DateFormat _force(DateFormat dateFormat, TimeZone timeZone) {
        if (dateFormat instanceof StdDateFormat) {
            return ((StdDateFormat) dateFormat).withTimeZone(timeZone);
        }
        DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
        dateFormat2.setTimeZone(timeZone);
        return dateFormat2;
    }

    public final BaseSettings copy() {
        return new BaseSettings(this._classIntrospector.copy(), this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final AccessorNamingStrategy.Provider getAccessorNaming() {
        return this._accessorNaming;
    }

    public final AnnotationIntrospector getAnnotationIntrospector() {
        return this._annotationIntrospector;
    }

    public final Base64Variant getBase64Variant() {
        return this._defaultBase64;
    }

    public final ClassIntrospector getClassIntrospector() {
        return this._classIntrospector;
    }

    public final DateFormat getDateFormat() {
        return this._dateFormat;
    }

    public final HandlerInstantiator getHandlerInstantiator() {
        return this._handlerInstantiator;
    }

    public final Locale getLocale() {
        return this._locale;
    }

    public final PolymorphicTypeValidator getPolymorphicTypeValidator() {
        return this._typeValidator;
    }

    public final PropertyNamingStrategy getPropertyNamingStrategy() {
        return this._propertyNamingStrategy;
    }

    public final TimeZone getTimeZone() {
        TimeZone timeZone = this._timeZone;
        TimeZone timeZone2 = timeZone;
        if (timeZone == null) {
            timeZone2 = DEFAULT_TIMEZONE;
        }
        return timeZone2;
    }

    public final TypeFactory getTypeFactory() {
        return this._typeFactory;
    }

    public final TypeResolverBuilder<?> getTypeResolverBuilder() {
        return this._typeResolverBuilder;
    }

    public final boolean hasExplicitTimeZone() {
        return this._timeZone != null;
    }

    public final BaseSettings with(Base64Variant base64Variant) {
        return base64Variant == this._defaultBase64 ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, base64Variant, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings with(PolymorphicTypeValidator polymorphicTypeValidator) {
        return polymorphicTypeValidator == this._typeValidator ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, polymorphicTypeValidator, this._accessorNaming);
    }

    public final BaseSettings with(Locale locale) {
        return this._locale == locale ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings with(TimeZone timeZone) {
        if (timeZone == this._timeZone) {
            return this;
        }
        return new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, _force(this._dateFormat, timeZone == null ? DEFAULT_TIMEZONE : timeZone), this._handlerInstantiator, this._locale, timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withAccessorNaming(AccessorNamingStrategy.Provider provider) {
        return this._accessorNaming == provider ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, provider);
    }

    public final BaseSettings withAnnotationIntrospector(AnnotationIntrospector annotationIntrospector) {
        return this._annotationIntrospector == annotationIntrospector ? this : new BaseSettings(this._classIntrospector, annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withClassIntrospector(ClassIntrospector classIntrospector) {
        return this._classIntrospector == classIntrospector ? this : new BaseSettings(classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withDateFormat(DateFormat dateFormat) {
        if (this._dateFormat == dateFormat) {
            return this;
        }
        DateFormat dateFormat2 = dateFormat;
        if (dateFormat != null) {
            dateFormat2 = dateFormat;
            if (hasExplicitTimeZone()) {
                dateFormat2 = _force(dateFormat, this._timeZone);
            }
        }
        return new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, dateFormat2, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withHandlerInstantiator(HandlerInstantiator handlerInstantiator) {
        return this._handlerInstantiator == handlerInstantiator ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withPropertyNamingStrategy(PropertyNamingStrategy propertyNamingStrategy) {
        return this._propertyNamingStrategy == propertyNamingStrategy ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, propertyNamingStrategy, this._typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withTypeFactory(TypeFactory typeFactory) {
        return this._typeFactory == typeFactory ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, typeFactory, this._typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }

    public final BaseSettings withTypeResolverBuilder(TypeResolverBuilder<?> typeResolverBuilder) {
        return this._typeResolverBuilder == typeResolverBuilder ? this : new BaseSettings(this._classIntrospector, this._annotationIntrospector, this._propertyNamingStrategy, this._typeFactory, typeResolverBuilder, this._dateFormat, this._handlerInstantiator, this._locale, this._timeZone, this._defaultBase64, this._typeValidator, this._accessorNaming);
    }
}
