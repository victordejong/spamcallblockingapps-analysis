package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.CLog;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/Serializer.class */
public class Serializer {

    /* renamed from: a  reason: collision with root package name */
    private final StringBuilder f16286a;

    /* renamed from: b  reason: collision with root package name */
    private final String f16287b;

    public Serializer() {
        this("|");
    }

    public Serializer(String str) {
        this.f16286a = new StringBuilder();
        this.f16287b = str;
    }

    public static String a(Object obj) {
        try {
            return getJSONObjectMapper().writeValueAsString(obj);
        } catch (IOException e) {
            CLog.b(Serializer.class, e);
            return null;
        }
    }

    private void a() {
        if (this.f16286a.length() > 0) {
            this.f16286a.append(this.f16287b);
        }
    }

    public static ObjectMapper getJSONObjectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
        return objectMapper;
    }

    public final Serializer a(CharSequence charSequence) {
        a();
        if (charSequence != null) {
            this.f16286a.append(charSequence);
        }
        return this;
    }

    public String toString() {
        return this.f16286a.toString();
    }
}
