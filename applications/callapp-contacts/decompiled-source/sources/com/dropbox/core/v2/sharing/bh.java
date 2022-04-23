package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bj;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh.class */
public final class bh {

    /* renamed from: a  reason: collision with root package name */
    public static final bh f18585a;

    /* renamed from: b  reason: collision with root package name */
    b f18586b;

    /* renamed from: c  reason: collision with root package name */
    private bj f18587c;

    /* renamed from: com.dropbox.core.v2.sharing.bh$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18588a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18588a = iArr;
            try {
                iArr[b.METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18588a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$a.class */
    static final class a extends f<bh> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18589a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            bh bhVar;
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
                if ("metadata".equals(str)) {
                    expectField("metadata", jsonParser);
                    bhVar = bh.a(bj.a.f18590a.deserialize(jsonParser));
                } else {
                    bhVar = bh.f18585a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bhVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            bh bhVar = (bh) obj;
            if (AnonymousClass1.f18588a[bhVar.f18586b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("metadata", jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            bj.a.f18590a.serialize((bj.a) bhVar.f18587c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$b.class */
    public enum b {
        METADATA,
        OTHER
    }

    static {
        new bh();
        b bVar = b.OTHER;
        bh bhVar = new bh();
        bhVar.f18586b = bVar;
        f18585a = bhVar;
    }

    private bh() {
    }

    public static bh a(bj bjVar) {
        if (bjVar != null) {
            new bh();
            b bVar = b.METADATA;
            bh bhVar = new bh();
            bhVar.f18586b = bVar;
            bhVar.f18587c = bjVar;
            return bhVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof bh)) {
            return false;
        }
        bh bhVar = (bh) obj;
        if (this.f18586b != bhVar.f18586b) {
            return false;
        }
        int i = AnonymousClass1.f18588a[this.f18586b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        bj bjVar = this.f18587c;
        bj bjVar2 = bhVar.f18587c;
        return bjVar == bjVar2 || bjVar.equals(bjVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18586b, this.f18587c});
    }

    public final String toString() {
        return a.f18589a.serialize((a) this, false);
    }
}
