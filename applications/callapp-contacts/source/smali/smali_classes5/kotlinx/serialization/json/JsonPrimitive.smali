.class public abstract Lkotlinx/serialization/json/JsonPrimitive;
.super Lkotlinx/serialization/json/JsonElement;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonPrimitive$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010\u0007\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000 12\u00020\u0001:\u00011B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u00100\u001a\u00020\u000bH\u0016R\u0011\u0010\u0003\u001a\u00020\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0005\u0010\u0006R\u0013\u0010\u0007\u001a\u0004\u0018\u00010\u00048F\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\tR\u0012\u0010\n\u001a\u00020\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0014\u0010\u000e\u001a\u0004\u0018\u00010\u000bX\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\rR\u0011\u0010\u0010\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0013\u0010\u0014\u001a\u0004\u0018\u00010\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0017\u001a\u00020\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u0019\u0010\u001aR\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00188F\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001dR\u0011\u0010\u001e\u001a\u00020\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010!R\u0013\u0010\"\u001a\u0004\u0018\u00010\u001f8F\u00a2\u0006\u0006\u001a\u0004\u0008#\u0010$R\u0011\u0010%\u001a\u00020&8F\u00a2\u0006\u0006\u001a\u0004\u0008\'\u0010(R\u0013\u0010)\u001a\u0004\u0018\u00010&8F\u00a2\u0006\u0006\u001a\u0004\u0008*\u0010+R\u0017\u0010,\u001a\u00020\u0000\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008-\u0010\u0002\u001a\u0004\u0008.\u0010/\u0082\u0001\u000223\u00a8\u00064"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonPrimitive;",
        "Lkotlinx/serialization/json/JsonElement;",
        "()V",
        "boolean",
        "",
        "getBoolean",
        "()Z",
        "booleanOrNull",
        "getBooleanOrNull",
        "()Ljava/lang/Boolean;",
        "content",
        "",
        "getContent",
        "()Ljava/lang/String;",
        "contentOrNull",
        "getContentOrNull",
        "double",
        "",
        "getDouble",
        "()D",
        "doubleOrNull",
        "getDoubleOrNull",
        "()Ljava/lang/Double;",
        "float",
        "",
        "getFloat",
        "()F",
        "floatOrNull",
        "getFloatOrNull",
        "()Ljava/lang/Float;",
        "int",
        "",
        "getInt",
        "()I",
        "intOrNull",
        "getIntOrNull",
        "()Ljava/lang/Integer;",
        "long",
        "",
        "getLong",
        "()J",
        "longOrNull",
        "getLongOrNull",
        "()Ljava/lang/Long;",
        "primitive",
        "primitive$annotations",
        "getPrimitive",
        "()Lkotlinx/serialization/json/JsonPrimitive;",
        "toString",
        "Companion",
        "Lkotlinx/serialization/json/JsonLiteral;",
        "Lkotlinx/serialization/json/JsonNull;",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lkotlinx/serialization/json/JsonPrimitive$Companion;


# instance fields
.field private final primitive:Lkotlinx/serialization/json/JsonPrimitive;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlinx/serialization/json/JsonPrimitive$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonPrimitive$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/JsonPrimitive;->Companion:Lkotlinx/serialization/json/JsonPrimitive$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-direct {p0, v0}, Lkotlinx/serialization/json/JsonElement;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 88
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/json/JsonPrimitive;

    iput-object v0, p0, Lkotlinx/serialization/json/JsonPrimitive;->primitive:Lkotlinx/serialization/json/JsonPrimitive;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Lkotlinx/serialization/json/JsonPrimitive;-><init>()V

    return-void
.end method

.method public static synthetic primitive$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final getBoolean()Z
    .locals 1

    .line 138
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrict(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final getBooleanOrNull()Ljava/lang/Boolean;
    .locals 1

    .line 143
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/serialization/json/internal/StringOpsKt;->toBooleanStrictOrNull(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public abstract getContent()Ljava/lang/String;
.end method

.method public abstract getContentOrNull()Ljava/lang/String;
.end method

.method public final getDouble()D
    .locals 2

    .line 116
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0
.end method

.method public final getDoubleOrNull()Ljava/lang/Double;
    .locals 1

    .line 121
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/h/p;->d(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public final getFloat()F
    .locals 1

    .line 127
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    return v0
.end method

.method public final getFloatOrNull()Ljava/lang/Float;
    .locals 1

    .line 132
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/h/p;->c(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public final getInt()I
    .locals 1

    .line 94
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final getIntOrNull()Ljava/lang/Integer;
    .locals 1

    .line 99
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/h/p;->e(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public final getLong()J
    .locals 2

    .line 105
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getLongOrNull()Ljava/lang/Long;
    .locals 1

    .line 110
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/h/p;->f(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final getPrimitive()Lkotlinx/serialization/json/JsonPrimitive;
    .locals 1

    .line 88
    iget-object v0, p0, Lkotlinx/serialization/json/JsonPrimitive;->primitive:Lkotlinx/serialization/json/JsonPrimitive;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 145
    invoke-virtual {p0}, Lkotlinx/serialization/json/JsonPrimitive;->getContent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
