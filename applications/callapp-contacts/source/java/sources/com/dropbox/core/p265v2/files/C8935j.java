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
/* renamed from: com.dropbox.core.v2.files.j */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j.class */
public final class C8935j {

    /* renamed from: a */
    public static final C8935j f31260a = m24957a(EnumC8938b.UNSUPPORTED_FILE);

    /* renamed from: b */
    public static final C8935j f31261b = m24957a(EnumC8938b.OTHER);

    /* renamed from: c */
    EnumC8938b f31262c;

    /* renamed from: d */
    private C8819ai f31263d;

    /* renamed from: com.dropbox.core.v2.files.j$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$1.class */
    static final /* synthetic */ class C89361 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31264a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8938b.values().length];
            f31264a = iArr;
            try {
                iArr[EnumC8938b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31264a[EnumC8938b.UNSUPPORTED_FILE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31264a[EnumC8938b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.j$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$a.class */
    static final class C8937a extends AbstractC8559f<C8935j> {

        /* renamed from: a */
        public static final C8937a f31265a = new C8937a();

        C8937a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8935j c8935j;
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
                    c8935j = C8935j.m24958a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c8935j = "unsupported_file".equals(str) ? C8935j.f31260a : C8935j.f31261b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8935j;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8935j c8935j = (C8935j) obj;
            int i = C89361.f31264a[c8935j.f31262c.ordinal()];
            if (i != 1) {
                if (i != 2) {
                    jsonGenerator.writeString("other");
                    return;
                } else {
                    jsonGenerator.writeString("unsupported_file");
                    return;
                }
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            C8819ai.C8821a.f31056a.serialize(c8935j.f31263d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.files.j$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/j$b.class */
    public enum EnumC8938b {
        PATH,
        UNSUPPORTED_FILE,
        OTHER
    }

    static {
        new C8935j();
        new C8935j();
    }

    private C8935j() {
    }

    /* renamed from: a */
    public static C8935j m24958a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8935j();
            EnumC8938b enumC8938b = EnumC8938b.PATH;
            C8935j c8935j = new C8935j();
            c8935j.f31262c = enumC8938b;
            c8935j.f31263d = c8819ai;
            return c8935j;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8935j m24957a(EnumC8938b enumC8938b) {
        C8935j c8935j = new C8935j();
        c8935j.f31262c = enumC8938b;
        return c8935j;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8935j)) {
            return false;
        }
        C8935j c8935j = (C8935j) obj;
        if (this.f31262c != c8935j.f31262c) {
            return false;
        }
        int i = C89361.f31264a[this.f31262c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        C8819ai c8819ai = this.f31263d;
        C8819ai c8819ai2 = c8935j.f31263d;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31262c, this.f31263d});
    }

    public final String toString() {
        return C8937a.f31265a.serialize((C8937a) this, false);
    }
}
