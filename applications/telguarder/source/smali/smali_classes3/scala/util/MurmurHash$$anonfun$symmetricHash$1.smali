.class public final Lscala/util/MurmurHash$$anonfun$symmetricHash$1;
.super Lscala/runtime/AbstractFunction1;
.source "MurmurHash.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/util/MurmurHash$;->symmetricHash(Lscala/collection/TraversableOnce;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TT;",
        "Lscala/runtime/BoxedUnit;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final a$1:Lscala/runtime/IntRef;

.field private final b$1:Lscala/runtime/IntRef;

.field private final c$1:Lscala/runtime/IntRef;

.field private final n$1:Lscala/runtime/IntRef;


# direct methods
.method public constructor <init>(Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;Lscala/runtime/IntRef;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->a$1:Lscala/runtime/IntRef;

    iput-object p2, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->b$1:Lscala/runtime/IntRef;

    iput-object p3, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->n$1:Lscala/runtime/IntRef;

    iput-object p4, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->c$1:Lscala/runtime/IntRef;

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 186
    invoke-virtual {p0, p1}, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->apply(Ljava/lang/Object;)V

    sget-object p1, Lscala/runtime/BoxedUnit;->UNIT:Lscala/runtime/BoxedUnit;

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    sget-object v0, Lscala/runtime/ScalaRunTime$;->MODULE$:Lscala/runtime/ScalaRunTime$;

    .line 187
    invoke-virtual {v0, p1}, Lscala/runtime/ScalaRunTime$;->hash(Ljava/lang/Object;)I

    move-result p1

    .line 188
    iget-object v0, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->a$1:Lscala/runtime/IntRef;

    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    add-int/2addr v1, p1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    .line 189
    iget-object v0, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->b$1:Lscala/runtime/IntRef;

    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    xor-int/2addr v1, p1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->c$1:Lscala/runtime/IntRef;

    iget v1, v0, Lscala/runtime/IntRef;->elem:I

    mul-int v1, v1, p1

    iput v1, v0, Lscala/runtime/IntRef;->elem:I

    .line 191
    :cond_0
    iget-object p1, p0, Lscala/util/MurmurHash$$anonfun$symmetricHash$1;->n$1:Lscala/runtime/IntRef;

    iget v0, p1, Lscala/runtime/IntRef;->elem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Lscala/runtime/IntRef;->elem:I

    return-void
.end method
