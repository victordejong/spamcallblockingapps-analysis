package com.verizon.ads.utils;

import android.util.JsonWriter;
import java.io.Closeable;
import java.io.Writer;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
import org.json.JSONArray;
import org.json.JSONObject;
@Metadata(bv = {1, 0, 3}, d1 = {"��J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\u0010\u0006\n\u0002\u0010\t\n\u0002\u0010\u0004\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0018��2\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u0007\u001a\u00020\bJ\u0006\u0010\t\u001a\u00020\bJ\b\u0010\n\u001a\u00020\bH\u0016J\u0006\u0010\u000b\u001a\u00020\bJ\u0006\u0010\f\u001a\u00020\bJ\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000e\u001a\u00020\u000fJ\u000e\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0011\u001a\u00020\u000fJ\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0014J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0015J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u0016J\u000e\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0012\u001a\u00020\u000fJ\u000e\u0010\u0017\u001a\u00020\b2\u0006\u0010\u0018\u001a\u00020\u0019J\u000e\u0010\u001a\u001a\u00020\b2\u0006\u0010\u001b\u001a\u00020\u001cR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u001d"}, d2 = {"Lcom/verizon/ads/utils/JSONWriter;", "Ljava/io/Closeable;", "writer", "Ljava/io/Writer;", "(Ljava/io/Writer;)V", "jsonWriter", "Landroid/util/JsonWriter;", "beginArray", "", "beginObject", EventConstants.CLOSE, "endArray", "endObject", "flush", "name", "", "setIndent", "indent", "value", "", "", "", "", "write", "obj", "Lorg/json/JSONObject;", "writeArray", "array", "Lorg/json/JSONArray;", "lib_release"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/utils/JSONWriter.class */
public final class JSONWriter implements Closeable {
    private final JsonWriter jsonWriter;

    public JSONWriter(Writer writer) {
        p.c(writer, "writer");
        this.jsonWriter = new JsonWriter(writer);
    }

    public final void beginArray() {
        this.jsonWriter.beginArray();
    }

    public final void beginObject() {
        this.jsonWriter.beginObject();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.jsonWriter.close();
    }

    public final void endArray() {
        this.jsonWriter.endArray();
    }

    public final void endObject() {
        this.jsonWriter.endObject();
    }

    public final void flush() {
        this.jsonWriter.flush();
    }

    public final void name(String name) {
        p.c(name, "name");
        this.jsonWriter.name(name);
    }

    public final void setIndent(String indent) {
        p.c(indent, "indent");
        this.jsonWriter.setIndent(indent);
    }

    public final void value(double d2) {
        this.jsonWriter.value(d2);
    }

    public final void value(long j) {
        this.jsonWriter.value(j);
    }

    public final void value(Number value) {
        p.c(value, "value");
        this.jsonWriter.value(value);
    }

    public final void value(String value) {
        p.c(value, "value");
        this.jsonWriter.value(value);
    }

    public final void value(boolean z) {
        this.jsonWriter.value(z);
    }

    public final void write(JSONObject obj) {
        p.c(obj, "obj");
        beginObject();
        Iterator<String> childNames = obj.keys();
        p.a((Object) childNames, "childNames");
        while (childNames.hasNext()) {
            String childName = childNames.next();
            Object obj2 = obj.get(childName);
            p.a((Object) childName, "childName");
            name(childName);
            if (obj2 instanceof JSONObject) {
                write((JSONObject) obj2);
            } else if (obj2 instanceof JSONArray) {
                writeArray((JSONArray) obj2);
            } else if (obj2 instanceof Boolean) {
                value(((Boolean) obj2).booleanValue());
            } else if (obj2 instanceof Long) {
                value(((Number) obj2).longValue());
            } else if (obj2 instanceof Double) {
                value(((Number) obj2).doubleValue());
            } else if (obj2 instanceof Number) {
                value((Number) obj2);
            } else if (obj2 instanceof String) {
                value((String) obj2);
            }
        }
        endObject();
    }

    public final void writeArray(JSONArray array) {
        p.c(array, "array");
        beginArray();
        int length = array.length();
        for (int i = 0; i < length; i++) {
            Object obj = array.get(i);
            if (obj instanceof JSONObject) {
                write((JSONObject) obj);
            } else if (obj instanceof JSONArray) {
                writeArray((JSONArray) obj);
            } else if (obj instanceof Boolean) {
                value(((Boolean) obj).booleanValue());
            } else if (obj instanceof Long) {
                value(((Number) obj).longValue());
            } else if (obj instanceof Double) {
                value(((Number) obj).doubleValue());
            } else if (obj instanceof Number) {
                value((Number) obj);
            } else if (obj instanceof String) {
                value((String) obj);
            }
        }
        endArray();
    }
}
