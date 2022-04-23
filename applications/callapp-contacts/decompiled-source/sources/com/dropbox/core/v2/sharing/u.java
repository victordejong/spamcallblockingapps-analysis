package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.c;
import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u.class */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    public static final u f18711a;

    /* renamed from: b  reason: collision with root package name */
    b f18712b;

    /* renamed from: c  reason: collision with root package name */
    private String f18713c;

    /* renamed from: com.dropbox.core.v2.sharing.u$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18714a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18714a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18714a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$a.class */
    static final class a extends f<u> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18715a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            u uVar;
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
                    String str2 = null;
                    if (jsonParser.getCurrentToken() != JsonToken.END_OBJECT) {
                        expectField("path", jsonParser);
                        str2 = (String) d.a(d.h.f17717a).deserialize(jsonParser);
                    }
                    uVar = str2 == null ? u.a() : u.a(str2);
                } else {
                    uVar = u.f18711a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return uVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            u uVar = (u) obj;
            if (AnonymousClass1.f18714a[uVar.f18712b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("path", jsonGenerator);
            jsonGenerator.writeFieldName("path");
            d.a(d.h.f17717a).serialize((c) uVar.f18713c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/u$b.class */
    public enum b {
        PATH,
        OTHER
    }

    static {
        new u();
        b bVar = b.OTHER;
        u uVar = new u();
        uVar.f18712b = bVar;
        f18711a = uVar;
    }

    private u() {
    }

    public static u a() {
        return a((String) null);
    }

    public static u a(String str) {
        new u();
        b bVar = b.PATH;
        u uVar = new u();
        uVar.f18712b = bVar;
        uVar.f18713c = str;
        return uVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof u)) {
            return false;
        }
        u uVar = (u) obj;
        if (this.f18712b != uVar.f18712b) {
            return false;
        }
        int i = AnonymousClass1.f18714a[this.f18712b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f18713c;
        String str2 = uVar.f18713c;
        if (str != str2) {
            return str != null && str.equals(str2);
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18712b, this.f18713c});
    }

    public final String toString() {
        return a.f18715a.serialize((a) this, false);
    }
}
