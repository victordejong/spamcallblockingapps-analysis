.class public final Lkotlinx/serialization/b/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0007\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\n\u0012\u0006\u0012\u0004\u0018\u0001H\u00010\u0003B\u0013\u0012\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003\u00a2\u0006\u0002\u0010\u0005J\u0017\u0010\n\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000b\u001a\u00020\u000cH\u0016\u00a2\u0006\u0002\u0010\rJ\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002H\u0096\u0002J\u0008\u0010\u0011\u001a\u00020\u0012H\u0016J!\u0010\u0013\u001a\u0004\u0018\u00018\u00002\u0006\u0010\u000b\u001a\u00020\u000c2\u0008\u0010\u0014\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u0015J\u001f\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u00192\u0008\u0010\u001a\u001a\u0004\u0018\u00018\u0000H\u0016\u00a2\u0006\u0002\u0010\u001bR\u0014\u0010\u0006\u001a\u00020\u0007X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u0014\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lkotlinx/serialization/internal/NullableSerializer;",
        "T",
        "",
        "Lkotlinx/serialization/KSerializer;",
        "serializer",
        "(Lkotlinx/serialization/KSerializer;)V",
        "descriptor",
        "Lkotlinx/serialization/SerialDescriptor;",
        "getDescriptor",
        "()Lkotlinx/serialization/SerialDescriptor;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "patch",
        "old",
        "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final a:Lkotlinx/serialization/SerialDescriptor;

.field private final b:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlinx/serialization/KSerializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "serializer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    .line 25
    new-instance v0, Lkotlinx/serialization/b/bg;

    invoke-interface {p1}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlinx/serialization/b/bg;-><init>(Lkotlinx/serialization/SerialDescriptor;)V

    check-cast v0, Lkotlinx/serialization/SerialDescriptor;

    iput-object v0, p0, Lkotlinx/serialization/b/av;->a:Lkotlinx/serialization/SerialDescriptor;

    return-void
.end method


# virtual methods
.method public final deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            ")TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lkotlinx/serialization/d;

    invoke-interface {p1, v0}, Lkotlinx/serialization/Decoder;->decodeSerializableValue(Lkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeNull()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 50
    move-object v0, p0

    check-cast v0, Lkotlinx/serialization/b/av;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/ac;->b(Ljava/lang/Class;)Lkotlin/reflect/c;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_0

    .line 53
    :cond_1
    iget-object v2, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    check-cast p1, Lkotlinx/serialization/b/av;

    iget-object p1, p1, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    invoke-static {v2, p1}, Lkotlin/jvm/internal/p;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public final getDescriptor()Lkotlinx/serialization/SerialDescriptor;
    .locals 1

    .line 25
    iget-object v0, p0, Lkotlinx/serialization/b/av;->a:Lkotlinx/serialization/SerialDescriptor;

    return-object v0
.end method

.method public final hashCode()I
    .locals 1

    .line 58
    iget-object v0, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            "TT;)TT;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_0

    .line 43
    invoke-virtual {p0, p1}, Lkotlinx/serialization/b/av;->deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 44
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeNotNullMark()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lkotlinx/serialization/d;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/Decoder;->updateSerializableValue(Lkotlinx/serialization/d;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 45
    :cond_1
    invoke-interface {p1}, Lkotlinx/serialization/Decoder;->decodeNull()Ljava/lang/Void;

    return-object p2
.end method

.method public final serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Encoder;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 29
    invoke-interface {p1}, Lkotlinx/serialization/Encoder;->encodeNotNullMark()V

    .line 30
    iget-object v0, p0, Lkotlinx/serialization/b/av;->b:Lkotlinx/serialization/KSerializer;

    check-cast v0, Lkotlinx/serialization/r;

    invoke-interface {p1, v0, p2}, Lkotlinx/serialization/Encoder;->encodeSerializableValue(Lkotlinx/serialization/r;Ljava/lang/Object;)V

    return-void

    .line 33
    :cond_0
    invoke-interface {p1}, Lkotlinx/serialization/Encoder;->encodeNull()V

    return-void
.end method
