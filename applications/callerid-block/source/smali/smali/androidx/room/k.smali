.class public Landroidx/room/k;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ld/r/a/e;
.implements Ld/r/a/d;


# static fields
.field static final j:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroidx/room/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile b:Ljava/lang/String;

.field final c:[J

.field final d:[D

.field final e:[Ljava/lang/String;

.field final f:[[B

.field private final g:[I

.field final h:I

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroidx/room/k;->j:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/room/k;->h:I

    add-int/lit8 p1, p1, 0x1

    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/k;->g:[I

    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/k;->c:[J

    new-array v0, p1, [D

    iput-object v0, p0, Landroidx/room/k;->d:[D

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/k;->e:[Ljava/lang/String;

    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/k;->f:[[B

    return-void
.end method

.method private static C()V
    .locals 3

    sget-object v0, Landroidx/room/k;->j:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    add-int/lit8 v2, v1, -0x1

    if-lez v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    move v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static x(Ljava/lang/String;I)Landroidx/room/k;
    .locals 3

    sget-object v0, Landroidx/room/k;->j:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/k;

    invoke-virtual {v1, p0, p1}, Landroidx/room/k;->B(Ljava/lang/String;I)V

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Landroidx/room/k;

    invoke-direct {v0, p1}, Landroidx/room/k;-><init>(I)V

    invoke-virtual {v0, p0, p1}, Landroidx/room/k;->B(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method B(Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Landroidx/room/k;->b:Ljava/lang/String;

    iput p2, p0, Landroidx/room/k;->i:I

    return-void
.end method

.method public F()V
    .locals 2

    sget-object v0, Landroidx/room/k;->j:Ljava/util/TreeMap;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroidx/room/k;->h:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroidx/room/k;->C()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public H(IJ)V
    .locals 2

    iget-object v0, p0, Landroidx/room/k;->g:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/k;->c:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public L(I[B)V
    .locals 2

    iget-object v0, p0, Landroidx/room/k;->g:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/k;->f:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/room/k;->b:Ljava/lang/String;

    return-object v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public o(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroidx/room/k;->g:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/k;->e:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public p(Ld/r/a/d;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Landroidx/room/k;->i:I

    if-gt v1, v2, :cond_5

    iget-object v2, p0, Landroidx/room/k;->g:[I

    aget v2, v2, v1

    if-eq v2, v0, :cond_4

    const/4 v3, 0x2

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Landroidx/room/k;->f:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Ld/r/a/d;->L(I[B)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroidx/room/k;->e:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Ld/r/a/d;->o(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroidx/room/k;->d:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Ld/r/a/d;->y(ID)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Landroidx/room/k;->c:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Ld/r/a/d;->H(IJ)V

    goto :goto_1

    :cond_4
    invoke-interface {p1, v1}, Ld/r/a/d;->w(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public w(I)V
    .locals 2

    iget-object v0, p0, Landroidx/room/k;->g:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public y(ID)V
    .locals 2

    iget-object v0, p0, Landroidx/room/k;->g:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    iget-object v0, p0, Landroidx/room/k;->d:[D

    aput-wide p2, v0, p1

    return-void
.end method
