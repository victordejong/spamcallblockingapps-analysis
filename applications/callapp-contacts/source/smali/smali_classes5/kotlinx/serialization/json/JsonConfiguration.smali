.class public final Lkotlinx/serialization/json/JsonConfiguration;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/serialization/json/JsonConfiguration$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008+\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0008\u0018\u0000 =2\u00020\u0001:\u0001=Bu\u0008\u0007\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000f\u00a2\u0006\u0002\u0010\u0010J\u000e\u0010!\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008\"J\u000e\u0010#\u001a\u00020\u000bH\u00c0\u0003\u00a2\u0006\u0002\u0008$J\u000e\u0010%\u001a\u00020\u000fH\u00c0\u0003\u00a2\u0006\u0002\u0008&J\u000e\u0010\'\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008(J\u000e\u0010)\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008*J\u000e\u0010+\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008,J\u000e\u0010-\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u0008.J\u000e\u0010/\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u00080J\u000e\u00101\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u00082J\u000e\u00103\u001a\u00020\u000bH\u00c0\u0003\u00a2\u0006\u0002\u00084J\u000e\u00105\u001a\u00020\u0003H\u00c0\u0003\u00a2\u0006\u0002\u00086Jw\u00107\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00032\u0008\u0008\u0002\u0010\t\u001a\u00020\u00032\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u00032\u0008\u0008\u0002\u0010\r\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fH\u00c6\u0001J\u0013\u00108\u001a\u00020\u00032\u0008\u00109\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010:\u001a\u00020;H\u00d6\u0001J\t\u0010<\u001a\u00020\u000bH\u00d6\u0001R\u0014\u0010\u0007\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\r\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0002\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012R\u0014\u0010\u0004\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u0012R\u0014\u0010\n\u001a\u00020\u000bX\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0014R\u0014\u0010\u0005\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012R\u0014\u0010\u0008\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u0012R\u0014\u0010\u0006\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u0012R\u0014\u0010\t\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001b\u0010\u0012R\u001c\u0010\u000e\u001a\u00020\u000f8\u0000X\u0081\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001c\u0010\u001d\u001a\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u000c\u001a\u00020\u0003X\u0080\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008 \u0010\u0012\u00a8\u0006>"
    }
    d2 = {
        "Lkotlinx/serialization/json/JsonConfiguration;",
        "",
        "encodeDefaults",
        "",
        "ignoreUnknownKeys",
        "isLenient",
        "serializeSpecialFloatingPointValues",
        "allowStructuredMapKeys",
        "prettyPrint",
        "unquotedPrint",
        "indent",
        "",
        "useArrayPolymorphism",
        "classDiscriminator",
        "updateMode",
        "Lkotlinx/serialization/UpdateMode;",
        "(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/UpdateMode;)V",
        "getAllowStructuredMapKeys$kotlinx_serialization_runtime",
        "()Z",
        "getClassDiscriminator$kotlinx_serialization_runtime",
        "()Ljava/lang/String;",
        "getEncodeDefaults$kotlinx_serialization_runtime",
        "getIgnoreUnknownKeys$kotlinx_serialization_runtime",
        "getIndent$kotlinx_serialization_runtime",
        "isLenient$kotlinx_serialization_runtime",
        "getPrettyPrint$kotlinx_serialization_runtime",
        "getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime",
        "getUnquotedPrint$kotlinx_serialization_runtime",
        "updateMode$annotations",
        "()V",
        "getUpdateMode$kotlinx_serialization_runtime",
        "()Lkotlinx/serialization/UpdateMode;",
        "getUseArrayPolymorphism$kotlinx_serialization_runtime",
        "component1",
        "component1$kotlinx_serialization_runtime",
        "component10",
        "component10$kotlinx_serialization_runtime",
        "component11",
        "component11$kotlinx_serialization_runtime",
        "component2",
        "component2$kotlinx_serialization_runtime",
        "component3",
        "component3$kotlinx_serialization_runtime",
        "component4",
        "component4$kotlinx_serialization_runtime",
        "component5",
        "component5$kotlinx_serialization_runtime",
        "component6",
        "component6$kotlinx_serialization_runtime",
        "component7",
        "component7$kotlinx_serialization_runtime",
        "component8",
        "component8$kotlinx_serialization_runtime",
        "component9",
        "component9$kotlinx_serialization_runtime",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
        "toString",
        "Companion",
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
.field public static final Companion:Lkotlinx/serialization/json/JsonConfiguration$Companion;

.field private static final Default:Lkotlinx/serialization/json/JsonConfiguration;

.field private static final Stable:Lkotlinx/serialization/json/JsonConfiguration;

.field private static final defaultDiscriminator:Ljava/lang/String;

.field private static final defaultIndent:Ljava/lang/String;


# instance fields
.field private final allowStructuredMapKeys:Z

.field private final classDiscriminator:Ljava/lang/String;

.field private final encodeDefaults:Z

.field private final ignoreUnknownKeys:Z

.field private final indent:Ljava/lang/String;

.field private final isLenient:Z

.field private final prettyPrint:Z

.field private final serializeSpecialFloatingPointValues:Z

.field private final unquotedPrint:Z

.field private final updateMode:Lkotlinx/serialization/v;

.field private final useArrayPolymorphism:Z


# direct methods
.method static constructor <clinit>()V
    .locals 27

    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlinx/serialization/json/JsonConfiguration$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Companion:Lkotlinx/serialization/json/JsonConfiguration$Companion;

    const-string v10, "    "

    .line 77
    sput-object v10, Lkotlinx/serialization/json/JsonConfiguration;->defaultIndent:Ljava/lang/String;

    const-string v12, "type"

    .line 79
    sput-object v12, Lkotlinx/serialization/json/JsonConfiguration;->defaultDiscriminator:Ljava/lang/String;

    .line 89
    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x7ff

    const/16 v26, 0x0

    move-object v13, v0

    invoke-direct/range {v13 .. v26}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Default:Lkotlinx/serialization/json/JsonConfiguration;

    .line 97
    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x400

    const/4 v15, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v15}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Stable:Lkotlinx/serialization/json/JsonConfiguration;

    return-void
