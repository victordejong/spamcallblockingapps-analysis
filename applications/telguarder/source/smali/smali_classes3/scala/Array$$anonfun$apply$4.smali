.class public final Lscala/Array$$anonfun$apply$4;
.super Lscala/runtime/AbstractFunction1$mcVD$sp;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(DLscala/collection/Seq;)[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$9:[D

.field private final i$9:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([DLscala/runtime/IntRef;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lscala/Array$$anonfun$apply$4;->array$9:[D

    iput-object p2, p0, Lscala/Array$$anonfun$apply$4;->i$9:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVD$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 203
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/Array$$anonfun$apply$4;->apply(D)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(D)V
    .locals 0

    .line 203
    invoke-virtual {p0, p1, p2}, Lscala/Array$$anonfun$apply$4;->apply$mcVD$sp(D)V

    return-void
.end method

.method public apply$mcVD$sp(D)V
    .locals 2

    .line 203
    iget-object v0, p0, Lscala/Array$$anonfun$apply$4;->array$9:[D

    iget-object v1, p0, Lscala/Array$$anonfun$apply$4;->i$9:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$4;->i$9:Lscala/runtime/IntRef;

    iget p2, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
