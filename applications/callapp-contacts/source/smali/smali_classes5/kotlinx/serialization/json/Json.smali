.class public final Lkotlinx/serialization/json/Json;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/s;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/Json$Default;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u0000 +2\u00020\u0001:\u0001+B \u0008\u0017\u0012\u0017\u0010\u0002\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0003\u00a2\u0006\u0002\u0008\u0006\u00a2\u0006\u0002\u0010\u0007B\u0007\u0008\u0017\u00a2\u0006\u0002\u0010\u0008B\u000f\u0008\u0012\u0012\u0006\u0010\t\u001a\u00020\u0004\u00a2\u0006\u0002\u0010\nB\u0019\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000e\u00a2\u0006\u0002\u0010\u000fJ\'\u0010\u0013\u001a\u0002H\u0014\"\u0004\u0008\u0000\u0010\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u00162\u0006\u0010\u0017\u001a\u00020\u0018\u00a2\u0006\u0002\u0010\u0019J\"\u0010\u0013\u001a\u0002H\u0014\"\n\u0008\u0000\u0010\u0014\u0018\u0001*\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u0018H\u0087\u0008\u00a2\u0006\u0002\u0010\u001cJ)\u0010\u001d\u001a\u0002H\u0014\"\u0004\u0008\u0000\u0010\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u0002H\u00140\u00162\u0006\u0010\u001e\u001a\u00020\u001fH\u0016\u00a2\u0006\u0002\u0010 J\u000e\u0010!\u001a\u00020\u00182\u0006\u0010\u001e\u001a\u00020\u001fJ)\u0010\"\u001a\u00020\u001f\"\u0004\u0008\u0000\u0010\u00142\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u00140$2\u0006\u0010%\u001a\u0002H\u0014H\u0016\u00a2\u0006\u0002\u0010&J\"\u0010\'\u001a\u00020\u0018\"\n\u0008\u0000\u0010\u0014\u0018\u0001*\u00020\u001a2\u0006\u0010%\u001a\u0002H\u0014H\u0087\u0008\u00a2\u0006\u0002\u0010(J\'\u0010\'\u001a\u00020\u0018\"\u0004\u0008\u0000\u0010\u00142\u000c\u0010#\u001a\u0008\u0012\u0004\u0012\u0002H\u00140$2\u0006\u0010%\u001a\u0002H\u0014\u00a2\u0006\u0002\u0010)J\u0008\u0010*\u001a\u00020\u0005H\u0002R\u0010\u0010\u000b\u001a\u00020\u000c8\u0000X\u0081\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u00020\u000eX\u0096\u0004\u00a2\u0006\n\n\u0002\u0008\u0012\u001a\u0004\u0008\u0010\u0010\u0011\u00a8\u0006,"
    }
    d2 = {
        "Lkotlinx/serialization/json/Json;",
        "Lkotlinx/serialization/StringFormat;",
        "block",
        "Lkotlin/Function1;",
        "Lkotlinx/serialization/json/JsonBuilder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "(Lkotlin/jvm/functions/Function1;)V",
        "()V",
        "builder",
        "(Lkotlinx/serialization/json/JsonBuilder;)V",
        "configuration",
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "context",
        "Lkotlinx/serialization/modules/SerialModule;",
        "(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/SerialModule;)V",
        "getContext",
        "()Lkotlinx/serialization/modules/SerialModule;",
        "context$1",
        "fromJson",
        "T",
        "deserializer",
        "Lkotlinx/serialization/DeserializationStrategy;",
        "json",
        "Lkotlinx/serialization/json/JsonElement;",
        "(Lkotlinx/serialization/DeserializationStrategy;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;",
        "",
        "tree",
        "(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;",
        "parse",
        "string",
        "",
        "(Lkotlinx/serialization/DeserializationStrategy;Ljava/lang/String;)Ljava/lang/Object;",
        "parseJson",
        "stringify",
        "serializer",
        "Lkotlinx/serialization/SerializationStrategy;",
        "value",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Ljava/lang/String;",
        "toJson",
        "(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;",
        "(Lkotlinx/serialization/SerializationStrategy;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;",
        "validateConfiguration",
        "Default",
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
.field public static final Default:Lkotlinx/serialization/json/Json$Default;

.field private static final indented:Lkotlinx/serialization/json/Json;

.field private static final jsonInstance:Lkotlinx/serialization/json/Json;

.field private static final message:Ljava/lang/String; = "Top-level JSON instances are deprecated for removal in the favour of user-configured one. You can either use a Json top-level object, configure your own instance  via \'Json {}\' builder-like constructor, \'Json(JsonConfiguration)\' constructor or by tweaking stable configuration \'Json(JsonConfiguration.Stable.copy(prettyPrint = true))\'"

.field private static final nonstrict:Lkotlinx/serialization/json/Json;

.field private static final plain:Lkotlinx/serialization/json/Json;

.field private static final unquoted:Lkotlinx/serialization/json/Json;


# instance fields
.field public final configuration:Lkotlinx/serialization/json/JsonConfiguration;

.field private final context$1:Lkotlinx/serialization/modules/b;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lkotlinx/serialization/json/Json$Default;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/Json$Default;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->Default:Lkotlinx/serialization/json/Json$Default;

    .line 174
    new-instance v0, Lkotlinx/serialization/json/Json;

    new-instance v15, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x6ff

    const/16 v16, 0x0

    move-object v2, v15

    move-object v1, v15

    move-object/from16 v15, v16

    invoke-direct/range {v2 .. v15}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->plain:Lkotlinx/serialization/json/Json;

    .line 177
    new-instance v0, Lkotlinx/serialization/json/Json;

    .line 178
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x6b1

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    .line 177
    invoke-direct {v0, v1, v3, v2, v3}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->unquoted:Lkotlinx/serialization/json/Json;

    .line 189
    new-instance v0, Lkotlinx/serialization/json/Json;

    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/16 v15, 0x6df

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2, v3}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->indented:Lkotlinx/serialization/json/Json;

    .line 193
    new-instance v0, Lkotlinx/serialization/json/Json;

    .line 194
    new-instance v1, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v9, 0x0

    const/16 v15, 0x6f1

    move-object v3, v1

    invoke-direct/range {v3 .. v16}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v3, 0x0

    .line 193
    invoke-direct {v0, v1, v3, v2, v3}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->nonstrict:Lkotlinx/serialization/json/Json;

    .line 202
    new-instance v0, Lkotlinx/serialization/json/Json;

    sget-object v1, Lkotlinx/serialization/json/JsonConfiguration;->Companion:Lkotlinx/serialization/json/JsonConfiguration$Companion;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration$Companion;->getDefault()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v1

    invoke-direct {v0, v1, v3, v2, v3}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/Json;->jsonInstance:Lkotlinx/serialization/json/Json;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 79
    new-instance v14, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x6ff

    const/4 v13, 0x0

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, v14, v0, v1, v0}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlinx/serialization/json/JsonBuilder;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "block"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lkotlinx/serialization/json/JsonBuilder;

    invoke-direct {v0}, Lkotlinx/serialization/json/JsonBuilder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonBuilder;)V

    return-void
