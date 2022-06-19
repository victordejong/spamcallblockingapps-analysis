.class public Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;
.super Ljava/lang/Object;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lorg/bluecabin/textoo/impl/Change;
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoLink"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/impl/Change<",
        "TT;>;",
        "Lscala/Product;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field public final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

.field private final mask:I


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>;I)V"
        }
    .end annotation

    .line 39
    iput p2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask:I

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lorg/bluecabin/textoo/impl/Change$class;->$init$(Lorg/bluecabin/textoo/impl/Change;)V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method

.method private merge(Lscala/collection/Seq;ILscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Seq<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;I",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;)",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 42
    invoke-interface {p1}, Lscala/collection/Seq;->headOption()Lscala/Option;

    move-result-object v2

    .line 43
    instance-of v3, v2, Lscala/Some;

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    move-object v1, v2

    check-cast v1, Lscala/Some;

    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bluecabin/textoo/impl/Change;

    instance-of v4, v3, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    if-eqz v4, :cond_0

    check-cast v3, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {v3}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v0

    invoke-interface {p1}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    or-int/2addr p2, v0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {v1}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/impl/Change;

    invoke-interface {p1}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p3, v0}, Lscala/collection/immutable/Queue;->enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;

    move-result-object p3

    goto :goto_0

    .line 45
    :cond_1
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)V

    invoke-virtual {p3, p1}, Lscala/collection/immutable/Queue;->enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;

    move-result-object p1

    return-object p1

    .line 42
    :cond_2
    new-instance p1, Lscala/MatchError;

    invoke-direct {p1, v2}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p1
.end method


# virtual methods
.method public addTo(Lscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;)",
            "Lscala/collection/immutable/Queue<",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;>;"
        }
    .end annotation

    .line 49
    sget-object v0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v0, p1}, Lscala/collection/Seq$;->apply(Lscala/collection/Seq;)Lscala/collection/GenTraversable;

    move-result-object p1

    check-cast p1, Lscala/collection/Seq;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v0

    sget-object v1, Lscala/collection/immutable/Queue$;->MODULE$:Lscala/collection/immutable/Queue$;

    invoke-virtual {v1}, Lscala/collection/immutable/Queue$;->empty()Lscala/collection/immutable/Queue;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->merge(Lscala/collection/Seq;ILscala/collection/immutable/Queue;)Lscala/collection/immutable/Queue;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v0

    new-instance v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;

    invoke-direct {v1, p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;)V

    invoke-static {v0, p1, v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 39
    instance-of p1, p1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    return p1
.end method

.method public copy(I)Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.Auto",
            "Link;"
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)V

    return-object v0
.end method

.method public copy$default$1()I
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    .line 39
    instance-of v2, p1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p1, p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->canEqual(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 39
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    invoke-static {v1, v0}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->finalizeHash(II)I

    move-result v0

    return v0
.end method

.method public mask()I
    .locals 1

    .line 39
    iget v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask:I

    return v0
.end method

.method public synthetic org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    return-object v0
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-nez p1, :cond_0

    .line 39
    invoke-virtual {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public productIterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 39
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "AutoLink"

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 39
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
