package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.sharing.x */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/x.class */
public enum EnumC9212x {
    VIEWER,
    EDITOR,
    OTHER;

    /* renamed from: com.dropbox.core.v2.sharing.x$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/x$1.class */
    static final /* synthetic */ class C92131 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31793a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9212x.values().length];
            f31793a = iArr;
            try {
                iArr[EnumC9212x.VIEWER.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31793a[EnumC9212x.EDITOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.x$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/x$a.class */
    static final class C9214a extends AbstractC8559f<EnumC9212x> {

        /* renamed from: a */
        public static final C9214a f31794a = new C9214a();

        C9214a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9212x enumC9212x = "viewer".equals(str) ? EnumC9212x.VIEWER : "editor".equals(str) ? EnumC9212x.EDITOR : EnumC9212x.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9212x;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C92131.f31793a[((EnumC9212x) obj).ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("viewer");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("editor");
            }
        }
    }
}
