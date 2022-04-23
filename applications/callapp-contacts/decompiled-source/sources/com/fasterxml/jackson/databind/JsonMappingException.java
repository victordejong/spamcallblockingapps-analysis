package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import okhttp3.HttpUrl;
/* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/JsonMappingException.class */
public class JsonMappingException extends JsonProcessingException {
    static final int MAX_REFS_TO_LIST = 1000;
    private static final long serialVersionUID = 1;
    protected LinkedList<Reference> _path;
    protected transient Closeable _processor;

    /* loaded from: classes3-dex2jar.jar:com/fasterxml/jackson/databind/JsonMappingException$Reference.class */
    public static class Reference implements Serializable {
        private static final long serialVersionUID = 2;
        protected String _desc;
        protected String _fieldName;
        protected transient Object _from;
        protected int _index;

        protected Reference() {
            this._index = -1;
        }

        public Reference(Object obj) {
            this._index = -1;
            this._from = obj;
        }

        public Reference(Object obj, int i) {
            this._index = -1;
            this._from = obj;
            this._index = i;
        }

        public Reference(Object obj, String str) {
            this._index = -1;
            this._from = obj;
            Objects.requireNonNull(str, "Cannot pass null fieldName");
            this._fieldName = str;
        }

        public String getDescription() {
            if (this._desc == null) {
                StringBuilder sb = new StringBuilder();
                Object obj = this._from;
                if (obj != null) {
                    Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
                    int i = 0;
                    while (cls.isArray()) {
                        cls = cls.getComponentType();
                        i++;
                    }
                    sb.append(cls.getName());
                    while (true) {
                        i--;
                        if (i < 0) {
                            break;
                        }
                        sb.append(HttpUrl.PATH_SEGMENT_ENCODE_SET_URI);
                    }
                } else {
                    sb.append("UNKNOWN");
                }
                sb.append('[');
                if (this._fieldName != null) {
                    sb.append('\"');
                    sb.append(this._fieldName);
                    sb.append('\"');
                } else {
                    int i2 = this._index;
                    if (i2 >= 0) {
                        sb.append(i2);
                    } else {
                        sb.append('?');
                    }
                }
                sb.append(']');
                this._desc = sb.toString();
            }
            return this._desc;
        }

        public String getFieldName() {
            return this._fieldName;
        }

        @JsonIgnore
        public Object getFrom() {
            return this._from;
        }

        public int getIndex() {
            return this._index;
        }

        void setDescription(String str) {
            this._desc = str;
        }

        void setFieldName(String str) {
            this._fieldName = str;
        }

        void setIndex(int i) {
            this._index = i;
        }

        public String toString() {
            return getDescription();
        }

        Object writeReplace() {
            getDescription();
            return this;
        }
    }

    public JsonMappingException(Closeable closeable, String str) {
        super(str);
        this._processor = closeable;
        if (closeable instanceof JsonParser) {
            this._location = ((JsonParser) closeable).getTokenLocation();
        }
    }

    public JsonMappingException(Closeable closeable, String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
        this._processor = closeable;
    }

    public JsonMappingException(Closeable closeable, String str, Throwable th) {
        super(str, th);
        this._processor = closeable;
        if (th instanceof JsonProcessingException) {
            this._location = ((JsonProcessingException) th).getLocation();
        } else if (closeable instanceof JsonParser) {
            this._location = ((JsonParser) closeable).getTokenLocation();
        }
    }

    @Deprecated
    public JsonMappingException(String str) {
        super(str);
    }

    @Deprecated
    public JsonMappingException(String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
    }

    @Deprecated
    public JsonMappingException(String str, JsonLocation jsonLocation, Throwable th) {
        super(str, jsonLocation, th);
    }

    @Deprecated
    public JsonMappingException(String str, Throwable th) {
        super(str, th);
    }

    public static JsonMappingException from(JsonGenerator jsonGenerator, String str) {
        return new JsonMappingException(jsonGenerator, str, (Throwable) null);
    }

    public static JsonMappingException from(JsonGenerator jsonGenerator, String str, Throwable th) {
        return new JsonMappingException(jsonGenerator, str, th);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str) {
        return new JsonMappingException(jsonParser, str);
    }

    public static JsonMappingException from(JsonParser jsonParser, String str, Throwable th) {
        return new JsonMappingException(jsonParser, str, th);
    }

    public static JsonMappingException from(DeserializationContext deserializationContext, String str) {
        return new JsonMappingException(deserializationContext.getParser(), str);
    }

    public static JsonMappingException from(DeserializationContext deserializationContext, String str, Throwable th) {
        return new JsonMappingException(deserializationContext.getParser(), str, th);
    }

