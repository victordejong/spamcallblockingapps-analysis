package com.dropbox.core.p265v2.teamlog;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* renamed from: com.dropbox.core.v2.teamlog.a */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a.class */
public final class C9318a {

    /* renamed from: a */
    public static final C9318a f31945a = m24692a(EnumC9321b.BAD_CURSOR);

    /* renamed from: b */
    public static final C9318a f31946b = m24692a(EnumC9321b.OTHER);

    /* renamed from: c */
    EnumC9321b f31947c;

    /* renamed from: d */
    private Date f31948d;

    /* renamed from: com.dropbox.core.v2.teamlog.a$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$1.class */
    static final /* synthetic */ class C93191 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31949a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9321b.values().length];
            f31949a = iArr;
            try {
                iArr[EnumC9321b.BAD_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31949a[EnumC9321b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31949a[EnumC9321b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.a$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$a.class */
    static final class C9320a extends AbstractC8559f<C9318a> {

        /* renamed from: a */
        public static final C9320a f31950a = new C9320a();

        C9320a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9318a c9318a;
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
                if ("bad_cursor".equals(str)) {
                    c9318a = C9318a.f31945a;
                } else if ("reset".equals(str)) {
                    expectField("reset", jsonParser);
                    c9318a = C9318a.m24690a(C8548d.C8550b.f30453a.deserialize(jsonParser));
                } else {
                    c9318a = C9318a.f31946b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9318a;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9318a c9318a = (C9318a) obj;
            int i = C93191.f31949a[c9318a.f31947c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("bad_cursor");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("reset", jsonGenerator);
                jsonGenerator.writeFieldName("reset");
                C8548d.C8550b.f30453a.serialize((C8548d.C8550b) c9318a.f31948d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.a$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$b.class */
    public enum EnumC9321b {
        BAD_CURSOR,
        RESET,
        OTHER
    }

    static {
        new C9318a();
        new C9318a();
    }

    private C9318a() {
    }

    /* renamed from: a */
    private static C9318a m24692a(EnumC9321b enumC9321b) {
        C9318a c9318a = new C9318a();
        c9318a.f31947c = enumC9321b;
        return c9318a;
    }

    /* renamed from: a */
    public static C9318a m24690a(Date date) {
        if (date != null) {
            new C9318a();
            EnumC9321b enumC9321b = EnumC9321b.RESET;
            C9318a c9318a = new C9318a();
            c9318a.f31947c = enumC9321b;
            c9318a.f31948d = date;
            return c9318a;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9318a)) {
            return false;
        }
        C9318a c9318a = (C9318a) obj;
        if (this.f31947c != c9318a.f31947c) {
            return false;
        }
        int i = C93191.f31949a[this.f31947c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        Date date = this.f31948d;
        Date date2 = c9318a.f31948d;
        return date == date2 || date.equals(date2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31947c, this.f31948d});
    }

    public final String toString() {
        return C9320a.f31950a.serialize((C9320a) this, false);
    }
}
