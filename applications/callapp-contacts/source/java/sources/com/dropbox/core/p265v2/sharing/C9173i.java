package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.EnumC9218z;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.i */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/i.class */
public final class C9173i {

    /* renamed from: a */
    protected final String f31731a;

    /* renamed from: b */
    protected final String f31732b;

    /* renamed from: c */
    protected final EnumC9218z f31733c;

    /* renamed from: com.dropbox.core.v2.sharing.i$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/i$a.class */
    static final class C9174a extends AbstractC8558e<C9173i> {

        /* renamed from: a */
        public static final C9174a f31734a = new C9174a();

        C9174a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9173i deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str != null) {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
            String str3 = null;
            EnumC9218z enumC9218z = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("shared_folder_id".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("name".equals(currentName)) {
                    str3 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("audience".equals(currentName)) {
                    EnumC9218z.C9220a c9220a = EnumC9218z.C9220a.f31798a;
                    enumC9218z = EnumC9218z.C9220a.m24750a(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"name\" missing.");
            }
            if (enumC9218z == null) {
                throw new JsonParseException(jsonParser, "Required field \"audience\" missing.");
            }
            C9173i c9173i = new C9173i(str2, str3, enumC9218z);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31734a.serialize((C9174a) c9173i, true);
            C8546b.m25355a(c9173i);
            return c9173i;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9173i c9173i, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9173i c9173i2 = c9173i;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("shared_folder_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9173i2.f31731a, jsonGenerator);
            jsonGenerator.writeFieldName("name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9173i2.f31732b, jsonGenerator);
            jsonGenerator.writeFieldName("audience");
            EnumC9218z.C9220a c9220a = EnumC9218z.C9220a.f31798a;
            EnumC9218z.C9220a.m24751a(c9173i2.f31733c, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9173i(String str, String str2, EnumC9218z enumC9218z) {
        if (str != null) {
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.f31731a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'name' is null");
            }
            this.f31732b = str2;
            if (enumC9218z == null) {
                throw new IllegalArgumentException("Required value for 'audience' is null");
            }
            this.f31733c = enumC9218z;
            return;
        }
        throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9173i c9173i = (C9173i) obj;
        String str = this.f31731a;
        String str2 = c9173i.f31731a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31732b;
        String str4 = c9173i.f31732b;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        EnumC9218z enumC9218z = this.f31733c;
        EnumC9218z enumC9218z2 = c9173i.f31733c;
        return enumC9218z == enumC9218z2 || enumC9218z.equals(enumC9218z2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31731a, this.f31732b, this.f31733c});
    }

    public final String toString() {
        return C9174a.f31734a.serialize((C9174a) this, false);
    }
}
