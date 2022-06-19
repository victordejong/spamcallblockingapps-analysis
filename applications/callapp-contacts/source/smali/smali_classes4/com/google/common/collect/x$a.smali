.class public final Lcom/google/common/collect/x$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
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


# instance fields
.field a:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-TV;>;"
        }
    .end annotation
.end field

.field b:[Ljava/lang/Object;

.field c:I

.field d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x4

    .line 225
    invoke-direct {p0, v0}, Lcom/google/common/collect/x$a;-><init>(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 229
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    mul-int/lit8 p1, p1, 0x2

    .line 230
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 231
    iput p1, p0, Lcom/google/common/collect/x$a;->c:I

    .line 232
    iput-boolean p1, p0, Lcom/google/common/collect/x$a;->d:Z

    return-void
.end method

.method private b()V
    .locals 7

    .line 360
    iget-object v0, p0, Lcom/google/common/collect/x$a;->a:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 361
    iget-boolean v0, p0, Lcom/google/common/collect/x$a;->d:Z

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/x$a;->c:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    .line 364
    :cond_0
    iget v0, p0, Lcom/google/common/collect/x$a;->c:I

    new-array v0, v0, [Ljava/util/Map$Entry;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 365
    :goto_0
    iget v3, p0, Lcom/google/common/collect/x$a;->c:I

    if-ge v2, v3, :cond_1

    .line 366
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v4, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    mul-int/lit8 v5, v2, 0x2

    aget-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    aget-object v4, v4, v5

    invoke-direct {v3, v6, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 370
    :cond_1
    iget-object v2, p0, Lcom/google/common/collect/x$a;->a:Ljava/util/Comparator;

    .line 371
    invoke-static {v2}, Lcom/google/common/collect/an;->a(Ljava/util/Comparator;)Lcom/google/common/collect/an;

    move-result-object v2

    .line 1108
    sget-object v4, Lcom/google/common/collect/ag$a;->VALUE:Lcom/google/common/collect/ag$a;

    .line 371
    invoke-virtual {v2, v4}, Lcom/google/common/collect/an;->a(Lcom/google/common/base/Function;)Lcom/google/common/collect/an;

    move-result-object v2

    .line 370
    invoke-static {v0, v1, v3, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 372
    :goto_1
    iget v2, p0, Lcom/google/common/collect/x$a;->c:I

    if-ge v1, v2, :cond_2

    .line 373
    iget-object v2, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    mul-int/lit8 v3, v1, 0x2

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    .line 374
    iget-object v2, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    aget-object v4, v0, v1

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/x$a;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/x$a<",
            "TK;TV;>;"
        }
    .end annotation

    .line 252
    iget v0, p0, Lcom/google/common/collect/x$a;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/common/collect/x$a;->a(I)V

    .line 253
    invoke-static {p1, p2}, Lcom/google/common/collect/i;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 254
    iget-object v0, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    iget v1, p0, Lcom/google/common/collect/x$a;->c:I

    mul-int/lit8 v2, v1, 0x2

    aput-object p1, v0, v2

    mul-int/lit8 p1, v1, 0x2

    add-int/lit8 p1, p1, 0x1

    .line 255
    aput-object p2, v0, p1

    add-int/lit8 v1, v1, 0x1

    .line 256
    iput v1, p0, Lcom/google/common/collect/x$a;->c:I

    return-object p0
.end method

.method public final a()Lcom/google/common/collect/x;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/x<",
            "TK;TV;>;"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lcom/google/common/collect/x$a;->b()V

    const/4 v0, 0x1

    .line 355
    iput-boolean v0, p0, Lcom/google/common/collect/x$a;->d:Z

    .line 356
    iget v0, p0, Lcom/google/common/collect/x$a;->c:I

    iget-object v1, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/ap;->a(I[Ljava/lang/Object;)Lcom/google/common/collect/ap;

    move-result-object v0

    return-object v0
.end method

.method final a(I)V
    .locals 2

    mul-int/lit8 p1, p1, 0x2

    .line 236
    iget-object v0, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    array-length v1, v0

    if-le p1, v1, :cond_0

    .line 237
    array-length v1, v0

    .line 240
    invoke-static {v1, p1}, Lcom/google/common/collect/t$b;->a(II)I

    move-result p1

    .line 238
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/collect/x$a;->b:[Ljava/lang/Object;

    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/google/common/collect/x$a;->d:Z

    :cond_0
    return-void
.end method
