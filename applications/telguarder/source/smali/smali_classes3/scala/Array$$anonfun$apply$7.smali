.class public final Lscala/Array$$anonfun$apply$7;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(BLscala/collection/Seq;)[B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Ljava/lang/Object;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$3:[B

.field private final i$3:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([BLscala/runtime/IntRef;)V
    .locals 0

    .line 143
    iput-object p1, p0, Lscala/Array$$anonfun$apply$7;->array$3:[B

    iput-object p2, p0, Lscala/Array$$anonfun$apply$7;->i$3:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 143
    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToByte(Ljava/lang/Object;)B

    move-result p1

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$7;->apply(B)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(B)V
    .locals 2

    .line 143
    iget-object v0, p0, Lscala/Array$$anonfun$apply$7;->array$3:[B

    iget-object v1, p0, Lscala/Array$$anonfun$apply$7;->i$3:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-byte p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$7;->i$3:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
