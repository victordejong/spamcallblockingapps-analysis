package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.j */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j.class */
public final class C9175j {

    /* renamed from: a */
    public static final C9175j f31735a;

    /* renamed from: b */
    EnumC9178b f31736b;

    /* renamed from: c */
    private C8819ai f31737c;

    /* renamed from: com.dropbox.core.v2.sharing.j$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$1.class */
    static final /* synthetic */ class C91761 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31738a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9178b.values().length];
            f31738a = iArr;
            try {
                iArr[EnumC9178b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31738a[EnumC9178b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.j$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$a.class */
    static final class C9177a extends AbstractC8559f<C9175j> {

        /* renamed from: a */
        public static final C9177a f31739a = new C9177a();

        C9177a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9175j c9175j;
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
                if ("path".equals(str)) {
                    expectField("path", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c9175j = C9175j.m24786a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c9175j = C9175j.f31735a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9175j;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9175j c9175j = (C9175j) obj;
            if (C91761.f31738a[c9175j.f31736b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c9175j.f31737c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.j$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/j$b.class */
    public enum EnumC9178b {
        PATH,
        OTHER
    }

    static {
        new C9175j();
        EnumC9178b enumC9178b = EnumC9178b.OTHER;
        C9175j c9175j = new C9175j();
        c9175j.f31736b = enumC9178b;
        f31735a = c9175j;
    }

    private C9175j() {
    }

    /* renamed from: a */
    public static C9175j m24786a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C9175j();
            EnumC9178b enumC9178b = EnumC9178b.PATH;
            C9175j c9175j = new C9175j();
            c9175j.f31736b = enumC9178b;
            c9175j.f31737c = c8819ai;
            return c9175j;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9175j)) {
            return false;
        }
        C9175j c9175j = (C9175j) obj;
        if (this.f31736b != c9175j.f31736b) {
            return false;
        }
        int i = C91761.f31738a[this.f31736b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        C8819ai c8819ai = this.f31737c;
        C8819ai c8819ai2 = c9175j.f31737c;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31736b, this.f31737c});
    }

    public final String toString() {
        return C9177a.f31739a.serialize((C9177a) this, false);
    }
}
