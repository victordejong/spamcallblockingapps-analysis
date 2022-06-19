.class final Lcom/google/common/collect/k;
.super Ljava/util/AbstractMap;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/k$e;,
        Lcom/google/common/collect/k$d;,
        Lcom/google/common/collect/k$a;,
        Lcom/google/common/collect/k$c;,
        Lcom/google/common/collect/k$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final d:Ljava/lang/Object;


# instance fields
.field transient a:[I

.field transient b:[Ljava/lang/Object;

.field transient c:[Ljava/lang/Object;

.field private transient e:Ljava/lang/Object;

.field private transient f:I

.field private transient g:I

.field private transient h:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation
.end field

.field private transient i:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private transient j:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 102
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/google/common/collect/k;->d:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 180
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v0, 0x3

    .line 181
    invoke-direct {p0, v0}, Lcom/google/common/collect/k;->d(I)V

    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    .line 190
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->d(I)V

    return-void
.end method

.method private a(IIII)I
    .locals 8

    .line 380
    invoke-static {p2}, Lcom/google/common/collect/l;->a(I)Ljava/lang/Object;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    if-eqz p4, :cond_0

    and-int/2addr p3, p2

    add-int/lit8 p4, p4, 0x1

    .line 385
    invoke-static {v0, p3, p4}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;II)V

    .line 388
    :cond_0
    iget-object p3, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    .line 389
    iget-object p4, p0, Lcom/google/common/collect/k;->a:[I

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_2

    .line 393
    invoke-static {p3, v1}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;I)I

    move-result v2

    :goto_1
    if-eqz v2, :cond_1

    add-int/lit8 v3, v2, -0x1

    .line 396
    aget v4, p4, v3

    not-int v5, p1

    and-int/2addr v5, v4

    or-int/2addr v5, v1

    and-int v6, v5, p2

    .line 402
    invoke-static {v0, v6}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;I)I

    move-result v7

    .line 403
    invoke-static {v0, v6, v2}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;II)V

    .line 404
    invoke-static {v5, v7, p2}, Lcom/google/common/collect/l;->a(III)I

    move-result v2

    aput v2, p4, v3

    and-int v2, v4, p1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_2
    iput-object v0, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    .line 411
    invoke-direct {p0, p2}, Lcom/google/common/collect/k;->e(I)V

    return p2
.end method

.method static synthetic a(Lcom/google/common/collect/k;)I
    .locals 0

    .line 75
    iget p0, p0, Lcom/google/common/collect/k;->f:I

    return p0
.end method

.method private a(Ljava/lang/Object;)I
    .locals 7

    .line 416
    invoke-virtual {p0}, Lcom/google/common/collect/k;->b()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    return v1

    .line 419
    :cond_0
    invoke-static {p1}, Lcom/google/common/collect/s;->a(Ljava/lang/Object;)I

    move-result v0

    .line 420
    invoke-direct {p0}, Lcom/google/common/collect/k;->h()I

    move-result v2

    .line 421
    iget-object v3, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    and-int v4, v0, v2

    invoke-static {v3, v4}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;I)I

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    not-int v4, v2

    and-int/2addr v0, v4

    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 428
    iget-object v5, p0, Lcom/google/common/collect/k;->a:[I

    aget v5, v5, v3

    and-int v6, v5, v4

    if-ne v6, v0, :cond_3

    .line 429
    iget-object v6, p0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aget-object v6, v6, v3

    .line 430
    invoke-static {p1, v6}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    return v3

    :cond_3
    and-int v3, v5, v2

    if-nez v3, :cond_2

    return v1
.end method

.method public static a()Lcom/google/common/collect/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/k<",
            "TK;TV;>;"
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0}, Lcom/google/common/collect/k;-><init>()V

    return-object v0
.end method

.method public static a(I)Lcom/google/common/collect/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lcom/google/common/collect/k<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    new-instance v0, Lcom/google/common/collect/k;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k;-><init>(I)V

    return-object v0
.end method

