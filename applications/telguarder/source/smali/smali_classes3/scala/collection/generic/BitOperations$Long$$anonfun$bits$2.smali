.class public final Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;
.super Lscala/runtime/AbstractFunction1$mcZJ$sp;
.source "BitOperations.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/BitOperations$Long;->bits(J)Lscala/collection/immutable/IndexedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final num$1:J


# direct methods
.method public constructor <init>(Lscala/collection/generic/BitOperations$Long;J)V
    .locals 0

    .line 50
    iput-wide p2, p0, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;->num$1:J

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZJ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 50
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;->apply(J)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(J)Z
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;->apply$mcZJ$sp(J)Z

    move-result p1

    return p1
.end method

.method public apply$mcZJ$sp(J)Z
    .locals 3

    .line 50
    iget-wide v0, p0, Lscala/collection/generic/BitOperations$Long$$anonfun$bits$2;->num$1:J

    long-to-int p2, p1

    ushr-long p1, v0, p2

    const-wide/16 v0, 0x1

    and-long/2addr p1, v0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
