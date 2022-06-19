package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.aj */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj.class */
public enum EnumC9028aj {
    LEAVE_A_COPY,
    MAKE_EDITOR,
    MAKE_OWNER,
    MAKE_VIEWER,
    MAKE_VIEWER_NO_COMMENT,
    REMOVE,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.aj$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj$1.class */
    public static final /* synthetic */ class C90291 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31444a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9028aj.values().length];
            f31444a = iArr;
            try {
                iArr[EnumC9028aj.LEAVE_A_COPY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31444a[EnumC9028aj.MAKE_EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31444a[EnumC9028aj.MAKE_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31444a[EnumC9028aj.MAKE_VIEWER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31444a[EnumC9028aj.MAKE_VIEWER_NO_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31444a[EnumC9028aj.REMOVE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.aj$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj$a.class */
    static final class C9030a extends AbstractC8559f<EnumC9028aj> {

        /* renamed from: a */
        public static final C9030a f31445a = new C9030a();

        C9030a() {
        }

        /* renamed from: a */
        public static EnumC9028aj m24900a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9028aj enumC9028aj = "leave_a_copy".equals(str) ? EnumC9028aj.LEAVE_A_COPY : "make_editor".equals(str) ? EnumC9028aj.MAKE_EDITOR : "make_owner".equals(str) ? EnumC9028aj.MAKE_OWNER : "make_viewer".equals(str) ? EnumC9028aj.MAKE_VIEWER : "make_viewer_no_comment".equals(str) ? EnumC9028aj.MAKE_VIEWER_NO_COMMENT : "remove".equals(str) ? EnumC9028aj.REMOVE : EnumC9028aj.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9028aj;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24901a(EnumC9028aj enumC9028aj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (C90291.f31444a[enumC9028aj.ordinal()]) {
                case 1:
                    jsonGenerator.writeString("leave_a_copy");
                    return;
                case 2:
                    jsonGenerator.writeString("make_editor");
                    return;
                case 3:
                    jsonGenerator.writeString("make_owner");
                    return;
                case 4:
                    jsonGenerator.writeString("make_viewer");
                    return;
                case 5:
                    jsonGenerator.writeString("make_viewer_no_comment");
                    return;
                case 6:
                    jsonGenerator.writeString("remove");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24900a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24901a((EnumC9028aj) obj, jsonGenerator);
        }
    }
}
