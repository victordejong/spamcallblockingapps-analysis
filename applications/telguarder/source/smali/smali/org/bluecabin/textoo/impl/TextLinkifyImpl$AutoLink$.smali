.class public Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;
.super Lscala/runtime/AbstractFunction1;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AutoLink$"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
        "TT;TC;>.Auto",
        "Link;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    invoke-interface {v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->org$bluecabin$textoo$impl$TextLinkifyImpl$$AutoLink()Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 39
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;->apply(I)Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    move-result-object p1

    return-object p1
.end method

.method public apply(I)Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;
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

    iget-object v1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    invoke-direct {v0, v1, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;-><init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "AutoLink"

    return-object v0
.end method

.method public unapply(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;)Lscala/Option;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.Auto",
            "Link;",
            ")",
            "Lscala/Option<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 39
    sget-object p1, Lscala/None$;->MODULE$:Lscala/None$;

    goto :goto_0

    :cond_0
    new-instance v0, Lscala/Some;

    invoke-virtual {p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToInteger(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {v0, p1}, Lscala/Some;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    :goto_0
    return-object p1
.end method
