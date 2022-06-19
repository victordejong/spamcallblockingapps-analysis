.class public Lscala/collection/immutable/HashSet$HashSet1;
.super Lscala/collection/immutable/HashSet$LeafHashSet;
.source "HashSet.scala"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lscala/collection/immutable/HashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HashSet1"
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

.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;I)V"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lscala/collection/immutable/HashSet$HashSet1;->key:Ljava/lang/Object;

    iput p2, p0, Lscala/collection/immutable/HashSet$HashSet1;->hash:I

    invoke-direct {p0}, Lscala/collection/immutable/HashSet$LeafHashSet;-><init>()V

    return-void
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

    .line 313
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result p4

    invoke-virtual {p1, p3, p4, p2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
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

    .line 319
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {p1, p3}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lscala/runtime/BoxesRunTime;->unboxToBoolean(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, p2

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
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

    .line 322
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Lscala/Function1;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public get0(Ljava/lang/Object;II)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)Z"
        }
    .end annotation

    .line 260
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public hash()I
    .locals 1

    .line 256
    iget v0, p0, Lscala/collection/immutable/HashSet$HashSet1;->hash:I

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

    .line 310
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result p4

    invoke-virtual {p1, p3, p4, p2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object p1, p0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public iterator()Lscala/collection/Iterator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lscala/collection/Iterator<",
            "TA;>;"
        }
    .end annotation

    .line 321
    sget-object v0, Lscala/collection/Iterator$;->MODULE$:Lscala/collection/Iterator$;

    sget-object v1, Lscala/Predef$;->MODULE$:Lscala/Predef$;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lscala/Predef$;->genericWrapArray(Ljava/lang/Object;)Lscala/collection/mutable/WrappedArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/Iterator$;->apply(Lscala/collection/Seq;)Lscala/collection/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public key()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    .line 256
    iget-object v0, p0, Lscala/collection/immutable/HashSet$HashSet1;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public removed0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result p3

    if-ne p2, p3, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    instance-of p3, p1, Ljava/lang/Number;

    if-eqz p3, :cond_2

    check-cast p1, Ljava/lang/Number;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_2
    instance-of p3, p1, Ljava/lang/Character;

    if-eqz p3, :cond_3

    check-cast p1, Ljava/lang/Character;

    invoke-static {p1, p2}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p1

    goto :goto_0

    :cond_3
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    :goto_0
    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    move-object p1, p0

    :goto_1
    return-object p1
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x1

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

    .line 267
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v1

    invoke-virtual {p1, v0, v1, p2}, Lscala/collection/immutable/HashSet;->get0(Ljava/lang/Object;II)Z

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

    .line 281
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->hash()I

    move-result v0

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 285
    sget-object v2, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v3

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$LeafHashSet;->hash()I

    move-result v5

    move-object v4, p0

    move-object v6, p1

    move v7, p2

    invoke-virtual/range {v2 .. v7}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p1

    goto/16 :goto_1

    .line 286
    :cond_0
    instance-of p2, p1, Lscala/collection/immutable/HashSet$HashSet1;

    if-eqz p2, :cond_6

    check-cast p1, Lscala/collection/immutable/HashSet$HashSet1;

    .line 287
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    const/4 p2, 0x0

    goto :goto_0

    :cond_2
    instance-of v1, p2, Ljava/lang/Number;

    if-eqz v1, :cond_3

    check-cast p2, Ljava/lang/Number;

    invoke-static {p2, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_3
    instance-of v1, p2, Ljava/lang/Character;

    if-eqz v1, :cond_4

    check-cast p2, Ljava/lang/Character;

    invoke-static {p2, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result p2

    goto :goto_0

    :cond_4
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    :goto_0
    if-eqz p2, :cond_5

    move-object p1, p0

    goto :goto_1

    .line 291
    :cond_5
    new-instance p2, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    sget-object v1, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v1}, Lscala/collection/immutable/ListSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v1

    check-cast v1, Lscala/collection/immutable/ListSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    move-object p1, p2

    goto :goto_1

    .line 293
    :cond_6
    instance-of p2, p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    if-eqz p2, :cond_8

    check-cast p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    .line 294
    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object p2

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p2

    .line 296
    invoke-virtual {p2}, Lscala/collection/immutable/ListSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;->ks()Lscala/collection/immutable/ListSet;

    move-result-object v1

    invoke-virtual {v1}, Lscala/collection/immutable/ListSet;->size()I

    move-result v1

    if-ne v0, v1, :cond_7

    goto :goto_1

    .line 299
    :cond_7
    new-instance p1, Lscala/collection/immutable/HashSet$HashSetCollision1;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    invoke-direct {p1, v0, p2}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    :goto_1
    return-object p1

    .line 281
    :cond_8
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

    .line 306
    invoke-virtual {p1, p0, p2}, Lscala/collection/immutable/HashSet;->union0(Lscala/collection/immutable/HashSet$LeafHashSet;I)Lscala/collection/immutable/HashSet;

    move-result-object p1

    return-object p1
.end method

.method public updated0(Ljava/lang/Object;II)Lscala/collection/immutable/HashSet;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)",
            "Lscala/collection/immutable/HashSet<",
            "TA;>;"
        }
    .end annotation

    .line 271
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    if-ne p2, v0, :cond_4

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, Ljava/lang/Number;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsNumObject(Ljava/lang/Number;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_2
    instance-of v1, p1, Ljava/lang/Character;

    if-eqz v1, :cond_3

    move-object v1, p1

    check-cast v1, Ljava/lang/Character;

    invoke-static {v1, v0}, Lscala/runtime/BoxesRunTime;->equalsCharObject(Ljava/lang/Character;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_4

    move-object p1, p0

    goto :goto_1

    .line 273
    :cond_4
    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v0

    if-eq p2, v0, :cond_5

    .line 274
    sget-object v1, Lscala/collection/immutable/HashSet$;->MODULE$:Lscala/collection/immutable/HashSet$;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->hash()I

    move-result v2

    new-instance v5, Lscala/collection/immutable/HashSet$HashSet1;

    invoke-direct {v5, p1, p2}, Lscala/collection/immutable/HashSet$HashSet1;-><init>(Ljava/lang/Object;I)V

    move-object v3, p0

    move v4, p2

    move v6, p3

    invoke-virtual/range {v1 .. v6}, Lscala/collection/immutable/HashSet$;->scala$collection$immutable$HashSet$$makeHashTrieSet(ILscala/collection/immutable/HashSet;ILscala/collection/immutable/HashSet;I)Lscala/collection/immutable/HashSet$HashTrieSet;

    move-result-object p1

    goto :goto_1

    .line 277
    :cond_5
    new-instance p3, Lscala/collection/immutable/HashSet$HashSetCollision1;

    sget-object v0, Lscala/collection/immutable/ListSet$;->MODULE$:Lscala/collection/immutable/ListSet$;

    invoke-virtual {v0}, Lscala/collection/immutable/ListSet$;->empty()Lscala/collection/immutable/Set;

    move-result-object v0

    check-cast v0, Lscala/collection/immutable/ListSet;

    invoke-virtual {p0}, Lscala/collection/immutable/HashSet$HashSet1;->key()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Lscala/collection/immutable/ListSet;->$plus(Ljava/lang/Object;)Lscala/collection/immutable/ListSet;

    move-result-object p1

    invoke-direct {p3, p2, p1}, Lscala/collection/immutable/HashSet$HashSetCollision1;-><init>(ILscala/collection/immutable/ListSet;)V

    move-object p1, p3

    :goto_1
    return-object p1
.end method
