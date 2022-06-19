package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8558e;
import com.dropbox.core.p263a.C8546b;
import com.dropbox.core.p263a.C8548d;
import com.dropbox.core.p265v2.sharing.C9031ak;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.sharing.ao */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ao.class */
public final class C9044ao {

    /* renamed from: a */
    protected final String f31471a;

    /* renamed from: b */
    protected final String f31472b;

    /* renamed from: c */
    protected final List<C9031ak> f31473c;

    /* renamed from: d */
    protected final String f31474d;

    /* renamed from: com.dropbox.core.v2.sharing.ao$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ao$a.class */
    public static final class C9045a extends AbstractC8558e<C9044ao> {

        /* renamed from: a */
        public static final C9045a f31475a = new C9045a();

        C9045a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ C9044ao deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
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
            List list = null;
            String str4 = null;
            while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                String currentName = jsonParser.getCurrentName();
                jsonParser.nextToken();
                if ("folder_name".equals(currentName)) {
                    str2 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("shared_folder_id".equals(currentName)) {
                    str3 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else if ("permissions".equals(currentName)) {
                    list = (List) C8548d.m25352b(C9031ak.C9032a.f31449a).deserialize(jsonParser);
                } else if ("path".equals(currentName)) {
                    str4 = C8548d.C8556h.f30459a.deserialize(jsonParser);
                } else {
                    skipValue(jsonParser);
                }
            }
            if (str2 == null) {
                throw new JsonParseException(jsonParser, "Required field \"folder_name\" missing.");
            }
            if (str3 == null) {
                throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
            }
            if (list == null) {
                throw new JsonParseException(jsonParser, "Required field \"permissions\" missing.");
            }
            if (str4 == null) {
                throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
            }
            C9044ao c9044ao = new C9044ao(str2, str3, list, str4);
            if (!z) {
                expectEndObject(jsonParser);
            }
            f31475a.serialize((C9045a) c9044ao, true);
            C8546b.m25355a(c9044ao);
            return c9044ao;
        }

        @Override // com.dropbox.core.p263a.AbstractC8558e
        public final /* synthetic */ void serialize(C9044ao c9044ao, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            C9044ao c9044ao2 = c9044ao;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("folder_name");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9044ao2.f31471a, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_id");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9044ao2.f31472b, jsonGenerator);
            jsonGenerator.writeFieldName("permissions");
            C8548d.m25352b(C9031ak.C9032a.f31449a).serialize((AbstractC8547c) c9044ao2.f31473c, jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8548d.C8556h.f30459a.serialize((C8548d.C8556h) c9044ao2.f31474d, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public C9044ao(String str, String str2, List<C9031ak> list, String str3) {
        if (str != null) {
            this.f31471a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            }
            if (!Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
            this.f31472b = str2;
            if (list == null) {
                throw new IllegalArgumentException("Required value for 'permissions' is null");
            }
            for (C9031ak c9031ak : list) {
                if (c9031ak == null) {
                    throw new IllegalArgumentException("An item in list 'permissions' is null");
                }
            }
            this.f31473c = list;
            if (str3 == null) {
                throw new IllegalArgumentException("Required value for 'path' is null");
            }
            this.f31474d = str3;
            return;
        }
        throw new IllegalArgumentException("Required value for 'folderName' is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        C9044ao c9044ao = (C9044ao) obj;
        String str = this.f31471a;
        String str2 = c9044ao.f31471a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f31472b;
        String str4 = c9044ao.f31472b;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        List<C9031ak> list = this.f31473c;
        List<C9031ak> list2 = c9044ao.f31473c;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        String str5 = this.f31474d;
        String str6 = c9044ao.f31474d;
        return str5 == str6 || str5.equals(str6);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31471a, this.f31472b, this.f31473c, this.f31474d});
    }

    public final String toString() {
        return C9045a.f31475a.serialize((C9045a) this, false);
    }
}
