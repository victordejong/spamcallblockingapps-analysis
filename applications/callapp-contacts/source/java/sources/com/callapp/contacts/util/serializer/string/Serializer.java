package com.callapp.contacts.util.serializer.string;

import com.callapp.contacts.util.CLog;
import com.fasterxml.jackson.annotation.JsonInclude;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/callapp/contacts/util/serializer/string/Serializer.class */
public class Serializer {

    /* renamed from: a */
    private final StringBuilder f28371a;

    /* renamed from: b */
    private final String f28372b;

    public Serializer() {
        this("|");
    }

    public Serializer(String str) {
        this.f28371a = new StringBuilder();
        this.f28372b = str;
    }

    /* renamed from: a */
    public static String m26912a(Object obj) {
        try {
            return getJSONObjectMapper().writeValueAsString(obj);
        } catch (IOException e) {
            CLog.m27596b(Serializer.class, e);
            return null;
        }
    }

    /* renamed from: a */
    private void m26914a() {
        if (this.f28371a.length() > 0) {
            this.f28371a.append(this.f28372b);
        }
    }

    public static ObjectMapper getJSONObjectMapper() {
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.setSerializationInclusion(JsonInclude.Include.NON_NULL);
        objectMapper.configure(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES, false);
        objectMapper.configure(JsonParser.Feature.ALLOW_UNQUOTED_FIELD_NAMES, true);
        return objectMapper;
    }

    /* renamed from: a */
    public final Serializer m26913a(CharSequence charSequence) {
        m26914a();
        if (charSequence != null) {
            this.f28371a.append(charSequence);
        }
        return this;
    }

    public String toString() {
        return this.f28371a.toString();
    }
}
