.class public abstract Lcom/facebook/ads/redexgen/X/2U;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/ads/redexgen/X/2T;,
        Lcom/facebook/ads/redexgen/X/2R;,
        Lcom/facebook/ads/redexgen/X/2Q;,
        Lcom/facebook/ads/redexgen/X/2S;,
        Lcom/facebook/ads/redexgen/X/2P;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static A03:[Ljava/lang/String;


# instance fields
.field public A00:Lcom/facebook/ads/redexgen/X/2Q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2U<",
            "TK;TV;>.EntrySet;"
        }
    .end annotation
.end field

.field public A01:Lcom/facebook/ads/redexgen/X/2R;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2U<",
            "TK;TV;>.KeySet;"
        }
    .end annotation
.end field

.field public A02:Lcom/facebook/ads/redexgen/X/2T;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/ads/redexgen/X/2U<",
            "TK;TV;>.ValuesCollection;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/facebook/ads/redexgen/X/2U;->A00()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5417
    .local p0, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static A00()V
    .locals 3

    const/16 v0, 0x8

    new-array v2, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v0, "1zdW1KODsFltmNuWmrotTBJZ"

    aput-object v0, v2, v1

    const/4 v1, 0x1

    const-string v0, "RgZO4eFyMPRXq"

    aput-object v0, v2, v1

    const/4 v1, 0x2

    const-string v0, "TNHX835HuEpqCwzJlYfwEUi8GaEU5NHd"

    aput-object v0, v2, v1

    const/4 v1, 0x3

    const-string v0, "eVTb3p4k2JpJ0D4m3J9D4ZVPKPKe0wis"

    aput-object v0, v2, v1

    const/4 v1, 0x4

    const-string v0, "2WztFDsRGhQaALYpxh067UM8"

    aput-object v0, v2, v1

    const/4 v1, 0x5

    const-string v0, "jcxZvazs935Xr"

    aput-object v0, v2, v1

    const/4 v1, 0x6

    const-string v0, "SKBAj5hBfWgpr40k574HTlm5xQmSLGYw"

    aput-object v0, v2, v1

    const/4 v1, 0x7

    const-string v0, "jjH4wggc1wpWWLxRj5DmyzPuqk4QCdce"

    aput-object v0, v2, v1

    sput-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    return-void
.end method

