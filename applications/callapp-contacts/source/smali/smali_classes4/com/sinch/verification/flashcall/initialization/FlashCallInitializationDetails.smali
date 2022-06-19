.class public final Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/initiation/response/InitiationDetails;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;,
        Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008 \n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 42\u00020\u0001:\u000234Ba\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\r\u00a2\u0006\u0002\u0010\u000eBC\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\t\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u000fJ\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\u0010\u0010&\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010\'\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u0010\u0010(\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003\u00a2\u0006\u0002\u0010\u0018J\u000b\u0010)\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010*\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JT\u0010+\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00072\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001\u00a2\u0006\u0002\u0010,J\u0013\u0010-\u001a\u00020.2\u0008\u0010/\u001a\u0004\u0018\u000100H\u00d6\u0003J\t\u00101\u001a\u00020\u0003H\u00d6\u0001J\t\u00102\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\n\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0014\u0010\u0011\u001a\u0004\u0008\u0015\u0010\u0013R \u0010\t\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\u0008\u0016\u0010\u0011\u001a\u0004\u0008\u0017\u0010\u0018R\u0011\u0010\u001a\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008\u001b\u0010\u001cR \u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\u0008\u001d\u0010\u0011\u001a\u0004\u0008\u001e\u0010\u0018R\u0011\u0010\u001f\u001a\u00020\u00078F\u00a2\u0006\u0006\u001a\u0004\u0008 \u0010\u001cR \u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u0019\u0012\u0004\u0008!\u0010\u0011\u001a\u0004\u0008\"\u0010\u0018R\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008#\u0010\u0011\u001a\u0004\u0008$\u0010\u0013\u00a8\u00065"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;",
        "Lcom/sinch/verification/core/initiation/response/InitiationDetails;",
        "seen1",
        "",
        "cliFilter",
        "",
        "interceptionTimeoutApi",
        "",
        "reportTimeoutApi",
        "denyCallAfter",
        "cli",
        "subVerificationId",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V",
        "cli$annotations",
        "()V",
        "getCli",
        "()Ljava/lang/String;",
        "cliFilter$annotations",
        "getCliFilter",
        "denyCallAfter$annotations",
        "getDenyCallAfter",
        "()Ljava/lang/Long;",
        "Ljava/lang/Long;",
        "interceptionTimeout",
        "getInterceptionTimeout",
        "()J",
        "interceptionTimeoutApi$annotations",
        "getInterceptionTimeoutApi",
        "reportTimeout",
        "getReportTimeout",
        "reportTimeoutApi$annotations",
        "getReportTimeoutApi",
        "subVerificationId$annotations",
        "getSubVerificationId",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;",
        "equals",
        "",
        "other",
        "",
        "hashCode",
        "toString",
        "$serializer",
        "Companion",
        "verification-flashcall_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;

.field public static final DEFAULT_INTERCEPTION_TIMEOUT:J = 0x3a98L


# instance fields
.field private final cli:Ljava/lang/String;

.field private final cliFilter:Ljava/lang/String;

.field private final denyCallAfter:Ljava/lang/Long;

.field private final interceptionTimeoutApi:Ljava/lang/Long;

.field private final reportTimeoutApi:Ljava/lang/Long;

.field private final subVerificationId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-eqz p8, :cond_5

    iput-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_4

    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_3

    iput-object p4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_2

    iput-object p5, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    and-int/lit8 p2, p1, 0x10

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    iput-object p6, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    goto :goto_0

    .line 25
    :cond_0
    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    :goto_0
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_1

    iput-object p7, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->subVerificationId:Ljava/lang/String;

    return-void

    .line 26
    :cond_1
    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->subVerificationId:Ljava/lang/String;

    return-void

    .line 0
    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "denyCallAfter"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "reportTimeout"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "interceptionTimeout"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "cliFilter"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "cliFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    iput-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    iput-object p4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    iput-object p5, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    iput-object p6, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->subVerificationId:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x10

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v7, v1

    goto :goto_0

    :cond_0
    move-object v7, p5

    :goto_0
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_1

    move-object v8, v1

    goto :goto_1

    :cond_1
    move-object v8, p6

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    .line 26
    invoke-direct/range {v2 .. v8}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic cli$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic cliFilter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object p6

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic denyCallAfter$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic interceptionTimeoutApi$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic reportTimeoutApi$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic subVerificationId$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 5

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/b/an;->a:Lkotlinx/serialization/b/an;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    const/4 v2, 0x1

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/b/an;->a:Lkotlinx/serialization/b/an;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/b/an;->a:Lkotlinx/serialization/b/an;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    const/4 v1, 0x0

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x4

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v1, 0x5

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    return-object v0
.end method

.method public final component3()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    return-object v0
.end method

.method public final component4()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;
    .locals 8

    const-string v0, "cliFilter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;-><init>(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    iget-object v1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    iget-object v1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    iget-object v1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    iget-object v1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    iget-object v1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object p1

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

.method public final getCli()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    return-object v0
.end method

.method public final getCliFilter()Ljava/lang/String;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    return-object v0
.end method

.method public final getDenyCallAfter()Ljava/lang/Long;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    return-object v0
.end method

.method public final getInterceptionTimeout()J
    .locals 7

    .line 41
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    mul-long v3, v3, v5

    goto :goto_0

    :cond_0
    move-wide v3, v1

    :goto_0
    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    return-wide v3

    :cond_1
    const-wide/16 v0, 0x3a98

    return-wide v0
.end method

.method public final getInterceptionTimeoutApi()Ljava/lang/Long;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    return-object v0
.end method

.method public final getReportTimeout()J
    .locals 6

    .line 50
    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getInterceptionTimeout()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long v2, v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getReportTimeoutApi()Ljava/lang/Long;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSubVerificationId()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->subVerificationId:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_5
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallInitializationDetails(cliFilter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cliFilter:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", interceptionTimeoutApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->interceptionTimeoutApi:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", reportTimeoutApi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->reportTimeoutApi:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", denyCallAfter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->denyCallAfter:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", cli="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->cli:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", subVerificationId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;->getSubVerificationId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
