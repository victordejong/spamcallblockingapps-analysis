.class public abstract Lorg/bluecabin/textoo/impl/LinksHandlingImpl$class;
.super Ljava/lang/Object;
.source "LinksHandlingImpl.scala"


# direct methods
.method public static $init$(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;)V
    .locals 0

    return-void
.end method

.method public static final addLinksHandler(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Lorg/bluecabin/textoo/LinksHandler;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 21
    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->handlers()Lscala/collection/immutable/Queue;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/Queue;->enqueue(Ljava/lang/Object;)Lscala/collection/immutable/Queue;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->updateHandlers(Lscala/collection/immutable/Queue;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static toResult(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 28
    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->org$bluecabin$textoo$impl$LinksHandlingImpl$$super$toResult(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 29
    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->getSpannedFromResult(Ljava/lang/Object;)Lscala/Option;

    move-result-object v0

    .line 30
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_0

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    .line 31
    invoke-interface {p0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->handlers()Lscala/collection/immutable/Queue;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/Queue;->nonEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 32
    sget-object v2, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v2, v0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object v1

    .line 34
    sget-object v2, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v3, 0x0

    invoke-interface {v0}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Landroid/text/style/URLSpan;

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lscala/Predef$;->refArrayOps([Ljava/lang/Object;)Lscala/collection/mutable/ArrayOps;

    move-result-object v2

    new-instance v3, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;

    invoke-direct {v3, p0, v0, v1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;-><init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Landroid/text/Spanned;Landroid/text/Spannable;)V

    invoke-interface {v2, v3}, Lscala/collection/mutable/ArrayOps;->foreach(Lscala/Function1;)V

    .line 46
    invoke-interface {p0, v1, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->setSpannedToResult(Landroid/text/Spanned;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 50
    :cond_0
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    :goto_0
    return-object p1

    .line 29
    :cond_2
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method
