.class public Lscala/collection/immutable/HashSet$HashSetCollision1;
.super Lscala/collection/immutable/HashSet$LeafHashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashSetCollision1"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Lscala/collection/immutable/HashSet$LeafHashSet<",
        "TA;>;"
    }
.end annotation


# instance fields
.field private final hash:I

.field private final ks:Lscala/collection/immutable/ListSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILscala/collection/immutable/ListSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;)V"
        }
    .end annotation

    .line 325
    iput p1, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash:I

    iput-object p2, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks:Lscala/collection/immutable/ListSet;

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$LeafHashSet;-><init>()V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    .line 480
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "cannot deserialize an immutable.HashSet where all items have the same 32-bit hash code"

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    .line 475
    sget-object p1, Lscala/sys/package$;->MODULE$:Lscala/sys/package$;

    const-string v0, "cannot serialize an immutable.HashSet where all items have the same 32-bit hash code"

    invoke-virtual {p1, v0}, Lscala/sys/package$;->error(Ljava/lang/String;)Lscala/runtime/Nothing$;

    move-result-object p1

    throw p1
.end method


# virtual methods
.method public diff0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 415
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p3

    new-instance p4, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$2;

    invoke-direct {p4, p0, p1, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$2;-><init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V

    invoke-virtual {p3, p4}, Lscala/collection/immutable/ListSet;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lscala/collection/immutable/ListSet;

    .line 416
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->size()I

    move-result p2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    .line 420
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    move-object p1, p0

    goto :goto_1

    :cond_1
    const/4 p3, 0x1

    if-ne p3, p2, :cond_2

    .line 427
    new-instance p2, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    .line 430
    :cond_2
    new-instance p2, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p2, p3, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    :goto_0
    move-object p1, p2

    :goto_1
    return-object p1
.end method

.method public filter0(Lscala/Function1;ZI[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/Function1<",
            "TA;",
            "Ljava/lang/Object;",
            ">;ZI[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 454
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListSet;->filterNot(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListSet;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p1

    :goto_0
    check-cast p1, Lscala/collection/immutable/ListSet;

    .line 455
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->size()I

    move-result p2

    if-eqz p2, :cond_3

    const/4 p3, 0x1

    if-eq p2, p3, :cond_2

    .line 460
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p3

    invoke-virtual {p3}, Lscala/collection/immutable/ListSet;->size()I

    move-result p3

    if-ne p2, p3, :cond_1

    move-object p2, p0

    goto :goto_1

    .line 463
    :cond_1
    new-instance p2, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p2, p3, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    goto :goto_1

    .line 459
    :cond_2
    new-instance p2, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p2, p1, p3}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    return-object p2
.end method

.method public foreach(Lscala/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Lscala/Function1<",
            "TA;TU;>;)V"
        }
    .end annotation

    .line 468
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->foreach(Lscala/Function1;)V

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .line 330
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hash()I
    .locals 1

    .line 325
    iget v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash:I

    return v0
.end method

.method public intersect0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 390
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p3

    new-instance p4, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;

    invoke-direct {p4, p0, p1, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$1;-><init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V

    invoke-virtual {p3, p4}, Lscala/collection/immutable/ListSet;->filter(Lscala/Function1;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lscala/collection/immutable/ListSet;

    .line 391
    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->size()I

    move-result p3

    if-nez p3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 395
    :cond_0
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->size()I

    move-result p4

    if-ne p3, p4, :cond_1

    move-object p1, p0

    goto :goto_0

    .line 400
    :cond_1
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet;->size()I

    move-result p4

    if-ne p3, p4, :cond_2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    if-ne p1, p3, :cond_3

    .line 407
    new-instance p1, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p1, p2, p3}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    goto :goto_0

    .line 410
    :cond_3
    new-instance p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    invoke-direct {p1, p3, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    :goto_0
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 467
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->iterator()Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public ks()Lscala/collection/immutable/ListSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/immutable/ListSet<",
            "TA;>;"
        }
    .end annotation

    .line 325
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks:Lscala/collection/immutable/ListSet;

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 435
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_3

    .line 436
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p3

    invoke-virtual {p3, p1}, Lscala/collection/immutable/ListSet;->$minus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    .line 437
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->size()I

    move-result p3

    if-eqz p3, :cond_2

    const/4 v0, 0x1

    if-eq p3, v0, :cond_1

    .line 444
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    if-ne p3, v0, :cond_0

    goto :goto_0

    .line 449
    :cond_0
    new-instance p3, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    goto :goto_1

    .line 443
    :cond_1
    new-instance p3, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->head()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    move-object p3, p0

    :goto_1
    return-object p3
.end method

.method public size()I
    .locals 1

    .line 327
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    return v0
.end method

.method public subsetOf0(Lscala/collection/immutable/HashSet;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)Z"
        }
    .end annotation

    .line 337
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    new-instance v1, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;

    invoke-direct {v1, p0, p1, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1$$anonfun$subsetOf0$1;-><init>(Lscala/collection/immutable/HashSet$HashSetCollision1;Lscala/collection/immutable/HashSet;I)V

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListSet;->forall(Lscala/Function1;)Z

    move-result p1

    return p1
.end method

.method public union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet$LeafHashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 344
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->hash()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 348
    sget-object v2, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->hash()I

    move-result v5

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p1

    goto :goto_1

    .line 349
    :cond_0
    instance-of p2, p1, Lscala/collection/immutable/HashSet$HashSet1;

    if-eqz p2, :cond_2

    check-cast p1, Lscala/collection/immutable/HashSet$HashSet1;

    .line 350
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    .line 352
    invoke-virtual {p1}, Lscala/collection/immutable/ListSet;->size()I

    move-result p2

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    if-ne p2, v0, :cond_1

    :goto_0
    move-object p1, p0

    goto :goto_1

    .line 357
    :cond_1
    new-instance p2, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v0

    invoke-direct {p2, v0, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    move-object p1, p2

    goto :goto_1

    .line 359
    :cond_2
    instance-of p2, p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    if-eqz p2, :cond_5

    check-cast p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    .line 360
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {p2, v0}, Lscala/collection/immutable/ListSet;->$plus$plus(Lscala/collection/GenTraversableOnce;)Lscala/collection/immutable/ListSet;

    move-result-object p2

    .line 361
    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    .line 362
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 367
    :cond_3
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    goto :goto_1

    .line 373
    :cond_4
    new-instance p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v0

    invoke-direct {p1, v0, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    :goto_1
    return-object p1

    .line 344
    :cond_5
    new-instance p2, Lscala/MatchError;

    invoke-direct {p2, p1}, Lscala/MatchError;-><init>(Ljava/lang/Object;)V

    throw p2
.end method

.method public union0(Lscala/collection/immutable/HashSet;I[Lscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I[",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;I)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 377
    instance-of p3, p1, Lscala/collection/immutable/HashSet$LeafHashSet;

    if-eqz p3, :cond_0

    check-cast p1, Lscala/collection/immutable/HashSet$LeafHashSet;

    .line 380
    invoke-virtual {p0, p1, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1;->union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    goto :goto_0

    .line 381
    :cond_0
    instance-of p3, p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    if-eqz p3, :cond_1

    check-cast p1, Lscala/collection/immutable/HashSet$HashTrieSet;

    .line 384
    invoke-virtual {p1, p0, p2}, Lscala/collection/immutable/HashSet$HashTrieSet;->union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 341
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_0

    new-instance p3, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    goto :goto_0

    .line 342
    :cond_0
    sget-object v0, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSetCollision1;->hash()I

    move-result v1

    new-instance v4, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v4, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    move-object v2, p0

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p3

    :goto_0
    return-object p3
.end method