.method static synthetic a(Lcom/google/common/collect/k;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/common/collect/k;)I
    .locals 0

    .line 75
    invoke-direct {p0}, Lcom/google/common/collect/k;->h()I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/google/common/collect/k;Ljava/lang/Object;)I
    .locals 0

    .line 75
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 474
    invoke-virtual {p0}, Lcom/google/common/collect/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    sget-object p1, Lcom/google/common/collect/k;->d:Ljava/lang/Object;

    return-object p1

    .line 477
    :cond_0
    invoke-direct {p0}, Lcom/google/common/collect/k;->h()I

    move-result v7

    const/4 v1, 0x0

    .line 478
    iget-object v3, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/common/collect/k;->a:[I

    iget-object v5, p0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    const/4 v6, 0x0

    move-object v0, p1

    move v2, v7

    .line 479
    invoke-static/range {v0 .. v6}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;[I[Ljava/lang/Object;[Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 482
    sget-object p1, Lcom/google/common/collect/k;->d:Ljava/lang/Object;

    return-object p1

    .line 485
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    .line 487
    invoke-virtual {p0, p1, v7}, Lcom/google/common/collect/k;->a(II)V

    .line 488
    iget p1, p0, Lcom/google/common/collect/k;->g:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/common/collect/k;->g:I

    .line 489
    invoke-virtual {p0}, Lcom/google/common/collect/k;->d()V

    return-object v0
.end method

.method static c(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method static synthetic c(Lcom/google/common/collect/k;)Ljava/lang/Object;
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/google/common/collect/k;)I
    .locals 2

    .line 75
    iget v0, p0, Lcom/google/common/collect/k;->g:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/k;->g:I

    return v0
.end method

.method private d(I)V
    .locals 3

    const/4 v0, 0x1

    if-ltz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Expected size must be >= 0"

    .line 195
    invoke-static {v1, v2}, Lcom/google/common/base/m;->a(ZLjava/lang/Object;)V

    .line 198
    invoke-static {p1, v0}, Lcom/google/common/b/b;->a(II)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k;->f:I

    return-void
.end method

.method private e(I)V
    .locals 2

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 p1, p1, 0x20

    .line 257
    iget v0, p0, Lcom/google/common/collect/k;->f:I

    const/16 v1, 0x1f

    .line 258
    invoke-static {v0, p1, v1}, Lcom/google/common/collect/l;->a(III)I

    move-result p1

    iput p1, p0, Lcom/google/common/collect/k;->f:I

    return-void
.end method

.method static synthetic g()Ljava/lang/Object;
    .locals 1

    .line 75
    sget-object v0, Lcom/google/common/collect/k;->d:Ljava/lang/Object;

    return-object v0
.end method

.method private h()I
    .locals 2

    .line 263
    iget v0, p0, Lcom/google/common/collect/k;->f:I

    and-int/lit8 v0, v0, 0x1f

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    return v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 923
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 924
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    if-ltz v0, :cond_1

    .line 928
    invoke-direct {p0, v0}, Lcom/google/common/collect/k;->d(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 930
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v2

    .line 931
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 932
    invoke-virtual {p0, v2, v3}, Lcom/google/common/collect/k;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 926
    :cond_1
    new-instance p1, Ljava/io/InvalidObjectException;

    const/16 v1, 0x19

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Invalid size: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 911
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 912
    invoke-virtual {p0}, Lcom/google/common/collect/k;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 913
    invoke-virtual {p0}, Lcom/google/common/collect/k;->f()Ljava/util/Iterator;

    move-result-object v0

    .line 914
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 915
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 916
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 917
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method final a(II)V
    .locals 7

    .line 498
    invoke-virtual {p0}, Lcom/google/common/collect/k;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ge p1, v0, :cond_2

    .line 501
    iget-object v3, p0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aget-object v4, v3, v0

    .line 502
    aput-object v4, v3, p1

    .line 503
    iget-object v5, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object v6, v5, v0

    aput-object v6, v5, p1

    .line 504
    aput-object v2, v3, v0

    .line 505
    aput-object v2, v5, v0

    .line 508
    iget-object v2, p0, Lcom/google/common/collect/k;->a:[I

    aget v3, v2, v0

    aput v3, v2, p1

    .line 509
    aput v1, v2, v0

    .line 512
    invoke-static {v4}, Lcom/google/common/collect/s;->a(Ljava/lang/Object;)I

    move-result v1

    and-int/2addr v1, p2

    .line 513
    iget-object v2, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    invoke-static {v2, v1}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;I)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    if-ne v2, v0, :cond_0

    .line 517
    iget-object p2, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p2, v1, p1}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;II)V

    return-void

    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 524
    iget-object v1, p0, Lcom/google/common/collect/k;->a:[I

    aget v3, v1, v2

    and-int v4, v3, p2

    if-ne v4, v0, :cond_1

    add-int/lit8 p1, p1, 0x1

    .line 528
    invoke-static {v3, p1, p2}, Lcom/google/common/collect/l;->a(III)I

    move-result p1

    aput p1, v1, v2

    return-void

    :cond_1
    move v2, v4

    goto :goto_0

    .line 531
    :cond_2
    iget-object p2, p0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 532
    iget-object p2, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aput-object v2, p2, p1

    .line 533
    iget-object p2, p0, Lcom/google/common/collect/k;->a:[I

    aput v1, p2, p1

    return-void
.end method

.method final b(I)I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 542
    iget v0, p0, Lcom/google/common/collect/k;->g:I

    if-ge p1, v0, :cond_0

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method

.method final b()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method final c()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 228
    iget-object v0, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    instance-of v1, v0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 229
    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final clear()V
    .locals 5

    .line 890
    invoke-virtual {p0}, Lcom/google/common/collect/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 893
    :cond_0
    invoke-virtual {p0}, Lcom/google/common/collect/k;->d()V

    .line 894
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 897
    invoke-virtual {p0}, Lcom/google/common/collect/k;->size()I

    move-result v3

    const/4 v4, 0x3

    invoke-static {v3, v4}, Lcom/google/common/b/b;->a(II)I

    move-result v3

    iput v3, p0, Lcom/google/common/collect/k;->f:I

    .line 898
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 899
    iput-object v1, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    .line 900
    iput v2, p0, Lcom/google/common/collect/k;->g:I

    return-void

    .line 902
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/k;->g:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 903
    iget-object v0, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    iget v3, p0, Lcom/google/common/collect/k;->g:I

    invoke-static {v0, v2, v3, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 904
    iget-object v0, p0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    .line 11090
    instance-of v1, v0, [B

    if-eqz v1, :cond_2

    .line 11091
    check-cast v0, [B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    goto :goto_0

    .line 11092
    :cond_2
    instance-of v1, v0, [S

    if-eqz v1, :cond_3

    .line 11093
    check-cast v0, [S

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([SS)V

    goto :goto_0

    .line 11095
    :cond_3
    check-cast v0, [I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    .line 905
    :goto_0
    iget-object v0, p0, Lcom/google/common/collect/k;->a:[I

    iget v1, p0, Lcom/google/common/collect/k;->g:I

    invoke-static {v0, v2, v1, v2}, Ljava/util/Arrays;->fill([IIII)V

    .line 906
    iput v2, p0, Lcom/google/common/collect/k;->g:I

    return-void
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 440
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 441
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final containsValue(Ljava/lang/Object;)Z
    .locals 3

    .line 807
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 809
    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 811
    :goto_0
    iget v2, p0, Lcom/google/common/collect/k;->g:I

    if-ge v1, v2, :cond_2

    .line 812
    iget-object v2, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-static {p1, v2}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method final d()V
    .locals 1

    .line 267
    iget v0, p0, Lcom/google/common/collect/k;->f:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/collect/k;->f:I

    return-void
.end method

.method final e()I
    .locals 1

    .line 538
    invoke-virtual {p0}, Lcom/google/common/collect/k;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 659
    iget-object v0, p0, Lcom/google/common/collect/k;->i:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 10663
    new-instance v0, Lcom/google/common/collect/k$a;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k$a;-><init>(Lcom/google/common/collect/k;)V

    .line 659
    iput-object v0, p0, Lcom/google/common/collect/k;->i:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method final f()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 726
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 728
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    .line 730
    :cond_0
    new-instance v0, Lcom/google/common/collect/k$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k$2;-><init>(Lcom/google/common/collect/k;)V

    return-object v0
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 447
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 449
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 451
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->a(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 456
    :cond_1
    iget-object v0, p0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public final isEmpty()Z
    .locals 1

    .line 802
    invoke-virtual {p0}, Lcom/google/common/collect/k;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/google/common/collect/k;->h:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 10607
    new-instance v0, Lcom/google/common/collect/k$c;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k$c;-><init>(Lcom/google/common/collect/k;)V

    .line 603
    iput-object v0, p0, Lcom/google/common/collect/k;->h:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 282
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->b()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 1210
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->b()Z

    move-result v3

    const-string v5, "Arrays already allocated"

    invoke-static {v3, v5}, Lcom/google/common/base/m;->b(ZLjava/lang/Object;)V

    .line 1212
    iget v3, v0, Lcom/google/common/collect/k;->f:I

    const/4 v5, 0x4

    add-int/lit8 v6, v3, 0x1

    const/4 v7, 0x2

    .line 3062
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 3063
    invoke-static {v6}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    int-to-double v10, v7

    mul-double v10, v10, v8

    double-to-int v8, v10

    if-le v6, v8, :cond_0

    shl-int/lit8 v7, v7, 0x1

    if-gtz v7, :cond_0

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_0

    :cond_0
    move v6, v7

    .line 2070
    :goto_0
    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1214
    invoke-static {v5}, Lcom/google/common/collect/l;->a(I)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, v0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    sub-int/2addr v5, v4

    .line 1215
    invoke-direct {v0, v5}, Lcom/google/common/collect/k;->e(I)V

    .line 1217
    new-array v5, v3, [I

    iput-object v5, v0, Lcom/google/common/collect/k;->a:[I

    .line 1218
    new-array v5, v3, [Ljava/lang/Object;

    iput-object v5, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    .line 1219
    new-array v3, v3, [Ljava/lang/Object;

    iput-object v3, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    .line 285
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 287
    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 289
    :cond_2
    iget-object v3, v0, Lcom/google/common/collect/k;->a:[I

    .line 290
    iget-object v5, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    .line 291
    iget-object v6, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    .line 293
    iget v7, v0, Lcom/google/common/collect/k;->g:I

    add-int/lit8 v8, v7, 0x1

    .line 295
    invoke-static/range {p1 .. p1}, Lcom/google/common/collect/s;->a(Ljava/lang/Object;)I

    move-result v9

    .line 296
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/k;->h()I

    move-result v10

    and-int v11, v9, v10

    .line 298
    iget-object v12, v0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    invoke-static {v12, v11}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;I)I

    move-result v12

    if-nez v12, :cond_4

    if-le v8, v10, :cond_3

    .line 302
    invoke-static {v10}, Lcom/google/common/collect/l;->b(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/common/collect/k;->a(IIII)I

    move-result v10

    goto :goto_3

    .line 304
    :cond_3
    iget-object v3, v0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    invoke-static {v3, v11, v8}, Lcom/google/common/collect/l;->a(Ljava/lang/Object;II)V

    goto :goto_3

    :cond_4
    not-int v11, v10

    and-int v15, v9, v11

    const/16 v16, 0x0

    :goto_1
    sub-int/2addr v12, v4

    .line 313
    aget v13, v3, v12

    and-int v14, v13, v11

    if-ne v14, v15, :cond_5

    .line 314
    aget-object v14, v5, v12

    .line 315
    invoke-static {v1, v14}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 318
    aget-object v1, v6, v12

    .line 320
    aput-object v2, v6, v12

    return-object v1

    :cond_5
    and-int v14, v13, v10

    move-object/from16 v17, v5

    add-int/lit8 v5, v16, 0x1

    if-nez v14, :cond_a

    const/16 v6, 0x9

    if-lt v5, v6, :cond_7

    .line 4242
    invoke-direct/range {p0 .. p0}, Lcom/google/common/collect/k;->h()I

    move-result v3

    add-int/2addr v3, v4

    .line 5235
    new-instance v4, Ljava/util/LinkedHashMap;

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-direct {v4, v3, v5}, Ljava/util/LinkedHashMap;-><init>(IF)V

    .line 4243
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->e()I

    move-result v3

    :goto_2
    if-ltz v3, :cond_6

    .line 4244
    iget-object v5, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aget-object v5, v5, v3

    iget-object v6, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aget-object v6, v6, v3

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4243
    invoke-virtual {v0, v3}, Lcom/google/common/collect/k;->b(I)I

    move-result v3

    goto :goto_2

    .line 4246
    :cond_6
    iput-object v4, v0, Lcom/google/common/collect/k;->e:Ljava/lang/Object;

    const/4 v3, 0x0

    .line 4247
    iput-object v3, v0, Lcom/google/common/collect/k;->a:[I

    .line 4248
    iput-object v3, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    .line 4249
    iput-object v3, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    .line 4250
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->d()V

    .line 329
    invoke-interface {v4, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_7
    if-le v8, v10, :cond_8

    .line 334
    invoke-static {v10}, Lcom/google/common/collect/l;->b(I)I

    move-result v3

    invoke-direct {v0, v10, v3, v9, v7}, Lcom/google/common/collect/k;->a(IIII)I

    move-result v10

    goto :goto_3

    .line 336
    :cond_8
    invoke-static {v13, v8, v10}, Lcom/google/common/collect/l;->a(III)I

    move-result v5

    aput v5, v3, v12

    .line 5357
    :goto_3
    iget-object v3, v0, Lcom/google/common/collect/k;->a:[I

    array-length v3, v3

    if-le v8, v3, :cond_9

    const v5, 0x3fffffff    # 1.9999999f

    ushr-int/lit8 v6, v3, 0x1

    .line 5361
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v6, v3

    or-int/2addr v4, v6

    invoke-static {v5, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-eq v4, v3, :cond_9

    .line 5373
    iget-object v3, v0, Lcom/google/common/collect/k;->a:[I

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/k;->a:[I

    .line 5374
    iget-object v3, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    .line 5375
    iget-object v3, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v3

    iput-object v3, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    .line 6350
    :cond_9
    iget-object v3, v0, Lcom/google/common/collect/k;->a:[I

    const/4 v12, 0x0

    invoke-static {v9, v12, v10}, Lcom/google/common/collect/l;->a(III)I

    move-result v4

    aput v4, v3, v7

    .line 6351
    iget-object v3, v0, Lcom/google/common/collect/k;->b:[Ljava/lang/Object;

    aput-object v1, v3, v7

    .line 6352
    iget-object v1, v0, Lcom/google/common/collect/k;->c:[Ljava/lang/Object;

    aput-object v2, v1, v7

    .line 341
    iput v8, v0, Lcom/google/common/collect/k;->g:I

    .line 342
    invoke-virtual/range {p0 .. p0}, Lcom/google/common/collect/k;->d()V

    const/4 v13, 0x0

    return-object v13

    :cond_a
    move/from16 v16, v5

    move v12, v14

    move-object/from16 v5, v17

    goto/16 :goto_1
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 464
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 466
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 468
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/common/collect/k;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 469
    sget-object v0, Lcom/google/common/collect/k;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    :cond_1
    return-object p1
.end method

.method public final size()I
    .locals 1

    .line 796
    invoke-virtual {p0}, Lcom/google/common/collect/k;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 797
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/google/common/collect/k;->g:I

    return v0
.end method

.method public final values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 823
    iget-object v0, p0, Lcom/google/common/collect/k;->j:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 10827
    new-instance v0, Lcom/google/common/collect/k$e;

    invoke-direct {v0, p0}, Lcom/google/common/collect/k$e;-><init>(Lcom/google/common/collect/k;)V

    .line 823
    iput-object v0, p0, Lcom/google/common/collect/k;->j:Ljava/util/Collection;

    :cond_0
    return-object v0
.end method
