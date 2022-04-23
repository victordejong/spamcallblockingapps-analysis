package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.CLog;
import com.callapp.framework.util.StringUtils;
import com.fasterxml.jackson.core.type.TypeReference;
import com.fasterxml.jackson.databind.JavaType;
import com.fasterxml.jackson.databind.JsonNode;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/Parser.class */
public class Parser {

    /* renamed from: a  reason: collision with root package name */
    public final String f16283a;

    /* renamed from: b  reason: collision with root package name */
    public final String f16284b;

    /* renamed from: c  reason: collision with root package name */
    public int f16285c;

    public Parser(String str) {
        this(str, "|");
    }

    public Parser(String str, String str2) {
        this.f16284b = str == null ? "" : str;
        this.f16283a = str2;
    }

    public static <T> T a(JsonNode jsonNode, TypeReference<T> typeReference) {
        if (jsonNode == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().reader((TypeReference<?>) typeReference).readValue(jsonNode);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public static <T> T a(InputStream inputStream, TypeReference<T> typeReference) {
        if (inputStream == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(inputStream, typeReference);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public static <T> T a(InputStream inputStream, Class<T> cls) {
        if (inputStream == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(inputStream, cls);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public static <T> T a(String str, TypeReference<T> typeReference) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, typeReference);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public static <T> T a(String str, JavaType javaType) {
        if (str == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, javaType);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public static <T> T a(String str, Class<T> cls) {
        if (StringUtils.a((CharSequence) str)) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, cls);
        } catch (IOException | LinkageError e) {
            CLog.b(Parser.class, e);
            return null;
        }
    }

    public final String a() {
        if (this.f16285c >= this.f16284b.length()) {
            return null;
        }
        String substring = this.f16284b.substring(this.f16285c);
        this.f16285c = this.f16284b.length();
        return substring;
    }
}
