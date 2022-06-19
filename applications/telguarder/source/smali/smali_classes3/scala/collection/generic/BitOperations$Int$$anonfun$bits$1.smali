.class public final Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;
.super Lscala/runtime/AbstractFunction1$mcZI$sp;
.source "BitOperations.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/generic/BitOperations$Int;->bits(I)Lscala/collection/immutable/IndexedSeq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final num$2:I


# direct methods
.method public constructor <init>(Lscala/collection/generic/BitOperations$Int;I)V
    .locals 0

    .line 27
    iput p2, p0, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;->num$2:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcZI$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToInt(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p0, p1}, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;->apply(I)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(I)Z
    .locals 0

    .line 27
    invoke-virtual {p0, p1}, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;->apply$mcZI$sp(I)Z

    move-result p1

    return p1
.end method

.method public apply$mcZI$sp(I)Z
    .locals 1

    .line 27
    iget v0, p0, Lscala/collection/generic/BitOperations$Int$$anonfun$bits$1;->num$2:I

    ushr-int p1, v0, p1

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
