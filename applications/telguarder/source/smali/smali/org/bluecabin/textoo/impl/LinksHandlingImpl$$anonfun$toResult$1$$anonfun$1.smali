.class public final Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "LinksHandlingImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Landroid/view/View;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;

.field public final url$1:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/LinksHandlingImpl<",
            "TT;TC;>.$anonfun$toResult$1;)V"
        }
    .end annotation

    .line 37
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;->url$1:Ljava/lang/String;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 37
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;->apply(Landroid/view/View;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Landroid/view/View;)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;

    invoke-virtual {v0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1;->org$bluecabin$textoo$impl$LinksHandlingImpl$$anonfun$$$outer()Lorg/bluecabin/textoo/impl/LinksHandlingImpl;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl;->handlers()Lscala/collection/immutable/Queue;

    move-result-object v0

    new-instance v1, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;

    invoke-direct {v1, p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;-><init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/Queue;->find(Lscala/Function1;)Lscala/Option;

    move-result-object p1

    invoke-virtual {p1}, Lscala/Option;->nonEmpty()Z

    move-result p1

    return p1
.end method
