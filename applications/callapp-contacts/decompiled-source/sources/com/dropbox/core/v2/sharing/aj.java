package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj.class */
public enum aj {
    LEAVE_A_COPY,
    MAKE_EDITOR,
    MAKE_OWNER,
    MAKE_VIEWER,
    MAKE_VIEWER_NO_COMMENT,
    REMOVE,
    OTHER;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.aj$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18484a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x004d -> B:31:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0051 -> B:27:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x0055 -> B:25:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:18:0x0059 -> B:21:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x005d -> B:29:0x0040). Please submit an issue!!! */
        static {
            int[] iArr = new int[aj.values().length];
            f18484a = iArr;
            try {
                iArr[aj.LEAVE_A_COPY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18484a[aj.MAKE_EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18484a[aj.MAKE_OWNER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18484a[aj.MAKE_VIEWER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f18484a[aj.MAKE_VIEWER_NO_COMMENT.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f18484a[aj.REMOVE.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/aj$a.class */
    static final class a extends f<aj> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18485a = new a();

        a() {
        }

        public static aj a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                aj ajVar = "leave_a_copy".equals(str) ? aj.LEAVE_A_COPY : "make_editor".equals(str) ? aj.MAKE_EDITOR : "make_owner".equals(str) ? aj.MAKE_OWNER : "make_viewer".equals(str) ? aj.MAKE_VIEWER : "make_viewer_no_comment".equals(str) ? aj.MAKE_VIEWER_NO_COMMENT : "remove".equals(str) ? aj.REMOVE : aj.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return ajVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        public static void a(aj ajVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            switch (AnonymousClass1.f18484a[ajVar.ordinal()]) {
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

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a((aj) obj, jsonGenerator);
        }
    }
}
