package com.amazonaws.transform;

import com.amazonaws.AmazonClientException;
import com.amazonaws.util.Base64;
import com.amazonaws.util.DateUtils;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.text.NumberFormat;
import java.text.ParseException;
import java.util.Date;
import java.util.Locale;
/* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers.class */
public class SimpleTypeJsonUnmarshallers {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.amazonaws.transform.SimpleTypeJsonUnmarshallers$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$1.class */
    public static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$amazonaws$transform$TimestampFormat;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[TimestampFormat.values().length];
            $SwitchMap$com$amazonaws$transform$TimestampFormat = iArr;
            try {
                iArr[TimestampFormat.ISO_8601.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$amazonaws$transform$TimestampFormat[TimestampFormat.RFC_822.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$amazonaws$transform$TimestampFormat[TimestampFormat.UNIX_TIMESTAMP.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$BigDecimalJsonUnmarshaller.class */
    public static class BigDecimalJsonUnmarshaller implements Unmarshaller<BigDecimal, JsonUnmarshallerContext> {
        private static BigDecimalJsonUnmarshaller instance;

        public static BigDecimalJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new BigDecimalJsonUnmarshaller();
            }
            return instance;
        }

        public BigDecimal unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return new BigDecimal(nextString);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$BigIntegerJsonUnmarshaller.class */
    public static class BigIntegerJsonUnmarshaller implements Unmarshaller<BigInteger, JsonUnmarshallerContext> {
        private static BigIntegerJsonUnmarshaller instance;

        public static BigIntegerJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new BigIntegerJsonUnmarshaller();
            }
            return instance;
        }

        public BigInteger unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return new BigInteger(nextString);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$BooleanJsonUnmarshaller.class */
    public static class BooleanJsonUnmarshaller implements Unmarshaller<Boolean, JsonUnmarshallerContext> {
        private static BooleanJsonUnmarshaller instance;

        public static BooleanJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new BooleanJsonUnmarshaller();
            }
            return instance;
        }

        public Boolean unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Boolean.valueOf(Boolean.parseBoolean(nextString));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteBufferJsonUnmarshaller.class */
    public static class ByteBufferJsonUnmarshaller implements Unmarshaller<ByteBuffer, JsonUnmarshallerContext> {
        private static ByteBufferJsonUnmarshaller instance;

        public static ByteBufferJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new ByteBufferJsonUnmarshaller();
            }
            return instance;
        }

        public ByteBuffer unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            return ByteBuffer.wrap(Base64.decode(jsonUnmarshallerContext.getReader().nextString()));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$ByteJsonUnmarshaller.class */
    public static class ByteJsonUnmarshaller implements Unmarshaller<Byte, JsonUnmarshallerContext> {
        private static ByteJsonUnmarshaller instance;

        public static ByteJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new ByteJsonUnmarshaller();
            }
            return instance;
        }

        public Byte unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Byte.valueOf(nextString);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DateJsonUnmarshaller.class */
    public static class DateJsonUnmarshaller implements Unmarshaller<Date, JsonUnmarshallerContext> {
        private static final int DATE_MULTIPLIER = 1000;
        private static DateJsonUnmarshaller instance;
        private final TimestampFormat format;

        private DateJsonUnmarshaller(TimestampFormat timestampFormat) {
            this.format = timestampFormat;
        }

        public static DateJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new DateJsonUnmarshaller(TimestampFormat.UNIX_TIMESTAMP);
            }
            return instance;
        }

        public static DateJsonUnmarshaller getInstance(TimestampFormat timestampFormat) {
            DateJsonUnmarshaller dateJsonUnmarshaller = instance;
            if (dateJsonUnmarshaller == null || !dateJsonUnmarshaller.format.equals(timestampFormat)) {
                instance = new DateJsonUnmarshaller(timestampFormat);
            }
            return instance;
        }

        public Date unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            try {
                int i = AnonymousClass1.$SwitchMap$com$amazonaws$transform$TimestampFormat[this.format.ordinal()];
                return i != 1 ? i != 2 ? new Date(NumberFormat.getInstance(new Locale("en")).parse(nextString).longValue() * 1000) : DateUtils.b(nextString) : DateUtils.a(nextString);
            } catch (IllegalArgumentException | ParseException e) {
                throw new AmazonClientException("Unable to parse date '" + nextString + "':  " + e.getMessage(), e);
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$DoubleJsonUnmarshaller.class */
    public static class DoubleJsonUnmarshaller implements Unmarshaller<Double, JsonUnmarshallerContext> {
        private static DoubleJsonUnmarshaller instance;

        public static DoubleJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new DoubleJsonUnmarshaller();
            }
            return instance;
        }

        public Double unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Double.valueOf(Double.parseDouble(nextString));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$FloatJsonUnmarshaller.class */
    public static class FloatJsonUnmarshaller implements Unmarshaller<Float, JsonUnmarshallerContext> {
        private static FloatJsonUnmarshaller instance;

        public static FloatJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new FloatJsonUnmarshaller();
            }
            return instance;
        }

        public Float unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Float.valueOf(nextString);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$IntegerJsonUnmarshaller.class */
    public static class IntegerJsonUnmarshaller implements Unmarshaller<Integer, JsonUnmarshallerContext> {
        private static IntegerJsonUnmarshaller instance;

        public static IntegerJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new IntegerJsonUnmarshaller();
            }
            return instance;
        }

        public Integer unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Integer.valueOf(Integer.parseInt(nextString));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$LongJsonUnmarshaller.class */
    public static class LongJsonUnmarshaller implements Unmarshaller<Long, JsonUnmarshallerContext> {
        private static LongJsonUnmarshaller instance;

        public static LongJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new LongJsonUnmarshaller();
            }
            return instance;
        }

        public Long unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            String nextString = jsonUnmarshallerContext.getReader().nextString();
            if (nextString == null) {
                return null;
            }
            return Long.valueOf(Long.parseLong(nextString));
        }
    }

    /* loaded from: classes-dex2jar.jar:com/amazonaws/transform/SimpleTypeJsonUnmarshallers$StringJsonUnmarshaller.class */
    public static class StringJsonUnmarshaller implements Unmarshaller<String, JsonUnmarshallerContext> {
        private static StringJsonUnmarshaller instance;

        public static StringJsonUnmarshaller getInstance() {
            if (instance == null) {
                instance = new StringJsonUnmarshaller();
            }
            return instance;
        }

        public String unmarshall(JsonUnmarshallerContext jsonUnmarshallerContext) throws Exception {
            return jsonUnmarshallerContext.getReader().nextString();
        }
    }
}
