.class public final Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;
.super Lscala/runtime/AbstractFunction1;
.source "HashSet.scala"

# interfaces
.implements Lscala/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lscala/collection/immutable/HashSet$HashSetCollision1;->intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lscala/runtime/AbstractFunction1<",
        "TA;",
        "Ljava/lang/Object;",
        ">;",
        "Lscala/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field private final synthetic $outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

.field private final level$2:I

.field private final that$2:Lscala/collection/immutable/HashSet;


# direct methods
.method public constructor <init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$HashSetCollision1<",
            "TA;>;)V"
        }
    .end annotation

    .line 390
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->$outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->that$2:Lscala/collection/immutable/HashSet;

    iput p3, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->level$2:I

    invoke-direct {p0}, Lscala/runtime/AbstractFunction1;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->apply(Ljava/lang/Object;)Z

    move-result p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->boxToBoolean(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)Z"
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->that$2:Lscala/collection/immutable/HashSet;

    iget-object v1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->$outer:Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {v1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    iget v2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;->level$2:I

    invoke-virtual {v0, p1, v1, v2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    return p1
.end method
