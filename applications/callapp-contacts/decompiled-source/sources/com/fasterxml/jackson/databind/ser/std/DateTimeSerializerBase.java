package com.fasterxml.jackson.databind.ser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.JsonSerializer;
import com.fasterxml.jackson.databind.SerializationFeature;
import com.fasterxml.jackson.databind.SerializerProvider;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitorWrapper;
import com.fasterxml.jackson.databind.jsonFormatVisitors.JsonValueFormat;
import com.fasterxml.jackson.databind.ser.ContextualSerializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.TimeZone;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/ser/std/DateTimeSerializerBase.class */
public abstract class DateTimeSerializerBase<T> extends StdScalarSerializer<T> implements ContextualSerializer {
    protected final DateFormat _customFormat;
    protected final AtomicReference<DateFormat> _reusedCustomFormat;
    protected final Boolean _useTimestamp;

    /* JADX INFO: Access modifiers changed from: protected */
    public DateTimeSerializerBase(Class<T> cls, Boolean bool, DateFormat dateFormat) {
        super(cls);
        this._useTimestamp = bool;
        this._customFormat = dateFormat;
        this._reusedCustomFormat = dateFormat == null ? null : new AtomicReference<>();
    }

    protected void _acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType, boolean z) throws JsonMappingException {
        if (z) {
            visitIntFormat(jsonFormatVisitorWrapper, javaType, JsonParser.NumberType.LONG, JsonValueFormat.UTC_MILLISEC);
        } else {
            visitStringFormat(jsonFormatVisitorWrapper, javaType, JsonValueFormat.DATE_TIME);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean _asTimestamp(SerializerProvider serializerProvider) {
        Boolean bool = this._useTimestamp;
        if (bool != null) {
            return bool.booleanValue();
        }
        if (this._customFormat != null) {
            return false;
        }
        if (serializerProvider != null) {
            return serializerProvider.isEnabled(SerializationFeature.WRITE_DATES_AS_TIMESTAMPS);
        }
        throw new IllegalArgumentException("Null SerializerProvider passed for " + handledType().getName());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void _serializeAsString(Date date, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException {
        if (this._customFormat == null) {
            serializerProvider.defaultSerializeDateValue(date, jsonGenerator);
            return;
        }
        DateFormat andSet = this._reusedCustomFormat.getAndSet(null);
        DateFormat dateFormat = andSet;
        if (andSet == null) {
            dateFormat = (DateFormat) this._customFormat.clone();
        }
        jsonGenerator.writeString(dateFormat.format(date));
        this._reusedCustomFormat.compareAndSet(null, dateFormat);
    }

    protected abstract long _timestamp(T t);

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer, com.fasterxml.jackson.databind.jsonFormatVisitors.JsonFormatVisitable
    public void acceptJsonFormatVisitor(JsonFormatVisitorWrapper jsonFormatVisitorWrapper, JavaType javaType) throws JsonMappingException {
        _acceptJsonFormatVisitor(jsonFormatVisitorWrapper, javaType, _asTimestamp(jsonFormatVisitorWrapper.getProvider()));
    }

    @Override // com.fasterxml.jackson.databind.ser.ContextualSerializer
    public JsonSerializer<?> createContextual(SerializerProvider serializerProvider, BeanProperty beanProperty) throws JsonMappingException {
        JsonFormat.Value findFormatOverrides = findFormatOverrides(serializerProvider, beanProperty, handledType());
        if (findFormatOverrides == null) {
            return this;
        }
        JsonFormat.Shape shape = findFormatOverrides.getShape();
        if (shape.isNumeric()) {
            return withFormat(Boolean.TRUE, null);
        }
        if (findFormatOverrides.hasPattern()) {
            SimpleDateFormat simpleDateFormat = new SimpleDateFormat(findFormatOverrides.getPattern(), findFormatOverrides.hasLocale() ? findFormatOverrides.getLocale() : serializerProvider.getLocale());
            simpleDateFormat.setTimeZone(findFormatOverrides.hasTimeZone() ? findFormatOverrides.getTimeZone() : serializerProvider.getTimeZone());
            return withFormat(Boolean.FALSE, simpleDateFormat);
        }
        boolean hasLocale = findFormatOverrides.hasLocale();
        boolean hasTimeZone = findFormatOverrides.hasTimeZone();
        boolean z = true;
        boolean z2 = shape == JsonFormat.Shape.STRING;
        if (!hasLocale && !hasTimeZone && !z2) {
            return this;
        }
        DateFormat dateFormat = serializerProvider.getConfig().getDateFormat();
        if (dateFormat instanceof StdDateFormat) {
            StdDateFormat stdDateFormat = (StdDateFormat) dateFormat;
            StdDateFormat stdDateFormat2 = stdDateFormat;
            if (findFormatOverrides.hasLocale()) {
                stdDateFormat2 = stdDateFormat.withLocale(findFormatOverrides.getLocale());
            }
            StdDateFormat stdDateFormat3 = stdDateFormat2;
            if (findFormatOverrides.hasTimeZone()) {
                stdDateFormat3 = stdDateFormat2.withTimeZone(findFormatOverrides.getTimeZone());
            }
            return withFormat(Boolean.FALSE, stdDateFormat3);
        }
        if (!(dateFormat instanceof SimpleDateFormat)) {
            serializerProvider.reportBadDefinition((Class<?>) handledType(), String.format("Configured `DateFormat` (%s) not a `SimpleDateFormat`; cannot configure `Locale` or `TimeZone`", dateFormat.getClass().getName()));
        }
        SimpleDateFormat simpleDateFormat2 = (SimpleDateFormat) dateFormat;
        SimpleDateFormat simpleDateFormat3 = hasLocale ? new SimpleDateFormat(simpleDateFormat2.toPattern(), findFormatOverrides.getLocale()) : (SimpleDateFormat) simpleDateFormat2.clone();
        TimeZone timeZone = findFormatOverrides.getTimeZone();
        if (timeZone == null || timeZone.equals(simpleDateFormat3.getTimeZone())) {
            z = false;
        }
        if (z) {
            simpleDateFormat3.setTimeZone(timeZone);
        }
        return withFormat(Boolean.FALSE, simpleDateFormat3);
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdScalarSerializer, com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.jsonschema.SchemaAware
    public JsonNode getSchema(SerializerProvider serializerProvider, Type type) {
        return createSchemaNode(_asTimestamp(serializerProvider) ? "number" : "string", true);
    }

    @Override // com.fasterxml.jackson.databind.JsonSerializer
    public boolean isEmpty(SerializerProvider serializerProvider, T t) {
        return false;
    }

    @Override // com.fasterxml.jackson.databind.ser.std.StdSerializer, com.fasterxml.jackson.databind.JsonSerializer
    public abstract void serialize(T t, JsonGenerator jsonGenerator, SerializerProvider serializerProvider) throws IOException;

    public abstract DateTimeSerializerBase<T> withFormat(Boolean bool, DateFormat dateFormat);
}
