.class public final Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;
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
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final newLink$1:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/TextLinkifyImpl;Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/TextLinkifyImpl$class;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p2, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;->newLink$1:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 63
    check-cast p1, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;->apply(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)Z
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/TextLinkifyImpl$$anonfun$findOverlappingLinks$1$1;->newLink$1:Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;

    invoke-virtual {p1, v0}, Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;->overlapsWith(Lorg/bluecabin/textoo/util/CharSequenceSupport$SpanInfo;)Z

    move-result p1

    return p1
.end method
