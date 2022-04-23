package com.dropbox.core.v2.fileproperties;

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
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m.class */
public final class m {

    /* renamed from: a  reason: collision with root package name */
    public static final m f18072a;

    /* renamed from: b  reason: collision with root package name */
    b f18073b;

    /* renamed from: c  reason: collision with root package name */
    private List<String> f18074c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.fileproperties.m$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$1.class */
    public static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18075a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18075a = iArr;
            try {
                iArr[b.FILTER_SOME.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18075a[b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$a.class */
    public static final class a extends f<m> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18076a = new a();

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            m mVar;
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
                    mVar = m.a((List) d.b(d.h.f17717a).deserialize(jsonParser));
                } else {
                    mVar = m.f18072a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return mVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            m mVar = (m) obj;
            if (AnonymousClass1.f18075a[mVar.f18073b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("filter_some", jsonGenerator);
            jsonGenerator.writeFieldName("filter_some");
            d.b(d.h.f17717a).serialize((c) mVar.f18074c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/fileproperties/m$b.class */
    public enum b {
        FILTER_SOME,
        OTHER
    }

    static {
        new m();
        b bVar = b.OTHER;
        m mVar = new m();
        mVar.f18073b = bVar;
        f18072a = mVar;
    }

    private m() {
    }

    public static m a(List<String> list) {
        if (list == null) {
            throw new IllegalArgumentException("Value is null");
        } else if (list.size() > 0) {
            for (String str : list) {
                if (str == null) {
                    throw new IllegalArgumentException("An item in list is null");
                } else if (str.length() <= 0) {
                    throw new IllegalArgumentException("Stringan item in list is shorter than 1");
                } else if (!Pattern.matches("(/|ptid:).*", str)) {
                    throw new IllegalArgumentException("Stringan item in list does not match pattern");
                }
            }
            new m();
            b bVar = b.FILTER_SOME;
            m mVar = new m();
            mVar.f18073b = bVar;
            mVar.f18074c = list;
            return mVar;
        } else {
            throw new IllegalArgumentException("List has fewer than 1 items");
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f18073b != mVar.f18073b) {
            return false;
        }
        int i = AnonymousClass1.f18075a[this.f18073b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        List<String> list = this.f18074c;
        List<String> list2 = mVar.f18074c;
        return list == list2 || list.equals(list2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18073b, this.f18074c});
    }

    public final String toString() {
        return a.f18076a.serialize((a) this, false);
    }
}
