.class public abstract Lkotlinx/serialization/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlinx/serialization/KSerializer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Element:",
        "Ljava/lang/Object;",
        "Collection:",
        "Ljava/lang/Object;",
        "Builder:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/serialization/KSerializer<",
        "TCollection;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010(\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u00087\u0018\u0000*\u0004\u0008\u0000\u0010\u0001*\u0004\u0008\u0001\u0010\u0002*\u0004\u0008\u0002\u0010\u00032\u0008\u0012\u0004\u0012\u0002H\u00020\u0004B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0005J\r\u0010\n\u001a\u00028\u0002H$\u00a2\u0006\u0002\u0010\u000bJ\u0015\u0010\u000c\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000eH\u0016\u00a2\u0006\u0002\u0010\u000fJ\u001b\u0010\u0010\u001a\u00028\u00012\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00028\u0001\u00a2\u0006\u0002\u0010\u0012J-\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u00022\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H$\u00a2\u0006\u0002\u0010\u0019J/\u0010\u001a\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\u001b\u001a\u00020\u00172\u0006\u0010\n\u001a\u00028\u00022\u0008\u0008\u0002\u0010\u001c\u001a\u00020\u001dH$\u00a2\u0006\u0002\u0010\u001eJ\u001d\u0010\u001f\u001a\u00020\u00172\u0006\u0010\r\u001a\u00020\u00152\u0006\u0010\n\u001a\u00028\u0002H\u0002\u00a2\u0006\u0002\u0010 J\u001d\u0010!\u001a\u00020\u00142\u0006\u0010\"\u001a\u00020#2\u0006\u0010$\u001a\u00028\u0001H&\u00a2\u0006\u0002\u0010%J\u0011\u0010&\u001a\u00020\u0017*\u00028\u0002H$\u00a2\u0006\u0002\u0010\'J\u0019\u0010(\u001a\u00020\u0014*\u00028\u00022\u0006\u0010\u0018\u001a\u00020\u0017H$\u00a2\u0006\u0002\u0010)J\u0017\u0010*\u001a\u0008\u0012\u0004\u0012\u00028\u00000+*\u00028\u0001H$\u00a2\u0006\u0002\u0010,J\u0011\u0010-\u001a\u00020\u0017*\u00028\u0001H$\u00a2\u0006\u0002\u0010\'J\u0011\u0010.\u001a\u00028\u0002*\u00028\u0001H$\u00a2\u0006\u0002\u0010/J\u0011\u00100\u001a\u00028\u0001*\u00028\u0002H$\u00a2\u0006\u0002\u0010/R\u001c\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u0006\u0012\u0002\u0008\u00030\u00040\u0007X\u00a6\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0008\u0010\t\u0082\u0001\u000212\u00a8\u00063"
    }
    d2 = {
        "Lkotlinx/serialization/internal/AbstractCollectionSerializer;",
        "Element",
        "Collection",
        "Builder",
        "Lkotlinx/serialization/KSerializer;",
        "()V",
        "typeParams",
        "",
        "getTypeParams",
        "()[Lkotlinx/serialization/KSerializer;",
        "builder",
        "()Ljava/lang/Object;",
        "deserialize",
        "decoder",
        "Lkotlinx/serialization/Decoder;",
        "(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;",
        "patch",
        "old",
        "(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;",
        "readAll",
        "",
        "Lkotlinx/serialization/CompositeDecoder;",
        "startIndex",
        "",
        "size",
        "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;II)V",
        "readElement",
        "index",
        "checkIndex",
        "",
        "(Lkotlinx/serialization/CompositeDecoder;ILjava/lang/Object;Z)V",
        "readSize",
        "(Lkotlinx/serialization/CompositeDecoder;Ljava/lang/Object;)I",
        "serialize",
        "encoder",
        "Lkotlinx/serialization/Encoder;",
        "value",
        "(Lkotlinx/serialization/Encoder;Ljava/lang/Object;)V",
        "builderSize",
        "(Ljava/lang/Object;)I",
        "checkCapacity",
        "(Ljava/lang/Object;I)V",
        "collectionIterator",
        "",
        "(Ljava/lang/Object;)Ljava/util/Iterator;",
        "collectionSize",
        "toBuilder",
        "(Ljava/lang/Object;)Ljava/lang/Object;",
        "toResult",
        "Lkotlinx/serialization/internal/ListLikeSerializer;",
        "Lkotlinx/serialization/internal/MapLikeSerializer;",
        "kotlinx-serialization-runtime"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Lkotlinx/serialization/b/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)I"
        }
    .end annotation
