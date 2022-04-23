package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z.class */
public enum z {
    PUBLIC,
    TEAM,
    NO_ONE,
    PASSWORD,
    MEMBERS,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.z$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18727a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[z.values().length];
            f18727a = iArr;
            try {
                iArr[z.PUBLIC.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18727a[z.TEAM.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18727a[z.NO_ONE.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18727a[z.PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18727a[z.MEMBERS.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/z$a.class */
    public static final class a extends f<z> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18728a = new a();

        public static z a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                z = true;
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
            } else {
                z = false;
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
            }
            if (str != null) {
                z zVar = "public".equals(str) ? z.PUBLIC : "team".equals(str) ? z.TEAM : "no_one".equals(str) ? z.NO_ONE : "password".equals(str) ? z.PASSWORD : "members".equals(str) ? z.MEMBERS : z.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return zVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(z zVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18727a[zVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("public");
            } else if (i == 2) {
                jsonGenerator.writeString("team");
            } else if (i == 3) {
                jsonGenerator.writeString("no_one");
            } else if (i == 4) {
                jsonGenerator.writeString("password");
            } else if (i != 5) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("members");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((z) obj, jsonGenerator);
        }
    }
}
