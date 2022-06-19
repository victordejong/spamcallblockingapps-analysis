.class public final Lscala/collection/BitSetLike$$anonfun$isEmpty$1;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "BitSetLike.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/BitSetLike;->isEmpty()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/BitSetLike;


# direct methods
.method public constructor <init>(Lscala/collection/BitSetLike;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/BitSetLike<",
            "TThis;>;)V"
        }
    .end annotation

    .line 73
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;->$outer:Lscala/collection/BitSetLike;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 73
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;->apply(I)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Z
    .locals 0

    .line 73
    invoke-virtual {p0, p1}, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;->apply$mcZI$sp(I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 4

    .line 73
    iget-object v0, p0, Lscala/collection/BitSetLike$$anonfun$isEmpty$1;->$outer:Lscala/collection/BitSetLike;

    invoke-interface {v0, p1}, Lscala/collection/BitSetLike;->word(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
