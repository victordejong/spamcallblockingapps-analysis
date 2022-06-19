.class public final Lorg/bluecabin/textoo/impl/ConfiguratorImpl$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction2;
.source "ConfiguratorImpl.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluecabin/textoo/impl/ConfiguratorImpl;->apply()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TT;",
        "Lorg/bluecabin/textoo/impl/Change<",
        "TT;>;TT;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# direct methods
.method public constructor <init>(Lorg/bluecabin/textoo/impl/ConfiguratorImpl;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/bluecabin/textoo/impl/ConfiguratorImpl<",
            "TT;TC;>;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p2, Lorg/bluecabin/textoo/impl/Change;

    invoke-virtual {p0, p1, p2}, Lorg/bluecabin/textoo/impl/ConfiguratorImpl$$anonfun$apply$1;->apply(Ljava/lang/Object;Lorg/bluecabin/textoo/impl/Change;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;Lorg/bluecabin/textoo/impl/Change;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lorg/bluecabin/textoo/impl/Change<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 24
    invoke-interface {p2, p1}, Lorg/bluecabin/textoo/impl/Change;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
