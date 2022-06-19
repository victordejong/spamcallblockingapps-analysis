package com.dropbox.core.p265v2.fileproperties;

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
/* renamed from: com.dropbox.core.v2.fileproperties.m */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m.class */
public final class C8775m {

    /* renamed from: a */
    public static final C8775m f30942a;

    /* renamed from: b */
    EnumC8778b f30943b;

    /* renamed from: c */
    private List<String> f30944c;

    /* renamed from: com.dropbox.core.v2.fileproperties.m$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$1.class */
    public static final /* synthetic */ class C87761 {

        /* renamed from: a */
        static final /* synthetic */ int[] f30945a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8778b.values().length];
            f30945a = iArr;
            try {
                iArr[EnumC8778b.FILTER_SOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f30945a[EnumC8778b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.m$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$a.class */
    public static final class C8777a extends AbstractC8559f<C8775m> {

        /* renamed from: a */
        public static final C8777a f30946a = new C8777a();

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8775m c8775m;
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
                if ("filter_some".equals(str)) {
                    expectField("filter_some", jsonParser);
                    c8775m = C8775m.m25095a((List) C8548d.m25352b(C8548d.C8556h.f30459a).deserialize(jsonParser));
                } else {
                    c8775m = C8775m.f30942a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8775m;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8775m c8775m = (C8775m) obj;
            if (C87761.f30945a[c8775m.f30943b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("filter_some", jsonGenerator);
            jsonGenerator.writeFieldName("filter_some");
            C8548d.m25352b(C8548d.C8556h.f30459a).serialize((AbstractC8547c) c8775m.f30944c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.fileproperties.m$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$b.class */
    public enum EnumC8778b {
        FILTER_SOME,
        OTHER
    }

    static {
        new C8775m();
        EnumC8778b enumC8778b = EnumC8778b.OTHER;
        C8775m c8775m = new C8775m();
        c8775m.f30943b = enumC8778b;
        f30942a = c8775m;
    }

    private C8775m() {
    }

    /* renamed from: a */
    public static C8775m m25095a(List<String> list) {
        if (list != null) {
            if (list.size() <= 0) {
                throw new IllegalArgumentException("List has fewer than 1 items");
            }
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                }
                if (str.length() <= 0) {
                    throw new IllegalArgumentException("Stringan item in list is shorter than 1");
                }
                if (!Pattern.matches("(/|ptid:).*", str)) {
                    throw new IllegalArgumentException("Stringan item in list does not match pattern");
                }
            }
            new C8775m();
            EnumC8778b enumC8778b = EnumC8778b.FILTER_SOME;
            C8775m c8775m = new C8775m();
            c8775m.f30943b = enumC8778b;
            c8775m.f30944c = list;
            return c8775m;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8775m)) {
            return false;
        }
        C8775m c8775m = (C8775m) obj;
        if (this.f30943b != c8775m.f30943b) {
            return false;
        }
        int i = C87761.f30945a[this.f30943b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f30944c;
        List<String> list2 = c8775m.f30944c;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f30943b, this.f30944c});
    }

    public final String toString() {
        return C8777a.f30946a.serialize((C8777a) this, false);
    }
}
