.class public final Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/initiation/response/InitiationResponseData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;,
        Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 \"2\u00020\u0001:\u0002!\"B1\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0015\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0018\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0007H\u00c6\u0003J\u001d\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u001c2\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u001eH\u00d6\u0003J\t\u0010\u001f\u001a\u00020\u0003H\u00d6\u0001J\t\u0010 \u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u0012R\u001c\u0010\u0013\u001a\u00020\u00148\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0015\u0010\r\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006#"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;",
        "Lcom/sinch/verification/core/initiation/response/InitiationResponseData;",
        "seen1",
        "",
        "id",
        "",
        "details",
        "Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)V",
        "details$annotations",
        "()V",
        "getDetails",
        "()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;",
        "id$annotations",
        "getId",
        "()Ljava/lang/String;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "method$annotations",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "component1",
        "component2",
        "copy",
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
.field public static final Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;


# instance fields
.field private final details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

.field private final id:Ljava/lang/String;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->id:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    .line 22
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void

    .line 0
    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "flashCall"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "id"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->id:Ljava/lang/String;

    iput-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    .line 22
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;ILjava/lang/Object;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object p1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->copy(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic details$annotations()V
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

.method public static final write$Self(Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$$serializer;->INSTANCE:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "details"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;

    invoke-direct {v0, p1, p2}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;-><init>(Ljava/lang/String;Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    iget-object p1, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

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

.method public final getDetails()Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    return-object v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 22
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallInitializationResponseData(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", details="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationResponseData;->details:Lcom/sinch/verification/flashcall/initialization/FlashCallInitializationDetails;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