.method public static A01(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 5418
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 5419
    .local p0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5420
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const/4 v0, 0x6

    aget-object v1, v2, v0

    const/4 v0, 0x2

    aget-object v2, v2, v0

    const/16 v0, 0x1d

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-eq v1, v0, :cond_1

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const-string v1, "cUAXgIbWxWmXM8IdimkoIKbOqppmM6Vz"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "Ax9eiVneWoZpIcbsPIrW3KpgweGiIvpy"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 5421
    const/4 v0, 0x0

    return v0

    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 5422
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static A02(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 5423
    .local v5, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    .line 5424
    .local p0, "oldSize":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5425
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5426
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    sget-object v1, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const/4 v0, 0x7

    aget-object v1, v1, v0

    const/16 v0, 0x9

    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v0, 0x77

    if-eq v1, v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_0
    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const-string v1, "E45UHwgrMTIMwaLYI7blxmvG7mW9Qs1w"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "z9os9R0vn0p5TampC1nMxoZk5TfunpzS"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    invoke-interface {p0, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5427
    :cond_1
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v4, v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static A03(Ljava/util/Map;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 5428
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local v5, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v4

    .line 5429
    .local p0, "oldSize":I
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 5430
    .local p1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TK;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5431
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const/4 v0, 0x4

    aget-object v1, v2, v0

    const/4 v0, 0x0

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const-string v1, "5v4gpohEe9mjCzRiIQv41Zeqn5qom46c"

    const/4 v0, 0x6

    aput-object v1, v2, v0

    const-string v1, "O6DgVsMjSRRAXWI9cjkKRDle2DCyXpBO"

    const/4 v0, 0x2

    aput-object v1, v2, v0

    if-nez v3, :cond_0

    .line 5432
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 5433
    :cond_2
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    if-eq v4, v0, :cond_3

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static A04(Ljava/util/Set;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 5434
    .local v2, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    const/4 v5, 0x1

    if-ne p0, p1, :cond_0

    .line 5435
    return v5

    .line 5436
    :cond_0
    instance-of v4, p1, Ljava/util/Set;

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const/4 v0, 0x5

    aget-object v1, v2, v0

    const/4 v0, 0x1

    aget-object v0, v2, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eq v1, v0, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    :cond_1
    sget-object v2, Lcom/facebook/ads/redexgen/X/2U;->A03:[Ljava/lang/String;

    const-string v1, "EyqH2KYHB8yq5zU8TINZ2CMR"

    const/4 v0, 0x4

    aput-object v1, v2, v0

    const-string v1, "l4DYdurHJXrazQVJZIOfW52E"

    const/4 v0, 0x0

    aput-object v1, v2, v0

    if-eqz v4, :cond_3

    .line 5437
    check-cast p1, Ljava/util/Set;

    .line 5438
    .local p1, "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :try_start_0
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v1, v0, :cond_2

    invoke-interface {p0, p1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    :goto_0
    return v5
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5439
    .local p0, "ignored":Ljava/lang/ClassCastException;
    :catch_0
    return v3

    .line 5440
    .end local p0    # "ignored":Ljava/lang/ClassCastException;
    .local p0, "ignored":Ljava/lang/NullPointerException;
    :catch_1
    return v3

    .line 5441
    .end local p0    # "ignored":Ljava/lang/NullPointerException;
    .end local p1    # "s":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_3
    return v3
.end method


# virtual methods
.method public abstract A05()I
.end method

.method public abstract A06(Ljava/lang/Object;)I
.end method

.method public abstract A07(Ljava/lang/Object;)I
.end method

.method public abstract A08(II)Ljava/lang/Object;
.end method

.method public abstract A09(ILjava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation
.end method

.method public final A0A()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 5442
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:Lcom/facebook/ads/redexgen/X/2T;

    if-nez v0, :cond_0

    .line 5443
    new-instance v0, Lcom/facebook/ads/redexgen/X/2T;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2T;-><init>(Lcom/facebook/ads/redexgen/X/2U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:Lcom/facebook/ads/redexgen/X/2T;

    .line 5444
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A02:Lcom/facebook/ads/redexgen/X/2T;

    return-object v0
.end method

.method public abstract A0B()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end method

.method public final A0C()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 5445
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:Lcom/facebook/ads/redexgen/X/2Q;

    if-nez v0, :cond_0

    .line 5446
    new-instance v0, Lcom/facebook/ads/redexgen/X/2Q;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2Q;-><init>(Lcom/facebook/ads/redexgen/X/2U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:Lcom/facebook/ads/redexgen/X/2Q;

    .line 5447
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A00:Lcom/facebook/ads/redexgen/X/2Q;

    return-object v0
.end method

.method public final A0D()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 5448
    .local v0, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:Lcom/facebook/ads/redexgen/X/2R;

    if-nez v0, :cond_0

    .line 5449
    new-instance v0, Lcom/facebook/ads/redexgen/X/2R;

    invoke-direct {v0, p0}, Lcom/facebook/ads/redexgen/X/2R;-><init>(Lcom/facebook/ads/redexgen/X/2U;)V

    iput-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:Lcom/facebook/ads/redexgen/X/2R;

    .line 5450
    :cond_0
    iget-object v0, p0, Lcom/facebook/ads/redexgen/X/2U;->A01:Lcom/facebook/ads/redexgen/X/2R;

    return-object v0
.end method

.method public abstract A0E()V
.end method

.method public abstract A0F(I)V
.end method

.method public abstract A0G(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method

.method public final A0H(I)[Ljava/lang/Object;
    .locals 4

    .line 5451
    .local v1, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->A05()I

    move-result v3

    .line 5452
    .local p0, "N":I
    new-array v2, v3, [Ljava/lang/Object;

    .line 5453
    .local p1, "result":[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 5454
    invoke-virtual {p0, v1, p1}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, v1

    .line 5455
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5456
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method public final A0I([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;I)[TT;"
        }
    .end annotation

    .line 5457
    .local v2, "this":Lcom/facebook/ads/redexgen/X/2U;, "Lcom/facebook/ads/internal/androidx/support/v4/util/MapCollections<TK;TV;>;"
    .local v0, "array":[Ljava/lang/Object;, "[TT;"
    invoke-virtual {p0}, Lcom/facebook/ads/redexgen/X/2U;->A05()I

    move-result v2

    .line 5458
    .local p0, "N":I
    array-length v0, p1

    if-ge v0, v2, :cond_0

    .line 5459
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    .line 5460
    .local p1, "newArray":[Ljava/lang/Object;, "[TT;"
    .end local p1    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    const/4 v1, 0x0

    .local p1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 5461
    invoke-virtual {p0, v1, p2}, Lcom/facebook/ads/redexgen/X/2U;->A08(II)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, p1, v1

    .line 5462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5463
    .end local p1    # "i":I
    :cond_1
    array-length v0, p1

    if-le v0, v2, :cond_2

    .line 5464
    const/4 v0, 0x0

    aput-object v0, p1, v2

    .line 5465
    :cond_2
    return-object p1
.end method
