package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y.class */
public enum y {
    CHANGE_ACCESS_LEVEL,
    CHANGE_AUDIENCE,
    REMOVE_EXPIRY,
    REMOVE_PASSWORD,
    SET_EXPIRY,
    SET_PASSWORD,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.y$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18725a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[y.values().length];
            f18725a = iArr;
            try {
                iArr[y.CHANGE_ACCESS_LEVEL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18725a[y.CHANGE_AUDIENCE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18725a[y.REMOVE_EXPIRY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18725a[y.REMOVE_PASSWORD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18725a[y.SET_EXPIRY.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18725a[y.SET_PASSWORD.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/y$a.class */
    static final class a extends f<y> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18726a = new a();

        a() {
        }

        public static y a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                y yVar = "change_access_level".equals(str) ? y.CHANGE_ACCESS_LEVEL : "change_audience".equals(str) ? y.CHANGE_AUDIENCE : "remove_expiry".equals(str) ? y.REMOVE_EXPIRY : "remove_password".equals(str) ? y.REMOVE_PASSWORD : "set_expiry".equals(str) ? y.SET_EXPIRY : "set_password".equals(str) ? y.SET_PASSWORD : y.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return yVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(y yVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18725a[yVar.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("change_access_level");
                    return;
                case 2:
                    jsonGenerator.writeString("change_audience");
                    return;
                case 3:
                    jsonGenerator.writeString("remove_expiry");
                    return;
                case 4:
                    jsonGenerator.writeString("remove_password");
                    return;
                case 5:
                    jsonGenerator.writeString("set_expiry");
                    return;
                case 6:
                    jsonGenerator.writeString("set_password");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((y) obj, jsonGenerator);
        }
    }
}
