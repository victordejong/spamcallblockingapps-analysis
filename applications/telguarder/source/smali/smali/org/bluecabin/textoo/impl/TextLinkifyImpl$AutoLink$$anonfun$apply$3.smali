.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction1;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->apply(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.Auto",
            "Link;",
            ")V"
        }
    .end annotation

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->org$bluecabin$textoo$impl$TextLinkifyImpl$AutoLink$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink$$anonfun$apply$3;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;

    invoke-virtual {v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$AutoLink;->mask()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->linkifyText(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
