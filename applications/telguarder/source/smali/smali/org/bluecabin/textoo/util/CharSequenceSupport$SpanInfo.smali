.class public final Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;
.super Ljava/lang/Object;
.source "CharSequenceSupport.scala"

# interfaces
.implements Lscala/Product;
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/util/CharSequenceSupport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SpanInfo"
.end annotation


# instance fields
.field private final end:I

.field private final flags:I

.field private final span:Ljava/lang/Object;

.field private final start:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;III)V
    .locals 0

    .line 46
    iput-object p1, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span:Ljava/lang/Object;

    .line 47
    iput p2, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start:I

    .line 48
    iput p3, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end:I

    .line 49
    iput p4, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags:I

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p0}, Lscala/Product$class;->$init$(Lscala/Product;)V

    return-void
.end method


# virtual methods
.method public addTo(Landroid/text/Spannable;)V
    .locals 4

    .line 53
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v1

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v2

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result v3

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public canEqual(Ljava/lang/Object;)Z
    .locals 0

    .line 45
    instance-of p1, p1, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    return p1
.end method

.method public copy(Ljava/lang/Object;III)Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;
    .locals 1

    .line 45
    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;-><init>(Ljava/lang/Object;III)V

    return-object v0
.end method

.method public copy$default$1()Ljava/lang/Object;
    .locals 1

    .line 46
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public copy$default$2()I
    .locals 1

    .line 47
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v0

    return v0
.end method

.method public copy$default$3()I
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v0

    return v0
.end method

.method public copy$default$4()I
    .locals 1

    .line 49
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result v0

    return v0
.end method

.method public end()I
    .locals 1

    .line 48
    iget v0, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end:I

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p0, p1, :cond_1

    .line 45
    instance-of v2, p1, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    if-eqz v2, :cond_2

    check-cast p1, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lscala/runtime/BoxesRunTime;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v3

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result v2

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result p1

    if-ne v2, p1, :cond_0

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

.method public flags()I
    .locals 1

    .line 49
    iget v0, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 45
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lscala/runtime/Statics;->anyHash(Ljava/lang/Object;)I

    move-result v0

    const v1, -0x35014542    # -8346975.0f

    invoke-static {v1, v0}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result v1

    invoke-static {v0, v1}, Lscala/runtime/Statics;->mix(II)I

    move-result v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lscala/runtime/Statics;->finalizeHash(II)I

    move-result v0

    return v0
.end method

.method public overlapsWith(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)Z
    .locals 2

    .line 51
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result v0

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result p1

    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result v0

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public productArity()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public productElement(I)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 45
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->flags()I

    move-result p1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->end()I

    move-result p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start()I

    move-result p1

    :goto_0
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
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

    .line 45
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->typedProductIterator(Lscala/Product;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public productPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "SpanInfo"

    return-object v0
.end method

.method public span()Ljava/lang/Object;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span:Ljava/lang/Object;

    return-object v0
.end method

.method public start()I
    .locals 1

    .line 47
    iget v0, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->start:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 45
    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v0, p0}, Lscala/runtime/ScalaRunTime$;->_toString(Lscala/Product;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
