.class public final Lcom/sinch/metadata/model/network/NetworkData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sinch/metadata/model/network/NetworkData$Companion;,
        Lcom/sinch/metadata/model/network/NetworkData$$serializer;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\u0008\u0087\u0008\u0018\u0000 \u00172\u00020\u0001:\u0002\u0016\u0017B%\u0008\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0001\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008B\r\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\tJ\t\u0010\u000e\u001a\u00020\u0005H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0013\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0014\u001a\u00020\u0015H\u00d6\u0001R\u001c\u0010\u0004\u001a\u00020\u00058\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u000c\u0010\r\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/sinch/metadata/model/network/NetworkData;",
        "",
        "seen1",
        "",
        "type",
        "Lcom/sinch/metadata/model/network/NetworkType;",
        "serializationConstructorMarker",
        "Lkotlinx/serialization/SerializationConstructorMarker;",
        "(ILcom/sinch/metadata/model/network/NetworkType;Lkotlinx/serialization/SerializationConstructorMarker;)V",
        "(Lcom/sinch/metadata/model/network/NetworkType;)V",
        "type$annotations",
        "()V",
        "getType",
        "()Lcom/sinch/metadata/model/network/NetworkType;",
        "component1",
        "copy",
        "equals",
        "",
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
.field public static final Companion:Lcom/sinch/metadata/model/network/NetworkData$Companion;


# instance fields
.field private final type:Lcom/sinch/metadata/model/network/NetworkType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/sinch/metadata/model/network/NetworkData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/sinch/metadata/model/network/NetworkData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/sinch/metadata/model/network/NetworkData;->Companion:Lcom/sinch/metadata/model/network/NetworkData$Companion;

    return-void
.end method

.method public synthetic constructor <init>(ILcom/sinch/metadata/model/network/NetworkType;Lkotlinx/serialization/SerializationConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    iput-object p2, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    return-void

    :cond_0
    new-instance p1, Lkotlinx/serialization/MissingFieldException;

    const-string p2, "type"

    invoke-direct {p1, p2}, Lkotlinx/serialization/MissingFieldException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public constructor <init>(Lcom/sinch/metadata/model/network/NetworkType;)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    return-void
.end method

.method public static synthetic copy$default(Lcom/sinch/metadata/model/network/NetworkData;Lcom/sinch/metadata/model/network/NetworkType;ILjava/lang/Object;)Lcom/sinch/metadata/model/network/NetworkData;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sinch/metadata/model/network/NetworkData;->copy(Lcom/sinch/metadata/model/network/NetworkType;)Lcom/sinch/metadata/model/network/NetworkData;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic type$annotations()V
    .locals 0

    return-void
.end method

.method public static final write$Self(Lcom/sinch/metadata/model/network/NetworkData;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V
    .locals 2

    const-string v0, "self"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serialDesc"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/metadata/model/network/NetworkType$$serializer;->INSTANCE:Lcom/sinch/metadata/model/network/NetworkType$$serializer;

    check-cast v0, Lkotlinx/serialization/KSerializer;

    iget-object p0, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1, v0, p0}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final component1()Lcom/sinch/metadata/model/network/NetworkType;
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    return-object v0
.end method

.method public final copy(Lcom/sinch/metadata/model/network/NetworkType;)Lcom/sinch/metadata/model/network/NetworkData;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/sinch/metadata/model/network/NetworkData;

    invoke-direct {v0, p1}, Lcom/sinch/metadata/model/network/NetworkData;-><init>(Lcom/sinch/metadata/model/network/NetworkType;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Lcom/sinch/metadata/model/network/NetworkData;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sinch/metadata/model/network/NetworkData;

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    iget-object p1, p1, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

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

.method public final getType()Lcom/sinch/metadata/model/network/NetworkType;
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NetworkData(type="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sinch/metadata/model/network/NetworkData;->type:Lcom/sinch/metadata/model/network/NetworkType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
