package com.dropbox.core.v2.users;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    public static final b f18862a;

    /* renamed from: b  reason: collision with root package name */
    EnumC0371b f18863b;

    /* renamed from: c  reason: collision with root package name */
    private String f18864c;

    /* renamed from: com.dropbox.core.v2.users.b$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18865a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC0371b.values().length];
            f18865a = iArr;
            try {
                iArr[EnumC0371b.NO_ACCOUNT.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18865a[EnumC0371b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$a.class */
    public static final class a extends f<b> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18866a = new a();

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
                if ("no_account".equals(str)) {
                    expectField("no_account", jsonParser);
                    bVar = b.a(d.h.f17717a.deserialize(jsonParser));
                } else {
                    bVar = b.f18862a;
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
            if (AnonymousClass1.f18865a[bVar.f18863b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("no_account", jsonGenerator);
            jsonGenerator.writeFieldName("no_account");
            d.h.f17717a.serialize((d.h) bVar.f18864c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.users.b$b  reason: collision with other inner class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/users/b$b.class */
    public enum EnumC0371b {
        NO_ACCOUNT,
        OTHER
    }

    static {
        new b();
        EnumC0371b bVar = EnumC0371b.OTHER;
        b bVar2 = new b();
        bVar2.f18863b = bVar;
        f18862a = bVar2;
    }

    private b() {
    }

    public static b a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() < 40) {
            throw new IllegalArgumentException("String is shorter than 40");
        } else if (str.length() <= 40) {
            new b();
            EnumC0371b bVar = EnumC0371b.NO_ACCOUNT;
            b bVar2 = new b();
            bVar2.f18863b = bVar;
            bVar2.f18864c = str;
            return bVar2;
        } else {
            throw new IllegalArgumentException("String is longer than 40");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof b)) {
            return false;
        }
        b bVar = (b) obj;
        if (this.f18863b != bVar.f18863b) {
            return false;
        }
        int i = AnonymousClass1.f18865a[this.f18863b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        String str = this.f18864c;
        String str2 = bVar.f18864c;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18863b, this.f18864c});
    }

    public final String toString() {
        return a.f18866a.serialize((a) this, false);
    }
}
