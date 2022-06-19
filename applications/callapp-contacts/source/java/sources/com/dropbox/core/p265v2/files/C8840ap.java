package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8819ai;
import com.dropbox.core.p265v2.files.C8910bl;
import com.dropbox.core.p265v2.files.EnumC8831am;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ap */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap.class */
public final class C8840ap {

    /* renamed from: a */
    public static final C8840ap f31081a = m25051a(EnumC8843b.CANT_COPY_SHARED_FOLDER);

    /* renamed from: b */
    public static final C8840ap f31082b = m25051a(EnumC8843b.CANT_NEST_SHARED_FOLDER);

    /* renamed from: c */
    public static final C8840ap f31083c = m25051a(EnumC8843b.CANT_MOVE_FOLDER_INTO_ITSELF);

    /* renamed from: d */
    public static final C8840ap f31084d = m25051a(EnumC8843b.TOO_MANY_FILES);

    /* renamed from: e */
    public static final C8840ap f31085e = m25051a(EnumC8843b.DUPLICATED_OR_NESTED_PATHS);

    /* renamed from: f */
    public static final C8840ap f31086f = m25051a(EnumC8843b.CANT_TRANSFER_OWNERSHIP);

    /* renamed from: g */
    public static final C8840ap f31087g = m25051a(EnumC8843b.INSUFFICIENT_QUOTA);

    /* renamed from: h */
    public static final C8840ap f31088h = m25051a(EnumC8843b.INTERNAL_ERROR);

    /* renamed from: i */
    public static final C8840ap f31089i = m25051a(EnumC8843b.CANT_MOVE_SHARED_FOLDER);

    /* renamed from: j */
    public static final C8840ap f31090j = m25051a(EnumC8843b.OTHER);

    /* renamed from: k */
    EnumC8843b f31091k;

    /* renamed from: l */
    private C8819ai f31092l;

    /* renamed from: m */
    private C8910bl f31093m;

    /* renamed from: n */
    private C8910bl f31094n;

    /* renamed from: o */
    private EnumC8831am f31095o;

