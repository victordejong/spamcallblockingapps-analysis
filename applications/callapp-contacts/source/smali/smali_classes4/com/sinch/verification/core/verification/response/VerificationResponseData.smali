.class public final Lcom/sinch/verification/core/verification/response/VerificationResponseData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;,
        Lcom/sinch/verification/core/verification/response/VerificationResponseData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u001b\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 02\u00020\u0001:\u0002/0Ba\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\u000b\u0012\n\u0008\u0001\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0002\u0010\u0010BA\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u0012\u0006\u0010\n\u001a\u00020\u000b\u0012\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0011J\t\u0010#\u001a\u00020\u0005H\u00c6\u0003J\u000b\u0010$\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J\t\u0010%\u001a\u00020\tH\u00c6\u0003J\t\u0010&\u001a\u00020\u000bH\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003JK\u0010)\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\t2\u0008\u0008\u0002\u0010\n\u001a\u00020\u000b2\n\u0008\u0002\u0010\u000c\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u0005H\u00c6\u0001J\u0013\u0010*\u001a\u00020+2\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020\u0003H\u00d6\u0001J\t\u0010.\u001a\u00020\u0005H\u00d6\u0001R\u001e\u0010\u000c\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0016\u0010\u0013\u001a\u0004\u0008\u0017\u0010\u0015R\u001c\u0010\n\u001a\u00020\u000b8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0018\u0010\u0013\u001a\u0004\u0008\u0019\u0010\u001aR\u001e\u0010\r\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001b\u0010\u0013\u001a\u0004\u0008\u001c\u0010\u0015R\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0013\u001a\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\u0008\u001a\u00020\t8\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010\u0013\u001a\u0004\u0008!\u0010\"\u00a8\u00061"
    }
    d2 = {
        "Lcom/sinch/verification/core/verification/response/VerificationResponseData;",
        "",
        "seen1",
        "",
        "id",
        "",
        "source",
        "Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "status",
        "Lcom/sinch/verification/core/internal/VerificationStatus;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "errorReason",
        "reference",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)V",
        "errorReason$annotations",
        "()V",
        "getErrorReason",
        "()Ljava/lang/String;",
        "id$annotations",
        "getId",
        "method$annotations",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "reference$annotations",
        "getReference",
        "source$annotations",
        "getSource",
        "()Lcom/sinch/verification/core/verification/model/VerificationSourceType;",
        "status$annotations",
        "getStatus",
        "()Lcom/sinch/verification/core/internal/VerificationStatus;",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "$serializer",
        "Companion",
        "verification-core_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;


# instance fields
.field private final errorReason:Ljava/lang/String;

.field private final id:Ljava/lang/String;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field private final reference:Ljava/lang/String;

.field private final source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

.field private final status:Lcom/sinch/verification/core/internal/VerificationStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->Companion:Lcom/sinch/verification/core/verification/response/VerificationResponseData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-eqz p8, :cond_5

    iput-object p2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x2

    const/4 p8, 0x0

    if-eqz p2, :cond_0

    iput-object p3, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    goto :goto_0

    .line 21
    :cond_0
    iput-object p8, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    :goto_0
    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_4

    iput-object p4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_3

    iput-object p5, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_1

    iput-object p6, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    goto :goto_1

    .line 24
    :cond_1
    iput-object p8, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    :goto_1
    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_2

    iput-object p7, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    return-void

    .line 25
    :cond_2
    iput-object p8, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    return-void

    .line 21
    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "method"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "status"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 0
    :cond_5
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    iput-object p3, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    iput-object p4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p5, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    iput-object p6, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 9

    and-int/lit8 v0, p7, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, p2

    :goto_0
    and-int/lit8 v0, p7, 0x10

    if-eqz v0, :cond_1

    move-object v7, v1

    goto :goto_1

    :cond_1
    move-object v7, p5

    :goto_1
    and-int/lit8 v0, p7, 0x20

    if-eqz v0, :cond_2

    move-object v8, v1

    goto :goto_2

    :cond_2
    move-object v8, p6

    :goto_2
    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    .line 25
    invoke-direct/range {v2 .. v8}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Lcom/sinch/verification/core/verification/response/VerificationResponseData;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget-object p5, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    :cond_4
    move-object v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->copy(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic errorReason$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic id$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic method$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic reference$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic source$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic status$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/core/verification/response/VerificationResponseData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 5

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v2}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sinch/verification/core/verification/model/VerificationSourceType$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/VerificationSourceType$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v3, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-interface {p1, p2, v2, v0, v3}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    const/4 v0, 0x2

    sget-object v3, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    const/4 v0, 0x3

    sget-object v3, Lcom/sinch/verification/core/internal/VerificationMethodType;->Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    check-cast v3, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-interface {p1, p2, v0, v3, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    .line 24
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v3, 0x4

    if-nez v0, :cond_2

    invoke-interface {p1, p2, v3}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v4, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    invoke-interface {p1, p2, v3, v0, v4}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    .line 25
    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v2

    const/4 v1, 0x5

    if-nez v0, :cond_4

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/sinch/verification/core/verification/model/VerificationSourceType;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    return-object v0
.end method

.method public final component3()Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    return-object v0
.end method

.method public final component4()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final component5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    return-object v0
.end method

.method public final component6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)Lcom/sinch/verification/core/verification/response/VerificationResponseData;
    .locals 8

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "status"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "method"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/sinch/verification/core/verification/response/VerificationResponseData;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/verification/model/VerificationSourceType;Lcom/sinch/verification/core/internal/VerificationStatus;Lcom/sinch/verification/core/internal/VerificationMethodType;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    iget-object v1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    iget-object v1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    iget-object v1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iget-object v1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    iget-object v1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    iget-object p1, p1, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

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

.method public final getErrorReason()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public final getSource()Lcom/sinch/verification/core/verification/model/VerificationSourceType;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    return-object v0
.end method

.method public final getStatus()Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    :goto_3
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x0

    :goto_4
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

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

    const-string v1, "VerificationResponseData(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", source="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->source:Lcom/sinch/verification/core/verification/model/VerificationSourceType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->status:Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", method="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", errorReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->errorReason:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/verification/response/VerificationResponseData;->reference:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
