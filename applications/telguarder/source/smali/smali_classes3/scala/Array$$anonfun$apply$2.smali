.class public final Lscala/Array$$anonfun$apply$2;
.super Lscala/runtime/AbstractFunction1$mcVJ$sp;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(JLscala/collection/Seq;)[J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$7:[J

.field private final i$7:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([JLscala/runtime/IntRef;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lscala/Array$$anonfun$apply$2;->array$7:[J

    iput-object p2, p0, Lscala/Array$$anonfun$apply$2;->i$7:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1$mcVJ$sp;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 183
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lscala/Array$$anonfun$apply$2;->apply(J)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(J)V
    .locals 0

    .line 183
    invoke-virtual {p0, p1, p2}, Lscala/Array$$anonfun$apply$2;->apply$mcVJ$sp(J)V

    return-void
.end method

.method public apply$mcVJ$sp(J)V
    .locals 2

    .line 183
    iget-object v0, p0, Lscala/Array$$anonfun$apply$2;->array$7:[J

    iget-object v1, p0, Lscala/Array$$anonfun$apply$2;->i$7:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-wide p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$2;->i$7:Lscala/runtime/IntRef;

    iget p2, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
