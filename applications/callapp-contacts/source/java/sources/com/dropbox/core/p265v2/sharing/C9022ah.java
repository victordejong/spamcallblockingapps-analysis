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
/* renamed from: com.dropbox.core.v2.sharing.ah */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah.class */
public final class C9022ah {

    /* renamed from: a */
    public static final C9022ah f31434a = m24905a(EnumC9025b.RESET);

    /* renamed from: b */
    public static final C9022ah f31435b = m24905a(EnumC9025b.OTHER);

    /* renamed from: c */
    EnumC9025b f31436c;

    /* renamed from: d */
    private C8819ai f31437d;

    /* renamed from: com.dropbox.core.v2.sharing.ah$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$1.class */
    static final /* synthetic */ class C90231 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31438a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9025b.values().length];
            f31438a = iArr;
            try {
                iArr[EnumC9025b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31438a[EnumC9025b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31438a[EnumC9025b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ah$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$a.class */
    static final class C9024a extends AbstractC8559f<C9022ah> {

        /* renamed from: a */
        public static final C9024a f31439a = new C9024a();

        C9024a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9022ah c9022ah;
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
                    c9022ah = C9022ah.m24906a(C8819ai.C8821a.m25065a(jsonParser));
                } else {
                    c9022ah = "reset".equals(str) ? C9022ah.f31434a : C9022ah.f31435b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9022ah;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9022ah c9022ah = (C9022ah) obj;
            int i = C90231.f31438a[c9022ah.f31436c.ordinal()];
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
            C8819ai.C8821a.f31056a.serialize(c9022ah.f31437d, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.ah$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ah$b.class */
    public enum EnumC9025b {
        PATH,
        RESET,
        OTHER
    }

    static {
        new C9022ah();
        new C9022ah();
    }

    private C9022ah() {
    }

    /* renamed from: a */
    public static C9022ah m24906a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C9022ah();
            EnumC9025b enumC9025b = EnumC9025b.PATH;
            C9022ah c9022ah = new C9022ah();
            c9022ah.f31436c = enumC9025b;
            c9022ah.f31437d = c8819ai;
            return c9022ah;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9022ah m24905a(EnumC9025b enumC9025b) {
        C9022ah c9022ah = new C9022ah();
        c9022ah.f31436c = enumC9025b;
        return c9022ah;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9022ah)) {
            return false;
        }
        C9022ah c9022ah = (C9022ah) obj;
        if (this.f31436c != c9022ah.f31436c) {
            return false;
        }
        int i = C90231.f31438a[this.f31436c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        C8819ai c8819ai = this.f31437d;
        C8819ai c8819ai2 = c9022ah.f31437d;
        return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31436c, this.f31437d});
    }

    public final String toString() {
        return C9024a.f31439a.serialize((C9024a) this, false);
    }
}
