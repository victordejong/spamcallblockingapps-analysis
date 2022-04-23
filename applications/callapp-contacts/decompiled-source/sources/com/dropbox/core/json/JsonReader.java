package com.dropbox.core.json;

import com.dropbox.core.util.IOUtil;
import com.dropbox.core.util.d;
import com.fasterxml.jackson.core.JsonFactory;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader.class */
public abstract class JsonReader<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    public static final JsonReader<Long> UnsignedLongReader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.1
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Long.valueOf(readUnsignedLong(jsonParser));
        }
    };
    public static final JsonReader<Long> Int64Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.2
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            long longValue = jsonParser.getLongValue();
            jsonParser.nextToken();
            return Long.valueOf(longValue);
        }
    };
    public static final JsonReader<Integer> Int32Reader = new JsonReader<Integer>() { // from class: com.dropbox.core.json.JsonReader.3
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Integer read(JsonParser jsonParser) throws IOException, JsonReadException {
            int intValue = jsonParser.getIntValue();
            jsonParser.nextToken();
            return Integer.valueOf(intValue);
        }
    };
    public static final JsonReader<Long> UInt64Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.4
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Long.valueOf(readUnsignedLong(jsonParser));
        }
    };
    public static final JsonReader<Long> UInt32Reader = new JsonReader<Long>() { // from class: com.dropbox.core.json.JsonReader.5
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Long read(JsonParser jsonParser) throws IOException, JsonReadException {
            long readUnsignedLong = readUnsignedLong(jsonParser);
            if (readUnsignedLong < 4294967296L) {
                return Long.valueOf(readUnsignedLong);
            }
            throw new JsonReadException("expecting a 32-bit unsigned integer, got: ".concat(String.valueOf(readUnsignedLong)), jsonParser.getTokenLocation());
        }
    };
    public static final JsonReader<Double> Float64Reader = new JsonReader<Double>() { // from class: com.dropbox.core.json.JsonReader.6
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Double read(JsonParser jsonParser) throws IOException, JsonReadException {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return Double.valueOf(doubleValue);
        }
    };
    public static final JsonReader<Float> Float32Reader = new JsonReader<Float>() { // from class: com.dropbox.core.json.JsonReader.7
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Float read(JsonParser jsonParser) throws IOException, JsonReadException {
            float floatValue = jsonParser.getFloatValue();
            jsonParser.nextToken();
            return Float.valueOf(floatValue);
        }
    };
    public static final JsonReader<String> StringReader = new JsonReader<String>() { // from class: com.dropbox.core.json.JsonReader.8
        @Override // com.dropbox.core.json.JsonReader
        public final String read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                String text = jsonParser.getText();
                jsonParser.nextToken();
                return text;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };
    public static final JsonReader<byte[]> BinaryReader = new JsonReader<byte[]>() { // from class: com.dropbox.core.json.JsonReader.9
        @Override // com.dropbox.core.json.JsonReader
        public final byte[] read(JsonParser jsonParser) throws IOException, JsonReadException {
            try {
                byte[] binaryValue = jsonParser.getBinaryValue();
                jsonParser.nextToken();
                return binaryValue;
            } catch (JsonParseException e) {
                throw JsonReadException.fromJackson(e);
            }
        }
    };
    public static final JsonReader<Boolean> BooleanReader = new JsonReader<Boolean>() { // from class: com.dropbox.core.json.JsonReader.10
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // com.dropbox.core.json.JsonReader
        public final Boolean read(JsonParser jsonParser) throws IOException, JsonReadException {
            return Boolean.valueOf(readBoolean(jsonParser));
        }
    };
    public static final JsonReader<Object> VoidReader = new JsonReader<Object>() { // from class: com.dropbox.core.json.JsonReader.11
        @Override // com.dropbox.core.json.JsonReader
        public final Object read(JsonParser jsonParser) throws IOException, JsonReadException {
            skipValue(jsonParser);
            return null;
        }
    };
    static final JsonFactory jsonFactory = new JsonFactory();

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader$FieldMapping.class */
    public static final class FieldMapping {
        static final /* synthetic */ boolean $assertionsDisabled = false;
        public final HashMap<String, Integer> fields;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader$FieldMapping$Builder.class */
        public static final class Builder {
            private HashMap<String, Integer> fields = new HashMap<>();

            public final void add(String str, int i) {
                HashMap<String, Integer> hashMap = this.fields;
                if (hashMap != null) {
                    int size = hashMap.size();
                    if (i != size) {
                        throw new IllegalStateException("expectedIndex = " + i + ", actual = " + size);
                    } else if (this.fields.put(str, Integer.valueOf(size)) != null) {
                        throw new IllegalStateException("duplicate field name: \"" + str + "\"");
                    }
                } else {
                    throw new IllegalStateException("already called build(); can't call add() anymore");
                }
            }

            public final FieldMapping build() {
                HashMap<String, Integer> hashMap = this.fields;
                if (hashMap != null) {
                    this.fields = null;
                    return new FieldMapping(hashMap);
                }
                throw new IllegalStateException("already called build(); can't call build() again");
            }
        }

        private FieldMapping(HashMap<String, Integer> hashMap) {
            this.fields = hashMap;
        }

        public final int get(String str) {
            Integer num = this.fields.get(str);
            if (num == null) {
                return -1;
            }
            return num.intValue();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader$FileLoadException.class */
    public static abstract class FileLoadException extends Exception {
        private static final long serialVersionUID = 0;

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader$FileLoadException$IOError.class */
        public static final class IOError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final IOException reason;

            public IOError(File file, IOException iOException) {
                super("unable to read file \"" + file.getPath() + "\": " + iOException.getMessage());
                this.reason = iOException;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/dropbox/core/json/JsonReader$FileLoadException$JsonError.class */
        public static final class JsonError extends FileLoadException {
            private static final long serialVersionUID = 0;
            public final JsonReadException reason;

            public JsonError(File file, JsonReadException jsonReadException) {
                super(file.getPath() + ": " + jsonReadException.getMessage());
                this.reason = jsonReadException;
            }
        }

        protected FileLoadException(String str) {
            super(str);
        }
    }

    public static JsonLocation expectArrayEnd(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() == JsonToken.END_ARRAY) {
            JsonLocation tokenLocation = jsonParser.getTokenLocation();
            nextToken(jsonParser);
            return tokenLocation;
        }
        throw new JsonReadException("expecting the end of an array (\"[\")", jsonParser.getTokenLocation());
    }

    public static JsonLocation expectArrayStart(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() == JsonToken.START_ARRAY) {
            JsonLocation tokenLocation = jsonParser.getTokenLocation();
            nextToken(jsonParser);
            return tokenLocation;
        }
        throw new JsonReadException("expecting the start of an array (\"[\")", jsonParser.getTokenLocation());
    }

    public static void expectObjectEnd(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() == JsonToken.END_OBJECT) {
            nextToken(jsonParser);
            return;
        }
        throw new JsonReadException("expecting the end of an object (\"}\")", jsonParser.getTokenLocation());
    }

    public static JsonLocation expectObjectStart(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() == JsonToken.START_OBJECT) {
            JsonLocation tokenLocation = jsonParser.getTokenLocation();
            nextToken(jsonParser);
            return tokenLocation;
        }
        throw new JsonReadException("expecting the start of an object (\"{\")", jsonParser.getTokenLocation());
    }

    public static boolean isArrayEnd(JsonParser jsonParser) {
        return jsonParser.getCurrentToken() == JsonToken.END_ARRAY;
    }

    public static boolean isArrayStart(JsonParser jsonParser) {
        return jsonParser.getCurrentToken() == JsonToken.START_ARRAY;
    }

    public static JsonToken nextToken(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            return jsonParser.nextToken();
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static boolean readBoolean(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            boolean booleanValue = jsonParser.getBooleanValue();
            jsonParser.nextToken();
            return booleanValue;
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static double readDouble(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            double doubleValue = jsonParser.getDoubleValue();
            jsonParser.nextToken();
            return doubleValue;
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static <T> T readEnum(JsonParser jsonParser, HashMap<String, T> hashMap, T t) throws IOException, JsonReadException {
        String str;
        if (jsonParser.getCurrentToken() == JsonToken.START_OBJECT) {
            jsonParser.nextToken();
            String[] readTags = readTags(jsonParser);
            if (readTags != null && jsonParser.getCurrentToken() == JsonToken.END_OBJECT) {
                str = readTags[0];
            } else if (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                str = jsonParser.getText();
                jsonParser.nextToken();
                skipValue(jsonParser);
            } else {
                throw new JsonReadException("expecting a field name", jsonParser.getTokenLocation());
            }
            T t2 = hashMap.get(str);
            if (t2 != null) {
                t = t2;
            }
            if (t != null) {
                expectObjectEnd(jsonParser);
                return t;
            }
            throw new JsonReadException("Expected one of " + hashMap + ", got: " + str, jsonParser.getTokenLocation());
        } else if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            String text = jsonParser.getText();
            T t3 = hashMap.get(text);
            if (t3 != null) {
                t = t3;
            }
            if (t != null) {
                jsonParser.nextToken();
                return t;
            }
            throw new JsonReadException("Expected one of " + hashMap + ", got: " + text, jsonParser.getTokenLocation());
        } else {
            throw new JsonReadException("Expected a string value", jsonParser.getTokenLocation());
        }
    }

    public static String[] readTags(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.FIELD_NAME || !".tag".equals(jsonParser.getCurrentName())) {
            return null;
        }
        jsonParser.nextToken();
        if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
            String text = jsonParser.getText();
            jsonParser.nextToken();
            return text.split("\\.");
        }
        throw new JsonReadException("expected a string value for .tag field", jsonParser.getTokenLocation());
    }

    public static long readUnsignedLong(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            long longValue = jsonParser.getLongValue();
            if (longValue >= 0) {
                jsonParser.nextToken();
                return longValue;
            }
            throw new JsonReadException("expecting a non-negative number, got: ".concat(String.valueOf(longValue)), jsonParser.getTokenLocation());
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public static long readUnsignedLongField(JsonParser jsonParser, String str, long j) throws IOException, JsonReadException {
        if (j < 0) {
            return readUnsignedLong(jsonParser);
        }
        throw new JsonReadException("duplicate field \"" + str + "\"", jsonParser.getCurrentLocation());
    }

    public static void skipValue(JsonParser jsonParser) throws IOException, JsonReadException {
        try {
            jsonParser.skipChildren();
            jsonParser.nextToken();
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public abstract T read(JsonParser jsonParser) throws IOException, JsonReadException;

    public final T readField(JsonParser jsonParser, String str, T t) throws IOException, JsonReadException {
        if (t == null) {
            return read(jsonParser);
        }
        throw new JsonReadException("duplicate field \"" + str + "\"", jsonParser.getTokenLocation());
    }

    public T readFields(JsonParser jsonParser) throws IOException, JsonReadException {
        return null;
    }

    public T readFromFile(File file) throws FileLoadException {
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            try {
                return readFully(fileInputStream);
            } finally {
                IOUtil.b(fileInputStream);
            }
        } catch (JsonReadException e) {
            throw new FileLoadException.JsonError(file, e);
        } catch (IOException e2) {
            throw new FileLoadException.IOError(file, e2);
        }
    }

    public T readFromFile(String str) throws FileLoadException {
        return readFromFile(new File(str));
    }

    public T readFromTags(String[] strArr, JsonParser jsonParser) throws IOException, JsonReadException {
        return null;
    }

    public T readFully(JsonParser jsonParser) throws IOException, JsonReadException {
        jsonParser.nextToken();
        T read = read(jsonParser);
        if (jsonParser.getCurrentToken() == null) {
            validate(read);
            return read;
        }
        throw new AssertionError("The JSON library should ensure there's no tokens after the main value: " + jsonParser.getCurrentToken() + "@" + jsonParser.getCurrentLocation());
    }

    public T readFully(InputStream inputStream) throws IOException, JsonReadException {
        try {
            return readFully(jsonFactory.createParser(inputStream));
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        }
    }

    public T readFully(String str) throws JsonReadException {
        try {
            JsonParser createParser = jsonFactory.createParser(str);
            try {
                return readFully(createParser);
            } finally {
                createParser.close();
            }
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        } catch (IOException e2) {
            throw d.a("IOException reading from String", (Throwable) e2);
        }
    }

    public T readFully(byte[] bArr) throws JsonReadException {
        try {
            JsonParser createParser = jsonFactory.createParser(bArr);
            try {
                return readFully(createParser);
            } finally {
                createParser.close();
            }
        } catch (JsonParseException e) {
            throw JsonReadException.fromJackson(e);
        } catch (IOException e2) {
            throw d.a("IOException reading from byte[]", (Throwable) e2);
        }
    }

    public final T readOptional(JsonParser jsonParser) throws IOException, JsonReadException {
        if (jsonParser.getCurrentToken() != JsonToken.VALUE_NULL) {
            return read(jsonParser);
        }
        jsonParser.nextToken();
        return null;
    }

    public void validate(T t) {
    }
}
