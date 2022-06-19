.class public final Lscala/collection/immutable/List$$anonfun$foldRight$1;
.super Lscala/runtime/AbstractFunction2;
.source "List.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/List;->foldRight(Ljava/lang/Object;Lscala/Function2;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction2<",
        "TB;TA;TB;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final op$1:Lscala/Function2;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/List;Lscala/Function2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/List<",
            "TA;>;)V"
        }
    .end annotation

    .line 397
    iput-object p2, p0, Lscala/collection/immutable/List$$anonfun$foldRight$1;->op$1:Lscala/Function2;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction2;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TB;TA;)TB;"
        }
    .end annotation

    .line 397
    iget-object v0, p0, Lscala/collection/immutable/List$$anonfun$foldRight$1;->op$1:Lscala/Function2;

    invoke-interface {v0, p2, p1}, Lscala/Function2;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