    public static JsonMappingException from(SerializerProvider serializerProvider, String str) {
        return new JsonMappingException(serializerProvider.getGenerator(), str);
    }

    public static JsonMappingException from(SerializerProvider serializerProvider, String str, Throwable th) {
        return new JsonMappingException(serializerProvider.getGenerator(), str, th);
    }

    public static JsonMappingException fromUnexpectedIOE(IOException iOException) {
        return new JsonMappingException((Closeable) null, String.format("Unexpected IOException (of type %s): %s", iOException.getClass().getName(), ClassUtil.exceptionMessage(iOException)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0.isEmpty() != false) goto L_0x0021;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.fasterxml.jackson.databind.JsonMappingException wrapWithPath(java.lang.Throwable r6, com.fasterxml.jackson.databind.JsonMappingException.Reference r7) {
        /*
            r0 = r6
            boolean r0 = r0 instanceof com.fasterxml.jackson.databind.JsonMappingException
            if (r0 == 0) goto L_0x000f
            r0 = r6
            com.fasterxml.jackson.databind.JsonMappingException r0 = (com.fasterxml.jackson.databind.JsonMappingException) r0
            r6 = r0
            goto L_0x0075
        L_0x000f:
            r0 = r6
            java.lang.String r0 = com.fasterxml.jackson.databind.util.ClassUtil.exceptionMessage(r0)
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0021
            r0 = r8
            r9 = r0
            r0 = r8
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0043
        L_0x0021:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "(was "
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            r1 = r6
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = ")"
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r0 = r0.toString()
            r9 = r0
        L_0x0043:
            r0 = 0
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.fasterxml.jackson.core.JsonProcessingException
            if (r0 == 0) goto L_0x006a
            r0 = r6
            com.fasterxml.jackson.core.JsonProcessingException r0 = (com.fasterxml.jackson.core.JsonProcessingException) r0
            java.lang.Object r0 = r0.getProcessor()
            r11 = r0
            r0 = r10
            r8 = r0
            r0 = r11
            boolean r0 = r0 instanceof java.io.Closeable
            if (r0 == 0) goto L_0x006a
            r0 = r11
            java.io.Closeable r0 = (java.io.Closeable) r0
            r8 = r0
        L_0x006a:
            com.fasterxml.jackson.databind.JsonMappingException r0 = new com.fasterxml.jackson.databind.JsonMappingException
            r1 = r0
            r2 = r8
            r3 = r9
            r4 = r6
            r1.<init>(r2, r3, r4)
            r6 = r0
        L_0x0075:
            r0 = r6
            r1 = r7
            r0.prependPath(r1)
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.fasterxml.jackson.databind.JsonMappingException.wrapWithPath(java.lang.Throwable, com.fasterxml.jackson.databind.JsonMappingException$Reference):com.fasterxml.jackson.databind.JsonMappingException");
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, int i) {
        return wrapWithPath(th, new Reference(obj, i));
    }

    public static JsonMappingException wrapWithPath(Throwable th, Object obj, String str) {
        return wrapWithPath(th, new Reference(obj, str));
    }

    protected void _appendPathDesc(StringBuilder sb) {
        LinkedList<Reference> linkedList = this._path;
        if (linkedList != null) {
            Iterator<Reference> it2 = linkedList.iterator();
            while (it2.hasNext()) {
                sb.append(it2.next().toString());
                if (it2.hasNext()) {
                    sb.append("->");
                }
            }
        }
    }

    protected String _buildMessage() {
        String message = super.getMessage();
        if (this._path == null) {
            return message;
        }
        StringBuilder sb = message == null ? new StringBuilder() : new StringBuilder(message);
        sb.append(" (through reference chain: ");
        StringBuilder pathReference = getPathReference(sb);
        pathReference.append(')');
        return pathReference.toString();
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return _buildMessage();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        return _buildMessage();
    }

    public List<Reference> getPath() {
        LinkedList<Reference> linkedList = this._path;
        return linkedList == null ? Collections.emptyList() : Collections.unmodifiableList(linkedList);
    }

    public String getPathReference() {
        return getPathReference(new StringBuilder()).toString();
    }

    public StringBuilder getPathReference(StringBuilder sb) {
        _appendPathDesc(sb);
        return sb;
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.core.JacksonException
    @JsonIgnore
    public Object getProcessor() {
        return this._processor;
    }

    public void prependPath(Reference reference) {
        if (this._path == null) {
            this._path = new LinkedList<>();
        }
        if (this._path.size() < 1000) {
            this._path.addFirst(reference);
        }
    }

    public void prependPath(Object obj, int i) {
        prependPath(new Reference(obj, i));
    }

    public void prependPath(Object obj, String str) {
        prependPath(new Reference(obj, str));
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
