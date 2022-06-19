.class public final Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;
.super Lscala/runtime/AbstractFunction1;
.source "ParSetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/parallel/ParSetLike;->diff(Lscala/collection/GenSet;)Lscala/collection/parallel/ParSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TSequential;TSequential;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final that$2:Lscala/collection/GenSet;


# direct methods
.method public constructor <init>(Lscala/collection/parallel/ParSetLike;Lscala/collection/GenSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/parallel/ParSetLike<",
            "TT;TRepr;TSequential;>;)V"
        }
    .end annotation

    .line 45
    iput-object p2, p0, Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;->that$2:Lscala/collection/GenSet;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lscala/collection/Set;

    invoke-virtual {p0, p1}, Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;->apply(Lscala/collection/Set;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Set;)Lscala/collection/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSequential;)TSequential;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lscala/collection/parallel/ParSetLike$$anonfun$diff$1;->that$2:Lscala/collection/GenSet;

    invoke-interface {p1, v0}, Lscala/collection/Set;->diff(Lscala/collection/GenSet;)Lscala/collection/Set;

    move-result-object p1

    return-object p1
.end method
