package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.aw;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o.class */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    public static final o f18339a = a(b.UNLOCKED);

    /* renamed from: b  reason: collision with root package name */
    public static final o f18340b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18341c;

    /* renamed from: d  reason: collision with root package name */
    private aw f18342d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.files.o$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18343a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18343a = iArr;
            try {
                iArr[b.UNLOCKED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18343a[b.SINGLE_USER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18343a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$a.class */
    static final class a extends f<o> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18344a = new a();

        a() {
        }

        public static o a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            o oVar;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("unlocked".equals(str)) {
                    oVar = o.f18339a;
                } else if ("single_user".equals(str)) {
                    aw.a aVar = aw.a.f18220a;
                    oVar = o.a(aw.a.a(jsonParser, true));
                } else {
                    oVar = o.f18340b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return oVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(o oVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18343a[oVar.f18341c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("unlocked");
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("single_user", jsonGenerator);
                aw.a aVar = aw.a.f18220a;
                aw.a.a(oVar.f18342d, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/o$b.class */
    public enum b {
        UNLOCKED,
        SINGLE_USER,
        OTHER
    }

    static {
        new o();
        new o();
    }

    private o() {
    }

    public static o a(aw awVar) {
        if (awVar != null) {
            new o();
            b bVar = b.SINGLE_USER;
            o oVar = new o();
            oVar.f18341c = bVar;
            oVar.f18342d = awVar;
            return oVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static o a(b bVar) {
        o oVar = new o();
        oVar.f18341c = bVar;
        return oVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        if (this.f18341c != oVar.f18341c) {
            return false;
        }
        int i = AnonymousClass1.f18343a[this.f18341c.ordinal()];
        if (i == 1) {
            return true;
        }
        if (i != 2) {
            return i == 3;
        }
        aw awVar = this.f18342d;
        aw awVar2 = oVar.f18342d;
        return awVar == awVar2 || awVar.equals(awVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18341c, this.f18342d});
    }

    public final String toString() {
        return a.f18344a.serialize((a) this, false);
    }
}
