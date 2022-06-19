package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ab */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab.class */
public final class C8798ab {

    /* renamed from: a */
    public static final C8798ab f31011a = m25087a(EnumC8801b.RESET);

    /* renamed from: b */
    public static final C8798ab f31012b = m25087a(EnumC8801b.OTHER);

    /* renamed from: c */
    EnumC8801b f31013c;

    /* renamed from: d */
    private C8819ai f31014d;

    /* renamed from: com.dropbox.core.v2.files.ab$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$1.class */
    static final /* synthetic */ class C87991 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31015a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8801b.values().length];
            f31015a = iArr;
            try {
                iArr[EnumC8801b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31015a[EnumC8801b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31015a[EnumC8801b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ab$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$a.class */
    static final class C8800a extends AbstractC8559f<C8798ab> {

        /* renamed from: a */
        public static final C8800a f31016a = new C8800a();

        C8800a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8798ab c8798ab;
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
                    c8798ab = C8798ab.m25085a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8798ab = "reset".equals(str) ? C8798ab.f31011a : C8798ab.f31012b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8798ab;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8798ab c8798ab = (C8798ab) obj;
            int i = C87991.f31015a[c8798ab.f31013c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("reset");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c8798ab.f31014d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ab$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$b.class */
    public enum EnumC8801b {
        PATH,
        RESET,
        OTHER
    }

    static {
        new C8798ab();
        new C8798ab();
    }

    private C8798ab() {
    }

    /* renamed from: a */
    private static C8798ab m25087a(EnumC8801b enumC8801b) {
        C8798ab c8798ab = new C8798ab();
        c8798ab.f31013c = enumC8801b;
        return c8798ab;
    }

    /* renamed from: a */
    public static C8798ab m25085a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8798ab();
            EnumC8801b enumC8801b = EnumC8801b.PATH;
            C8798ab c8798ab = new C8798ab();
            c8798ab.f31013c = enumC8801b;
            c8798ab.f31014d = c8819ai;
            return c8798ab;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8798ab)) {
            return false;
        }
        C8798ab c8798ab = (C8798ab) obj;
        if (this.f31013c != c8798ab.f31013c) {
            return false;
        }
        int i = C87991.f31015a[this.f31013c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        C8819ai c8819ai = this.f31014d;
        C8819ai c8819ai2 = c8798ab.f31014d;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31013c, this.f31014d});
    }

    public final String toString() {
        return C8800a.f31016a.serialize((C8800a) this, false);
    }
}
