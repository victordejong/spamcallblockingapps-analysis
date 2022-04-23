package com.dropbox.core.v2.sharing;

import com.dropbox.core.a.f;
import com.dropbox.core.v2.sharing.bc;
import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonGenerator;
import com.fasterxml.jackson.core.JsonParseException;
import com.fasterxml.jackson.core.JsonParser;
import com.fasterxml.jackson.core.JsonToken;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax.class */
public final class ax {

    /* renamed from: a  reason: collision with root package name */
    public static final ax f18543a = a(b.NO_PERMISSION);

    /* renamed from: b  reason: collision with root package name */
    public static final ax f18544b = a(b.OTHER);

    /* renamed from: c  reason: collision with root package name */
    b f18545c;

    /* renamed from: d  reason: collision with root package name */
    private bc f18546d;

    /* renamed from: com.dropbox.core.v2.sharing.ax$1  reason: invalid class name */
    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f18547a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[b.values().length];
            f18547a = iArr;
            try {
                iArr[b.ACCESS_ERROR.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f18547a[b.NO_PERMISSION.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f18547a[b.OTHER.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$a.class */
    static final class a extends f<ax> {

        /* renamed from: a  reason: collision with root package name */
        public static final a f18548a = new a();

        a() {
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ Object deserialize(JsonParser jsonParser) throws IOException, JsonParseException {
            String str;
            boolean z;
            ax axVar;
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
                    bc.a aVar = bc.a.f18570a;
                    axVar = ax.a(bc.a.a(jsonParser));
                } else {
                    axVar = "no_permission".equals(str) ? ax.f18543a : ax.f18544b;
                }
                if (!z) {
                    skipFields(jsonParser);
                    expectEndObject(jsonParser);
                }
                return axVar;
            }
            throw new JsonParseException(jsonParser, "Required field missing: .tag");
        }

        @Override // com.dropbox.core.a.c
        public final /* synthetic */ void serialize(Object obj, JsonGenerator jsonGenerator) throws IOException, JsonGenerationException {
            ax axVar = (ax) obj;
            int i = AnonymousClass1.f18547a[axVar.f18545c.ordinal()];
            if (i == 1) {
                jsonGenerator.writeStartObject();
                writeTag("access_error", jsonGenerator);
                jsonGenerator.writeFieldName("access_error");
                bc.a aVar = bc.a.f18570a;
                bc.a.a(axVar.f18546d, jsonGenerator);
                jsonGenerator.writeEndObject();
            } else if (i != 2) {
                jsonGenerator.writeString("other");
            } else {
                jsonGenerator.writeString("no_permission");
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/v2/sharing/ax$b.class */
    public enum b {
        ACCESS_ERROR,
        NO_PERMISSION,
        OTHER
    }

    static {
        new ax();
        new ax();
    }

    private ax() {
    }

    private static ax a(b bVar) {
        ax axVar = new ax();
        axVar.f18545c = bVar;
        return axVar;
    }

    public static ax a(bc bcVar) {
        if (bcVar != null) {
            new ax();
            b bVar = b.ACCESS_ERROR;
            ax axVar = new ax();
            axVar.f18545c = bVar;
            axVar.f18546d = bcVar;
            return axVar;
        }
        throw new IllegalArgumentException("Value is null");
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj == null || !(obj instanceof ax)) {
            return false;
        }
        ax axVar = (ax) obj;
        if (this.f18545c != axVar.f18545c) {
            return false;
        }
        int i = AnonymousClass1.f18547a[this.f18545c.ordinal()];
        if (i != 1) {
            return i == 2 || i == 3;
        }
        bc bcVar = this.f18546d;
        bc bcVar2 = axVar.f18546d;
        return bcVar == bcVar2 || bcVar.equals(bcVar2);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f18545c, this.f18546d});
    }

    public final String toString() {
        return a.f18548a.serialize((a) this, false);
    }
}
