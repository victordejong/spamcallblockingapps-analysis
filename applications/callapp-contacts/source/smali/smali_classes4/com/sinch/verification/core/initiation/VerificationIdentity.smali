.class public final Lcom/sinch/verification/core/initiation/VerificationIdentity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;,
        Lcom/sinch/verification/core/initiation/VerificationIdentity$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0008\u0087\u0008\u0018\u0000 \u001c2\u00020\u0001:\u0002\u001b\u001cB1\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0017\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0013\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0007H\u00c6\u0003J\u001d\u0010\u0015\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u0005H\u00d6\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/sinch/verification/core/initiation/VerificationIdentity;",
        "",
        "seen1",
        "",
        "endpoint",
        "",
        "type",
        "Lcom/sinch/verification/core/initiation/VerificationIdentityType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILjava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)V",
        "endpoint$annotations",
        "()V",
        "getEndpoint",
        "()Ljava/lang/String;",
        "type$annotations",
        "getType",
        "()Lcom/sinch/verification/core/initiation/VerificationIdentityType;",
        "component1",
        "component2",
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
.field public static final Companion:Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;


# instance fields
.field private final endpoint:Ljava/lang/String;

.field private final type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->Companion:Lcom/sinch/verification/core/initiation/VerificationIdentity$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-void

    .line 14
    :cond_0
    sget-object p1, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->NUMBER:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-void

    .line 0
    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "endpoint"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)V
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    iput-object p2, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 14
    sget-object p2, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->NUMBER:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sinch/verification/core/initiation/VerificationIdentity;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/verification/core/initiation/VerificationIdentity;Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;ILjava/lang/Object;)Lcom/sinch/verification/core/initiation/VerificationIdentity;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/initiation/VerificationIdentity;->copy(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)Lcom/sinch/verification/core/initiation/VerificationIdentity;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic endpoint$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic type$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/verification/core/initiation/VerificationIdentity;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0}, Lkotlinx/serialization/CompositeEncoder;->encodeStringElement(Lkotlinx/serialization/SerialDescriptor;ILjava/lang/String;)V

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    .line 14
    sget-object v1, Lcom/sinch/verification/core/initiation/VerificationIdentityType;->NUMBER:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    if-nez v0, :cond_0

    invoke-interface {p1, p2, v1}, Lkotlinx/serialization/CompositeEncoder;->shouldEncodeElementDefault(Lkotlinx/serialization/SerialDescriptor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    sget-object v0, Lcom/sinch/verification/core/initiation/VerificationIdentityType$$serializer;->INSTANCE:Lcom/sinch/verification/core/initiation/VerificationIdentityType$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Lcom/sinch/verification/core/initiation/VerificationIdentityType;
    .locals 1

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)Lcom/sinch/verification/core/initiation/VerificationIdentity;
    .locals 1

    const-string v0, "endpoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/verification/core/initiation/VerificationIdentity;

    invoke-direct {v0, p1, p2}, Lcom/sinch/verification/core/initiation/VerificationIdentity;-><init>(Ljava/lang/String;Lcom/sinch/verification/core/initiation/VerificationIdentityType;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/verification/core/initiation/VerificationIdentity;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/verification/core/initiation/VerificationIdentity;

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    iget-object v1, p1, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    iget-object p1, p1, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

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

.method public final getEndpoint()Ljava/lang/String;
    .locals 1

    .line 13
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Lcom/sinch/verification/core/initiation/VerificationIdentityType;
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

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

    const-string v1, "VerificationIdentity(endpoint="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->endpoint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/verification/core/initiation/VerificationIdentity;->type:Lcom/sinch/verification/core/initiation/VerificationIdentityType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
