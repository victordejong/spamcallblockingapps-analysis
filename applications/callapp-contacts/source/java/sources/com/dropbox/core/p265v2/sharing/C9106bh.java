package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.C9111bj;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bh */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh.class */
public final class C9106bh {

    /* renamed from: a */
    public static final C9106bh f31610a;

    /* renamed from: b */
    EnumC9109b f31611b;

    /* renamed from: c */
    private C9111bj f31612c;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.dropbox.core.v2.sharing.bh$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$1.class */
    public static final /* synthetic */ class C91071 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31613a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9109b.values().length];
            f31613a = iArr;
            try {
                iArr[EnumC9109b.METADATA.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31613a[EnumC9109b.OTHER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bh$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$a.class */
    static final class C9108a extends AbstractC8559f<C9106bh> {

        /* renamed from: a */
        public static final C9108a f31614a = new C9108a();

        C9108a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9106bh c9106bh;
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
                    c9106bh = C9106bh.m24846a(C9111bj.C9112a.f31623a.deserialize(jsonParser));
                } else {
                    c9106bh = C9106bh.f31610a;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9106bh;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9106bh c9106bh = (C9106bh) obj;
            if (C91071.f31613a[c9106bh.f31611b.ordinal()] != 1) {
                jsonGenerator.writeString("other");
                return;
            }
            jsonGenerator.writeStartObject();
            writeTag("metadata", jsonGenerator);
            jsonGenerator.writeFieldName("metadata");
            C9111bj.C9112a.f31623a.serialize((C9111bj.C9112a) c9106bh.f31612c, jsonGenerator);
            jsonGenerator.writeEndObject();
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bh$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bh$b.class */
    public enum EnumC9109b {
        METADATA,
        OTHER
    }

    static {
        new C9106bh();
        EnumC9109b enumC9109b = EnumC9109b.OTHER;
        C9106bh c9106bh = new C9106bh();
        c9106bh.f31611b = enumC9109b;
        f31610a = c9106bh;
    }

    private C9106bh() {
    }

    /* renamed from: a */
    public static C9106bh m24846a(C9111bj c9111bj) {
        if (c9111bj != null) {
            new C9106bh();
            EnumC9109b enumC9109b = EnumC9109b.METADATA;
            C9106bh c9106bh = new C9106bh();
            c9106bh.f31611b = enumC9109b;
            c9106bh.f31612c = c9111bj;
            return c9106bh;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9106bh)) {
            return false;
        }
        C9106bh c9106bh = (C9106bh) obj;
        if (this.f31611b != c9106bh.f31611b) {
            return false;
        }
        int i = C91071.f31613a[this.f31611b.ordinal()];
        if (i != 1) {
            return i == 2;
        }
        C9111bj c9111bj = this.f31612c;
        C9111bj c9111bj2 = c9106bh.f31612c;
        return c9111bj == c9111bj2 || c9111bj.equals(c9111bj2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31611b, this.f31612c});
    }

    public final String toString() {
        return C9108a.f31614a.serialize((C9108a) this, false);
    }
}
