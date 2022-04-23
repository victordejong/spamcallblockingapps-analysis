package com.dropbox.core.v2.contacts;

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
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f18009a;

    /* renamed from: b  reason: collision with root package name */
    EnumC0365b f18010b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f18011c;

    /* renamed from: com.dropbox.core.v2.contacts.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18012a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0365b.values().length];
            f18012a = iArr;
            try {
                iArr[EnumC0365b.CONTACTS_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18012a[EnumC0365b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$a.class */
    static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18013a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            b bVar;
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
                    bVar = b.a((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else {
                    bVar = b.f18009a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return bVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            b bVar = (b) obj;
            if (AnonymousClass1.f18012a[bVar.f18010b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("contacts_not_found", jsonGenerator);
            jsonGenerator.writeFieldName("contacts_not_found");
            d.b(d.h.f17717a).serialize((c) bVar.f18011c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.contacts.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/contacts/b$b.class */
    public enum EnumC0365b {
        CONTACTS_NOT_FOUND,
        OTHER
    }

    static {
        new b();
        EnumC0365b bVar = EnumC0365b.OTHER;
        b bVar2 = new b();
        bVar2.f18010b = bVar;
        f18009a = bVar2;
    }

    private b() {
    }

    public static b a(List<String> list) {
        if (list != null) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                } else if (str.length() > 255) {
                    throw new IllegalArgumentException("Stringan item in list is longer than 255");
                } else if (!Pattern.matches("^['&A-Za-z0-9._%+-]+@[A-Za-z0-9-][A-Za-z0-9.-]*\\.[A-Za-z]{2,15}$", str)) {
                    throw new IllegalArgumentException("Stringan item in list does not match pattern");
                }
            }
            new b();
            EnumC0365b bVar = EnumC0365b.CONTACTS_NOT_FOUND;
            b bVar2 = new b();
            bVar2.f18010b = bVar;
            bVar2.f18011c = list;
            return bVar2;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f18010b != bVar.f18010b) {
            return false;
        }
        int i = AnonymousClass1.f18012a[this.f18010b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f18011c;
        List<String> list2 = bVar.f18011c;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18010b, this.f18011c});
    }

    public final String toString() {
        return a.f18013a.serialize((a) this, false);
    }
}
