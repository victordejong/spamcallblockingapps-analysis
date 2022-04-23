package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c.class */
public enum c {
    OWNER,
    EDITORS,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.c$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18641a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[c.values().length];
            f18641a = iArr;
            try {
                iArr[c.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18641a[c.EDITORS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/c$a.class */
    public static final class a extends f<c> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18642a = new a();

        public static c a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                c cVar = "owner".equals(str) ? c.OWNER : "editors".equals(str) ? c.EDITORS : c.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return cVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(c cVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18641a[cVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("owner");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("editors");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((c) obj, jsonGenerator);
        }
    }
}
