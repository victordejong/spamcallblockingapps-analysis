.class public final Lcom/sinch/metadata/model/network/NetworkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/metadata/model/network/NetworkInfo$Companion;,
        Lcom/sinch/metadata/model/network/NetworkInfo$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u001d2\u00020\u0001:\u0002\u001c\u001dB1\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\n\u0008\u0001\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\t\u00a2\u0006\u0002\u0010\nB\u0019\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u000bJ\u0010\u0010\u0013\u001a\u0004\u0018\u00010\u0005H\u00c6\u0003\u00a2\u0006\u0002\u0010\u000eJ\u000b\u0010\u0014\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J&\u0010\u0015\u001a\u00020\u00002\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00052\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001\u00a2\u0006\u0002\u0010\u0016J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001a\u001a\u00020\u001bH\u00d6\u0001R \u0010\u0004\u001a\u0004\u0018\u00010\u00058\u0006X\u0087\u0004\u00a2\u0006\u0010\n\u0002\u0010\u000f\u0012\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u0004\u0010\u000eR\u001e\u0010\u0006\u001a\u0004\u0018\u00010\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0010\u0010\r\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/sinch/metadata/model/network/NetworkInfo;",
        "",
        "seen1",
        "",
        "isVoiceCapable",
        "",
        "networkData",
        "Lcom/sinch/metadata/model/network/NetworkData;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILjava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)V",
        "isVoiceCapable$annotations",
        "()V",
        "()Ljava/lang/Boolean;",
        "Ljava/lang/Boolean;",
        "networkData$annotations",
        "getNetworkData",
        "()Lcom/sinch/metadata/model/network/NetworkData;",
        "component1",
        "component2",
        "copy",
        "(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)Lcom/sinch/metadata/model/network/NetworkInfo;",
        "equals",
        "other",
        "hashCode",
        "toString",
        "",
        "$serializer",
        "Companion",
        "metadata-collector_productionRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final Companion:Lcom/sinch/metadata/model/network/NetworkInfo$Companion;


# instance fields
.field private final isVoiceCapable:Ljava/lang/Boolean;

.field private final networkData:Lcom/sinch/metadata/model/network/NetworkData;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/metadata/model/network/NetworkInfo$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/metadata/model/network/NetworkInfo$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/metadata/model/network/NetworkInfo;->Companion:Lcom/sinch/metadata/model/network/NetworkInfo$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p4, p1, 0x1

    if-eqz p4, :cond_1

    iput-object p2, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iput-object p3, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "data"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_1
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "isVoiceCapable"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/metadata/model/network/NetworkInfo;Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;ILjava/lang/Object;)Lcom/sinch/metadata/model/network/NetworkInfo;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sinch/metadata/model/network/NetworkInfo;->copy(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)Lcom/sinch/metadata/model/network/NetworkInfo;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic isVoiceCapable$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic networkData$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/metadata/model/network/NetworkInfo;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 3

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlinx/serialization/b/i;->a:Lkotlinx/serialization/b/i;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object v1, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-interface {p1, p2, v2, v0, v1}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    sget-object v0, Lcom/sinch/metadata/model/network/NetworkData$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkData$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    const/4 v1, 0x1

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeNullableSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final component2()Lcom/sinch/metadata/model/network/NetworkData;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    return-object v0
.end method

.method public final copy(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)Lcom/sinch/metadata/model/network/NetworkInfo;
    .locals 1

    new-instance v0, Lcom/sinch/metadata/model/network/NetworkInfo;

    invoke-direct {v0, p1, p2}, Lcom/sinch/metadata/model/network/NetworkInfo;-><init>(Ljava/lang/Boolean;Lcom/sinch/metadata/model/network/NetworkData;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/metadata/model/network/NetworkInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/metadata/model/network/NetworkInfo;

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    iget-object v1, p1, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    iget-object p1, p1, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

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

.method public final getNetworkData()Lcom/sinch/metadata/model/network/NetworkData;
    .locals 1

    .line 20
    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    return-object v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :cond_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final isVoiceCapable()Ljava/lang/Boolean;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkInfo(isVoiceCapable="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->isVoiceCapable:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", networkData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sinch/metadata/model/network/NetworkInfo;->networkData:Lcom/sinch/metadata/model/network/NetworkData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
