package com.dropbox.core.v2.files;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.files.ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab.class */
public final class ab {

    /* renamed from: a  reason: collision with root package name */
    public static final ab f18129a = a(b.RESET);

    /* renamed from: b  reason: collision with root package name */
    public static final ab f18130b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18131c;

    /* renamed from: d  reason: collision with root package name */
    private ai f18132d;

    /* renamed from: com.dropbox.core.v2.files.ab$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18133a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18133a = iArr;
            try {
                iArr[b.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18133a[b.RESET.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18133a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$a.class */
    static final class a extends f<ab> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18134a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ab abVar;
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
                    ai.a aVar = ai.a.f18163a;
                    abVar = ab.a(ai.a.a(jsonParser));
                } else {
                    abVar = "reset".equals(str) ? ab.f18129a : ab.f18130b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return abVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ab abVar = (ab) obj;
            int i = AnonymousClass1.f18133a[abVar.f18131c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("path", jsonGenerator);
                jsonGenerator.writeFieldName("path");
                ai.a.f18163a.serialize(abVar.f18132d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("reset");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ab$b.class */
    public enum b {
        PATH,
        RESET,
        OTHER
    }

    static {
        new ab();
        new ab();
    }

    private ab() {
    }

    private static ab a(b bVar) {
        ab abVar = new ab();
        abVar.f18131c = bVar;
        return abVar;
    }

    public static ab a(ai aiVar) {
        if (aiVar != null) {
            new ab();
            b bVar = b.PATH;
            ab abVar = new ab();
            abVar.f18131c = bVar;
            abVar.f18132d = aiVar;
            return abVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ab)) {
            return false;
        }
        ab abVar = (ab) obj;
        if (this.f18131c != abVar.f18131c) {
            return false;
        }
        int i = AnonymousClass1.f18133a[this.f18131c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        ai aiVar = this.f18132d;
        ai aiVar2 = abVar.f18132d;
        return aiVar == aiVar2 || aiVar.equals(aiVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18131c, this.f18132d});
    }

    public final String toString() {
        return a.f18134a.serialize((a) this, false);
    }
}
