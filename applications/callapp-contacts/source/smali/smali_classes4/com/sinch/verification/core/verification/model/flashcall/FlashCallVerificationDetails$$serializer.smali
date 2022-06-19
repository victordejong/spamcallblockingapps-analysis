.class public final Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/b/w;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/b/w<",
        "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
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
        "com/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails.$serializer",
        "Lkotlinx/serialization/internal/GeneratedSerializer;",
        "Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;",
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

.field public static final INSTANCE:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 11
    new-instance v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;

    invoke-direct {v0}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;-><init>()V

    sput-object v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->INSTANCE:Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;

    new-instance v1, Lkotlinx/serialization/b/bf;

    check-cast v0, Lkotlinx/serialization/b/w;

    const-string v2, "com.sinch.verification.core.verification.model.flashcall.FlashCallVerificationDetails"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lkotlinx/serialization/b/bf;-><init>(Ljava/lang/String;Lkotlinx/serialization/b/w;I)V

    const-string v0, "cli"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lkotlinx/serialization/b/bf;->a(Ljava/lang/String;Z)V

    sput-object v1, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 11
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

.method public final deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
    .locals 7

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object p1

    invoke-interface {p1}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7fffffff

    goto :goto_1

    :cond_0
    move-object v2, v3

    const/4 v4, 0x0

    :goto_0
    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    if-nez v5, :cond_1

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/a;->decodeStringElement(Lkotlinx/serialization/SerialDescriptor;I)Ljava/lang/String;

    move-result-object v2

    or-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lkotlinx/serialization/UnknownFieldException;

    invoke-direct {p1, v5}, Lkotlinx/serialization/UnknownFieldException;-><init>(I)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_2
    move-object v1, v2

    move v2, v4

    :goto_1
    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    new-instance p1, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    invoke-direct {p1, v2, v1, v3}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;-><init>(ILjava/lang/String;Lkotlinx/serialization/SerializationConstructorMarker;)V

    return-object p1
.end method

.method public final bridge synthetic deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->deserialize(Lkotlinx/serialization/Decoder;)Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object p1

    return-object p1
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    sget-object v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;
    .locals 1

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "old"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-static {p0, p1}, Lkotlinx/serialization/b/w$a;->a(Lkotlinx/serialization/b/w;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    return-object p1
.end method

.method public final bridge synthetic patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p2, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->patch(Lkotlinx/serialization/Decoder;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    move-result-object p1

    return-object p1
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V
    .locals 2

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->$$serialDesc:Lkotlinx/serialization/SerialDescriptor;

    const/4 v1, 0x0

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    invoke-static {p2, p1, v0}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;->write$Self(Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;Lkotlinx/serialization/CompositeEncoder;Lkotlinx/serialization/SerialDescriptor;)V

    invoke-interface {p1, v0}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method

.method public final bridge synthetic serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 0

    .line 11
    check-cast p2, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;

    invoke-virtual {p0, p1, p2}, Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails$$serializer;->serialize(Lkotlinx/serialization/Encoder;Lcom/sinch/verification/core/verification/model/flashcall/FlashCallVerificationDetails;)V

    return-void
.end method