.end method

.method private constructor <init>(Lkotlinx/serialization/json/JsonBuilder;)V
    .locals 1

    .line 82
    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonBuilder;->buildConfiguration()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonBuilder;->buildModule()Lkotlinx/serialization/modules/b;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;)V

    return-void
.end method

.method public constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;)V
    .locals 1

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    .line 64
    invoke-static {}, Lkotlinx/serialization/json/JsonKt;->access$getDefaultJsonModule$p()Lkotlinx/serialization/modules/b;

    move-result-object p1

    const-string v0, "$this$plus"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1037
    new-instance v0, Lkotlinx/serialization/modules/e$a;

    invoke-direct {v0, p2, p1}, Lkotlinx/serialization/modules/e$a;-><init>(Lkotlinx/serialization/modules/b;Lkotlinx/serialization/modules/b;)V

    check-cast v0, Lkotlin/jvm/functions/Function1;

    invoke-static {v0}, Lkotlinx/serialization/modules/c;->a(Lkotlin/jvm/functions/Function1;)Lkotlinx/serialization/modules/b;

    move-result-object p1

    .line 64
    iput-object p1, p0, Lkotlinx/serialization/json/Json;->context$1:Lkotlinx/serialization/modules/b;

    .line 85
    invoke-direct {p0}, Lkotlinx/serialization/json/Json;->validateConfiguration()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    .line 61
    sget-object p1, Lkotlinx/serialization/json/JsonConfiguration;->Companion:Lkotlinx/serialization/json/JsonConfiguration$Companion;

    invoke-virtual {p1}, Lkotlinx/serialization/json/JsonConfiguration$Companion;->getStable()Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    .line 62
    sget-object p2, Lkotlinx/serialization/modules/a;->a:Lkotlinx/serialization/modules/a;

    check-cast p2, Lkotlinx/serialization/modules/b;

    :cond_1
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/json/Json;-><init>(Lkotlinx/serialization/json/JsonConfiguration;Lkotlinx/serialization/modules/b;)V

    return-void
