.class public final Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sinch/verification/core/initiation/VerificationInitiationData;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;,
        Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u001c\n\u0002\u0010\u0000\n\u0002\u0008\u0005\u0008\u0087\u0008\u0018\u0000 12\u00020\u0001:\u000201B_\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0008\u0001\u0010\u0006\u001a\u00020\u0007\u0012\n\u0008\u0001\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\n\u001a\u0004\u0018\u00010\t\u0012\n\u0008\u0001\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u0012\n\u0008\u0001\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0002\u0010\u0011B3\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\n\u001a\u0004\u0018\u00010\t\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0002\u0010\u0012J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0007H\u00c6\u0003J\u000b\u0010\'\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010(\u001a\u0004\u0018\u00010\tH\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003JA\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\n\u001a\u0004\u0018\u00010\t2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001J\u0013\u0010+\u001a\u00020\u00072\u0008\u0010,\u001a\u0004\u0018\u00010-H\u00d6\u0003J\t\u0010.\u001a\u00020\u0003H\u00d6\u0001J\t\u0010/\u001a\u00020\tH\u00d6\u0001R\u001e\u0010\u0008\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016R\u001c\u0010\u0006\u001a\u00020\u00078\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0017\u0010\u0014\u001a\u0004\u0008\u0018\u0010\u0019R\u001c\u0010\u0004\u001a\u00020\u00058\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001a\u0010\u0014\u001a\u0004\u0008\u001b\u0010\u001cR\u001e\u0010\u000b\u001a\u0004\u0018\u00010\u000c8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u001d\u0010\u0014\u001a\u0004\u0008\u001e\u0010\u001fR\u001c\u0010\r\u001a\u00020\u000e8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008 \u0010\u0014\u001a\u0004\u0008!\u0010\"R\u001e\u0010\n\u001a\u0004\u0018\u00010\t8\u0016X\u0097\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008#\u0010\u0014\u001a\u0004\u0008$\u0010\u0016\u00a8\u00062"
    }
    d2 = {
        "Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;",
        "Lcom/sinch/verification/core/initiation/VerificationInitiationData;",
        "seen1",
        "",
        "identity",
        "Lcom/sinch/verification/core/initiation/VerificationIdentity;",
        "honourEarlyReject",
        "",
        "custom",
        "",
        "reference",
        "metadata",
        "Lcom/sinch/metadata/model/PhoneMetadata;",
        "method",
        "Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)V",
        "custom$annotations",
        "()V",
        "getCustom",
        "()Ljava/lang/String;",
        "honourEarlyReject$annotations",
        "getHonourEarlyReject",
        "()Z",
        "identity$annotations",
        "getIdentity",
        "()Lcom/sinch/verification/core/initiation/VerificationIdentity;",
        "metadata$annotations",
        "getMetadata",
        "()Lcom/sinch/metadata/model/PhoneMetadata;",
        "method$annotations",
        "getMethod",
        "()Lcom/sinch/verification/core/internal/VerificationMethodType;",
        "reference$annotations",
        "getReference",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
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
.field public static final Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;


# instance fields
.field private final custom:Ljava/lang/String;

.field private final honourEarlyReject:Z

.field private final identity:Lcom/sinch/verification/core/initiation/VerificationIdentity;

.field private final metadata:Lcom/sinch/metadata/model/PhoneMetadata;

.field private final method:Lcom/sinch/verification/core/internal/VerificationMethodType;

.field private final reference:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->Companion:Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;Lcom/sinch/verification/core/internal/VerificationMethodType;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p8, p1, 0x1

    if-eqz p8, :cond_5

    iput-object p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->identity:Lcom/sinch/verification/core/initiation/VerificationIdentity;

    and-int/lit8 p2, p1, 0x2

    if-eqz p2, :cond_4

    iput-boolean p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->honourEarlyReject:Z

    and-int/lit8 p2, p1, 0x4

    if-eqz p2, :cond_3

    iput-object p4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->custom:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x8

    if-eqz p2, :cond_2

    iput-object p5, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->reference:Ljava/lang/String;

    and-int/lit8 p2, p1, 0x10

    if-eqz p2, :cond_1

    iput-object p6, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->metadata:Lcom/sinch/metadata/model/PhoneMetadata;

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_0

    iput-object p7, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void

    .line 28
    :cond_0
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void

    .line 0
    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "metadata"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "reference"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_3
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "custom"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_4
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "honourEarlyReject"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "identity"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)V
    .locals 1

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->identity:Lcom/sinch/verification/core/initiation/VerificationIdentity;

    iput-boolean p2, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->honourEarlyReject:Z

    iput-object p3, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->custom:Ljava/lang/String;

    iput-object p4, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->reference:Ljava/lang/String;

    iput-object p5, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->metadata:Lcom/sinch/metadata/model/PhoneMetadata;

    .line 28
    sget-object p1, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    iput-object p1, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;ILjava/lang/Object;)Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object p1

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result p2

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object p3

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object p4

    :cond_3
    move-object v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object p5

    :cond_4
    move-object v2, p5

    move-object p2, p0

    move-object p3, p1

    move p4, p7

    move-object p5, v0

    move-object p6, v1

    move-object p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->copy(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic custom$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic honourEarlyReject$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic identity$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic metadata$annotations()V
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

.method public static final write$Self(Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 4

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentity$$serializer;->INSTANCE:Lcom/sinch/verification/core/initiation/VerificationIdentity$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v0

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeBooleanElement(Lkotlinx/serialization/SerialDescriptor;IZ)V

    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    sget-object v0, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    sget-object v0, Lcom/sinch/metadata/model/PhoneMetadata$$serializer;->INSTANCE:Lcom/sinch/metadata/model/PhoneMetadata$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v2

    const/4 v3, 0x4

    invoke-interface {p1, p2, v3, v0, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;

    move-result-object v0

    .line 28
    sget-object v2, Lcom/sinch/verification/core/internal/VerificationMethodType;->FLASHCALL:Lcom/sinch/verification/core/internal/VerificationMethodType;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/2addr v0, v1

    const/4 v1, 0x5

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sinch/verification/core/internal/VerificationMethodType;->Companion:Lcom/sinch/verification/core/internal/VerificationMethodType$Companion;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;

    move-result-object p0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Lcom/sinch/verification/core/initiation/VerificationIdentity;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object v0

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v0

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component4()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final component5()Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 1

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v0

    return-object v0
.end method

.method public final copy(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;
    .locals 7

    const-string v0, "identity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;-><init>(Lcom/sinch/verification/core/initiation/VerificationIdentity;ZLjava/lang/String;Ljava/lang/String;Lcom/sinch/metadata/model/PhoneMetadata;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

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

.method public final getCustom()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->custom:Ljava/lang/String;

    return-object v0
.end method

.method public final getHonourEarlyReject()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->honourEarlyReject:Z

    return v0
.end method

.method public final getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;
    .locals 1

    .line 21
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->identity:Lcom/sinch/verification/core/initiation/VerificationIdentity;

    return-object v0
.end method

.method public final getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->metadata:Lcom/sinch/metadata/model/PhoneMetadata;

    return-object v0
.end method

.method public final getMethod()Lcom/sinch/verification/core/internal/VerificationMethodType;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->method:Lcom/sinch/verification/core/internal/VerificationMethodType;

    return-object v0
.end method

.method public final getReference()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->reference:Ljava/lang/String;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

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

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_4
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlashCallVerificationInitializationData(identity="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getIdentity()Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", honourEarlyReject="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getHonourEarlyReject()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getCustom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getReference()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sinch/verification/flashcall/initialization/FlashCallVerificationInitializationData;->getMetadata()Lcom/sinch/metadata/model/PhoneMetadata;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
