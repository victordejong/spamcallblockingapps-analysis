package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers.class */
public class DateDeserializers {
    public static final HashSet<String> _classNames = new HashSet<>();

    @JacksonStdImpl
    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer.class */
    public static class CalendarDeserializer extends DateBasedDeserializer<Calendar> {
        public final Class<? extends Calendar> _calendarClass;

        public CalendarDeserializer() {
            super(Calendar.class);
            this._calendarClass = null;
        }

        public CalendarDeserializer(CalendarDeserializer calendarDeserializer, DateFormat dateFormat, String str) {
            super(calendarDeserializer, dateFormat, str);
            this._calendarClass = calendarDeserializer._calendarClass;
        }

        public CalendarDeserializer(Class<? extends Calendar> cls) {
            super(cls);
            this._calendarClass = cls;
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Calendar deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            Class<? extends Calendar> cls = this._calendarClass;
            if (cls == null) {
                return deserializationContext.constructCalendar(_parseDate);
            }
            try {
                Calendar calendar = (Calendar) cls.newInstance();
                calendar.setTimeInMillis(_parseDate.getTime());
                TimeZone timeZone = deserializationContext.getTimeZone();
                if (timeZone != null) {
                    calendar.setTimeZone(timeZone);
                }
                return calendar;
            } catch (Exception e) {
                throw deserializationContext.instantiationException(this._calendarClass, e);
            }
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: withDateFormat */
        public DateBasedDeserializer<Calendar> withDateFormat2(DateFormat dateFormat, String str) {
            return new CalendarDeserializer(this, dateFormat, str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer.class */
    public static abstract class DateBasedDeserializer<T> extends StdScalarDeserializer<T> implements ContextualDeserializer {
        public final DateFormat _customFormat;
        public final String _formatString;

        public DateBasedDeserializer(DateBasedDeserializer<T> dateBasedDeserializer, DateFormat dateFormat, String str) {
            super(dateBasedDeserializer._valueClass);
            this._customFormat = dateFormat;
            this._formatString = str;
        }

        public DateBasedDeserializer(Class<?> cls) {
            super(cls);
            this._customFormat = null;
            this._formatString = null;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
        public Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date parse;
            if (this._customFormat != null) {
                JsonToken currentToken = jsonParser.getCurrentToken();
                if (currentToken == JsonToken.VALUE_STRING) {
                    String trim = jsonParser.getText().trim();
                    if (trim.length() == 0) {
                        return (Date) getEmptyValue(deserializationContext);
                    }
                    synchronized (this._customFormat) {
                        try {
                            parse = this._customFormat.parse(trim);
                        } catch (ParseException e) {
                            throw new IllegalArgumentException("Failed to parse Date value '" + trim + "' (format: \"" + this._formatString + "\"): " + e.getMessage());
                        }
                    }
                    return parse;
                } else if (currentToken == JsonToken.START_ARRAY && deserializationContext.isEnabled(DeserializationFeature.UNWRAP_SINGLE_VALUE_ARRAYS)) {
                    jsonParser.nextToken();
                    Date _parseDate = _parseDate(jsonParser, deserializationContext);
                    JsonToken nextToken = jsonParser.nextToken();
                    JsonToken jsonToken = JsonToken.END_ARRAY;
                    if (nextToken == jsonToken) {
                        return _parseDate;
                    }
                    throw deserializationContext.wrongTokenException(jsonParser, jsonToken, "Attempted to unwrap single value array for single 'java.util.Date' value but there was more than a single value in the array");
                }
            }
            return super._parseDate(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            JsonFormat.Value findFormat;
            DateFormat dateFormat;
            if (!(beanProperty == null || (findFormat = deserializationContext.getAnnotationIntrospector().findFormat(beanProperty.getMember())) == null)) {
                TimeZone timeZone = findFormat.getTimeZone();
                if (findFormat.hasPattern()) {
                    String pattern = findFormat.getPattern();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, findFormat.hasLocale() ? findFormat.getLocale() : deserializationContext.getLocale());
                    TimeZone timeZone2 = timeZone;
                    if (timeZone == null) {
                        timeZone2 = deserializationContext.getTimeZone();
                    }
                    simpleDateFormat.setTimeZone(timeZone2);
                    return withDateFormat(simpleDateFormat, pattern);
                } else if (timeZone != null) {
                    DateFormat dateFormat2 = deserializationContext.getConfig().getDateFormat();
                    if (dateFormat2.getClass() == StdDateFormat.class) {
                        dateFormat = ((StdDateFormat) dateFormat2).withTimeZone(timeZone).withLocale(findFormat.hasLocale() ? findFormat.getLocale() : deserializationContext.getLocale());
                    } else {
                        dateFormat = (DateFormat) dateFormat2.clone();
                        dateFormat.setTimeZone(timeZone);
                    }
                    return withDateFormat(dateFormat, this._formatString);
                }
            }
            return this;
        }

        public abstract DateBasedDeserializer<T> withDateFormat(DateFormat dateFormat, String str);
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer.class */
    public static class DateDeserializer extends DateBasedDeserializer<Date> {
        public static final DateDeserializer instance = new DateDeserializer();

        public DateDeserializer() {
            super(Date.class);
        }

        public DateDeserializer(DateDeserializer dateDeserializer, DateFormat dateFormat, String str) {
            super(dateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDate(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Date> withDateFormat(DateFormat dateFormat, String str) {
            return new DateDeserializer(this, dateFormat, str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer.class */
    public static class SqlDateDeserializer extends DateBasedDeserializer<java.sql.Date> {
        public SqlDateDeserializer() {
            super(java.sql.Date.class);
        }

        public SqlDateDeserializer(SqlDateDeserializer sqlDateDeserializer, DateFormat dateFormat, String str) {
            super(sqlDateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public java.sql.Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            return _parseDate == null ? null : new java.sql.Date(_parseDate.getTime());
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<java.sql.Date> withDateFormat(DateFormat dateFormat, String str) {
            return new SqlDateDeserializer(this, dateFormat, str);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer.class */
    public static class TimestampDeserializer extends DateBasedDeserializer<Timestamp> {
        public TimestampDeserializer() {
            super(Timestamp.class);
        }

        public TimestampDeserializer(TimestampDeserializer timestampDeserializer, DateFormat dateFormat, String str) {
            super(timestampDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Timestamp deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return new Timestamp(_parseDate(jsonParser, deserializationContext).getTime());
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Timestamp> withDateFormat(DateFormat dateFormat, String str) {
            return new TimestampDeserializer(this, dateFormat, str);
        }
    }

    static {
        for (Class cls : new Class[]{Calendar.class, GregorianCalendar.class, java.sql.Date.class, Date.class, Timestamp.class}) {
            _classNames.add(cls.getName());
        }
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (!_classNames.contains(str)) {
            return null;
        }
        if (cls == Calendar.class) {
            return new CalendarDeserializer();
        }
        if (cls == Date.class) {
            return DateDeserializer.instance;
        }
        if (cls == java.sql.Date.class) {
            return new SqlDateDeserializer();
        }
        if (cls == Timestamp.class) {
            return new TimestampDeserializer();
        }
        if (cls == GregorianCalendar.class) {
            return new CalendarDeserializer(GregorianCalendar.class);
        }
        return null;
    }
}
