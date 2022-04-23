package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af.class */
public final class af {

    /* renamed from: a  reason: collision with root package name */
    public static final af f18468a = a(b.INVALID_CURSOR);

    /* renamed from: b  reason: collision with root package name */
    public static final af f18469b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18470c;

    /* renamed from: d  reason: collision with root package name */
    private bc f18471d;

    /* renamed from: com.dropbox.core.v2.sharing.af$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18472a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18472a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18472a[b.INVALID_CURSOR.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18472a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$a.class */
    static final class a extends f<af> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18473a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            af afVar;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    bc.a aVar = bc.a.f18570a;
                    afVar = af.a(bc.a.a(jsonParser));
                } else {
                    afVar = "invalid_cursor".equals(str) ? af.f18468a : af.f18469b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return afVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            af afVar = (af) obj;
            int i = AnonymousClass1.f18472a[afVar.f18470c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bc.a aVar = bc.a.f18570a;
                bc.a.a(afVar.f18471d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("invalid_cursor");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/af$b.class */
    public enum b {
        ACCESS_ERROR,
        INVALID_CURSOR,
        OTHER
    }

    static {
        new af();
        new af();
    }

    private af() {
    }

    private static af a(b bVar) {
        af afVar = new af();
        afVar.f18470c = bVar;
        return afVar;
    }

    public static af a(bc bcVar) {
        if (bcVar != null) {
            new af();
            b bVar = b.ACCESS_ERROR;
            af afVar = new af();
            afVar.f18470c = bVar;
            afVar.f18471d = bcVar;
            return afVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof af)) {
            return false;
        }
        af afVar = (af) obj;
        if (this.f18470c != afVar.f18470c) {
            return false;
        }
        int i = AnonymousClass1.f18472a[this.f18470c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        bc bcVar = this.f18471d;
        bc bcVar2 = afVar.f18471d;
        return bcVar == bcVar2 || bcVar.equals(bcVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18470c, this.f18471d});
    }

    public final String toString() {
        return a.f18473a.serialize((a) this, false);
    }
}
