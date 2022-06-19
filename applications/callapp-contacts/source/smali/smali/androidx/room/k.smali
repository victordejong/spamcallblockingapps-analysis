.class public final Landroidx/room/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/sqlite/db/c;
.implements Landroidx/sqlite/db/d;


# static fields
.field static final h:Ljava/util/TreeMap;
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
.field final a:[J

.field final b:[D

.field final c:[Ljava/lang/String;

.field final d:[[B

.field public final e:[I

.field final f:I

.field g:I

.field private volatile i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    sput-object v0, Landroidx/room/k;->h:Ljava/util/TreeMap;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 1

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    iput p1, p0, Landroidx/room/k;->f:I

    add-int/lit8 p1, p1, 0x1

    .line 161
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/room/k;->e:[I

    .line 162
    new-array v0, p1, [J

    iput-object v0, p0, Landroidx/room/k;->a:[J

    .line 163
    new-array v0, p1, [D

    iput-object v0, p0, Landroidx/room/k;->b:[D

    .line 164
    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Landroidx/room/k;->c:[Ljava/lang/String;

    .line 165
    new-array p1, p1, [[B

    iput-object p1, p0, Landroidx/room/k;->d:[[B

    return-void
.end method

.method public static a(Ljava/lang/String;I)Landroidx/room/k;
    .locals 3

    .line 141
    sget-object v0, Landroidx/room/k;->h:Ljava/util/TreeMap;

    monitor-enter v0

    .line 143
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/TreeMap;->ceilingEntry(Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 145
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/TreeMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/room/k;

    .line 147
    invoke-direct {v1, p0, p1}, Landroidx/room/k;->b(Ljava/lang/String;I)V

    .line 148
    monitor-exit v0

    return-object v1

    .line 150
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    new-instance v0, Landroidx/room/k;

    invoke-direct {v0, p1}, Landroidx/room/k;-><init>(I)V

    .line 152
    invoke-direct {v0, p0, p1}, Landroidx/room/k;->b(Ljava/lang/String;I)V

    return-object v0

    :catchall_0
    move-exception p0

    .line 150
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private b(Ljava/lang/String;I)V
    .locals 0

    .line 170
    iput-object p1, p0, Landroidx/room/k;->i:Ljava/lang/String;

    .line 171
    iput p2, p0, Landroidx/room/k;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    .line 182
    sget-object v0, Landroidx/room/k;->h:Ljava/util/TreeMap;

    monitor-enter v0

    .line 183
    :try_start_0
    iget v1, p0, Landroidx/room/k;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    const/16 v2, 0xf

    if-le v1, v2, :cond_0

    .line 1190
    invoke-virtual {v0}, Ljava/util/TreeMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0xa

    .line 1191
    invoke-virtual {v0}, Ljava/util/TreeMap;->descendingKeySet()Ljava/util/NavigableSet;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    add-int/lit8 v3, v1, -0x1

    if-lez v1, :cond_0

    .line 1193
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1194
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V

    move v1, v3

    goto :goto_0

    .line 185
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final a(I)V
    .locals 2

    .line 234
    iget-object v0, p0, Landroidx/room/k;->e:[I

    const/4 v1, 0x1

    aput v1, v0, p1

    return-void
.end method

.method public final a(ID)V
    .locals 2

    .line 245
    iget-object v0, p0, Landroidx/room/k;->e:[I

    const/4 v1, 0x3

    aput v1, v0, p1

    .line 246
    iget-object v0, p0, Landroidx/room/k;->b:[D

    aput-wide p2, v0, p1

    return-void
.end method

.method public final a(IJ)V
    .locals 2

    .line 239
    iget-object v0, p0, Landroidx/room/k;->e:[I

    const/4 v1, 0x2

    aput v1, v0, p1

    .line 240
    iget-object v0, p0, Landroidx/room/k;->a:[J

    aput-wide p2, v0, p1

    return-void
.end method

.method public final a(ILjava/lang/String;)V
    .locals 2

    .line 251
    iget-object v0, p0, Landroidx/room/k;->e:[I

    const/4 v1, 0x4

    aput v1, v0, p1

    .line 252
    iget-object v0, p0, Landroidx/room/k;->c:[Ljava/lang/String;

    aput-object p2, v0, p1

    return-void
.end method

.method public final a(I[B)V
    .locals 2

    .line 257
    iget-object v0, p0, Landroidx/room/k;->e:[I

    const/4 v1, 0x5

    aput v1, v0, p1

    .line 258
    iget-object v0, p0, Landroidx/room/k;->d:[[B

    aput-object p2, v0, p1

    return-void
.end method

.method public final a(Landroidx/sqlite/db/c;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x1

    .line 211
    :goto_0
    iget v2, p0, Landroidx/room/k;->g:I

    if-gt v1, v2, :cond_5

    .line 212
    iget-object v2, p0, Landroidx/room/k;->e:[I

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

    .line 226
    :cond_0
    iget-object v2, p0, Landroidx/room/k;->d:[[B

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/c;->a(I[B)V

    goto :goto_1

    .line 223
    :cond_1
    iget-object v2, p0, Landroidx/room/k;->c:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/c;->a(ILjava/lang/String;)V

    goto :goto_1

    .line 220
    :cond_2
    iget-object v2, p0, Landroidx/room/k;->b:[D

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Landroidx/sqlite/db/c;->a(ID)V

    goto :goto_1

    .line 217
    :cond_3
    iget-object v2, p0, Landroidx/room/k;->a:[J

    aget-wide v3, v2, v1

    invoke-interface {p1, v1, v3, v4}, Landroidx/sqlite/db/c;->a(IJ)V

    goto :goto_1

    .line 214
    :cond_4
    invoke-interface {p1, v1}, Landroidx/sqlite/db/c;->a(I)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 201
    iget-object v0, p0, Landroidx/room/k;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method
