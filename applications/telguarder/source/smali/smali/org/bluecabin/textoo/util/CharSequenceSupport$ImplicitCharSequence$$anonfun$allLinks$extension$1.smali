.class public final Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;
.super Lscala/runtime/AbstractFunction1;
.source "CharSequenceSupport.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence;->allLinks()Lscala/collection/Seq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Landroid/text/style/ClickableSpan;",
        "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final spanned$1:Landroid/text/Spanned;


# direct methods
.method public constructor <init>(Landroid/text/Spanned;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;->spanned$1:Landroid/text/Spanned;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 34
    check-cast p1, Landroid/text/style/ClickableSpan;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;->apply(Landroid/text/style/ClickableSpan;)Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Landroid/text/style/ClickableSpan;)Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;
    .locals 4

    .line 35
    new-instance v0, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    .line 37
    iget-object v1, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v1, p1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 38
    iget-object v2, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v2, p1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v2

    .line 39
    iget-object v3, p0, Lorg/bluecabin/textoo/util/CharSequenceSupport$ImplicitCharSequence$$anonfun$allLinks$extension$1;->spanned$1:Landroid/text/Spanned;

    invoke-interface {v3, p1}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v3

    .line 35
    invoke-direct {v0, p1, v1, v2, v3}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;-><init>(Ljava/lang/Object;III)V

    return-object v0
.end method
