.class public abstract Lkotlinx/serialization/b/ae;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TR;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u0008\u0012\u0004\u0012\u0002H\u00030\u0004B#\u0008\u0002\u0012\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004\u00a2\u0006\u0002\u0010\u0007J\u0015\u0010\u0010\u001a\u00028\u00022\u0006\u0010\u0011\u001a\u00020\u0012H\u0016\u00a2\u0006\u0002\u0010\u0013J\u001d\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u000e\u001a\u00028\u0002H\u0016\u00a2\u0006\u0002\u0010\u0018J\u001d\u0010\u0019\u001a\u00028\u00022\u0006\u0010\u000b\u001a\u00028\u00002\u0006\u0010\u000e\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010\u001aR\u001a\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00028\u00010\u0004X\u0084\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\tR\u0016\u0010\u000b\u001a\u00028\u0000*\u00028\u0002X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000e\u001a\u00028\u0001*\u00028\u0002X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u000f\u0010\r\u0082\u0001\u0002\u001b\u001c\u00a8\u0006\u001d"
    }
    d2 = {
        "Lkotlinx/serialization/internal/KeyValueSerializer;",
        "K",
        "V",
        "R",
        "Lkotlinx/serialization/KSerializer;",
        "keySerializer",
        "valueSerializer",
        "(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V",
        "getKeySerializer",
        "()Lkotlinx/serialization/KSerializer;",
        "getValueSerializer",
        "key",
        "getKey",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "value",
        "getValue",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "serialize",
        "",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "toResult",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "Lkotlinx/serialization/internal/MapEntrySerializer;",
        "Lkotlinx/serialization/internal/PairSerializer;",
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
.field private final a:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;"
        }
    .end annotation
.end field

.field private final b:Lkotlinx/serialization/KSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/KSerializer<",
            "TK;>;",
            "Lkotlinx/serialization/KSerializer<",
            "TV;>;)V"
        }
    .end annotation

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    iput-object p2, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lkotlinx/serialization/b/ae;-><init>(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/KSerializer;)V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TK;"
        }
    .end annotation
.end method

.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TR;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)TV;"
        }
    .end annotation
.end method

.method public deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            ")TR;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v2, v1, [Lkotlinx/serialization/KSerializer;

    iget-object v3, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-interface {p1, v0, v2}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object p1

    .line 36
    invoke-interface {p1}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/d;

    invoke-interface {p1, v0, v4, v1}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v0

    .line 38
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    iget-object v2, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    check-cast v2, Lkotlinx/serialization/d;

    invoke-interface {p1, v1, v5, v2}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object p1

    .line 39
    invoke-virtual {p0, v0, p1}, Lkotlinx/serialization/b/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 42
    :cond_0
    invoke-static {}, Lkotlinx/serialization/b/bn;->a()Ljava/lang/Object;

    move-result-object v0

    .line 43
    invoke-static {}, Lkotlinx/serialization/b/bn;->a()Ljava/lang/Object;

    move-result-object v2

    .line 45
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v3

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v3, v6, :cond_3

    if-nez v3, :cond_1

    .line 50
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    iget-object v3, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    check-cast v3, Lkotlinx/serialization/d;

    invoke-interface {p1, v0, v4, v3}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_1
    if-ne v3, v5, :cond_2

    .line 53
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v2

    iget-object v3, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    check-cast v3, Lkotlinx/serialization/d;

    invoke-interface {p1, v2, v5, v3}, Lkotlinx/serialization/a;->decodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/d;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 55
    :cond_2
    new-instance p1, Lkotlinx/serialization/SerializationException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Invalid index: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, v7, v1, v7}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 58
    :cond_3
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v3

    invoke-interface {p1, v3}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    .line 59
    invoke-static {}, Lkotlinx/serialization/b/bn;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq v0, p1, :cond_5

    .line 60
    invoke-static {}, Lkotlinx/serialization/b/bn;->a()Ljava/lang/Object;

    move-result-object p1

    if-eq v2, p1, :cond_4

    .line 62
    invoke-virtual {p0, v0, v2}, Lkotlinx/serialization/b/ae;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 60
    :cond_4
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Element \'value\' is missing"

    invoke-direct {p1, v0, v7, v1, v7}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 59
    :cond_5
    new-instance p1, Lkotlinx/serialization/SerializationException;

    const-string v0, "Element \'key\' is missing"

    invoke-direct {p1, v0, v7, v1, v7}, Lkotlinx/serialization/SerializationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            "TR;)TR;"
        }
    .end annotation

    const-string p2, "decoder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lkotlinx/serialization/KSerializer$a;->a(Lkotlinx/serialization/KSerializer;Lkotlinx/serialization/Decoder;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public serialize(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Encoder;",
            "TR;)V"
        }
    .end annotation

    const-string v0, "encoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Lkotlinx/serialization/KSerializer;

    iget-object v2, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-interface {p1, v0, v1}, Lkotlinx/serialization/Encoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/CompositeEncoder;

    move-result-object p1

    .line 29
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/b/ae;->a:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/r;

    invoke-virtual {p0, p2}, Lkotlinx/serialization/b/ae;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v0, v3, v1, v2}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 30
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    iget-object v1, p0, Lkotlinx/serialization/b/ae;->b:Lkotlinx/serialization/KSerializer;

    check-cast v1, Lkotlinx/serialization/r;

    invoke-virtual {p0, p2}, Lkotlinx/serialization/b/ae;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v0, v4, v1, p2}, Lkotlinx/serialization/CompositeEncoder;->encodeSerializableElement(Lkotlinx/serialization/SerialDescriptor;ILkotlinx/serialization/r;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p0}, Lkotlinx/serialization/b/ae;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object p2

    invoke-interface {p1, p2}, Lkotlinx/serialization/CompositeEncoder;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    return-void
.end method
