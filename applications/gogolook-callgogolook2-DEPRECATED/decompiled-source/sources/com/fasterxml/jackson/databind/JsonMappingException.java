package com.fasterxml.jackson.databind;

import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonLocation;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.util.ClassUtil;
import java.io.Closeable;
import java.io.IOException;
import java.io.Serializable;
import java.util.Iterator;
import java.util.LinkedList;
/* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/JsonMappingException.class */
public class JsonMappingException extends JsonProcessingException {
    public LinkedList<Reference> _path;

    /* loaded from: classes-dex2jar.jar:com/fasterxml/jackson/databind/JsonMappingException$Reference.class */
    public static class Reference implements Serializable {
        public String _fieldName;
        public Object _from;
        public int _index;

        public Reference() {
            this._index = -1;
        }

        public Reference(Object obj, int i) {
            this._index = -1;
            this._from = obj;
            this._index = i;
        }

        public Reference(Object obj, String str) {
            this._index = -1;
            this._from = obj;
            if (str != null) {
                this._fieldName = str;
                return;
            }
            throw new NullPointerException("Can not pass null fieldName");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            Object obj = this._from;
            Class<?> cls = obj instanceof Class ? (Class) obj : obj.getClass();
            String packageName = ClassUtil.getPackageName(cls);
            if (packageName != null) {
                sb.append(packageName);
                sb.append('.');
            }
            sb.append(cls.getSimpleName());
            sb.append('[');
            if (this._fieldName != null) {
                sb.append('\"');
                sb.append(this._fieldName);
                sb.append('\"');
            } else {
                int i = this._index;
                if (i >= 0) {
                    sb.append(i);
                } else {
                    sb.append('?');
                }
            }
            sb.append(']');
            return sb.toString();
        }
    }

    public JsonMappingException(Closeable closeable, String str) {
        super(str);
        if (closeable instanceof JsonParser) {
            this._location = ((JsonParser) closeable).getTokenLocation();
        }
    }

    public JsonMappingException(Closeable closeable, String str, JsonLocation jsonLocation) {
        super(str, jsonLocation);
    }

    public JsonMappingException(Closeable closeable, String str, Throwable th) {
        super(str, th);
        if (closeable instanceof JsonParser) {
            this._location = ((JsonParser) closeable).getTokenLocation();
        }
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
        return new JsonMappingException(null, str);
    }

    public static JsonMappingException from(SerializerProvider serializerProvider, String str, Throwable th) {
        return new JsonMappingException((Closeable) null, str, th);
    }

    public static JsonMappingException fromUnexpectedIOE(IOException iOException) {
        return new JsonMappingException(null, String.format("Unexpected IOException (of type %s): %s", iOException.getClass().getName(), iOException.getMessage()));
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x001e, code lost:
        if (r0.length() == 0) goto L_0x0021;
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
            goto L_0x007a
        L_0x000f:
            r0 = r6
            java.lang.String r0 = r0.getMessage()
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0021
            r0 = r8
            r9 = r0
            r0 = r8
            int r0 = r0.length()
            if (r0 != 0) goto L_0x0048
        L_0x0021:
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r1.<init>()
            r9 = r0
            r0 = r9
            java.lang.String r1 = "(was "
            java.lang.StringBuilder r0 = r0.append(r1)
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
        L_0x0048:
            r0 = 0
            r10 = r0
            r0 = r10
            r8 = r0
            r0 = r6
            boolean r0 = r0 instanceof com.fasterxml.jackson.core.JsonProcessingException
            if (r0 == 0) goto L_0x006f
            r0 = r6
            com.fasterxml.jackson.core.JsonProcessingException r0 = (com.fasterxml.jackson.core.JsonProcessingException) r0
            java.lang.Object r0 = r0.getProcessor()
            r11 = r0
            r0 = r10
            r8 = r0
            r0 = r11
            boolean r0 = r0 instanceof java.io.Closeable
            if (r0 == 0) goto L_0x006f
            r0 = r11
            java.io.Closeable r0 = (java.io.Closeable) r0
            r8 = r0
        L_0x006f:
            com.fasterxml.jackson.databind.JsonMappingException r0 = new com.fasterxml.jackson.databind.JsonMappingException
            r1 = r0
            r2 = r8
            r3 = r9
            r4 = r6
            r1.<init>(r2, r3, r4)
            r6 = r0
        L_0x007a:
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

    public void _appendPathDesc(StringBuilder sb) {
        LinkedList<Reference> linkedList = this._path;
        if (linkedList != null) {
            Iterator<Reference> it = linkedList.iterator();
            while (it.hasNext()) {
                sb.append(it.next().toString());
                if (it.hasNext()) {
                    sb.append("->");
                }
            }
        }
    }

    public String _buildMessage() {
        String message = super.getMessage();
        if (this._path == null) {
            return message;
        }
        StringBuilder sb = message == null ? new StringBuilder() : new StringBuilder(message);
        sb.append(" (through reference chain: ");
        getPathReference(sb);
        sb.append(')');
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return _buildMessage();
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String getMessage() {
        return _buildMessage();
    }

    public StringBuilder getPathReference(StringBuilder sb) {
        _appendPathDesc(sb);
        return sb;
    }

    public void prependPath(Reference reference) {
        if (this._path == null) {
            this._path = new LinkedList<>();
        }
        if (this._path.size() < 1000) {
            this._path.addFirst(reference);
        }
    }

    public void prependPath(Object obj, String str) {
        prependPath(new Reference(obj, str));
    }

    @Override // com.fasterxml.jackson.core.JsonProcessingException, java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }
}
