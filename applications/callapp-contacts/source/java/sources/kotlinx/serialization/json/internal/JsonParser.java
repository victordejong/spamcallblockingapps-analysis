package kotlinx.serialization.json.internal;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlinx.serialization.json.JsonConfiguration;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonLiteral;
import kotlinx.serialization.json.JsonNull;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��&\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0005\b��\u0018��2\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\b\u0010\u000b\u001a\u00020\nH\u0002J\b\u0010\f\u001a\u00020\nH\u0002J\u0010\u0010\r\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\bH\u0002R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000f"}, m4298d2 = {"Lkotlinx/serialization/json/internal/JsonParser;", "", "configuration", "Lkotlinx/serialization/json/JsonConfiguration;", "reader", "Lkotlinx/serialization/json/internal/JsonReader;", "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/json/internal/JsonReader;)V", "isLenient", "", "read", "Lkotlinx/serialization/json/JsonElement;", "readArray", "readObject", "readValue", "isString", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/internal/JsonParser.class */
public final class JsonParser {
    private final boolean isLenient;
    private final JsonReader reader;

    public JsonParser(JsonConfiguration configuration, JsonReader reader) {
        C18524p.m3841c(configuration, "configuration");
        C18524p.m3841c(reader, "reader");
        this.reader = reader;
        this.isLenient = configuration.isLenient$kotlinx_serialization_runtime();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        r0 = r4.reader;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.serialization.json.JsonElement readArray() {
        /*
            Method dump skipped, instructions count: 213
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonParser.readArray():kotlinx.serialization.json.JsonElement");
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x009e, code lost:
        r0 = r4.reader;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final kotlinx.serialization.json.JsonElement readObject() {
        /*
            Method dump skipped, instructions count: 309
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.serialization.json.internal.JsonParser.readObject():kotlinx.serialization.json.JsonElement");
    }

    private final JsonElement readValue(boolean z) {
        return new JsonLiteral((this.isLenient || !z) ? this.reader.takeString() : this.reader.takeStringQuoted(), z);
    }

    public final JsonElement read() {
        if (!this.reader.getCanBeginValue()) {
            JsonReader.fail$default(this.reader, "Can't begin reading value from here", 0, 2, null);
            throw null;
        }
        byte b = this.reader.tokenClass;
        if (b == 0) {
            return readValue(false);
        }
        if (b == 1) {
            return readValue(true);
        }
        if (b == 6) {
            return readObject();
        }
        if (b == 8) {
            return readArray();
        }
        if (b != 10) {
            JsonReader.fail$default(this.reader, "Can't begin reading element, unexpected token", 0, 2, null);
            throw null;
        }
        JsonNull jsonNull = JsonNull.INSTANCE;
        this.reader.nextToken();
        return jsonNull;
    }
}
