package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b.class */
public enum b {
    OWNER,
    EDITOR,
    VIEWER,
    VIEWER_NO_COMMENT,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18561a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18561a = iArr;
            try {
                iArr[b.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18561a[b.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18561a[b.VIEWER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18561a[b.VIEWER_NO_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b$a.class */
    public static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18562a = new a();

        public static b a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                b bVar = "owner".equals(str) ? b.OWNER : "editor".equals(str) ? b.EDITOR : "viewer".equals(str) ? b.VIEWER : "viewer_no_comment".equals(str) ? b.VIEWER_NO_COMMENT : b.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(b bVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18561a[bVar.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("owner");
            } else if (i == 2) {
                jsonGenerator.writeString("editor");
            } else if (i == 3) {
                jsonGenerator.writeString("viewer");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("viewer_no_comment");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((b) obj, jsonGenerator);
        }
    }
}
