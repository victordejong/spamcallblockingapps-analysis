.class public final Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;
.super Lscala/runtime/AbstractFunction1;
.source "TraversableOnce.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->apply(Lscala/collection/TraversableOnce;)Lscala/collection/mutable/Builder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/collection/Traversable<",
        "TA;>;TCC;>;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;


# direct methods
.method public constructor <init>(Lscala/collection/TraversableOnce$BufferedCanBuildFrom;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/TraversableOnce$BufferedCanBuildFrom<",
            "TA;TCC;>;)V"
        }
    .end annotation

    .line 434
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->$outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 434
    check-cast p1, Lscala/collection/Traversable;

    invoke-virtual {p0, p1}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->apply(Lscala/collection/Traversable;)Lscala/collection/TraversableOnce;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Lscala/collection/Traversable;)Lscala/collection/TraversableOnce;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/Traversable<",
            "TA;>;)TCC;"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lscala/collection/TraversableOnce$BufferedCanBuildFrom$$anonfun$apply$1;->$outer:Lscala/collection/TraversableOnce$BufferedCanBuildFrom;

    invoke-virtual {v0, p1}, Lscala/collection/TraversableOnce$BufferedCanBuildFrom;->traversableToColl(Lscala/collection/GenTraversable;)Lscala/collection/TraversableOnce;

    move-result-object p1

    return-object p1
.end method
