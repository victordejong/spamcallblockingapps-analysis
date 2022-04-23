package com.dropbox.core.v2.teamlog;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a.class */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public static final a f18852a = a(b.BAD_CURSOR);

    /* renamed from: b  reason: collision with root package name */
    public static final a f18853b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18854c;

    /* renamed from: d  reason: collision with root package name */
    private Date f18855d;

    /* renamed from: com.dropbox.core.v2.teamlog.a$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18856a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18856a = iArr;
            try {
                iArr[b.BAD_CURSOR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18856a[b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18856a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.teamlog.a$a  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$a.class */
    static final class C0370a extends f<a> {

        /* renamed from: a  reason: collision with root package name */
        public static final C0370a f18857a = new C0370a();

        C0370a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            a aVar;
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
                    aVar = a.f18852a;
                } else if ("reset".equals(str)) {
                    expectField("reset", jsonParser);
                    aVar = a.a(d.b.f17711a.deserialize(jsonParser));
                } else {
                    aVar = a.f18853b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return aVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            a aVar = (a) obj;
            int i = AnonymousClass1.f18856a[aVar.f18854c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("bad_cursor");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("reset", jsonGenerator);
                jsonGenerator.writeFieldName("reset");
                d.b.f17711a.serialize((d.b) aVar.f18855d, jsonGenerator);
                jsonGenerator.writeEndObject();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/teamlog/a$b.class */
    public enum b {
        BAD_CURSOR,
        RESET,
        OTHER
    }

    static {
        new a();
        new a();
    }

    private a() {
    }

    private static a a(b bVar) {
        a aVar = new a();
        aVar.f18854c = bVar;
        return aVar;
    }

    public static a a(Date date) {
        if (date != null) {
            new a();
            b bVar = b.RESET;
            a aVar = new a();
            aVar.f18854c = bVar;
            aVar.f18855d = date;
            return aVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        if (this.f18854c != aVar.f18854c) {
            return false;
        }
        int i = AnonymousClass1.f18856a[this.f18854c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        Date date = this.f18855d;
        Date date2 = aVar.f18855d;
        return date == date2 || date.equals(date2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18854c, this.f18855d});
    }

    public final String toString() {
        return C0370a.f18857a.serialize((C0370a) this, false);
    }
}
