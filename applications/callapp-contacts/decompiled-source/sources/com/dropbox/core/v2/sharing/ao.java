package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.b;
import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.e;
import com.dropbox.core.v2.sharing.ak;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ao.class */
public final class ao {

    /* renamed from: a  reason: collision with root package name */
    protected final String f18504a;

    /* renamed from: b  reason: collision with root package name */
    protected final String f18505b;

    /* renamed from: c  reason: collision with root package name */
    protected final List<ak> f18506c;

    /* renamed from: d  reason: collision with root package name */
    protected final String f18507d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ao$a.class */
    public static final class a extends e<ao> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18508a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ ao deserialize(JsonParser jsonParser, boolean z) throws IOException, JsonParseException {
            String str;
            String str2 = null;
            if (!z) {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            } else {
                str = null;
            }
            if (str == null) {
                String str3 = null;
                List list = null;
                String str4 = null;
                while (jsonParser.getCurrentToken() == JsonToken.FIELD_NAME) {
                    String currentName = jsonParser.getCurrentName();
                    jsonParser.nextToken();
                    if ("folder_name".equals(currentName)) {
                        str2 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("shared_folder_id".equals(currentName)) {
                        str3 = d.h.f17717a.deserialize(jsonParser);
                    } else if ("permissions".equals(currentName)) {
                        list = (List) d.b(ak.a.f18489a).deserialize(jsonParser);
                    } else if ("path".equals(currentName)) {
                        str4 = d.h.f17717a.deserialize(jsonParser);
                    } else {
                        skipValue(jsonParser);
                    }
                }
                if (str2 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"folder_name\" missing.");
                } else if (str3 == null) {
                    throw new JsonParseException(jsonParser, "Required field \"shared_folder_id\" missing.");
                } else if (list == null) {
                    throw new JsonParseException(jsonParser, "Required field \"permissions\" missing.");
                } else if (str4 != null) {
                    ao aoVar = new ao(str2, str3, list, str4);
                    if (!z) {
                        expectEndObject(jsonParser);
                    }
                    f18508a.serialize((a) aoVar, true);
                    b.a(aoVar);
                    return aoVar;
                } else {
                    throw new JsonParseException(jsonParser, "Required field \"path\" missing.");
                }
            } else {
                throw new JsonParseException(jsonParser, "No subtype found that matches tag: \"" + str + "\"");
            }
        }

        @Override // com.dropbox.core.a.e
        public final /* synthetic */ void serialize(ao aoVar, JsonGenerator jsonGenerator, boolean z) throws IOException, JsonGenerationException {
            ao aoVar2 = aoVar;
            if (!z) {
                jsonGenerator.writeStartObject();
            }
            jsonGenerator.writeFieldName("folder_name");
            d.h.f17717a.serialize((d.h) aoVar2.f18504a, jsonGenerator);
            jsonGenerator.writeFieldName("shared_folder_id");
            d.h.f17717a.serialize((d.h) aoVar2.f18505b, jsonGenerator);
            jsonGenerator.writeFieldName("permissions");
            d.b(ak.a.f18489a).serialize((c) aoVar2.f18506c, jsonGenerator);
            jsonGenerator.writeFieldName("path");
            d.h.f17717a.serialize((d.h) aoVar2.f18507d, jsonGenerator);
            if (!z) {
                jsonGenerator.writeEndObject();
            }
        }
    }

    public ao(String str, String str2, List<ak> list, String str3) {
        if (str != null) {
            this.f18504a = str;
            if (str2 == null) {
                throw new IllegalArgumentException("Required value for 'sharedFolderId' is null");
            } else if (Pattern.matches("[-_0-9a-zA-Z:]+", str2)) {
                this.f18505b = str2;
                if (list != null) {
                    for (ak akVar : list) {
                        if (akVar == null) {
                            throw new IllegalArgumentException("An item in list 'permissions' is null");
                        }
                    }
                    this.f18506c = list;
                    if (str3 != null) {
                        this.f18507d = str3;
                        return;
                    }
                    throw new IllegalArgumentException("Required value for 'path' is null");
                }
                throw new IllegalArgumentException("Required value for 'permissions' is null");
            } else {
                throw new IllegalArgumentException("String 'sharedFolderId' does not match pattern");
            }
        } else {
            throw new IllegalArgumentException("Required value for 'folderName' is null");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !obj.getClass().equals(getClass())) {
            return false;
        }
        ao aoVar = (ao) obj;
        String str = this.f18504a;
        String str2 = aoVar.f18504a;
        if (str != str2 && !str.equals(str2)) {
            return false;
        }
        String str3 = this.f18505b;
        String str4 = aoVar.f18505b;
        if (str3 != str4 && !str3.equals(str4)) {
            return false;
        }
        List<ak> list = this.f18506c;
        List<ak> list2 = aoVar.f18506c;
        if (list != list2 && !list.equals(list2)) {
            return false;
        }
        String str5 = this.f18507d;
        String str6 = aoVar.f18507d;
        return str5 == str6 || str5.equals(str6);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18504a, this.f18505b, this.f18506c, this.f18507d});
    }

    public final String toString() {
        return a.f18508a.serialize((a) this, false);
    }
}
