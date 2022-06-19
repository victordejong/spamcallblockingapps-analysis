package com.dropbox.core.p265v2.sharing;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.sharing.EnumC9092bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.sharing.bs */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs.class */
public final class C9139bs {

    /* renamed from: a */
    public static final C9139bs f31660a = m24825a(EnumC9142b.TEAM_FOLDER);

    /* renamed from: b */
    public static final C9139bs f31661b = m24825a(EnumC9142b.NO_PERMISSION);

    /* renamed from: c */
    public static final C9139bs f31662c = m24825a(EnumC9142b.TOO_MANY_FILES);

    /* renamed from: d */
    public static final C9139bs f31663d = m24825a(EnumC9142b.OTHER);

    /* renamed from: e */
    EnumC9142b f31664e;

    /* renamed from: f */
    private EnumC9092bc f31665f;

    /* renamed from: com.dropbox.core.v2.sharing.bs$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$1.class */
    static final /* synthetic */ class C91401 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31666a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x0041 -> B:22:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0045 -> B:20:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:15:0x0049 -> B:18:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x004d -> B:24:0x0035). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC9142b.values().length];
            f31666a = iArr;
            try {
                iArr[EnumC9142b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31666a[EnumC9142b.TEAM_FOLDER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31666a[EnumC9142b.NO_PERMISSION.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31666a[EnumC9142b.TOO_MANY_FILES.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31666a[EnumC9142b.OTHER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bs$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$a.class */
    static final class C9141a extends AbstractC8559f<C9139bs> {

        /* renamed from: a */
        public static final C9141a f31667a = new C9141a();

        C9141a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C9139bs c9139bs;
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
                if ("access_error".equals(str)) {
                    expectField("access_error", jsonParser);
                    EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                    c9139bs = C9139bs.m24826a(EnumC9092bc.C9094a.m24856a(jsonParser));
                } else {
                    c9139bs = "team_folder".equals(str) ? C9139bs.f31660a : "no_permission".equals(str) ? C9139bs.f31661b : "too_many_files".equals(str) ? C9139bs.f31662c : C9139bs.f31663d;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c9139bs;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C9139bs c9139bs = (C9139bs) obj;
            int i = C91401.f31666a[c9139bs.f31664e.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                EnumC9092bc.C9094a c9094a = EnumC9092bc.C9094a.f31582a;
                EnumC9092bc.C9094a.m24857a(c9139bs.f31665f, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i == 2) {
                jsonGenerator.writeString("team_folder");
            } else if (i == 3) {
                jsonGenerator.writeString("no_permission");
            } else if (i != 4) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("too_many_files");
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.sharing.bs$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/bs$b.class */
    public enum EnumC9142b {
        ACCESS_ERROR,
        TEAM_FOLDER,
        NO_PERMISSION,
        TOO_MANY_FILES,
        OTHER
    }

    static {
        new C9139bs();
        new C9139bs();
        new C9139bs();
        new C9139bs();
    }

    private C9139bs() {
    }

    /* renamed from: a */
    public static C9139bs m24826a(EnumC9092bc enumC9092bc) {
        if (enumC9092bc != null) {
            new C9139bs();
            EnumC9142b enumC9142b = EnumC9142b.ACCESS_ERROR;
            C9139bs c9139bs = new C9139bs();
            c9139bs.f31664e = enumC9142b;
            c9139bs.f31665f = enumC9092bc;
            return c9139bs;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C9139bs m24825a(EnumC9142b enumC9142b) {
        C9139bs c9139bs = new C9139bs();
        c9139bs.f31664e = enumC9142b;
        return c9139bs;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C9139bs)) {
            return false;
        }
        C9139bs c9139bs = (C9139bs) obj;
        if (this.f31664e != c9139bs.f31664e) {
            return false;
        }
        int i = C91401.f31666a[this.f31664e.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3 || i == 4 || i == 5;
        }
        EnumC9092bc enumC9092bc = this.f31665f;
        EnumC9092bc enumC9092bc2 = c9139bs.f31665f;
        return enumC9092bc == enumC9092bc2 || enumC9092bc.equals(enumC9092bc2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31664e, this.f31665f});
    }

    public final String toString() {
        return C9141a.f31667a.serialize((C9141a) this, false);
    }
}
