.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "TextLinkifyImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/impl/TextLinkifyImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final spannable$1:Landroid/text/Spannable;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Landroid/text/Spannable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;",
            ")V"
        }
    .end annotation

    .line 76
    iput-object p2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;->spannable$1:Landroid/text/Spannable;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 76
    check-cast p1, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;->apply(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)V
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$1;->spannable$1:Landroid/text/Spannable;

    invoke-virtual {p1}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->span()Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    return-void
.end method
