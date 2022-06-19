package com.dropbox.core.p265v2.p268c;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.p268c.C8696c;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.c.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b.class */
public final class C8692b {

    /* renamed from: a */
    public static final C8692b f30808a = m25161a(EnumC8695b.NO_PERMISSION);

    /* renamed from: b */
    public static final C8692b f30809b = m25161a(EnumC8695b.OTHER);

    /* renamed from: c */
    EnumC8695b f30810c;

    /* renamed from: d */
    private C8696c f30811d;

    /* renamed from: com.dropbox.core.v2.c.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$1.class */
    static final /* synthetic */ class C86931 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30812a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8695b.values().length];
            f30812a = iArr;
            try {
                iArr[EnumC8695b.INVALID_ROOT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30812a[EnumC8695b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f30812a[EnumC8695b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.c.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$a.class */
    public static final class C8694a extends AbstractC8559f<C8692b> {

        /* renamed from: a */
        public static final C8694a f30813a = new C8694a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8692b c8692b;
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
                if ("invalid_root".equals(str)) {
                    expectField("invalid_root", jsonParser);
                    c8692b = C8692b.m25159a(C8696c.C8697a.f30816a.deserialize(jsonParser));
                } else {
                    c8692b = "no_permission".equals(str) ? C8692b.f30808a : C8692b.f30809b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8692b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8692b c8692b = (C8692b) obj;
            int i = C86931.f30812a[c8692b.f30810c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("no_permission");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("invalid_root", jsonGenerator);
            jsonGenerator.writeFieldName("invalid_root");
            C8696c.C8697a.f30816a.serialize((C8696c.C8697a) c8692b.f30811d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.c.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/c/b$b.class */
    public enum EnumC8695b {
        INVALID_ROOT,
        NO_PERMISSION,
        OTHER
    }

    static {
        new C8692b();
        new C8692b();
    }

    private C8692b() {
    }

    /* renamed from: a */
    private static C8692b m25161a(EnumC8695b enumC8695b) {
        C8692b c8692b = new C8692b();
        c8692b.f30810c = enumC8695b;
        return c8692b;
    }

    /* renamed from: a */
    public static C8692b m25159a(C8696c c8696c) {
        if (c8696c != null) {
            new C8692b();
            EnumC8695b enumC8695b = EnumC8695b.INVALID_ROOT;
            C8692b c8692b = new C8692b();
            c8692b.f30810c = enumC8695b;
            c8692b.f30811d = c8696c;
            return c8692b;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8692b)) {
            return false;
        }
        C8692b c8692b = (C8692b) obj;
        if (this.f30810c != c8692b.f30810c) {
            return false;
        }
        int i = C86931.f30812a[this.f30810c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        C8696c c8696c = this.f30811d;
        C8696c c8696c2 = c8692b.f30811d;
        return c8696c == c8696c2 || c8696c.equals(c8696c2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30810c, this.f30811d});
    }

    public final String toString() {
        return C8694a.f30813a.serialize((C8694a) this, false);
    }
}
