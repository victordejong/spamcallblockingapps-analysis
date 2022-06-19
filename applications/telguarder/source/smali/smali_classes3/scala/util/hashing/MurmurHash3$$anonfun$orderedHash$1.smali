.class public final Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;
.super Lscala/runtime/AbstractFunction1;
.source "MurmurHash3.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/hashing/MurmurHash3;->orderedHash(Lscala/collection/TraversableOnce;I)I
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
.field private final synthetic $outer:Lscala/util/hashing/MurmurHash3;

.field private final h$1:Lscala/runtime/IntRef;

.field private final n$2:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/util/hashing/MurmurHash3;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V
    .locals 0

    .line 109
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->$outer:Lscala/util/hashing/MurmurHash3;

    iput-object p2, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->n$2:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->h$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->h$1:Lscala/runtime/IntRef;

    iget-object v1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->$outer:Lscala/util/hashing/MurmurHash3;

    iget v2, v0, Lscala/runtime/IntRef;->elem:I

    sget-object v3, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    invoke-virtual {v3, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v1, v2, p1}, Lscala/util/hashing/MurmurHash3;->mix(II)I

    move-result p1

    iput p1, v0, Lscala/runtime/IntRef;->elem:I

    .line 111
    iget-object p1, p0, Lscala/util/hashing/MurmurHash3$$anonfun$orderedHash$1;->n$2:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
