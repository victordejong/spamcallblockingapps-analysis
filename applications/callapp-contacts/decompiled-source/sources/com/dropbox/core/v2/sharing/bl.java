package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl.class */
public enum bl {
    INVALID_SETTINGS,
    NOT_AUTHORIZED;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bl$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18593a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[bl.values().length];
            f18593a = iArr;
            try {
                iArr[bl.INVALID_SETTINGS.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18593a[bl.NOT_AUTHORIZED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bl$a.class */
    static final class a extends f<bl> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18594a = new a();

        a() {
        }

        public static bl a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bl blVar;
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
                if ("invalid_settings".equals(str)) {
                    blVar = bl.INVALID_SETTINGS;
                } else if ("not_authorized".equals(str)) {
                    blVar = bl.NOT_AUTHORIZED;
                } else {
                    throw new JsonParseException(jsonParser, "Unknown tag: ".concat(String.valueOf(str)));
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return blVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(bl blVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18593a[blVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_settings");
            } else if (i == 2) {
                jsonGenerator.writeString("not_authorized");
            } else {
                throw new IllegalArgumentException("Unrecognized tag: ".concat(String.valueOf(blVar)));
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((bl) obj, jsonGenerator);
        }
    }
}
