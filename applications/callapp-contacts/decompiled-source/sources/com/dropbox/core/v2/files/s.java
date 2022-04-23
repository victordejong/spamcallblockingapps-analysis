package com.dropbox.core.v2.files;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/s.class */
public final class s extends av {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18356a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18357b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/s$a.class */
    public static final class a extends e<s> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18358a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ s deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("read_only".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("modified_by".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bool == null) {
                    throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
                } else if (str2 != null) {
                    s sVar = new s(bool.booleanValue(), str2, str3);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    sVar.a();
                    b.a(sVar);
                    return sVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"parent_shared_folder_id\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(s sVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            s sVar2 = sVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(sVar2.e), jsonGenerator);
            jsonGenerator.writeFieldName("parent_shared_folder_id");
            d.h.f17717a.serialize((d.h) sVar2.f18356a, jsonGenerator);
            if (sVar2.f18357b != null) {
                jsonGenerator.writeFieldName("modified_by");
                d.a(d.h.f17717a).serialize((c) sVar2.f18357b, jsonGenerator);
            }
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public s(boolean z, String str) {
        this(z, str, null);
    }

    public s(boolean z, String str, String str2) {
        super(z);
        if (str == null) {
            throw new IllegalArgumentException("Required value for 'parentSharedFolderId' is null");
        } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.f18356a = str;
            if (str2 != null) {
                if (str2.length() < 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is shorter than 40");
                } else if (str2.length() > 40) {
                    throw new IllegalArgumentException("String 'modifiedBy' is longer than 40");
                }
            }
            this.f18357b = str2;
        } else {
            throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
        }
    }

    @Override // com.dropbox.core.v2.files.av
    public final String a() {
        return a.f18358a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.av
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        s sVar = (s) obj;
        if (this.e != sVar.e) {
            return false;
        }
        String str = this.f18356a;
        String str2 = sVar.f18356a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18357b;
        String str4 = sVar.f18357b;
        if (str3 != str4) {
            return str3 != null && str3.equals(str4);
        }
        return true;
    }

    @Override // com.dropbox.core.v2.files.av
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18356a, this.f18357b});
    }

    @Override // com.dropbox.core.v2.files.av
    public final String toString() {
        return a.f18358a.serialize((a) this, false);
    }
}