.end method

.method public static final synthetic access$getIndented$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 51
    sget-object v0, Lkotlinx/serialization/json/Json;->indented:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getJsonInstance$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 51
    sget-object v0, Lkotlinx/serialization/json/Json;->jsonInstance:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getNonstrict$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 51
    sget-object v0, Lkotlinx/serialization/json/Json;->nonstrict:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getPlain$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 51
    sget-object v0, Lkotlinx/serialization/json/Json;->plain:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method public static final synthetic access$getUnquoted$cp()Lkotlinx/serialization/json/Json;
    .locals 1

    .line 51
    sget-object v0, Lkotlinx/serialization/json/Json;->unquoted:Lkotlinx/serialization/json/Json;

    return-object v0
.end method

.method private final validateConfiguration()V
    .locals 2

    .line 250
    iget-object v0, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v0}, Lkotlinx/serialization/json/JsonConfiguration;->getUseArrayPolymorphism$kotlinx_serialization_runtime()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 251
    :cond_0
    new-instance v0, Lkotlinx/serialization/json/internal/ContextValidator;

    iget-object v1, p0, Lkotlinx/serialization/json/Json;->configuration:Lkotlinx/serialization/json/JsonConfiguration;

    invoke-virtual {v1}, Lkotlinx/serialization/json/JsonConfiguration;->getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/internal/ContextValidator;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v1

    check-cast v0, Lkotlinx/serialization/modules/d;

    invoke-interface {v1, v0}, Lkotlinx/serialization/modules/b;->a(Lkotlinx/serialization/modules/d;)V

    return-void
.end method


