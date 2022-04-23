package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd.class */
public final class bd {

    /* renamed from: a  reason: collision with root package name */
    public static final bd f18571a = a(b.INVALID_DROPBOX_ID);

    /* renamed from: b  reason: collision with root package name */
    public static final bd f18572b = a(b.NOT_A_MEMBER);

    /* renamed from: c  reason: collision with root package name */
    public static final bd f18573c = a(b.OTHER);

    /* renamed from: d  reason: collision with root package name */
    b f18574d;
    private ai e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bd$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18575a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18575a = iArr;
            try {
                iArr[b.INVALID_DROPBOX_ID.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18575a[b.NOT_A_MEMBER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18575a[b.NO_EXPLICIT_ACCESS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f18575a[b.OTHER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$a.class */
    static final class a extends f<bd> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18576a = new a();

        a() {
        }

        public static bd a(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            bd bdVar;
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
                if ("invalid_dropbox_id".equals(str)) {
                    bdVar = bd.f18571a;
                } else if ("not_a_member".equals(str)) {
                    bdVar = bd.f18572b;
                } else if ("no_explicit_access".equals(str)) {
                    ai.a aVar = ai.a.f18483a;
                    bdVar = bd.a(ai.a.a(jsonParser, true));
                } else {
                    bdVar = bd.f18573c;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bdVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(bd bdVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18575a[bdVar.f18574d.ordinal()];
            if (i == 1) {
                jsonGenerator.writeString("invalid_dropbox_id");
            } else if (i == 2) {
                jsonGenerator.writeString("not_a_member");
            } else if (i != 3) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeStartObject();
                writeTag("no_explicit_access", jsonGenerator);
                ai.a aVar = ai.a.f18483a;
                ai.a.a(bdVar.e, jsonGenerator, true);
                jsonGenerator.writeEndObject();
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bd$b.class */
    public enum b {
        INVALID_DROPBOX_ID,
        NOT_A_MEMBER,
        NO_EXPLICIT_ACCESS,
        OTHER
    }

    static {
        new bd();
        new bd();
        new bd();
    }

    private bd() {
    }

    public static bd a(ai aiVar) {
        if (aiVar != null) {
            new bd();
            b bVar = b.NO_EXPLICIT_ACCESS;
            bd bdVar = new bd();
            bdVar.f18574d = bVar;
            bdVar.e = aiVar;
            return bdVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    private static bd a(b bVar) {
        bd bdVar = new bd();
        bdVar.f18574d = bVar;
        return bdVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bd)) {
            return false;
        }
        bd bdVar = (bd) obj;
        if (this.f18574d != bdVar.f18574d) {
            return false;
        }
        int i = AnonymousClass1.f18575a[this.f18574d.ordinal()];
        if (i == 1 || i == 2) {
            return true;
        }
        if (i != 3) {
            return i == 4;
        }
        ai aiVar = this.e;
        ai aiVar2 = bdVar.e;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18574d, this.e});
    }

    public final String toString() {
        return a.f18576a.serialize((a) this, false);
    }
}
