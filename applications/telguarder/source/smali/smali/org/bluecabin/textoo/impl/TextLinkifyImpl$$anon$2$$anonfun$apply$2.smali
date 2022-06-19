.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->apply(Ljava/lang/Object;)Ljava/lang/Object;
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
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl<",
            "TT;TC;>.$anon$2;)V"
        }
    .end annotation

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    invoke-virtual {v0}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->org$bluecabin$textoo$impl$TextLinkifyImpl$$anon$$$outer()Lorg/bluecabin/textoo/impl/TextLinkifyImpl;

    move-result-object v1

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    iget-object v3, v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->p$1:Ljava/util/regex/Pattern;

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    iget-object v4, v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->scheme$2:Ljava/lang/String;

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    iget-object v5, v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->matchFilter$1:Landroid/text/util/Linkify$MatchFilter;

    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2$$anonfun$apply$2;->$outer:Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;

    iget-object v6, v0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anon$2;->transformFilter$1:Landroid/text/util/Linkify$TransformFilter;

    move-object v2, p1

    invoke-interface/range {v1 .. v6}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl;->linkifyText(Ljava/lang/Object;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