# virtual methods
.method public final fromJson(Lkotlinx/serialization/d;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "json"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    invoke-static {p0, p2, p1}, Lkotlinx/serialization/json/internal/TreeJsonInputKt;->readJson(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/JsonElement;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic fromJson(Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/json/JsonElement;",
            ")TT;"
        }
    .end annotation

    const-string v0, "tree"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/p;->b()V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/modules/e;->a(Lkotlinx/serialization/modules/b;Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/d;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->fromJson(Lkotlinx/serialization/d;Lkotlinx/serialization/json/JsonElement;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getContext()Lkotlinx/serialization/modules/b;
    .locals 1

    .line 64
    iget-object v0, p0, Lkotlinx/serialization/json/Json;->context$1:Lkotlinx/serialization/modules/b;

    return-object v0
.end method

.method public final parse(Lkotlinx/serialization/d;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/d<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    const-string v0, "deserializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "string"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    new-instance v0, Lkotlinx/serialization/json/internal/JsonReader;

    invoke-direct {v0, p2}, Lkotlinx/serialization/json/internal/JsonReader;-><init>(Ljava/lang/String;)V

    .line 130
    new-instance p2, Lkotlinx/serialization/json/internal/StreamingJsonInput;

    sget-object v1, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    invoke-direct {p2, p0, v1, v0}, Lkotlinx/serialization/json/internal/StreamingJsonInput;-><init>(Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;Lkotlinx/serialization/json/internal/JsonReader;)V

    .line 131
    check-cast p2, Lkotlinx/serialization/Decoder;

    invoke-static {p2, p1}, Lkotlinx/serialization/c;->a(Lkotlinx/serialization/Decoder;Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    .line 132
    invoke-virtual {v0}, Lkotlinx/serialization/json/internal/JsonReader;->isDone()Z

    move-result p2

    if-eqz p2, :cond_0

    return-object p1

    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Reader has not consumed the whole input: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method

.method public final parseJson(Ljava/lang/String;)Lkotlinx/serialization/json/JsonElement;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 142
    sget-object v0, Lkotlinx/serialization/json/JsonElementSerializer;->INSTANCE:Lkotlinx/serialization/json/JsonElementSerializer;

    check-cast v0, Lkotlinx/serialization/d;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->parse(Lkotlinx/serialization/d;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/serialization/json/JsonElement;

    return-object p1
.end method

.method public final stringify(Lkotlinx/serialization/r;Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    new-instance v1, Lkotlinx/serialization/json/internal/StreamingJsonOutput;

    .line 97
    sget-object v2, Lkotlinx/serialization/json/internal/WriteMode;->OBJ:Lkotlinx/serialization/json/internal/WriteMode;

    .line 98
    invoke-static {}, Lkotlinx/serialization/json/internal/WriteMode;->values()[Lkotlinx/serialization/json/internal/WriteMode;

    move-result-object v3

    array-length v3, v3

    new-array v3, v3, [Lkotlinx/serialization/json/JsonOutput;

    .line 95
    invoke-direct {v1, v0, p0, v2, v3}, Lkotlinx/serialization/json/internal/StreamingJsonOutput;-><init>(Ljava/lang/StringBuilder;Lkotlinx/serialization/json/Json;Lkotlinx/serialization/json/internal/WriteMode;[Lkotlinx/serialization/json/JsonOutput;)V

    .line 100
    check-cast v1, Lkotlinx/serialization/Encoder;

    invoke-static {v1, p1, p2}, Lkotlinx/serialization/e;->a(Lkotlinx/serialization/Encoder;Lkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "result.toString()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final synthetic toJson(Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const-string/jumbo v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lkotlinx/serialization/json/Json;->getContext()Lkotlinx/serialization/modules/b;

    move-result-object v0

    invoke-static {}, Lkotlin/jvm/internal/p;->b()V

    const-class v1, Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlinx/serialization/modules/e;->a(Lkotlinx/serialization/modules/b;Lkotlin/reflect/c;)Lkotlinx/serialization/KSerializer;

    move-result-object v0

    check-cast v0, Lkotlinx/serialization/r;

    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/json/Json;->toJson(Lkotlinx/serialization/r;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    return-object p1
.end method

.method public final toJson(Lkotlinx/serialization/r;Ljava/lang/Object;)Lkotlinx/serialization/json/JsonElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/serialization/r<",
            "-TT;>;TT;)",
            "Lkotlinx/serialization/json/JsonElement;"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 110
    invoke-static {p0, p2, p1}, Lkotlinx/serialization/json/internal/TreeJsonOutputKt;->writeJson(Lkotlinx/serialization/json/Json;Ljava/lang/Object;Lkotlinx/serialization/r;)Lkotlinx/serialization/json/JsonElement;

    move-result-object p1

    return-object p1
.end method
