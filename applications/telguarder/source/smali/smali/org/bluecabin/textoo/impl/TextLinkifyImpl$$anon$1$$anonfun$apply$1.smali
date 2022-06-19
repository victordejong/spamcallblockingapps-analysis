.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->apply(Ljava/lang/Object;)Ljava/lang/Object;
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
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.$anon$1;)V"
        }
    .end annotation

    .line 31
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 31
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;

    invoke-virtual {v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v0

    iget-object v1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;

    iget-object v1, v1, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->pattern$1:Ljava/util/regex/Pattern;

    iget-object v2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;

    iget-object v2, v2, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$1;->scheme$1:Ljava/lang/String;

    invoke-interface {v0, p1, v1, v2}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