.end method

.method protected abstract a()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilder;"
        }
    .end annotation
.end method

.method protected abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;I)V"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlinx/serialization/a;ILjava/lang/Object;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/a;",
            "ITBuilder;Z)V"
        }
    .end annotation
.end method

.method protected abstract a(Lkotlinx/serialization/a;Ljava/lang/Object;II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/a;",
            "TBuilder;II)V"
        }
    .end annotation
.end method

.method protected abstract b(Ljava/lang/Object;)Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)",
            "Ljava/util/Iterator<",
            "TElement;>;"
        }
    .end annotation
.end method

.method protected abstract c(Ljava/lang/Object;)I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)I"
        }
    .end annotation
.end method

.method protected abstract d(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TBuilder;)TCollection;"
        }
    .end annotation
.end method

.method public deserialize(Lkotlinx/serialization/Decoder;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            ")TCollection;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lkotlinx/serialization/b/a;->a()Ljava/lang/Object;

    move-result-object v0

    .line 45
    invoke-virtual {p0, v0}, Lkotlinx/serialization/b/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lkotlinx/serialization/b/a;->patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected abstract e(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TCollection;)TBuilder;"
        }
    .end annotation
.end method

.method public final patch(Lkotlinx/serialization/Decoder;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/serialization/Decoder;",
            "TCollection;)TCollection;"
        }
    .end annotation

    const-string v0, "decoder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/p;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lkotlinx/serialization/b/a;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 28
    invoke-virtual {p0, p2}, Lkotlinx/serialization/b/a;->c(Ljava/lang/Object;)I

    move-result v0

    .line 29
    invoke-virtual {p0}, Lkotlinx/serialization/b/a;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Lkotlinx/serialization/KSerializer;

    invoke-interface {p1, v1, v2}, Lkotlinx/serialization/Decoder;->beginStructure(Lkotlinx/serialization/SerialDescriptor;[Lkotlinx/serialization/KSerializer;)Lkotlinx/serialization/a;

    move-result-object p1

    .line 30
    invoke-interface {p1}, Lkotlinx/serialization/a;->decodeSequentially()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    invoke-virtual {p0}, Lkotlinx/serialization/b/a;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/a;->decodeCollectionSize(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v1

    .line 1050
    invoke-virtual {p0, p2, v1}, Lkotlinx/serialization/b/a;->a(Ljava/lang/Object;I)V

    .line 31
    invoke-virtual {p0, p1, p2, v0, v1}, Lkotlinx/serialization/b/a;->a(Lkotlinx/serialization/a;Ljava/lang/Object;II)V

    goto :goto_1

    .line 34
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lkotlinx/serialization/b/a;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v1

    invoke-interface {p1, v1}, Lkotlinx/serialization/a;->decodeElementIndex(Lkotlinx/serialization/SerialDescriptor;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    add-int/2addr v1, v0

    const/4 v2, 0x1

    .line 1054
    invoke-virtual {p0, p1, v1, p2, v2}, Lkotlinx/serialization/b/a;->a(Lkotlinx/serialization/a;ILjava/lang/Object;Z)V

    goto :goto_0

    .line 39
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lkotlinx/serialization/b/a;->getDescriptor()Lkotlinx/serialization/SerialDescriptor;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlinx/serialization/a;->endStructure(Lkotlinx/serialization/SerialDescriptor;)V

    .line 40
    invoke-virtual {p0, p2}, Lkotlinx/serialization/b/a;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
