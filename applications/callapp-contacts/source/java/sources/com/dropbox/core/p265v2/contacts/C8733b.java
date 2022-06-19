package com.dropbox.core.p265v2.contacts;

import com.dropbox.core.p263a.AbstractC8547c;
import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p263a.C8548d;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.regex.Pattern;
/* renamed from: com.dropbox.core.v2.contacts.b */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b.class */
public final class C8733b {

    /* renamed from: a */
    public static final C8733b f30858a;

    /* renamed from: b */
    EnumC8736b f30859b;

    /* renamed from: c */
    private List<String> f30860c;

    /* renamed from: com.dropbox.core.v2.contacts.b$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$1.class */
    static final /* synthetic */ class C87341 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30861a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8736b.values().length];
            f30861a = iArr;
            try {
                iArr[EnumC8736b.CONTACTS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30861a[EnumC8736b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.contacts.b$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$a.class */
    static final class C8735a extends AbstractC8559f<C8733b> {

        /* renamed from: a */
        public static final C8735a f30862a = new C8735a();

        C8735a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8733b c8733b;
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
                if ("contacts_not_found".equals(str)) {
                    expectField("contacts_not_found", jsonParser);
                    c8733b = C8733b.m25133a((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                } else {
                    c8733b = C8733b.f30858a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8733b;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8733b c8733b = (C8733b) obj;
            if (C87341.f30861a[c8733b.f30859b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("contacts_not_found", jsonGenerator);
            jsonGenerator.writeFieldName("contacts_not_found");
            C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8733b.f30860c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.contacts.b$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$b.class */
    public enum EnumC8736b {
        CONTACTS_NOT_FOUND,
        OTHER
    }

    static {
        new C8733b();
        EnumC8736b enumC8736b = EnumC8736b.OTHER;
        C8733b c8733b = new C8733b();
        c8733b.f30859b = enumC8736b;
        f30858a = c8733b;
    }

    private C8733b() {
    }

    /* renamed from: a */
    public static C8733b m25133a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
                if (str.length() > 255) {
                    throw new IllegalArgumentException("Stringan item in list is longer than 255");
                }
                if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                    throw new IllegalArgumentException("Stringan item in list does not match pattern");
                }
            }
            new C8733b();
            EnumC8736b enumC8736b = EnumC8736b.CONTACTS_NOT_FOUND;
            C8733b c8733b = new C8733b();
            c8733b.f30859b = enumC8736b;
            c8733b.f30860c = list;
            return c8733b;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8733b)) {
            return false;
        }
        C8733b c8733b = (C8733b) obj;
        if (this.f30859b != c8733b.f30859b) {
            return false;
        }
        int i = C87341.f30861a[this.f30859b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f30860c;
        List<String> list2 = c8733b.f30860c;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30859b, this.f30860c});
    }

    public final String toString() {
        return C8735a.f30862a.serialize((C8735a) this, false);
    }
}
