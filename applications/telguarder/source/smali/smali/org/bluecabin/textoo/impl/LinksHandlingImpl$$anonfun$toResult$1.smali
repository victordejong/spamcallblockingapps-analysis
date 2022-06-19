.class public final Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;
.super Lscala/runtime/AbstractFunction1;
.source "LinksHandlingImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->toResult(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Landroid/text/style/URLSpan;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl;

.field private final spannable$1:Landroid/text/Spannable;

.field private final spanned$1:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl;Landroid/text/Spanned;Landroid/text/Spannable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/LinksHandlingImpl<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spanned$1:Landroid/text/Spanned;

    iput-object p3, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spannable$1:Landroid/text/Spannable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Landroid/text/style/URLSpan;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->apply(Landroid/text/style/URLSpan;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Landroid/text/style/URLSpan;)V
    .locals 5

    .line 36
    invoke-virtual {p1}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v0

    .line 37
    new-instance v1, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;

    new-instance v2, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;

    invoke-direct {v2, p0, v0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;-><init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;Ljava/lang/String;)V

    invoke-direct {v1, p1, v2}, Lorg/bluecabin/textoo/impl/ClickableSpanWrapper;-><init>(Landroid/text/style/ClickableSpan;Lscala/Function1;)V

    .line 40
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v0, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 41
    iget-object v2, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 42
    iget-object v3, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v3, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 43
    iget-object v4, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spannable$1:Landroid/text/Spannable;

    invoke-interface {v4, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 44
    iget-object p1, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->spannable$1:Landroid/text/Spannable;

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    return-void
.end method

.method public synthetic org$bluecabin$textoo$impl$LinksHandlingImpl$$anonfun$$$outer()Lorg/bluecabin/textoo/impl/LinksHandlingImpl;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl;

    return-object v0
.end method
