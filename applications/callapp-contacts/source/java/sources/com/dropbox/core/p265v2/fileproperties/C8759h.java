package com.dropbox.core.p265v2.fileproperties;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.fileproperties.EnumC8747d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.fileproperties.h */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h.class */
public final class C8759h {

    /* renamed from: a */
    public static final C8759h f30916a;

    /* renamed from: b */
    EnumC8762b f30917b;

    /* renamed from: c */
    private EnumC8747d f30918c;

    /* renamed from: com.dropbox.core.v2.fileproperties.h$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$1.class */
    static final /* synthetic */ class C87601 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30919a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8762b.values().length];
            f30919a = iArr;
            try {
                iArr[EnumC8762b.PROPERTY_GROUP_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30919a[EnumC8762b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.h$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$a.class */
    static final class C8761a extends AbstractC8559f<C8759h> {

        /* renamed from: a */
        public static final C8761a f30920a = new C8761a();

        C8761a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8759h c8759h;
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
                if ("property_group_lookup".equals(str)) {
                    expectField("property_group_lookup", jsonParser);
                    EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
                    c8759h = C8759h.m25110a(EnumC8747d.C8749a.m25119a(jsonParser));
                } else {
                    c8759h = C8759h.f30916a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8759h;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8759h c8759h = (C8759h) obj;
            if (C87601.f30919a[c8759h.f30917b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("property_group_lookup", jsonGenerator);
            jsonGenerator.writeFieldName("property_group_lookup");
            EnumC8747d.C8749a c8749a = EnumC8747d.C8749a.f30896a;
            EnumC8747d.C8749a.m25120a(c8759h.f30918c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.h$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/h$b.class */
    public enum EnumC8762b {
        PROPERTY_GROUP_LOOKUP,
        OTHER
    }

    static {
        new C8759h();
        EnumC8762b enumC8762b = EnumC8762b.OTHER;
        C8759h c8759h = new C8759h();
        c8759h.f30917b = enumC8762b;
        f30916a = c8759h;
    }

    private C8759h() {
    }

    /* renamed from: a */
    public static C8759h m25110a(EnumC8747d enumC8747d) {
        if (enumC8747d != null) {
            new C8759h();
            EnumC8762b enumC8762b = EnumC8762b.PROPERTY_GROUP_LOOKUP;
            C8759h c8759h = new C8759h();
            c8759h.f30917b = enumC8762b;
            c8759h.f30918c = enumC8747d;
            return c8759h;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8759h)) {
            return false;
        }
        C8759h c8759h = (C8759h) obj;
        if (this.f30917b != c8759h.f30917b) {
            return false;
        }
        int i = C87601.f30919a[this.f30917b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        EnumC8747d enumC8747d = this.f30918c;
        EnumC8747d enumC8747d2 = c8759h.f30918c;
        return enumC8747d == enumC8747d2 || enumC8747d.equals(enumC8747d2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30917b, this.f30918c});
    }

    public final String toString() {
        return C8761a.f30920a.serialize((C8761a) this, false);
    }
}
