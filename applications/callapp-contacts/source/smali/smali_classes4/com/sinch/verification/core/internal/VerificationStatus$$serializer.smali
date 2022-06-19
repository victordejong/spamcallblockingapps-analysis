.class public final Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/internal/VerificationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/b/w<",
        "Lcom/sinch/verification/core/internal/VerificationStatus;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u00c7\u0002\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0003J\u0018\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\n0\tH\u00d6\u0001\u00a2\u0006\u0002\u0010\u000bJ\u0011\u0010\u000c\u001a\u00020\u00022\u0006\u0010\r\u001a\u00020\u000eH\u00d6\u0001J\u0019\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0002H\u00d6\u0001R\u0014\u0010\u0004\u001a\u00020\u00058VX\u00d6\u0005\u00a2\u0006\u0006\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0014"
    }
    d2 = {
        "com/sinch/verification/core/internal/VerificationStatus.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/sinch/verification/core/internal/VerificationStatus;",
        "()V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "childSerializers",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "()[Lkotlinx/serialization/KSerializer;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
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
.field private static final synthetic $$serialDesc:Lkotlinx/serialization/SerialDescriptor;

.field public static final INSTANCE:Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    new-instance v0, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;

    invoke-direct {v0}, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->INSTANCE:Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;

    new-instance v0, Lkotlinx/serialization/b/s;

    const-string v1, "com.sinch.verification.core.internal.VerificationStatus"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lkotlinx/serialization/b/s;-><init>(Ljava/lang/String;I)V

    check-cast v0, Lkotlinx/serialization/b/bf;

    const-string v1, "PENDING"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v1, "SUCCESSFUL"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v1, "FAIL"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v1, "DENIED"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    const-string v1, "ERROR"

    invoke-virtual {v0, v1, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    sput-object v0, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final childSerializers()[Lkotlinx/serialization/KSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lkotlinx/serialization/KSerializer<",
            "*>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlinx/serialization/KSerializer;

    sget-object v1, Lkotlinx/serialization/b/bk;->a:Lkotlinx/serialization/b/bk;

    check-cast v1, Lkotlinx/serialization/KSerializer;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 2

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/sinch/verification/core/internal/VerificationStatus;->values()[Lcom/sinch/verification/core/internal/VerificationStatus;

    move-result-object v0

    sget-object v1, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    invoke-interface {p1, v1}, Lkotlinx/serialization/Decoder;->decodeEnum(Lkotlinx/serialization/SerialDescriptor;)I

    move-result p1

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0, p1}, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/verification/core/internal/VerificationStatus;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lcom/sinch/verification/core/internal/VerificationStatus;)Lcom/sinch/verification/core/internal/VerificationStatus;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {p0, p1}, Lkotlinx/serialization/b/w$a;->a(Lkotlinx/serialization/b/w;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/verification/core/internal/VerificationStatus;

    return-object p1
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 12
    check-cast p2, Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->patch(Lkotlinx/serialization/Decoder;Lcom/sinch/verification/core/internal/VerificationStatus;)Lcom/sinch/verification/core/internal/VerificationStatus;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/verification/core/internal/VerificationStatus;)V
    .locals 1

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    invoke-virtual {p2}, Lcom/sinch/verification/core/internal/VerificationStatus;->ordinal()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/Encoder;->encodeEnum(Lkotlinx/serialization/SerialDescriptor;I)V

    return-void
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p2, Lcom/sinch/verification/core/internal/VerificationStatus;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/internal/VerificationStatus$$serializer;->serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/verification/core/internal/VerificationStatus;)V

    return-void
.end method
