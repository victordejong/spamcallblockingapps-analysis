package kotlinx.serialization.json;

import io.objectbox.model.PropertyFlags;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlinx.serialization.EnumC20471v;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u000b\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b+\n\u0002\u0010\b\n\u0002\b\u0003\b\u0086\b\u0018�� =2\u00020\u0001:\u0001=Bu\b\u0007\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0003\u0012\b\b\u0002\u0010\b\u001a\u00020\u0003\u0012\b\b\u0002\u0010\t\u001a\u00020\u0003\u0012\b\b\u0002\u0010\n\u001a\u00020\u000b\u0012\b\b\u0002\u0010\f\u001a\u00020\u0003\u0012\b\b\u0002\u0010\r\u001a\u00020\u000b\u0012\b\b\u0002\u0010\u000e\u001a\u00020\u000f¢\u0006\u0002\u0010\u0010J\u000e\u0010!\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b\"J\u000e\u0010#\u001a\u00020\u000bHÀ\u0003¢\u0006\u0002\b$J\u000e\u0010%\u001a\u00020\u000fHÀ\u0003¢\u0006\u0002\b&J\u000e\u0010'\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b(J\u000e\u0010)\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b*J\u000e\u0010+\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b,J\u000e\u0010-\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b.J\u000e\u0010/\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b0J\u000e\u00101\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b2J\u000e\u00103\u001a\u00020\u000bHÀ\u0003¢\u0006\u0002\b4J\u000e\u00105\u001a\u00020\u0003HÀ\u0003¢\u0006\u0002\b6Jw\u00107\u001a\u00020��2\b\b\u0002\u0010\u0002\u001a\u00020\u00032\b\b\u0002\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0005\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00032\b\b\u0002\u0010\u0007\u001a\u00020\u00032\b\b\u0002\u0010\b\u001a\u00020\u00032\b\b\u0002\u0010\t\u001a\u00020\u00032\b\b\u0002\u0010\n\u001a\u00020\u000b2\b\b\u0002\u0010\f\u001a\u00020\u00032\b\b\u0002\u0010\r\u001a\u00020\u000b2\b\b\u0002\u0010\u000e\u001a\u00020\u000fHÆ\u0001J\u0013\u00108\u001a\u00020\u00032\b\u00109\u001a\u0004\u0018\u00010\u0001HÖ\u0003J\t\u0010:\u001a\u00020;HÖ\u0001J\t\u0010<\u001a\u00020\u000bHÖ\u0001R\u0014\u0010\u0007\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012R\u0014\u0010\r\u001a\u00020\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0015\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0016\u0010\u0012R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0017\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0018\u0010\u0012R\u0014\u0010\b\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0019\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001a\u0010\u0012R\u0014\u0010\t\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u001b\u0010\u0012R\u001c\u0010\u000e\u001a\u00020\u000f8��X\u0081\u0004¢\u0006\u000e\n��\u0012\u0004\b\u001c\u0010\u001d\u001a\u0004\b\u001e\u0010\u001fR\u0014\u0010\f\u001a\u00020\u0003X\u0080\u0004¢\u0006\b\n��\u001a\u0004\b \u0010\u0012¨\u0006>"}, m4298d2 = {"Lkotlinx/serialization/json/JsonConfiguration;", "", "encodeDefaults", "", "ignoreUnknownKeys", "isLenient", "serializeSpecialFloatingPointValues", "allowStructuredMapKeys", "prettyPrint", "unquotedPrint", "indent", "", "useArrayPolymorphism", "classDiscriminator", "updateMode", "Lkotlinx/serialization/UpdateMode;", "(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/UpdateMode;)V", "getAllowStructuredMapKeys$kotlinx_serialization_runtime", "()Z", "getClassDiscriminator$kotlinx_serialization_runtime", "()Ljava/lang/String;", "getEncodeDefaults$kotlinx_serialization_runtime", "getIgnoreUnknownKeys$kotlinx_serialization_runtime", "getIndent$kotlinx_serialization_runtime", "isLenient$kotlinx_serialization_runtime", "getPrettyPrint$kotlinx_serialization_runtime", "getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime", "getUnquotedPrint$kotlinx_serialization_runtime", "updateMode$annotations", "()V", "getUpdateMode$kotlinx_serialization_runtime", "()Lkotlinx/serialization/UpdateMode;", "getUseArrayPolymorphism$kotlinx_serialization_runtime", "component1", "component1$kotlinx_serialization_runtime", "component10", "component10$kotlinx_serialization_runtime", "component11", "component11$kotlinx_serialization_runtime", "component2", "component2$kotlinx_serialization_runtime", "component3", "component3$kotlinx_serialization_runtime", "component4", "component4$kotlinx_serialization_runtime", "component5", "component5$kotlinx_serialization_runtime", "component6", "component6$kotlinx_serialization_runtime", "component7", "component7$kotlinx_serialization_runtime", "component8", "component8$kotlinx_serialization_runtime", "component9", "component9$kotlinx_serialization_runtime", "copy", "equals", "other", "hashCode", "", "toString", "Companion", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonConfiguration.class */
public final class JsonConfiguration {
    private final boolean allowStructuredMapKeys;
    private final String classDiscriminator;
    private final boolean encodeDefaults;
    private final boolean ignoreUnknownKeys;
    private final String indent;
    private final boolean isLenient;
    private final boolean prettyPrint;
    private final boolean serializeSpecialFloatingPointValues;
    private final boolean unquotedPrint;
    private final EnumC20471v updateMode;
    private final boolean useArrayPolymorphism;
    public static final Companion Companion = new Companion(null);
    private static final String defaultIndent = "    ";
    private static final String defaultDiscriminator = "type";
    private static final JsonConfiguration Default = new JsonConfiguration(false, false, false, false, false, false, false, null, false, null, null, 2047, null);
    private static final JsonConfiguration Stable = new JsonConfiguration(true, false, false, false, true, false, false, "    ", false, "type", null, 1024, null);

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001c\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0004\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087\u0004¢\u0006\u000e\n��\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007R\u0016\u0010\u000b\u001a\u00020\f8\u0002X\u0083D¢\u0006\b\n��\u0012\u0004\b\r\u0010\u0002R\u0016\u0010\u000e\u001a\u00020\f8\u0002X\u0083D¢\u0006\b\n��\u0012\u0004\b\u000f\u0010\u0002¨\u0006\u0010"}, m4298d2 = {"Lkotlinx/serialization/json/JsonConfiguration$Companion;", "", "()V", "Default", "Lkotlinx/serialization/json/JsonConfiguration;", "Default$annotations", "getDefault", "()Lkotlinx/serialization/json/JsonConfiguration;", "Stable", "Stable$annotations", "getStable", "defaultDiscriminator", "", "defaultDiscriminator$annotations", "defaultIndent", "defaultIndent$annotations", "kotlinx-serialization-runtime"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes5-dex2jar.jar:kotlinx/serialization/json/JsonConfiguration$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public static /* synthetic */ void Default$annotations() {
        }

        public static /* synthetic */ void Stable$annotations() {
        }

        private static /* synthetic */ void defaultDiscriminator$annotations() {
        }

        private static /* synthetic */ void defaultIndent$annotations() {
        }

        public final JsonConfiguration getDefault() {
            return JsonConfiguration.Default;
        }

        public final JsonConfiguration getStable() {
            return JsonConfiguration.Stable;
        }
    }

    public JsonConfiguration() {
        this(false, false, false, false, false, false, false, null, false, null, null, 2047, null);
    }

    public JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String indent, boolean z8, String classDiscriminator, EnumC20471v updateMode) {
        C18524p.m3841c(indent, "indent");
        C18524p.m3841c(classDiscriminator, "classDiscriminator");
        C18524p.m3841c(updateMode, "updateMode");
        this.encodeDefaults = z;
        this.ignoreUnknownKeys = z2;
        this.isLenient = z3;
        this.serializeSpecialFloatingPointValues = z4;
        this.allowStructuredMapKeys = z5;
        this.prettyPrint = z6;
        this.unquotedPrint = z7;
        this.indent = indent;
        this.useArrayPolymorphism = z8;
        this.classDiscriminator = classDiscriminator;
        this.updateMode = updateMode;
        if (!z8 || C18524p.m3850a((Object) classDiscriminator, (Object) defaultDiscriminator)) {
            if (!z6 && !C18524p.m3850a((Object) indent, (Object) defaultIndent)) {
                throw new IllegalArgumentException("Indent should not be specified when default printing mode is used".toString());
            }
            return;
        }
        throw new IllegalArgumentException("Class discriminator should not be specified when array polymorphism is specified".toString());
    }

    public /* synthetic */ JsonConfiguration(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str, boolean z8, String str2, EnumC20471v enumC20471v, int i, DefaultConstructorMarker defaultConstructorMarker) {
        this((i & 1) != 0 ? true : z, (i & 2) != 0 ? false : z2, (i & 4) != 0 ? false : z3, (i & 8) != 0 ? false : z4, (i & 16) != 0 ? false : z5, (i & 32) != 0 ? false : z6, (i & 64) != 0 ? false : z7, (i & 128) != 0 ? defaultIndent : str, (i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0 ? false : z8, (i & 512) != 0 ? defaultDiscriminator : str2, (i & 1024) != 0 ? EnumC20471v.OVERWRITE : enumC20471v);
    }

    public static /* synthetic */ JsonConfiguration copy$default(JsonConfiguration jsonConfiguration, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String str, boolean z8, String str2, EnumC20471v enumC20471v, int i, Object obj) {
        if ((i & 1) != 0) {
            z = jsonConfiguration.encodeDefaults;
        }
        if ((i & 2) != 0) {
            z2 = jsonConfiguration.ignoreUnknownKeys;
        }
        if ((i & 4) != 0) {
            z3 = jsonConfiguration.isLenient;
        }
        if ((i & 8) != 0) {
            z4 = jsonConfiguration.serializeSpecialFloatingPointValues;
        }
        if ((i & 16) != 0) {
            z5 = jsonConfiguration.allowStructuredMapKeys;
        }
        if ((i & 32) != 0) {
            z6 = jsonConfiguration.prettyPrint;
        }
        if ((i & 64) != 0) {
            z7 = jsonConfiguration.unquotedPrint;
        }
        if ((i & 128) != 0) {
            str = jsonConfiguration.indent;
        }
        if ((i & PropertyFlags.INDEX_PARTIAL_SKIP_NULL) != 0) {
            z8 = jsonConfiguration.useArrayPolymorphism;
        }
        if ((i & 512) != 0) {
            str2 = jsonConfiguration.classDiscriminator;
        }
        if ((i & 1024) != 0) {
            enumC20471v = jsonConfiguration.updateMode;
        }
        return jsonConfiguration.copy(z, z2, z3, z4, z5, z6, z7, str, z8, str2, enumC20471v);
    }

    public static final JsonConfiguration getDefault() {
        return Default;
    }

    public static final JsonConfiguration getStable() {
        return Stable;
    }

    public static /* synthetic */ void updateMode$annotations() {
    }

    public final boolean component1$kotlinx_serialization_runtime() {
        return this.encodeDefaults;
    }

    public final String component10$kotlinx_serialization_runtime() {
        return this.classDiscriminator;
    }

    public final EnumC20471v component11$kotlinx_serialization_runtime() {
        return this.updateMode;
    }

    public final boolean component2$kotlinx_serialization_runtime() {
        return this.ignoreUnknownKeys;
    }

    public final boolean component3$kotlinx_serialization_runtime() {
        return this.isLenient;
    }

    public final boolean component4$kotlinx_serialization_runtime() {
        return this.serializeSpecialFloatingPointValues;
    }

    public final boolean component5$kotlinx_serialization_runtime() {
        return this.allowStructuredMapKeys;
    }

    public final boolean component6$kotlinx_serialization_runtime() {
        return this.prettyPrint;
    }

    public final boolean component7$kotlinx_serialization_runtime() {
        return this.unquotedPrint;
    }

    public final String component8$kotlinx_serialization_runtime() {
        return this.indent;
    }

    public final boolean component9$kotlinx_serialization_runtime() {
        return this.useArrayPolymorphism;
    }

    public final JsonConfiguration copy(boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7, String indent, boolean z8, String classDiscriminator, EnumC20471v updateMode) {
        C18524p.m3841c(indent, "indent");
        C18524p.m3841c(classDiscriminator, "classDiscriminator");
        C18524p.m3841c(updateMode, "updateMode");
        return new JsonConfiguration(z, z2, z3, z4, z5, z6, z7, indent, z8, classDiscriminator, updateMode);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof JsonConfiguration)) {
                return false;
            }
            JsonConfiguration jsonConfiguration = (JsonConfiguration) obj;
            return this.encodeDefaults == jsonConfiguration.encodeDefaults && this.ignoreUnknownKeys == jsonConfiguration.ignoreUnknownKeys && this.isLenient == jsonConfiguration.isLenient && this.serializeSpecialFloatingPointValues == jsonConfiguration.serializeSpecialFloatingPointValues && this.allowStructuredMapKeys == jsonConfiguration.allowStructuredMapKeys && this.prettyPrint == jsonConfiguration.prettyPrint && this.unquotedPrint == jsonConfiguration.unquotedPrint && C18524p.m3850a((Object) this.indent, (Object) jsonConfiguration.indent) && this.useArrayPolymorphism == jsonConfiguration.useArrayPolymorphism && C18524p.m3850a((Object) this.classDiscriminator, (Object) jsonConfiguration.classDiscriminator) && C18524p.m3850a(this.updateMode, jsonConfiguration.updateMode);
        }
        return true;
    }

    public final boolean getAllowStructuredMapKeys$kotlinx_serialization_runtime() {
        return this.allowStructuredMapKeys;
    }

    public final String getClassDiscriminator$kotlinx_serialization_runtime() {
        return this.classDiscriminator;
    }

    public final boolean getEncodeDefaults$kotlinx_serialization_runtime() {
        return this.encodeDefaults;
    }

    public final boolean getIgnoreUnknownKeys$kotlinx_serialization_runtime() {
        return this.ignoreUnknownKeys;
    }

    public final String getIndent$kotlinx_serialization_runtime() {
        return this.indent;
    }

    public final boolean getPrettyPrint$kotlinx_serialization_runtime() {
        return this.prettyPrint;
    }

    /* renamed from: getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime */
    public final boolean m688xd36892ba() {
        return this.serializeSpecialFloatingPointValues;
    }

    public final boolean getUnquotedPrint$kotlinx_serialization_runtime() {
        return this.unquotedPrint;
    }

    public final EnumC20471v getUpdateMode$kotlinx_serialization_runtime() {
        return this.updateMode;
    }

    public final boolean getUseArrayPolymorphism$kotlinx_serialization_runtime() {
        return this.useArrayPolymorphism;
    }

    public final int hashCode() {
        boolean z = this.encodeDefaults;
        int i = 1;
        boolean z2 = z;
        if (z) {
            z2 = true;
        }
        boolean z3 = this.ignoreUnknownKeys;
        boolean z4 = z3;
        if (z3) {
            z4 = true;
        }
        boolean z5 = this.isLenient;
        boolean z6 = z5;
        if (z5) {
            z6 = true;
        }
        boolean z7 = this.serializeSpecialFloatingPointValues;
        boolean z8 = z7;
        if (z7) {
            z8 = true;
        }
        boolean z9 = this.allowStructuredMapKeys;
        boolean z10 = z9;
        if (z9) {
            z10 = true;
        }
        boolean z11 = this.prettyPrint;
        boolean z12 = z11;
        if (z11) {
            z12 = true;
        }
        boolean z13 = this.unquotedPrint;
        boolean z14 = z13;
        if (z13) {
            z14 = true;
        }
        String str = this.indent;
        int i2 = 0;
        int hashCode = str != null ? str.hashCode() : 0;
        boolean z15 = this.useArrayPolymorphism;
        if (!z15) {
            i = z15 ? 1 : 0;
        }
        String str2 = this.classDiscriminator;
        int hashCode2 = str2 != null ? str2.hashCode() : 0;
        EnumC20471v enumC20471v = this.updateMode;
        if (enumC20471v != null) {
            i2 = enumC20471v.hashCode();
        }
        return ((((((((((((((((((((z2 ? 1 : 0) * 31) + (z4 ? 1 : 0)) * 31) + (z6 ? 1 : 0)) * 31) + (z8 ? 1 : 0)) * 31) + (z10 ? 1 : 0)) * 31) + (z12 ? 1 : 0)) * 31) + (z14 ? 1 : 0)) * 31) + hashCode) * 31) + i) * 31) + hashCode2) * 31) + i2;
    }

    public final boolean isLenient$kotlinx_serialization_runtime() {
        return this.isLenient;
    }

    public final String toString() {
        return "JsonConfiguration(encodeDefaults=" + this.encodeDefaults + ", ignoreUnknownKeys=" + this.ignoreUnknownKeys + ", isLenient=" + this.isLenient + ", serializeSpecialFloatingPointValues=" + this.serializeSpecialFloatingPointValues + ", allowStructuredMapKeys=" + this.allowStructuredMapKeys + ", prettyPrint=" + this.prettyPrint + ", unquotedPrint=" + this.unquotedPrint + ", indent=" + this.indent + ", useArrayPolymorphism=" + this.useArrayPolymorphism + ", classDiscriminator=" + this.classDiscriminator + ", updateMode=" + this.updateMode + ")";
    }
}
