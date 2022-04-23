package com.fasterxml.jackson.databind.deser.std;

import com.fasterxml.jackson.annotation.JsonFormat;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import com.fasterxml.jackson.databind.BeanProperty;
import com.fasterxml.jackson.databind.DeserializationContext;
import com.fasterxml.jackson.databind.JsonDeserializer;
import com.fasterxml.jackson.databind.JsonMappingException;
import com.fasterxml.jackson.databind.annotation.JacksonStdImpl;
import com.fasterxml.jackson.databind.cfg.CoercionAction;
import com.fasterxml.jackson.databind.deser.ContextualDeserializer;
import com.fasterxml.jackson.databind.type.LogicalType;
import com.fasterxml.jackson.databind.util.ClassUtil;
import com.fasterxml.jackson.databind.util.StdDateFormat;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.sql.Timestamp;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.HashSet;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers.class */
public class DateDeserializers {
    private static final HashSet<String> _utilClasses;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.fasterxml.jackson.databind.deser.std.DateDeserializers$1  reason: invalid class name */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[CoercionAction.values().length];
            $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction = iArr;
            try {
                iArr[CoercionAction.AsEmpty.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.AsNull.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[CoercionAction.TryConvert.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$CalendarDeserializer.class */
    public static class CalendarDeserializer extends DateBasedDeserializer<Calendar> {
        protected final Constructor<Calendar> _defaultCtor;

        public CalendarDeserializer() {
            super(Calendar.class);
            this._defaultCtor = null;
        }

        public CalendarDeserializer(CalendarDeserializer calendarDeserializer, DateFormat dateFormat, String str) {
            super(calendarDeserializer, dateFormat, str);
            this._defaultCtor = calendarDeserializer._defaultCtor;
        }

        public CalendarDeserializer(Class<? extends Calendar> cls) {
            super(cls);
            this._defaultCtor = ClassUtil.findConstructor(cls, false);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Calendar deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            Constructor<Calendar> constructor = this._defaultCtor;
            if (constructor == null) {
                return deserializationContext.constructCalendar(_parseDate);
            }
            try {
                Calendar newInstance = constructor.newInstance(new Object[0]);
                newInstance.setTimeInMillis(_parseDate.getTime());
                TimeZone timeZone = deserializationContext.getTimeZone();
                if (timeZone != null) {
                    newInstance.setTimeZone(timeZone);
                }
                return newInstance;
            } catch (Exception e) {
                return (Calendar) deserializationContext.handleInstantiationProblem(handledType(), _parseDate, e);
            }
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            GregorianCalendar gregorianCalendar = new GregorianCalendar();
            gregorianCalendar.setTimeInMillis(0L);
            return gregorianCalendar;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        /* renamed from: withDateFormat */
        public DateBasedDeserializer<Calendar> withDateFormat2(DateFormat dateFormat, String str) {
            return new CalendarDeserializer(this, dateFormat, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$DateBasedDeserializer.class */
    public static abstract class DateBasedDeserializer<T> extends StdScalarDeserializer<T> implements ContextualDeserializer {
        protected final DateFormat _customFormat;
        protected final String _formatString;

        protected DateBasedDeserializer(DateBasedDeserializer<T> dateBasedDeserializer, DateFormat dateFormat, String str) {
            super(dateBasedDeserializer._valueClass);
            this._customFormat = dateFormat;
            this._formatString = str;
        }

        protected DateBasedDeserializer(Class<?> cls) {
            super(cls);
            this._customFormat = null;
            this._formatString = null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.StdDeserializer
        public Date _parseDate(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date parse;
            if (this._customFormat == null || !jsonParser.hasToken(JsonToken.VALUE_STRING)) {
                return super._parseDate(jsonParser, deserializationContext);
            }
            String trim = jsonParser.getText().trim();
            if (!trim.isEmpty()) {
                synchronized (this._customFormat) {
                    try {
                        parse = this._customFormat.parse(trim);
                    } catch (ParseException e) {
                        return (Date) deserializationContext.handleWeirdStringValue(handledType(), trim, "expected format \"%s\"", this._formatString);
                    }
                }
                return parse;
            } else if (AnonymousClass1.$SwitchMap$com$fasterxml$jackson$databind$cfg$CoercionAction[_checkFromStringCoercion(deserializationContext, trim).ordinal()] != 1) {
                return null;
            } else {
                return new Date(0L);
            }
        }

        public JsonDeserializer<?> createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            StdDateFormat stdDateFormat;
            String str;
            StdDateFormat stdDateFormat2;
            JsonFormat.Value findFormatOverrides = findFormatOverrides(deserializationContext, beanProperty, handledType());
            if (findFormatOverrides != null) {
                TimeZone timeZone = findFormatOverrides.getTimeZone();
                Boolean lenient = findFormatOverrides.getLenient();
                if (findFormatOverrides.hasPattern()) {
                    String pattern = findFormatOverrides.getPattern();
                    SimpleDateFormat simpleDateFormat = new SimpleDateFormat(pattern, findFormatOverrides.hasLocale() ? findFormatOverrides.getLocale() : deserializationContext.getLocale());
                    TimeZone timeZone2 = timeZone;
                    if (timeZone == null) {
                        timeZone2 = deserializationContext.getTimeZone();
                    }
                    simpleDateFormat.setTimeZone(timeZone2);
                    if (lenient != null) {
                        simpleDateFormat.setLenient(lenient.booleanValue());
                    }
                    return withDateFormat(simpleDateFormat, pattern);
                } else if (timeZone != null) {
                    DateFormat dateFormat = deserializationContext.getConfig().getDateFormat();
                    if (dateFormat.getClass() == StdDateFormat.class) {
                        StdDateFormat withLocale = ((StdDateFormat) dateFormat).withTimeZone(timeZone).withLocale(findFormatOverrides.hasLocale() ? findFormatOverrides.getLocale() : deserializationContext.getLocale());
                        stdDateFormat2 = withLocale;
                        if (lenient != null) {
                            stdDateFormat2 = withLocale.withLenient(lenient);
                        }
                    } else {
                        DateFormat dateFormat2 = (DateFormat) dateFormat.clone();
                        dateFormat2.setTimeZone(timeZone);
                        stdDateFormat2 = dateFormat2;
                        if (lenient != null) {
                            dateFormat2.setLenient(lenient.booleanValue());
                            stdDateFormat2 = dateFormat2;
                        }
                    }
                    return withDateFormat(stdDateFormat2, this._formatString);
                } else if (lenient != null) {
                    DateFormat dateFormat3 = deserializationContext.getConfig().getDateFormat();
                    String str2 = this._formatString;
                    if (dateFormat3.getClass() == StdDateFormat.class) {
                        StdDateFormat withLenient = ((StdDateFormat) dateFormat3).withLenient(lenient);
                        str = withLenient.toPattern();
                        stdDateFormat = withLenient;
                    } else {
                        DateFormat dateFormat4 = (DateFormat) dateFormat3.clone();
                        dateFormat4.setLenient(lenient.booleanValue());
                        stdDateFormat = dateFormat4;
                        str = str2;
                        if (dateFormat4 instanceof SimpleDateFormat) {
                            ((SimpleDateFormat) dateFormat4).toPattern();
                            str = str2;
                            stdDateFormat = dateFormat4;
                        }
                    }
                    String str3 = str;
                    if (str == null) {
                        str3 = "[unknown]";
                    }
                    return withDateFormat(stdDateFormat, str3);
                }
            }
            return this;
        }

        @Override // com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public LogicalType logicalType() {
            return LogicalType.DateTime;
        }

        protected abstract DateBasedDeserializer<T> withDateFormat(DateFormat dateFormat, String str);
    }

    @JacksonStdImpl
    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$DateDeserializer.class */
    public static class DateDeserializer extends DateBasedDeserializer<Date> {
        public static final DateDeserializer instance = new DateDeserializer();

        public DateDeserializer() {
            super(Date.class);
        }

        public DateDeserializer(DateDeserializer dateDeserializer, DateFormat dateFormat, String str) {
            super(dateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            return _parseDate(jsonParser, deserializationContext);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new Date(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Date> withDateFormat(DateFormat dateFormat, String str) {
            return new DateDeserializer(this, dateFormat, str);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$SqlDateDeserializer.class */
    public static class SqlDateDeserializer extends DateBasedDeserializer<java.sql.Date> {
        public SqlDateDeserializer() {
            super(java.sql.Date.class);
        }

        public SqlDateDeserializer(SqlDateDeserializer sqlDateDeserializer, DateFormat dateFormat, String str) {
            super(sqlDateDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public java.sql.Date deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            return new java.sql.Date(_parseDate.getTime());
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new java.sql.Date(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<java.sql.Date> withDateFormat(DateFormat dateFormat, String str) {
            return new SqlDateDeserializer(this, dateFormat, str);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/deser/std/DateDeserializers$TimestampDeserializer.class */
    public static class TimestampDeserializer extends DateBasedDeserializer<Timestamp> {
        public TimestampDeserializer() {
            super(Timestamp.class);
        }

        public TimestampDeserializer(TimestampDeserializer timestampDeserializer, DateFormat dateFormat, String str) {
            super(timestampDeserializer, dateFormat, str);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.ContextualDeserializer
        public /* bridge */ /* synthetic */ JsonDeserializer createContextual(DeserializationContext deserializationContext, BeanProperty beanProperty) throws JsonMappingException {
            return super.createContextual(deserializationContext, beanProperty);
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Timestamp deserialize(JsonParser jsonParser, DeserializationContext deserializationContext) throws IOException {
            Date _parseDate = _parseDate(jsonParser, deserializationContext);
            if (_parseDate == null) {
                return null;
            }
            return new Timestamp(_parseDate.getTime());
        }

        @Override // com.fasterxml.jackson.databind.JsonDeserializer
        public Object getEmptyValue(DeserializationContext deserializationContext) {
            return new Timestamp(0L);
        }

        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer, com.fasterxml.jackson.databind.deser.std.StdScalarDeserializer, com.fasterxml.jackson.databind.JsonDeserializer
        public /* bridge */ /* synthetic */ LogicalType logicalType() {
            return super.logicalType();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.fasterxml.jackson.databind.deser.std.DateDeserializers.DateBasedDeserializer
        public DateBasedDeserializer<Timestamp> withDateFormat(DateFormat dateFormat, String str) {
            return new TimestampDeserializer(this, dateFormat, str);
        }
    }

    static {
        HashSet<String> hashSet = new HashSet<>();
        _utilClasses = hashSet;
        hashSet.add("java.util.Calendar");
        hashSet.add("java.util.GregorianCalendar");
        hashSet.add("java.util.Date");
    }

    public static JsonDeserializer<?> find(Class<?> cls, String str) {
        if (!_utilClasses.contains(str)) {
            return null;
        }
        if (cls == Calendar.class) {
            return new CalendarDeserializer();
        }
        if (cls == Date.class) {
            return DateDeserializer.instance;
        }
        if (cls == GregorianCalendar.class) {
            return new CalendarDeserializer(GregorianCalendar.class);
        }
        return null;
    }
}
