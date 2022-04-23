package com.dropbox.core.v2.fileproperties;

import com.dropbox.core.a.d;
import com.dropbox.core.a.f;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
import java.util.regex.Pattern;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l.class */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static final l f18066a = a(b.RESTRICTED_CONTENT);

    /* renamed from: b  reason: collision with root package name */
    public static final l f18067b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18068c;

    /* renamed from: d  reason: collision with root package name */
    private String f18069d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.fileproperties.l$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18070a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18070a = iArr;
            try {
                iArr[b.TEMPLATE_NOT_FOUND.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18070a[b.RESTRICTED_CONTENT.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18070a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$a.class */
    public static final class a extends f<l> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18071a = new a();

        public static l a(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            l lVar;
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
                if ("template_not_found".equals(str)) {
                    expectField("template_not_found", jsonParser);
                    lVar = l.a(d.h.f17717a.deserialize(jsonParser));
                } else {
                    lVar = "restricted_content".equals(str) ? l.f18066a : l.f18067b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return lVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        /* renamed from: a */
        public final void serialize(l lVar, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            int i = AnonymousClass1.f18070a[lVar.f18068c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("template_not_found", jsonGenerator);
                jsonGenerator.writeFieldName("template_not_found");
                d.h.f17717a.serialize((d.h) lVar.f18069d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("restricted_content");
            }
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            return a(jsonParser);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/l$b.class */
    public enum b {
        TEMPLATE_NOT_FOUND,
        RESTRICTED_CONTENT,
        OTHER
    }

    static {
        new l();
        new l();
    }

    private l() {
    }

    private static l a(b bVar) {
        l lVar = new l();
        lVar.f18068c = bVar;
        return lVar;
    }

    public static l a(String str) {
        if (str == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (str.length() <= 0) {
            throw new IllegalArgumentException("String is shorter than 1");
        } else if (Pattern.matches("(/|ptid:).*", str)) {
            new l();
            b bVar = b.TEMPLATE_NOT_FOUND;
            l lVar = new l();
            lVar.f18068c = bVar;
            lVar.f18069d = str;
            return lVar;
        } else {
            throw new IllegalArgumentException("String does not match pattern");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        if (this.f18068c != lVar.f18068c) {
            return false;
        }
        int i = AnonymousClass1.f18070a[this.f18068c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        String str = this.f18069d;
        String str2 = lVar.f18069d;
        return str == str2 || str.equals(str2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18068c, this.f18069d});
    }

    public final String toString() {
        return a.f18071a.serialize((a) this, false);
    }
}
