.class public final Lscala/Array$$anonfun$apply$10;
.super Lscala/runtime/AbstractFunction1;
.source "Array.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/Array$;->apply(Lscala/runtime/BoxedUnit;Lscala/collection/Seq;)[Lscala/runtime/BoxedUnit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "Lscala/runtime/BoxedUnit;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final array$10:[Lscala/runtime/BoxedUnit;

.field private final i$10:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>([Lscala/runtime/BoxedUnit;Lscala/runtime/IntRef;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lscala/Array$$anonfun$apply$10;->array$10:[Lscala/runtime/BoxedUnit;

    iput-object p2, p0, Lscala/Array$$anonfun$apply$10;->i$10:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 212
    check-cast p1, Lscala/runtime/BoxedUnit;

    invoke-virtual {p0, p1}, Lscala/Array$$anonfun$apply$10;->apply(Lscala/runtime/BoxedUnit;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Lscala/runtime/BoxedUnit;)V
    .locals 2

    .line 212
    iget-object v0, p0, Lscala/Array$$anonfun$apply$10;->array$10:[Lscala/runtime/BoxedUnit;

    iget-object v1, p0, Lscala/Array$$anonfun$apply$10;->i$10:Lscala/runtime/IntRef;

    iget v1, v1, Lscala/runtime/IntRef;->elem:I

    aput-object p1, v0, v1

    iget-object p1, p0, Lscala/Array$$anonfun$apply$10;->i$10:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