.end method

.method public constructor <init>()V
    .locals 14

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x7ff

    const/4 v13, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v13}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;)V
    .locals 1

    const-string v0, "indent"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDiscriminator"

    invoke-static {p10, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateMode"

    invoke-static {p11, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    iput-boolean p2, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    iput-boolean p3, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    iput-boolean p4, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    iput-boolean p5, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    iput-boolean p6, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    iput-boolean p7, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    iput-object p8, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    iput-boolean p9, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    iput-object p10, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    iput-object p11, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    if-eqz p9, :cond_1

    .line 65
    sget-object p1, Lkotlinx/serialization/json/JsonConfiguration;->defaultDiscriminator:Ljava/lang/String;

    invoke-static {p10, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Class discriminator should not be specified when array polymorphism is specified"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    :goto_0
    if-nez p6, :cond_3

    .line 69
    sget-object p1, Lkotlinx/serialization/json/JsonConfiguration;->defaultIndent:Ljava/lang/String;

    invoke-static {p8, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Indent should not be specified when default printing mode is used"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    :goto_1
    return-void
.end method

.method public synthetic constructor <init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 11

    move/from16 v0, p12

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    and-int/lit8 v2, v0, 0x2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    move v2, p2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    goto :goto_3

    :cond_3
    move v5, p4

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const/4 v6, 0x0

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const/4 v7, 0x0

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const/4 v8, 0x0

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    .line 57
    sget-object v9, Lkotlinx/serialization/json/JsonConfiguration;->defaultIndent:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    goto :goto_8

    :cond_8
    move/from16 v3, p9

    :goto_8
    and-int/lit16 v10, v0, 0x200

    if-eqz v10, :cond_9

    .line 59
    sget-object v10, Lkotlinx/serialization/json/JsonConfiguration;->defaultDiscriminator:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v10, p10

    :goto_9
    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_a

    .line 61
    sget-object v0, Lkotlinx/serialization/v;->OVERWRITE:Lkotlinx/serialization/v;

    goto :goto_a

    :cond_a
    move-object/from16 v0, p11

    :goto_a
    move-object p1, p0

    move p2, v1

    move p3, v2

    move p4, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move/from16 p7, v7

    move/from16 p8, v8

    move-object/from16 p9, v9

    move/from16 p10, v3

    move-object/from16 p11, v10

    move-object/from16 p12, v0

    invoke-direct/range {p1 .. p12}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;)V

    return-void
.end method

.method public static final synthetic access$getDefault$cp()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 1

    .line 49
    sget-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Default:Lkotlinx/serialization/json/JsonConfiguration;

    return-object v0
.end method

.method public static final synthetic access$getStable$cp()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 1

    .line 49
    sget-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Stable:Lkotlinx/serialization/json/JsonConfiguration;

    return-object v0
.end method

.method public static synthetic copy$default(Lkotlinx/serialization/json/JsonConfiguration;ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;ILjava/lang/Object;)Lkotlinx/serialization/json/JsonConfiguration;
    .locals 12

    move-object v0, p0

    move/from16 v1, p12

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    goto :goto_0

    :cond_0
    move v2, p1

    :goto_0
    and-int/lit8 v3, v1, 0x2

    if-eqz v3, :cond_1

    iget-boolean v3, v0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    goto :goto_1

    :cond_1
    move v3, p2

    :goto_1
    and-int/lit8 v4, v1, 0x4

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    goto :goto_2

    :cond_2
    move v4, p3

    :goto_2
    and-int/lit8 v5, v1, 0x8

    if-eqz v5, :cond_3

    iget-boolean v5, v0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    goto :goto_3

    :cond_3
    move/from16 v5, p4

    :goto_3
    and-int/lit8 v6, v1, 0x10

    if-eqz v6, :cond_4

    iget-boolean v6, v0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    goto :goto_4

    :cond_4
    move/from16 v6, p5

    :goto_4
    and-int/lit8 v7, v1, 0x20

    if-eqz v7, :cond_5

    iget-boolean v7, v0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    goto :goto_5

    :cond_5
    move/from16 v7, p6

    :goto_5
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_6

    iget-boolean v8, v0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    goto :goto_6

    :cond_6
    move/from16 v8, p7

    :goto_6
    and-int/lit16 v9, v1, 0x80

    if-eqz v9, :cond_7

    iget-object v9, v0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    goto :goto_7

    :cond_7
    move-object/from16 v9, p8

    :goto_7
    and-int/lit16 v10, v1, 0x100

    if-eqz v10, :cond_8

    iget-boolean v10, v0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    goto :goto_8

    :cond_8
    move/from16 v10, p9

    :goto_8
    and-int/lit16 v11, v1, 0x200

    if-eqz v11, :cond_9

    iget-object v11, v0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    goto :goto_9

    :cond_9
    move-object/from16 v11, p10

    :goto_9
    and-int/lit16 v1, v1, 0x400

    if-eqz v1, :cond_a

    iget-object v1, v0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    goto :goto_a

    :cond_a
    move-object/from16 v1, p11

    :goto_a
    move p1, v2

    move p2, v3

    move p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    move/from16 p6, v7

    move/from16 p7, v8

    move-object/from16 p8, v9

    move/from16 p9, v10

    move-object/from16 p10, v11

    move-object/from16 p11, v1

    invoke-virtual/range {p0 .. p11}, Lkotlinx/serialization/json/JsonConfiguration;->copy(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;)Lkotlinx/serialization/json/JsonConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static final getDefault()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Default:Lkotlinx/serialization/json/JsonConfiguration;

    return-object v0
.end method

.method public static final getStable()Lkotlinx/serialization/json/JsonConfiguration;
    .locals 1

    sget-object v0, Lkotlinx/serialization/json/JsonConfiguration;->Stable:Lkotlinx/serialization/json/JsonConfiguration;

    return-object v0
.end method

.method public static synthetic updateMode$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final component1$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    return v0
.end method

.method public final component10$kotlinx_serialization_runtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    return-object v0
.end method

.method public final component11$kotlinx_serialization_runtime()Lkotlinx/serialization/v;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    return-object v0
.end method

.method public final component2$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    return v0
.end method

.method public final component3$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    return v0
.end method

.method public final component4$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    return v0
.end method

.method public final component5$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    return v0
.end method

.method public final component6$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    return v0
.end method

.method public final component7$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    return v0
.end method

.method public final component8$kotlinx_serialization_runtime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public final component9$kotlinx_serialization_runtime()Z
    .locals 1

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    return v0
.end method

.method public final copy(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;)Lkotlinx/serialization/json/JsonConfiguration;
    .locals 13

    const-string v0, "indent"

    move-object/from16 v9, p8

    invoke-static {v9, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "classDiscriminator"

    move-object/from16 v11, p10

    invoke-static {v11, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "updateMode"

    move-object/from16 v12, p11

    invoke-static {v12, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lkotlinx/serialization/json/JsonConfiguration;

    move-object v1, v0

    move v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lkotlinx/serialization/json/JsonConfiguration;-><init>(ZZZZZZZLjava/lang/String;ZLjava/lang/String;Lkotlinx/serialization/v;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lkotlinx/serialization/json/JsonConfiguration;

    if-eqz v0, :cond_0

    check-cast p1, Lkotlinx/serialization/json/JsonConfiguration;

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    iget-object v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    iget-boolean v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    iget-object v1, p1, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    iget-object p1, p1, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    invoke-static {v0, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final getAllowStructuredMapKeys$kotlinx_serialization_runtime()Z
    .locals 1

    .line 54
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    return v0
.end method

.method public final getClassDiscriminator$kotlinx_serialization_runtime()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    return-object v0
.end method

.method public final getEncodeDefaults$kotlinx_serialization_runtime()Z
    .locals 1

    .line 50
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    return v0
.end method

.method public final getIgnoreUnknownKeys$kotlinx_serialization_runtime()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    return v0
.end method

.method public final getIndent$kotlinx_serialization_runtime()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrettyPrint$kotlinx_serialization_runtime()Z
    .locals 1

    .line 55
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    return v0
.end method

.method public final getSerializeSpecialFloatingPointValues$kotlinx_serialization_runtime()Z
    .locals 1

    .line 53
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    return v0
.end method

.method public final getUnquotedPrint$kotlinx_serialization_runtime()Z
    .locals 1

    .line 56
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    return v0
.end method

.method public final getUpdateMode$kotlinx_serialization_runtime()Lkotlinx/serialization/v;
    .locals 1

    .line 61
    iget-object v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    return-object v0
.end method

.method public final getUseArrayPolymorphism$kotlinx_serialization_runtime()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    :cond_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    :cond_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    :cond_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    :cond_6
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_7

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_7
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v2, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    if-eqz v2, :cond_8

    goto :goto_1

    :cond_8
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    :cond_a
    add-int/2addr v0, v3

    return v0
.end method

.method public final isLenient$kotlinx_serialization_runtime()Z
    .locals 1

    .line 52
    iget-boolean v0, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JsonConfiguration(encodeDefaults="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->encodeDefaults:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", ignoreUnknownKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->ignoreUnknownKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isLenient="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->isLenient:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", serializeSpecialFloatingPointValues="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->serializeSpecialFloatingPointValues:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", allowStructuredMapKeys="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->allowStructuredMapKeys:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", prettyPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->prettyPrint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", unquotedPrint="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->unquotedPrint:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", indent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->indent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", useArrayPolymorphism="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->useArrayPolymorphism:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", classDiscriminator="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->classDiscriminator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", updateMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lkotlinx/serialization/json/JsonConfiguration;->updateMode:Lkotlinx/serialization/v;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
