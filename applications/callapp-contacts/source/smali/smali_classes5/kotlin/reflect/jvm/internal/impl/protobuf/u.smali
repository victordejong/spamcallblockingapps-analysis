.class Lkotlin/reflect/jvm/internal/impl/protobuf/u;
.super Ljava/util/AbstractMap;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/protobuf/u$a;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/u$c;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;,
        Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K::",
        "Ljava/lang/Comparable<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/u<",
            "TK;TV;>.b;>;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field private d:Z

.field private volatile e:Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/reflect/jvm/internal/impl/protobuf/u<",
            "TK;TV;>.d;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 0

    .line 153
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 154
    iput p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a:I

    .line 155
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    .line 156
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(ILkotlin/reflect/jvm/internal/impl/protobuf/u$1;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;-><init>(I)V

    return-void
.end method

.method private a(Ljava/lang/Comparable;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)I"
        }
    .end annotation

    .line 316
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 322
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    .line 2416
    iget-object v1, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->a:Ljava/lang/Comparable;

    .line 322
    invoke-interface {p1, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-lez v1, :cond_0

    add-int/lit8 v0, v0, 0x2

    neg-int p1, v0

    return p1

    :cond_0
    if-nez v1, :cond_1

    return v0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_4

    add-int v2, v1, v0

    .line 331
    div-int/lit8 v2, v2, 0x2

    .line 332
    iget-object v3, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    .line 3416
    iget-object v3, v3, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->a:Ljava/lang/Comparable;

    .line 332
    invoke-interface {p1, v3}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_2

    add-int/lit8 v0, v2, -0x1

    goto :goto_0

    :cond_2
    if-lez v3, :cond_3

    add-int/lit8 v1, v2, 0x1

    goto :goto_0

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    neg-int p1, v1

    return p1
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/u;I)Ljava/lang/Object;
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static a(I)Lkotlin/reflect/jvm/internal/impl/protobuf/u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<FieldDescriptorType::",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/g$a<",
            "TFieldDescriptorType;>;>(I)",
            "Lkotlin/reflect/jvm/internal/impl/protobuf/u<",
            "TFieldDescriptorType;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 100
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$1;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$1;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)V
    .locals 0

    .line 87
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    return-void
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/List;
    .locals 0

    .line 87
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    return-object p0
.end method

.method private c(I)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .line 296
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 297
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 298
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/SortedMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 303
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-direct {v2, p0, v3}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;Ljava/util/Map$Entry;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    :cond_0
    return-object p1
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/protobuf/u;)Ljava/util/Map;
    .locals 0

    .line 87
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    return-object p0
.end method

.method private e()V
    .locals 1

    .line 364
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d:Z

    if-nez v0, :cond_0

    return-void

    .line 365
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method private f()Ljava/util/SortedMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 377
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 378
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/TreeMap;

    if-nez v0, :cond_0

    .line 379
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    .line 381
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    check-cast v0, Ljava/util/SortedMap;

    return-object v0
.end method

.method private g()V
    .locals 2

    .line 389
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 390
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    instance-of v0, v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/util/ArrayList;

    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 237
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 238
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 241
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 243
    :cond_0
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->g()V

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    .line 245
    iget v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a:I

    if-lt v0, v1, :cond_1

    .line 247
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->f()Ljava/util/SortedMap;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 250
    :cond_1
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a:I

    if-ne v1, v2, :cond_2

    .line 252
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    .line 253
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->f()Ljava/util/SortedMap;

    move-result-object v2

    .line 1416
    iget-object v3, v1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->a:Ljava/lang/Comparable;

    .line 253
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/SortedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_2
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    new-instance v2, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    invoke-direct {v2, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;Ljava/lang/Comparable;Ljava/lang/Object;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public a()V
    .locals 1

    .line 161
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d:Z

    if-nez v0, :cond_1

    .line 166
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    const/4 v0, 0x1

    .line 169
    iput-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d:Z

    :cond_1
    return-void
.end method

.method public final b(I)Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    return-object p1
.end method

.method public final b()Z
    .locals 1

    .line 175
    iget-boolean v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->d:Z

    return v0
.end method

.method public final c()I
    .locals 1

    .line 180
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public clear()V
    .locals 1

    .line 262
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 263
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 264
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 266
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 267
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 214
    check-cast p1, Ljava/lang/Comparable;

    .line 215
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-gez v0, :cond_1

    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final d()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$a;->a()Ljava/lang/Iterable;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;

    if-nez v0, :cond_0

    .line 354
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/u;Lkotlin/reflect/jvm/internal/impl/protobuf/u$1;)V

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;

    .line 356
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e:Lkotlin/reflect/jvm/internal/impl/protobuf/u$d;

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 227
    check-cast p1, Ljava/lang/Comparable;

    .line 228
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 230
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u$b;->getValue()Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 232
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 87
    check-cast p1, Ljava/lang/Comparable;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 279
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->e()V

    .line 281
    check-cast p1, Ljava/lang/Comparable;

    .line 282
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->a(Ljava/lang/Comparable;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 284
    invoke-direct {p0, v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 288
    :cond_0
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 291
    :cond_1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .locals 2

    .line 202
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/u;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
