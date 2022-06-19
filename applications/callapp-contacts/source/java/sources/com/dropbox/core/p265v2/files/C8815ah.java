package com.dropbox.core.p265v2.files;

import com.dropbox.core.p263a.AbstractC8559f;
import com.dropbox.core.p265v2.files.C8813ag;
import com.dropbox.core.p265v2.files.C8819ai;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* renamed from: com.dropbox.core.v2.files.ah */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah.class */
public final class C8815ah {

    /* renamed from: a */
    public static final C8815ah f31034a = m25074a(EnumC8818b.TOO_MANY_WRITE_OPERATIONS);

    /* renamed from: b */
    public static final C8815ah f31035b = m25074a(EnumC8818b.TOO_MANY_FILES);

    /* renamed from: c */
    public static final C8815ah f31036c = m25074a(EnumC8818b.NO_WRITE_PERMISSION);

    /* renamed from: d */
    public static final C8815ah f31037d = m25074a(EnumC8818b.CANNOT_BE_LOCKED);

    /* renamed from: e */
    public static final C8815ah f31038e = m25074a(EnumC8818b.FILE_NOT_SHARED);

    /* renamed from: f */
    public static final C8815ah f31039f = m25074a(EnumC8818b.INTERNAL_ERROR);

    /* renamed from: g */
    public static final C8815ah f31040g = m25074a(EnumC8818b.OTHER);

    /* renamed from: h */
    EnumC8818b f31041h;

    /* renamed from: i */
    private C8819ai f31042i;

    /* renamed from: j */
    private C8813ag f31043j;

