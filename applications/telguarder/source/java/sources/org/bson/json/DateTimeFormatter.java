package org.bson.json;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.time.Instant;
import java.time.ZoneId;
import java.time.ZonedDateTime;
import java.time.format.DateTimeParseException;
import java.time.temporal.TemporalAccessor;
import java.time.temporal.TemporalQuery;
import java.util.Calendar;
import java.util.TimeZone;
/* loaded from: classes3-dex2jar.jar:org/bson/json/DateTimeFormatter.class */
final class DateTimeFormatter {
    private static final FormatterImpl FORMATTER_IMPL;

    /* loaded from: classes3-dex2jar.jar:org/bson/json/DateTimeFormatter$FormatterImpl.class */
    public interface FormatterImpl {
        String format(long j);

        long parse(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3-dex2jar.jar:org/bson/json/DateTimeFormatter$Java8DateTimeFormatter.class */
    public static class Java8DateTimeFormatter implements FormatterImpl {
        static {
            try {
                Class.forName("java.time.format.DateTimeFormatter");
            } catch (ClassNotFoundException e) {
                throw new ExceptionInInitializerError(e);
            }
        }

        Java8DateTimeFormatter() {
        }

        @Override // org.bson.json.DateTimeFormatter.FormatterImpl
        public String format(long j) {
            return ZonedDateTime.ofInstant(Instant.ofEpochMilli(j), ZoneId.of("Z")).format(java.time.format.DateTimeFormatter.ISO_OFFSET_DATE_TIME);
        }

        @Override // org.bson.json.DateTimeFormatter.FormatterImpl
        public long parse(String str) {
            try {
                return ((Instant) java.time.format.DateTimeFormatter.ISO_OFFSET_DATE_TIME.parse(str, new TemporalQuery<Instant>() { // from class: org.bson.json.DateTimeFormatter.Java8DateTimeFormatter.1
                    @Override // java.time.temporal.TemporalQuery
                    public Instant queryFrom(TemporalAccessor temporalAccessor) {
                        return Instant.from(temporalAccessor);
                    }
                })).toEpochMilli();
            } catch (DateTimeParseException e) {
                throw new IllegalArgumentException(e.getMessage());
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:org/bson/json/DateTimeFormatter$JaxbDateTimeFormatter.class */
    static class JaxbDateTimeFormatter implements FormatterImpl {
        private static final Method DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD;
        private static final Method DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD;

        static {
            try {
                DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD = Class.forName("javax.xml.bind.DatatypeConverter").getDeclaredMethod("parseDateTime", String.class);
                DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD = Class.forName("javax.xml.bind.DatatypeConverter").getDeclaredMethod("printDateTime", Calendar.class);
            } catch (ClassNotFoundException e) {
                throw new ExceptionInInitializerError(e);
            } catch (NoSuchMethodException e2) {
                throw new ExceptionInInitializerError(e2);
            }
        }

        JaxbDateTimeFormatter() {
        }

        @Override // org.bson.json.DateTimeFormatter.FormatterImpl
        public String format(long j) {
            Calendar calendar = Calendar.getInstance();
            calendar.setTimeInMillis(j);
            calendar.setTimeZone(TimeZone.getTimeZone("Z"));
            try {
                return (String) DATATYPE_CONVERTER_PRINT_DATE_TIME_METHOD.invoke(null, calendar);
            } catch (IllegalAccessException e) {
                throw new IllegalStateException();
            } catch (InvocationTargetException e2) {
                throw ((RuntimeException) e2.getCause());
            }
        }

        @Override // org.bson.json.DateTimeFormatter.FormatterImpl
        public long parse(String str) {
            try {
                return ((Calendar) DATATYPE_CONVERTER_PARSE_DATE_TIME_METHOD.invoke(null, str)).getTimeInMillis();
            } catch (IllegalAccessException e) {
                throw new IllegalStateException(e);
            } catch (InvocationTargetException e2) {
                throw ((RuntimeException) e2.getCause());
            }
        }
    }

    static {
        FormatterImpl formatterImpl;
        try {
            formatterImpl = loadDateTimeFormatter("org.bson.json.DateTimeFormatter$Java8DateTimeFormatter");
        } catch (LinkageError e) {
            formatterImpl = loadDateTimeFormatter("org.bson.json.DateTimeFormatter$JaxbDateTimeFormatter");
        }
        FORMATTER_IMPL = formatterImpl;
    }

    private DateTimeFormatter() {
    }

    public static String format(long j) {
        return FORMATTER_IMPL.format(j);
    }

    private static FormatterImpl loadDateTimeFormatter(String str) {
        try {
            return (FormatterImpl) Class.forName(str).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (ClassNotFoundException e) {
            throw new ExceptionInInitializerError(e);
        } catch (IllegalAccessException e2) {
            throw new ExceptionInInitializerError(e2);
        } catch (InstantiationException e3) {
            throw new ExceptionInInitializerError(e3);
        } catch (NoSuchMethodException e4) {
            throw new ExceptionInInitializerError(e4);
        } catch (InvocationTargetException e5) {
            throw new ExceptionInInitializerError(e5);
        }
    }

    public static long parse(String str) {
        return FORMATTER_IMPL.parse(str);
    }
}
