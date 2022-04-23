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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/u.class */
public final class u extends av {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18364a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18365b;

    /* renamed from: c  reason: collision with root package name */
    protected final boolean f18366c;

    /* renamed from: d  reason: collision with root package name */
    protected final boolean f18367d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/u$a.class */
    public static final class a extends e<u> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18368a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ u deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            Boolean bool = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                Boolean bool2 = Boolean.FALSE;
                Boolean bool3 = Boolean.FALSE;
                String str2 = null;
                String str3 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("read_only".equals(currentName)) {
                        bool = d.a.f17710a.deserialize(jsonParser);
                    } else if ("parent_shared_folder_id".equals(currentName)) {
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("shared_folder_id".equals(currentName)) {
                        str3 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    } else if ("traverse_only".equals(currentName)) {
                        bool2 = d.a.f17710a.deserialize(jsonParser);
                    } else if ("no_access".equals(currentName)) {
                        bool3 = d.a.f17710a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (bool != null) {
                    u uVar = new u(bool.booleanValue(), str2, str3, bool2.booleanValue(), bool3.booleanValue());
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    uVar.a();
                    b.a(uVar);
                    return uVar;
                }
                throw new JsonParseException(jsonParser, "Required field \"read_only\" missing.");
            }
            throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(u uVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            u uVar2 = uVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("read_only");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(uVar2.e), jsonGenerator);
            if (uVar2.f18364a != null) {
                jsonGenerator.writeFieldName("parent_shared_folder_id");
                d.a(d.h.f17717a).serialize((c) uVar2.f18364a, jsonGenerator);
            }
            if (uVar2.f18365b != null) {
                jsonGenerator.writeFieldName("shared_folder_id");
                d.a(d.h.f17717a).serialize((c) uVar2.f18365b, jsonGenerator);
            }
            jsonGenerator.writeFieldName("traverse_only");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(uVar2.f18366c), jsonGenerator);
            jsonGenerator.writeFieldName("no_access");
            d.a.f17710a.serialize((d.a) Boolean.valueOf(uVar2.f18367d), jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public u(boolean z) {
        this(z, null, null, false, false);
    }

    public u(boolean z, String str, String str2, boolean z2, boolean z3) {
        super(z);
        if (str == null || Pattern.matches("[-_0-9a-zA-Z:]+", str)) {
            this.f18364a = str;
            if (str2 == null || Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                this.f18365b = str2;
                this.f18366c = z2;
                this.f18367d = z3;
                return;
            }
            throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
        }
        throw new IllegalArgumentException("String 'parentSharedFolderId' does not match pattern");
    }

    @Override // com.dropbox.core.v2.files.av
    public final String a() {
        return a.f18368a.serialize((a) this, true);
    }

    @Override // com.dropbox.core.v2.files.av
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        u uVar = (u) obj;
        if (this.e != uVar.e) {
            return false;
        }
        String str = this.f18364a;
        String str2 = uVar.f18364a;
        if (str != str2 && (str == null || !str.equals(str2))) {
            return false;
        }
        String str3 = this.f18365b;
        String str4 = uVar.f18365b;
        return (str3 == str4 || (str3 != null && str3.equals(str4))) && this.f18366c == uVar.f18366c && this.f18367d == uVar.f18367d;
    }

    @Override // com.dropbox.core.v2.files.av
    public final int hashCode() {
        return (super.hashCode() * 31) + Arrays.hashCode(new Object[]{this.f18364a, this.f18365b, Boolean.valueOf(this.f18366c), Boolean.valueOf(this.f18367d)});
    }

    @Override // com.dropbox.core.v2.files.av
    public final String toString() {
        return a.f18368a.serialize((a) this, false);
    }
}
