package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b.class */
public enum EnumC9085b {
    OWNER,
    EDITOR,
    VIEWER,
    VIEWER_NO_COMMENT,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b$1.class */
    public static final /* synthetic */ class C90861 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31568a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9085b.values().length];
            f31568a = iArr;
            try {
                iArr[EnumC9085b.OWNER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31568a[EnumC9085b.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31568a[EnumC9085b.VIEWER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31568a[EnumC9085b.VIEWER_NO_COMMENT.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/b$a.class */
    public static final class C9087a extends AbstractC8559f<EnumC9085b> {

        /* renamed from: a */
        public static final C9087a f31569a = new C9087a();

        /* renamed from: a */
        public static EnumC9085b m24859a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9085b enumC9085b = "owner".equals(str) ? EnumC9085b.OWNER : "editor".equals(str) ? EnumC9085b.EDITOR : "viewer".equals(str) ? EnumC9085b.VIEWER : "viewer_no_comment".equals(str) ? EnumC9085b.VIEWER_NO_COMMENT : EnumC9085b.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9085b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24860a(EnumC9085b enumC9085b, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C90861.f31568a[enumC9085b.ordinal()];
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

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24859a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24860a((EnumC9085b) obj, jsonGenerator);
        }
    }
}
