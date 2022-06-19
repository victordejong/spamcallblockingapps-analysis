package com.dropbox.core.p265v2.team;

import com.dropbox.core.p263a.AbstractC8559f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
/* renamed from: com.dropbox.core.v2.team.ba */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ba.class */
public enum EnumC9263ba {
    ACTIVE,
    ARCHIVED,
    ARCHIVE_IN_PROGRESS,
    OTHER;

    /* renamed from: com.dropbox.core.v2.team.ba$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ba$1.class */
    public static final /* synthetic */ class C92641 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31890a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9263ba.values().length];
            f31890a = iArr;
            try {
                iArr[EnumC9263ba.ACTIVE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31890a[EnumC9263ba.ARCHIVED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31890a[EnumC9263ba.ARCHIVE_IN_PROGRESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.team.ba$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/team/ba$a.class */
    static final class C9265a extends AbstractC8559f<EnumC9263ba> {

        /* renamed from: a */
        public static final C9265a f31891a = new C9265a();

        C9265a() {
        }

        /* renamed from: a */
        public static EnumC9263ba m24728a(JsonParser jsonParser) throws IOException, JsonParseException {
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
                EnumC9263ba enumC9263ba = "active".equals(str) ? EnumC9263ba.ACTIVE : "archived".equals(str) ? EnumC9263ba.ARCHIVED : "archive_in_progress".equals(str) ? EnumC9263ba.ARCHIVE_IN_PROGRESS : EnumC9263ba.OTHER;
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return enumC9263ba;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public static void m24729a(EnumC9263ba enumC9263ba, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = C92641.f31890a[enumC9263ba.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("active");
            } else if (i == 2) {
                jsonGenerator.writeString("archived");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("archive_in_progress");
            }
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return m24728a(jsonParser);
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m24729a((EnumC9263ba) obj, jsonGenerator);
        }
    }
}
