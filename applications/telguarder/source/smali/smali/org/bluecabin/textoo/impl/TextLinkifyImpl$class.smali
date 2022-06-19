.class public abstract Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;
.super Ljava/lang/Object;
.source "TextLinkifyImpl.scala"


# direct methods
.method public static $init$(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)V
    .locals 0

    return-void
.end method

.method private static addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 54
    new-instance v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-direct {v0, p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)V

    invoke-interface {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->addChange(Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method private static final findOverlappingLinks$1(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Lscala/collection/Seq;Lscala/collection/Seq;Lscala/collection/Seq;)Lscala/collection/Seq;
    .locals 2

    .line 62
    :goto_0
    invoke-interface {p2}, Lscala/collection/Seq;->headOption()Lscala/Option;

    move-result-object v0

    .line 63
    instance-of v1, v0, Lscala/Some;

    if-eqz v1, :cond_1

    check-cast v0, Lscala/Some;

    invoke-virtual {v0}, Lscala/Some;->x()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    new-instance v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;

    invoke-direct {v1, p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)V

    invoke-interface {p1, v1}, Lscala/collection/Seq;->exists(Lscala/Function1;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 64
    invoke-interface {p2}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/Seq;

    sget-object v1, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {v1}, Lscala/collection/Seq$;->canBuildFrom()Lscala/collection/generic/CanBuildFrom;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Lscala/collection/Seq;->$plus$colon(Ljava/lang/Object;Lscala/collection/generic/CanBuildFrom;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lscala/collection/Seq;

    goto :goto_0

    .line 66
    :cond_0
    invoke-interface {p2}, Lscala/collection/Seq;->tail()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/Seq;

    goto :goto_0

    .line 68
    :cond_1
    sget-object p0, Lscala/None$;->MODULE$:Lscala/None$;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p3

    .line 62
    :cond_2
    new-instance p0, Lscala/MatchError;

    invoke-direct {p0, v0}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p0
.end method

.method private static final findOverlappingLinks$default$3$1(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lscala/collection/Seq;
    .locals 0

    .line 61
    sget-object p0, Lscala/collection/Seq$;->MODULE$:Lscala/collection/Seq$;

    invoke-virtual {p0}, Lscala/collection/Seq$;->empty()Lscala/collection/GenTraversable;

    move-result-object p0

    check-cast p0, Lscala/collection/Seq;

    return-object p0
.end method

.method public static final linkify(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    .line 30
    new-instance v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;)V

    invoke-interface {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->addChange(Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkify(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Lorg/bluecabin/textoo/Configurator;
    .locals 7

    .line 35
    new-instance v6, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    invoke-interface {p0, v6}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->addChange(Lorg/bluecabin/textoo/impl/Change;)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkifyAll(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    const/16 v0, 0xf

    .line 24
    invoke-static {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkifyEmailAddresses(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    const/4 v0, 0x2

    .line 22
    invoke-static {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkifyMapAddresses(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    const/16 v0, 0x8

    .line 26
    invoke-static {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkifyPhoneNumbers(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    const/4 v0, 0x4

    .line 20
    invoke-static {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static final linkifyWebUrls(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lorg/bluecabin/textoo/Configurator;
    .locals 1

    const/4 v0, 0x1

    .line 28
    invoke-static {p0, v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->addAutoLinkMask(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)Lorg/bluecabin/textoo/Configurator;

    move-result-object p0

    return-object p0
.end method

.method public static org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Ljava/lang/Object;Lscala/Function1;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 57
    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->getSpanned(Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->allLinks$extension(Ljava/lang/CharSequence;)Lscala/collection/Seq;

    move-result-object v0

    .line 58
    invoke-interface {p2, p1}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 59
    invoke-interface {p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->getSpanned(Ljava/lang/Object;)Landroid/text/Spanned;

    move-result-object p2

    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 60
    sget-object v2, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v2, p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->allLinks$extension(Ljava/lang/CharSequence;)Lscala/collection/Seq;

    move-result-object v1

    .line 71
    invoke-static {p0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->findOverlappingLinks$default$3$1(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)Lscala/collection/Seq;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;->findOverlappingLinks$1(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Lscala/collection/Seq;Lscala/collection/Seq;Lscala/collection/Seq;)Lscala/collection/Seq;

    move-result-object v1

    .line 72
    invoke-interface {v1}, Lscala/collection/Seq;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 73
    :cond_0
    sget-object v2, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 75
    sget-object v3, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v3, p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v2, p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    .line 76
    new-instance v2, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;

    invoke-direct {v2, p0, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Landroid/text/Spannable;)V

    invoke-interface {v1, v2}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 79
    :goto_0
    invoke-interface {v0}, Lscala/collection/Seq;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 80
    :cond_1
    sget-object v1, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;

    .line 82
    sget-object v2, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->MODULE$:Lorg/bluecabin/textoo/util/CharSequenceSupport$;

    invoke-virtual {v2, p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$;->ImplicitCharSequence(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {v1, p2}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$;->toSpannable$extension(Ljava/lang/CharSequence;)Landroid/text/Spannable;

    move-result-object p2

    .line 83
    new-instance v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks$1;

    invoke-direct {v1, p0, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$org$bluecabin$textoo$impl$TextLinkifyImpl$$preserveExistingLinks$1;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Landroid/text/Spannable;)V

    invoke-interface {v0, v1}, Lscala/collection/Seq;->foreach(Lscala/Function1;)V

    .line 84
    invoke-interface {p0, p1, p2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->setSpanned(Ljava/lang/Object;Landroid/text/Spanned;)Ljava/lang/Object;

    move-result-object p1

    :goto_1
    return-object p1
.end method
