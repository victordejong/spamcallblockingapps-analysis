.class public final Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "LinksHandlingImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lorg/bluecabin/textoo/LinksHandler;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;

.field private final v$1:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/LinksHandlingImpl<",
            "TT;TC;>.$anonfun$toResult$1$$anonfun$1;)V"
        }
    .end annotation

    .line 38
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;

    iput-object p2, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;->v$1:Landroid/view/View;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 38
    check-cast p1, Lorg/bluecabin/textoo/LinksHandler;

    invoke-virtual {p0, p1}, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;->apply(Lorg/bluecabin/textoo/LinksHandler;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lorg/bluecabin/textoo/LinksHandler;)Z
    .locals 2

    .line 38
    iget-object v0, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;->v$1:Landroid/view/View;

    iget-object v1, p0, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1$$anonfun$apply$1;->$outer:Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;

    iget-object v1, v1, Lorg/bluecabin/textoo/impl/LinksHandlingImpl$$anonfun$toResult$1$$anonfun$1;->url$1:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Lorg/bluecabin/textoo/LinksHandler;->onClick(Landroid/view/View;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
