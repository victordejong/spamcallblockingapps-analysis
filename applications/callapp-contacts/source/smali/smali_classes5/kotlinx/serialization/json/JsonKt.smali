.class public final Lkotlinx/serialization/json/JsonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\"\u0016\u0010\u0000\u001a\u00020\u00018\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0002\u0010\u0003\"\u000e\u0010\u0004\u001a\u00020\u0005X\u0080T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0006"
    }
    d2 = {
        "defaultJsonModule",
        "Lkotlinx/serialization/modules/SerialModule;",
        "defaultJsonModule$annotations",
        "()V",
        "lenientHint",
        "",
        "kotlinx-serialization-runtime"
    }
    k = 0x2
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field private static final defaultJsonModule:Lkotlinx/serialization/modules/b;

.field public static final lenientHint:Ljava/lang/String; = "Use \'JsonConfiguration.isLenient = true\' to accept non-compliant JSON"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x6

    new-array v0, v0, [Lkotlin/n;

    .line 305
    const-class v1, Lkotlinx/serialization/json/JsonElement;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 306
    const-class v1, Lkotlinx/serialization/json/JsonPrimitive;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonPrimitiveSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonPrimitiveSerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 307
    const-class v1, Lkotlinx/serialization/json/JsonLiteral;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonLiteralSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonLiteralSerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 308
    const-class v1, Lkotlinx/serialization/json/JsonNull;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonNullSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonNullSerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 309
    const-class v1, Lkotlinx/serialization/json/JsonObject;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonObjectSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonObjectSerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 310
    const-class v1, Lkotlinx/serialization/json/JsonArray;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    sget-object v2, Lkotlinx/serialization/json/JsonArraySerializer;->INSTANCE:Lkotlinx/serialization/json/JsonArraySerializer;

    invoke-static {v1, v2}, Lkotlin/t;->a(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/n;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 304
    invoke-static {v0}, Lkotlin/a/ai;->a([Lkotlin/n;)Ljava/util/Map;

    move-result-object v0

    const-string v1, "map"

    .line 303
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1031
    new-instance v1, Lkotlinx/serialization/modules/c$a;

    invoke-direct {v1, v0}, Lkotlinx/serialization/modules/c$a;-><init>(Ljava/util/Map;)V

    check-cast v1, Lkotlin/jvm/functions/Function1;

    invoke-static {v1}, Lkotlinx/serialization/modules/c;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/modules/b;

    move-result-object v0

    .line 303
    sput-object v0, Lkotlinx/serialization/json/JsonKt;->defaultJsonModule:Lkotlinx/serialization/modules/b;

    return-void
.end method

.method public static final synthetic access$getDefaultJsonModule$p()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 1
    sget-object v0, Lkotlinx/serialization/json/JsonKt;->defaultJsonModule:Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method private static synthetic defaultJsonModule$annotations()V
    .locals 0

    return-void
.end method
