.class public final Lscala/Array$$anonfun$apply$3;
.super Lscala/runtime/AbstractFunction1$mcVF$sp;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(FLscala/collection/Seq;)[F
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$8:[F

.field private final i$8:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([FLscala/runtime/IntRef;)V
    .locals 0

    .line 193
    iput-object p1, p0, Lscala/Array$$anonfun$apply$3;->array$8:[F

    iput-object p2, p0, Lscala/Array$$anonfun$apply$3;->i$8:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVF$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 193
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToFloat(Ljava/lang/Object;)F

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$3;->apply(F)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(F)V
    .locals 0

    .line 193
    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$3;->apply$mcVF$sp(F)V

    return-void
.end method

.method public apply$mcVF$sp(F)V
    .locals 2

    .line 193
    iget-object v0, p0, Lscala/Array$$anonfun$apply$3;->array$8:[F

    iget-object v1, p0, Lscala/Array$$anonfun$apply$3;->i$8:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$3;->i$8:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
