package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bn;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae.class */
public final class ae {

    /* renamed from: a  reason: collision with root package name */
    public static final ae f18462a = a(b.INVALID_CURSOR);

    /* renamed from: b  reason: collision with root package name */
    public static final ae f18463b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18464c;

    /* renamed from: d  reason: collision with root package name */
    private bn f18465d;

    /* renamed from: com.dropbox.core.v2.sharing.ae$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18466a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18466a = iArr;
            try {
                iArr[b.USER_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18466a[b.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18466a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$a.class */
    static final class a extends f<ae> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18467a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ae aeVar;
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
                if ("user_error".equals(str)) {
                    expectField("user_error", jsonParser);
                    bn.a aVar = bn.a.f18598a;
                    aeVar = ae.a(bn.a.a(jsonParser));
                } else {
                    aeVar = "invalid_cursor".equals(str) ? ae.f18462a : ae.f18463b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aeVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ae aeVar = (ae) obj;
            int i = AnonymousClass1.f18466a[aeVar.f18464c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("user_error", jsonGenerator);
                jsonGenerator.writeFieldName("user_error");
                bn.a aVar = bn.a.f18598a;
                bn.a.a(aeVar.f18465d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ae$b.class */
    public enum b {
        USER_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new ae();
        new ae();
    }

    private ae() {
    }

    private static ae a(b bVar) {
        ae aeVar = new ae();
        aeVar.f18464c = bVar;
        return aeVar;
    }

    public static ae a(bn bnVar) {
        if (bnVar != null) {
            new ae();
            b bVar = b.USER_ERROR;
            ae aeVar = new ae();
            aeVar.f18464c = bVar;
            aeVar.f18465d = bnVar;
            return aeVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ae)) {
            return false;
        }
        ae aeVar = (ae) obj;
        if (this.f18464c != aeVar.f18464c) {
            return false;
        }
        int i = AnonymousClass1.f18466a[this.f18464c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        bn bnVar = this.f18465d;
        bn bnVar2 = aeVar.f18465d;
        return bnVar == bnVar2 || bnVar.equals(bnVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18464c, this.f18465d});
    }

    public final String toString() {
        return a.f18467a.serialize((a) this, false);
    }
}