    /* renamed from: com.dropbox.core.v2.files.ap$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$1.class */
    static final /* synthetic */ class C88411 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31096a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x00ad -> B:57:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:32:0x00b1 -> B:53:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x00b5 -> B:65:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x00b9 -> B:61:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:35:0x00bd -> B:71:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:36:0x00c1 -> B:67:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x00c5 -> B:49:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:38:0x00c9 -> B:45:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:39:0x00cd -> B:55:0x0070). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:40:0x00d1 -> B:51:0x007c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00d5 -> B:63:0x0088). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:42:0x00d9 -> B:59:0x0094). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:43:0x00dd -> B:69:0x00a0). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8843b.values().length];
            f31096a = iArr;
            try {
                iArr[EnumC8843b.FROM_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31096a[EnumC8843b.FROM_WRITE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31096a[EnumC8843b.TO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31096a[EnumC8843b.CANT_COPY_SHARED_FOLDER.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31096a[EnumC8843b.CANT_NEST_SHARED_FOLDER.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31096a[EnumC8843b.CANT_MOVE_FOLDER_INTO_ITSELF.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31096a[EnumC8843b.TOO_MANY_FILES.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31096a[EnumC8843b.DUPLICATED_OR_NESTED_PATHS.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31096a[EnumC8843b.CANT_TRANSFER_OWNERSHIP.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f31096a[EnumC8843b.INSUFFICIENT_QUOTA.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f31096a[EnumC8843b.INTERNAL_ERROR.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f31096a[EnumC8843b.CANT_MOVE_SHARED_FOLDER.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f31096a[EnumC8843b.CANT_MOVE_INTO_VAULT.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f31096a[EnumC8843b.OTHER.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ap$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$a.class */
    static final class C8842a extends AbstractC8559f<C8840ap> {

        /* renamed from: a */
        public static final C8842a f31097a = new C8842a();

        C8842a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            C8840ap c8840ap;
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
                if ("from_lookup".equals(str)) {
                    expectField("from_lookup", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8840ap = C8840ap.m25053a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("from_write".equals(str)) {
                    expectField("from_write", jsonParser);
                    C8910bl.C8912a c8912a = C8910bl.C8912a.f31231a;
                    c8840ap = C8840ap.m25049a(C8910bl.C8912a.m24973a(jsonParser));
                } else if ("to".equals(str)) {
                    expectField("to", jsonParser);
                    C8910bl.C8912a c8912a2 = C8910bl.C8912a.f31231a;
                    c8840ap = C8840ap.m25047b(C8910bl.C8912a.m24973a(jsonParser));
                } else if ("cant_copy_shared_folder".equals(str)) {
                    c8840ap = C8840ap.f31081a;
                } else if ("cant_nest_shared_folder".equals(str)) {
                    c8840ap = C8840ap.f31082b;
                } else if ("cant_move_folder_into_itself".equals(str)) {
                    c8840ap = C8840ap.f31083c;
                } else if ("too_many_files".equals(str)) {
                    c8840ap = C8840ap.f31084d;
                } else if ("duplicated_or_nested_paths".equals(str)) {
                    c8840ap = C8840ap.f31085e;
                } else if ("cant_transfer_ownership".equals(str)) {
                    c8840ap = C8840ap.f31086f;
                } else if ("insufficient_quota".equals(str)) {
                    c8840ap = C8840ap.f31087g;
                } else if ("internal_error".equals(str)) {
                    c8840ap = C8840ap.f31088h;
                } else if ("cant_move_shared_folder".equals(str)) {
                    c8840ap = C8840ap.f31089i;
                } else if ("cant_move_into_vault".equals(str)) {
                    expectField("cant_move_into_vault", jsonParser);
                    EnumC8831am.C8833a c8833a = EnumC8831am.C8833a.f31072a;
                    c8840ap = C8840ap.m25052a(EnumC8831am.C8833a.m25059a(jsonParser));
                } else {
                    c8840ap = C8840ap.f31090j;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8840ap;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8840ap c8840ap = (C8840ap) obj;
            switch (C88411.f31096a[c8840ap.f31091k.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("from_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("from_lookup");
                    C8819ai.C8821a.f31056a.serialize(c8840ap.f31092l, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeStartObject();
                    writeTag("from_write", jsonGenerator);
                    jsonGenerator.writeFieldName("from_write");
                    C8910bl.C8912a.f31231a.serialize(c8840ap.f31093m, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 3:
                    jsonGenerator.writeStartObject();
                    writeTag("to", jsonGenerator);
                    jsonGenerator.writeFieldName("to");
                    C8910bl.C8912a.f31231a.serialize(c8840ap.f31094n, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 4:
                    jsonGenerator.writeString("cant_copy_shared_folder");
                    return;
                case 5:
                    jsonGenerator.writeString("cant_nest_shared_folder");
                    return;
                case 6:
                    jsonGenerator.writeString("cant_move_folder_into_itself");
                    return;
                case 7:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 8:
                    jsonGenerator.writeString("duplicated_or_nested_paths");
                    return;
                case 9:
                    jsonGenerator.writeString("cant_transfer_ownership");
                    return;
                case 10:
                    jsonGenerator.writeString("insufficient_quota");
                    return;
                case 11:
                    jsonGenerator.writeString("internal_error");
                    return;
                case 12:
                    jsonGenerator.writeString("cant_move_shared_folder");
                    return;
                case 13:
                    jsonGenerator.writeStartObject();
                    writeTag("cant_move_into_vault", jsonGenerator);
                    jsonGenerator.writeFieldName("cant_move_into_vault");
                    EnumC8831am.C8833a c8833a = EnumC8831am.C8833a.f31072a;
                    EnumC8831am.C8833a.m25060a(c8840ap.f31095o, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ap$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ap$b.class */
    public enum EnumC8843b {
        FROM_LOOKUP,
        FROM_WRITE,
        TO,
        CANT_COPY_SHARED_FOLDER,
        CANT_NEST_SHARED_FOLDER,
        CANT_MOVE_FOLDER_INTO_ITSELF,
        TOO_MANY_FILES,
        DUPLICATED_OR_NESTED_PATHS,
        CANT_TRANSFER_OWNERSHIP,
        INSUFFICIENT_QUOTA,
        INTERNAL_ERROR,
        CANT_MOVE_SHARED_FOLDER,
        CANT_MOVE_INTO_VAULT,
        OTHER
    }

    static {
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
        new C8840ap();
    }

    private C8840ap() {
    }

    /* renamed from: a */
    public static C8840ap m25053a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8840ap();
            EnumC8843b enumC8843b = EnumC8843b.FROM_LOOKUP;
            C8840ap c8840ap = new C8840ap();
            c8840ap.f31091k = enumC8843b;
            c8840ap.f31092l = c8819ai;
            return c8840ap;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    public static C8840ap m25052a(EnumC8831am enumC8831am) {
        if (enumC8831am != null) {
            new C8840ap();
            EnumC8843b enumC8843b = EnumC8843b.CANT_MOVE_INTO_VAULT;
            C8840ap c8840ap = new C8840ap();
            c8840ap.f31091k = enumC8843b;
            c8840ap.f31095o = enumC8831am;
            return c8840ap;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8840ap m25051a(EnumC8843b enumC8843b) {
        C8840ap c8840ap = new C8840ap();
        c8840ap.f31091k = enumC8843b;
        return c8840ap;
    }

    /* renamed from: a */
    public static C8840ap m25049a(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8840ap();
            EnumC8843b enumC8843b = EnumC8843b.FROM_WRITE;
            C8840ap c8840ap = new C8840ap();
            c8840ap.f31091k = enumC8843b;
            c8840ap.f31093m = c8910bl;
            return c8840ap;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: b */
    public static C8840ap m25047b(C8910bl c8910bl) {
        if (c8910bl != null) {
            new C8840ap();
            EnumC8843b enumC8843b = EnumC8843b.TO;
            C8840ap c8840ap = new C8840ap();
            c8840ap.f31091k = enumC8843b;
            c8840ap.f31094n = c8910bl;
            return c8840ap;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8840ap)) {
            return false;
        }
        C8840ap c8840ap = (C8840ap) obj;
        if (this.f31091k != c8840ap.f31091k) {
            return false;
        }
        switch (C88411.f31096a[this.f31091k.ordinal()]) {
            case 1:
                C8819ai c8819ai = this.f31092l;
                C8819ai c8819ai2 = c8840ap.f31092l;
                return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
            case 2:
                C8910bl c8910bl = this.f31093m;
                C8910bl c8910bl2 = c8840ap.f31093m;
                return c8910bl == c8910bl2 || c8910bl.equals(c8910bl2);
            case 3:
                C8910bl c8910bl3 = this.f31094n;
                C8910bl c8910bl4 = c8840ap.f31094n;
                return c8910bl3 == c8910bl4 || c8910bl3.equals(c8910bl4);
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                return true;
            case 13:
                EnumC8831am enumC8831am = this.f31095o;
                EnumC8831am enumC8831am2 = c8840ap.f31095o;
                return enumC8831am == enumC8831am2 || enumC8831am.equals(enumC8831am2);
            case 14:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31091k, this.f31092l, this.f31093m, this.f31094n, this.f31095o});
    }

    public final String toString() {
        return C8842a.f31097a.serialize((C8842a) this, false);
    }
}
