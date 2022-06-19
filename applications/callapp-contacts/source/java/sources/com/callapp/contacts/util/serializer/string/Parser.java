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

    /* renamed from: a */
    public final String f28368a;

    /* renamed from: b */
    public final String f28369b;

    /* renamed from: c */
    public int f28370c;

    public Parser(String str) {
        this(str, "|");
    }

    public Parser(String str, String str2) {
        this.f28369b = str == null ? "" : str;
        this.f28368a = str2;
    }

    /* renamed from: a */
    public static <T> T m26920a(JsonNode jsonNode, TypeReference<T> typeReference) {
        if (jsonNode == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().reader((TypeReference<?>) typeReference).readValue(jsonNode);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m26919a(InputStream inputStream, TypeReference<T> typeReference) {
        if (inputStream == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(inputStream, typeReference);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m26918a(InputStream inputStream, Class<T> cls) {
        if (inputStream == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(inputStream, cls);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m26917a(String str, TypeReference<T> typeReference) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, typeReference);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m26916a(String str, JavaType javaType) {
        if (str == null) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, javaType);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public static <T> T m26915a(String str, Class<T> cls) {
        if (StringUtils.m26059a((CharSequence) str)) {
            return null;
        }
        try {
            return (T) Serializer.getJSONObjectMapper().readValue(str, cls);
        } catch (IOException | LinkageError e) {
            CLog.m27596b(Parser.class, e);
            return null;
        }
    }

    /* renamed from: a */
    public final String m26921a() {
        if (this.f28370c >= this.f28369b.length()) {
            return null;
        }
        String substring = this.f28369b.substring(this.f28370c);
        this.f28370c = this.f28369b.length();
        return substring;
    }
}