    /* renamed from: com.dropbox.core.v2.files.ah$1 */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$1.class */
    static final /* synthetic */ class C88161 {

        /* renamed from: a */
        static final /* synthetic */ int[] f31044a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:21:0x0071 -> B:40:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0075 -> B:36:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0079 -> B:32:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x007d -> B:44:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0081 -> B:38:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0085 -> B:34:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x0089 -> B:30:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x008d -> B:42:0x0064). Please submit an issue!!! */
        static {
            int[] iArr = new int[EnumC8818b.values().length];
            f31044a = iArr;
            try {
                iArr[EnumC8818b.PATH_LOOKUP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f31044a[EnumC8818b.TOO_MANY_WRITE_OPERATIONS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f31044a[EnumC8818b.TOO_MANY_FILES.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f31044a[EnumC8818b.NO_WRITE_PERMISSION.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f31044a[EnumC8818b.CANNOT_BE_LOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f31044a[EnumC8818b.FILE_NOT_SHARED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f31044a[EnumC8818b.LOCK_CONFLICT.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f31044a[EnumC8818b.INTERNAL_ERROR.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f31044a[EnumC8818b.OTHER.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ah$a */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$a.class */
    static final class C8817a extends AbstractC8559f<C8815ah> {

        /* renamed from: a */
        public static final C8817a f31045a = new C8817a();

        C8817a() {
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            boolean z;
            String str;
            C8815ah c8815ah;
            if (jsonParser.getCurrentToken() == JsonToken.VALUE_STRING) {
                str = getStringValue(jsonParser);
                jsonParser.nextToken();
                z = true;
            } else {
                expectStartObject(jsonParser);
                str = readTag(jsonParser);
                z = false;
            }
            if (str != null) {
                if ("path_lookup".equals(str)) {
                    expectField("path_lookup", jsonParser);
                    C8819ai.C8821a c8821a = C8819ai.C8821a.f31056a;
                    c8815ah = C8815ah.m25072a(C8819ai.C8821a.m25065a(jsonParser));
                } else if ("too_many_write_operations".equals(str)) {
                    c8815ah = C8815ah.f31034a;
                } else if ("too_many_files".equals(str)) {
                    c8815ah = C8815ah.f31035b;
                } else if ("no_write_permission".equals(str)) {
                    c8815ah = C8815ah.f31036c;
                } else if ("cannot_be_locked".equals(str)) {
                    c8815ah = C8815ah.f31037d;
                } else if ("file_not_shared".equals(str)) {
                    c8815ah = C8815ah.f31038e;
                } else if ("lock_conflict".equals(str)) {
                    C8813ag.C8814a c8814a = C8813ag.C8814a.f31033a;
                    c8815ah = C8815ah.m25075a(C8813ag.C8814a.m25076a(jsonParser, true));
                } else {
                    c8815ah = "internal_error".equals(str) ? C8815ah.f31039f : C8815ah.f31040g;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return c8815ah;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.p263a.AbstractC8547c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            C8815ah c8815ah = (C8815ah) obj;
            switch (C88161.f31044a[c8815ah.f31041h.ordinal()]) {
                case 1:
                    jsonGenerator.writeStartObject();
                    writeTag("path_lookup", jsonGenerator);
                    jsonGenerator.writeFieldName("path_lookup");
                    C8819ai.C8821a.f31056a.serialize(c8815ah.f31042i, jsonGenerator);
                    jsonGenerator.writeEndObject();
                    return;
                case 2:
                    jsonGenerator.writeString("too_many_write_operations");
                    return;
                case 3:
                    jsonGenerator.writeString("too_many_files");
                    return;
                case 4:
                    jsonGenerator.writeString("no_write_permission");
                    return;
                case 5:
                    jsonGenerator.writeString("cannot_be_locked");
                    return;
                case 6:
                    jsonGenerator.writeString("file_not_shared");
                    return;
                case 7:
                    jsonGenerator.writeStartObject();
                    writeTag("lock_conflict", jsonGenerator);
                    C8813ag.C8814a c8814a = C8813ag.C8814a.f31033a;
                    C8813ag.C8814a.m25077a(c8815ah.f31043j, jsonGenerator, true);
                    jsonGenerator.writeEndObject();
                    return;
                case 8:
                    jsonGenerator.writeString("internal_error");
                    return;
                default:
                    jsonGenerator.writeString("other");
                    return;
            }
        }
    }

    /* renamed from: com.dropbox.core.v2.files.ah$b */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/files/ah$b.class */
    public enum EnumC8818b {
        PATH_LOOKUP,
        TOO_MANY_WRITE_OPERATIONS,
        TOO_MANY_FILES,
        NO_WRITE_PERMISSION,
        CANNOT_BE_LOCKED,
        FILE_NOT_SHARED,
        LOCK_CONFLICT,
        INTERNAL_ERROR,
        OTHER
    }

    static {
        new C8815ah();
        new C8815ah();
        new C8815ah();
        new C8815ah();
        new C8815ah();
        new C8815ah();
        new C8815ah();
    }

    private C8815ah() {
    }

    /* renamed from: a */
    public static C8815ah m25075a(C8813ag c8813ag) {
        if (c8813ag != null) {
            new C8815ah();
            EnumC8818b enumC8818b = EnumC8818b.LOCK_CONFLICT;
            C8815ah c8815ah = new C8815ah();
            c8815ah.f31041h = enumC8818b;
            c8815ah.f31043j = c8813ag;
            return c8815ah;
        }
        throw new IllegalArgumentException("Value is null");
    }

    /* renamed from: a */
    private static C8815ah m25074a(EnumC8818b enumC8818b) {
        C8815ah c8815ah = new C8815ah();
        c8815ah.f31041h = enumC8818b;
        return c8815ah;
    }

    /* renamed from: a */
    public static C8815ah m25072a(C8819ai c8819ai) {
        if (c8819ai != null) {
            new C8815ah();
            EnumC8818b enumC8818b = EnumC8818b.PATH_LOOKUP;
            C8815ah c8815ah = new C8815ah();
            c8815ah.f31041h = enumC8818b;
            c8815ah.f31042i = c8819ai;
            return c8815ah;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof C8815ah)) {
            return false;
        }
        C8815ah c8815ah = (C8815ah) obj;
        if (this.f31041h != c8815ah.f31041h) {
            return false;
        }
        switch (C88161.f31044a[this.f31041h.ordinal()]) {
            case 1:
                C8819ai c8819ai = this.f31042i;
                C8819ai c8819ai2 = c8815ah.f31042i;
                return c8819ai == c8819ai2 || c8819ai.equals(c8819ai2);
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
                return true;
            case 7:
                C8813ag c8813ag = this.f31043j;
                C8813ag c8813ag2 = c8815ah.f31043j;
                return c8813ag == c8813ag2 || c8813ag.equals(c8813ag2);
            case 8:
            case 9:
                return true;
            default:
                return false;
        }
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f31041h, this.f31042i, this.f31043j});
    }

    public final String toString() {
        return C8817a.f31045a.serialize((C8817a) this, false);
    }
}
