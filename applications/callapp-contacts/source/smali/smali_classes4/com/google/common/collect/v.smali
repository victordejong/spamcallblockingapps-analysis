.class public abstract Lcom/google/common/collect/v;
.super Lcom/google/common/collect/t;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Ljava/util/RandomAccess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/v$a;,
        Lcom/google/common/collect/v$c;,
        Lcom/google/common/collect/v$d;,
        Lcom/google/common/collect/v$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/t<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;",
        "Ljava/util/RandomAccess;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/common/collect/az;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/az<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 373
    new-instance v0, Lcom/google/common/collect/v$b;

    sget-object v1, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/v;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/v$b;-><init>(Lcom/google/common/collect/v;I)V

    sput-object v0, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/az;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/google/common/collect/t;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    .line 2209
    invoke-static {v1, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 2336
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    .line 4209
    invoke-static {v1, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 4336
    array-length p1, p0

    invoke-static {p0, p1}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;TE;TE;TE;TE;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x5

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 p0, 0x1

    aput-object p1, v1, p0

    const/4 p0, 0x2

    aput-object p2, v1, p0

    const/4 p0, 0x3

    aput-object p3, v1, p0

    const/4 p0, 0x4

    aput-object p4, v1, p0

    .line 6209
    invoke-static {v1, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 6336
    array-length p1, p0

    invoke-static {p0, p1}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Collection;)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 239
    instance-of v0, p0, Lcom/google/common/collect/t;

    if-eqz v0, :cond_1

    .line 241
    check-cast p0, Lcom/google/common/collect/t;

    invoke-virtual {p0}, Lcom/google/common/collect/t;->e()Lcom/google/common/collect/v;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lcom/google/common/collect/v;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/common/collect/v;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 7336
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    :cond_0
    return-object p0

    .line 244
    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    .line 9209
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 9336
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/Comparator;Ljava/lang/Iterable;)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 317
    invoke-static {p0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12342
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 12343
    check-cast p1, Ljava/util/Collection;

    goto :goto_0

    .line 12344
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 14082
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13142
    invoke-static {v0, p1}, Lcom/google/common/collect/ab;->a(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-object p1, v0

    .line 12333
    :goto_0
    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    .line 14209
    array-length v0, p1

    invoke-static {p1, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 321
    invoke-static {p1, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 14336
    array-length p0, p1

    invoke-static {p1, p0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method public static a([Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 272
    array-length v0, p0

    if-nez v0, :cond_0

    .line 10068
    sget-object p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/v;

    return-object p0

    .line 274
    :cond_0
    invoke-virtual {p0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 11209
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/am;->a([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p0

    .line 11336
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 336
    array-length v0, p0

    invoke-static {p0, v0}, Lcom/google/common/collect/v;->b([Ljava/lang/Object;I)Lcom/google/common/collect/v;

    move-result-object p0

    return-object p0
.end method

.method static b([Ljava/lang/Object;I)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([",
            "Ljava/lang/Object;",
            "I)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 15068
    sget-object p0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/v;

    return-object p0

    .line 344
    :cond_0
    new-instance v0, Lcom/google/common/collect/ao;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/ao;-><init>([Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static g()Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 68
    sget-object v0, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/v;

    return-object v0
.end method

.method public static i()Lcom/google/common/collect/v$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/common/collect/v$a<",
            "TE;>;"
        }
    .end annotation

    .line 676
    new-instance v0, Lcom/google/common/collect/v$a;

    invoke-direct {v0}, Lcom/google/common/collect/v$a;-><init>()V

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 663
    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method a([Ljava/lang/Object;I)I
    .locals 4

    .line 548
    invoke-virtual {p0}, Lcom/google/common/collect/v;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, p2, v1

    .line 550
    invoke-virtual {p0, v1}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr p2, v0

    return p2
.end method

.method public final a()Lcom/google/common/collect/ay;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ay<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 15358
    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Lcom/google/common/collect/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/az<",
            "TE;>;"
        }
    .end annotation

    .line 364
    invoke-virtual {p0}, Lcom/google/common/collect/v;->size()I

    move-result v0

    invoke-static {p1, v0}, Lcom/google/common/base/m;->b(II)I

    .line 365
    invoke-virtual {p0}, Lcom/google/common/collect/v;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 366
    sget-object p1, Lcom/google/common/collect/v;->a:Lcom/google/common/collect/az;

    return-object p1

    .line 368
    :cond_0
    new-instance v0, Lcom/google/common/collect/v$b;

    invoke-direct {v0, p0, p1}, Lcom/google/common/collect/v$b;-><init>(Lcom/google/common/collect/v;I)V

    return-object v0
.end method

.method public a(II)Lcom/google/common/collect/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    .line 414
    invoke-virtual {p0}, Lcom/google/common/collect/v;->size()I

    move-result v0

    invoke-static {p1, p2, v0}, Lcom/google/common/base/m;->a(III)V

    sub-int/2addr p2, p1

    .line 416
    invoke-virtual {p0}, Lcom/google/common/collect/v;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    .line 16068
    sget-object p1, Lcom/google/common/collect/ao;->a:Lcom/google/common/collect/v;

    return-object p1

    .line 16430
    :cond_1
    new-instance v0, Lcom/google/common/collect/v$d;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/v$d;-><init>(Lcom/google/common/collect/v;II)V

    return-object v0
.end method

.method public final add(ILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 518
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 491
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 402
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final e()Lcom/google/common/collect/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/v<",
            "TE;>;"
        }
    .end annotation

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 16953
    invoke-static {p0}, Lcom/google/common/base/m;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    .line 16956
    :cond_0
    instance-of v0, p1, Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 16959
    check-cast p1, Ljava/util/List;

    .line 16960
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    .line 16961
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    .line 16964
    instance-of v3, p1, Ljava/util/RandomAccess;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 16967
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1

    .line 16973
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 17263
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 17264
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 17267
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 17268
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 17269
    invoke-static {v3, v4}, Lcom/google/common/base/j;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_1

    .line 17273
    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v2
.end method

.method public final h()Lcom/google/common/collect/az;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/az<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 358
    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 634
    invoke-virtual {p0}, Lcom/google/common/collect/v;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 636
    invoke-virtual {p0, v2}, Lcom/google/common/collect/v;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v1, v3

    not-int v1, v1

    not-int v1, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 3

    if-eqz p1, :cond_3

    .line 16004
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :goto_0
    if-ge v1, v0, :cond_3

    .line 16007
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, v0, :cond_3

    .line 16013
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    .line 17358
    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    if-eqz p1, :cond_3

    if-nez p1, :cond_1

    .line 16038
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_3

    .line 16039
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 16044
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 16045
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public synthetic listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    .line 18358
    invoke-virtual {p0, v0}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object v0

    return-object v0
.end method

.method public synthetic listIterator(I)Ljava/util/ListIterator;
    .locals 0

    .line 56
    invoke-virtual {p0, p1}, Lcom/google/common/collect/v;->a(I)Lcom/google/common/collect/az;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 532
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 505
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public synthetic subList(II)Ljava/util/List;
    .locals 0

    .line 56
    invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/v;->a(II)Lcom/google/common/collect/v;

    move-result-object p1

    return-object p1
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 2

    .line 668
    new-instance v0, Lcom/google/common/collect/v$c;

    invoke-virtual {p0}, Lcom/google/common/collect/v;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/common/collect/v$c;-><init>([Ljava/lang/Object;)V

    return-object v0
.end method
