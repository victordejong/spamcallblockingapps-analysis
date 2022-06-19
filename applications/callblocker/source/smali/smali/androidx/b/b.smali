.class public final Landroidx/b/b;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final c:[I

.field private static final d:[Ljava/lang/Object;

.field private static e:[Ljava/lang/Object;

.field private static f:I

.field private static g:[Ljava/lang/Object;

.field private static h:I


# instance fields
.field a:[Ljava/lang/Object;

.field b:I

.field private i:[I

.field private j:Landroidx/b/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/b/f",
            "<TE;TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 50
    new-array v0, v1, [I

    sput-object v0, Landroidx/b/b;->c:[I

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/b;->d:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 240
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/b/b;-><init>(I)V

    .line 241
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 247
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 248
    if-nez p1, :cond_0

    .line 249
    sget-object v0, Landroidx/b/b;->c:[I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 250
    sget-object v0, Landroidx/b/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 254
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/b/b;->b:I

    .line 255
    return-void

    .line 252
    :cond_0
    invoke-direct {p0, p1}, Landroidx/b/b;->d(I)V

    goto :goto_0
.end method

.method private a()I
    .locals 4

    .prologue
    .line 121
    iget v2, p0, Landroidx/b/b;->b:I

    .line 124
    if-nez v2, :cond_1

    .line 125
    const/4 v0, -0x1

    .line 155
    :cond_0
    :goto_0
    return v0

    .line 128
    :cond_1
    iget-object v0, p0, Landroidx/b/b;->i:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/b/c;->a([III)I

    move-result v0

    .line 131
    if-ltz v0, :cond_0

    .line 136
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    .line 142
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/b/b;->i:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    .line 143
    iget-object v3, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 142
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 147
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/b/b;->i:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    .line 148
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    .line 147
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 155
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private a(Ljava/lang/Object;I)I
    .locals 4

    .prologue
    .line 83
    iget v2, p0, Landroidx/b/b;->b:I

    .line 86
    if-nez v2, :cond_1

    .line 87
    const/4 v0, -0x1

    .line 117
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    iget-object v0, p0, Landroidx/b/b;->i:[I

    invoke-static {v0, v2, p2}, Landroidx/b/c;->a([III)I

    move-result v0

    .line 93
    if-ltz v0, :cond_0

    .line 98
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/b/b;->i:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    .line 105
    iget-object v3, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 104
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/b/b;->i:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    .line 110
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 109
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 117
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 200
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 201
    const-class v1, Landroidx/b/b;

    monitor-enter v1

    .line 202
    :try_start_0
    sget v0, Landroidx/b/b;->h:I

    if-ge v0, v2, :cond_1

    .line 203
    const/4 v0, 0x0

    sget-object v2, Landroidx/b/b;->g:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 204
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 205
    add-int/lit8 v0, p2, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 206
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 205
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 208
    :cond_0
    sput-object p1, Landroidx/b/b;->g:[Ljava/lang/Object;

    .line 209
    sget v0, Landroidx/b/b;->h:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/b/b;->h:I

    .line 215
    :cond_1
    monitor-exit v1

    .line 233
    :cond_2
    :goto_1
    return-void

    .line 215
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 216
    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 217
    const-class v1, Landroidx/b/b;

    monitor-enter v1

    .line 218
    :try_start_1
    sget v0, Landroidx/b/b;->f:I

    if-ge v0, v2, :cond_5

    .line 219
    const/4 v0, 0x0

    sget-object v2, Landroidx/b/b;->e:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 220
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 221
    add-int/lit8 v0, p2, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    .line 222
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 221
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 224
    :cond_4
    sput-object p1, Landroidx/b/b;->e:[Ljava/lang/Object;

    .line 225
    sget v0, Landroidx/b/b;->f:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/b/b;->f:I

    .line 231
    :cond_5
    monitor-exit v1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private b()Landroidx/b/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/b/f",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 634
    iget-object v0, p0, Landroidx/b/b;->j:Landroidx/b/f;

    if-nez v0, :cond_0

    .line 635
    new-instance v0, Landroidx/b/b$1;

    invoke-direct {v0, p0}, Landroidx/b/b$1;-><init>(Landroidx/b/b;)V

    iput-object v0, p0, Landroidx/b/b;->j:Landroidx/b/f;

    .line 682
    :cond_0
    iget-object v0, p0, Landroidx/b/b;->j:Landroidx/b/f;

    return-object v0
.end method

.method private d(I)V
    .locals 5

    .prologue
    .line 160
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 161
    const-class v1, Landroidx/b/b;

    monitor-enter v1

    .line 162
    :try_start_0
    sget-object v0, Landroidx/b/b;->g:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 163
    sget-object v2, Landroidx/b/b;->g:[Ljava/lang/Object;

    .line 164
    iput-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 165
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/b;->g:[Ljava/lang/Object;

    .line 166
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 167
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 168
    sget v0, Landroidx/b/b;->h:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/b/b;->h:I

    .line 173
    monitor-exit v1

    .line 196
    :goto_0
    return-void

    .line 175
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 194
    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 195
    new-array v0, p1, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    goto :goto_0

    .line 175
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 176
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 177
    const-class v1, Landroidx/b/b;

    monitor-enter v1

    .line 178
    :try_start_2
    sget-object v0, Landroidx/b/b;->e:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 179
    sget-object v2, Landroidx/b/b;->e:[Ljava/lang/Object;

    .line 180
    iput-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 181
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/b;->e:[Ljava/lang/Object;

    .line 182
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 183
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 184
    sget v0, Landroidx/b/b;->f:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/b/b;->f:I

    .line 189
    monitor-exit v1

    goto :goto_0

    .line 191
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 325
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroidx/b/b;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/b/b;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 295
    iget-object v0, p0, Landroidx/b/b;->i:[I

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 296
    iget-object v0, p0, Landroidx/b/b;->i:[I

    .line 297
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 298
    invoke-direct {p0, p1}, Landroidx/b/b;->d(I)V

    .line 299
    iget v2, p0, Landroidx/b/b;->b:I

    if-lez v2, :cond_0

    .line 300
    iget-object v2, p0, Landroidx/b/b;->i:[I

    iget v3, p0, Landroidx/b/b;->b:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 301
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroidx/b/b;->b:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 303
    :cond_0
    iget v2, p0, Landroidx/b/b;->b:I

    invoke-static {v0, v1, v2}, Landroidx/b/b;->a([I[Ljava/lang/Object;I)V

    .line 305
    :cond_1
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 359
    if-nez p1, :cond_0

    .line 361
    invoke-direct {p0}, Landroidx/b/b;->a()I

    move-result v3

    move v4, v2

    .line 366
    :goto_0
    if-ltz v3, :cond_1

    move v0, v2

    .line 402
    :goto_1
    return v0

    .line 363
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    .line 364
    invoke-direct {p0, p1, v4}, Landroidx/b/b;->a(Ljava/lang/Object;I)I

    move-result v3

    goto :goto_0

    .line 370
    :cond_1
    xor-int/lit8 v3, v3, -0x1

    .line 371
    iget v5, p0, Landroidx/b/b;->b:I

    iget-object v6, p0, Landroidx/b/b;->i:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 372
    iget v5, p0, Landroidx/b/b;->b:I

    if-lt v5, v0, :cond_6

    iget v0, p0, Landroidx/b/b;->b:I

    iget v1, p0, Landroidx/b/b;->b:I

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v0, v1

    .line 377
    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/b/b;->i:[I

    .line 378
    iget-object v5, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 379
    invoke-direct {p0, v0}, Landroidx/b/b;->d(I)V

    .line 381
    iget-object v0, p0, Landroidx/b/b;->i:[I

    array-length v0, v0

    if-lez v0, :cond_3

    .line 383
    iget-object v0, p0, Landroidx/b/b;->i:[I

    array-length v6, v1

    invoke-static {v1, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 384
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    array-length v6, v5

    invoke-static {v5, v2, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 387
    :cond_3
    iget v0, p0, Landroidx/b/b;->b:I

    invoke-static {v1, v5, v0}, Landroidx/b/b;->a([I[Ljava/lang/Object;I)V

    .line 390
    :cond_4
    iget v0, p0, Landroidx/b/b;->b:I

    if-ge v3, v0, :cond_5

    .line 395
    iget-object v0, p0, Landroidx/b/b;->i:[I

    iget-object v1, p0, Landroidx/b/b;->i:[I

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Landroidx/b/b;->b:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 396
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    add-int/lit8 v2, v3, 0x1

    iget v5, p0, Landroidx/b/b;->b:I

    sub-int/2addr v5, v3

    invoke-static {v0, v3, v1, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 399
    :cond_5
    iget-object v0, p0, Landroidx/b/b;->i:[I

    aput v4, v0, v3

    .line 400
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aput-object p1, v0, v3

    .line 401
    iget v0, p0, Landroidx/b/b;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/b;->b:I

    .line 402
    const/4 v0, 0x1

    goto :goto_1

    .line 372
    :cond_6
    iget v5, p0, Landroidx/b/b;->b:I

    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 719
    iget v0, p0, Landroidx/b/b;->b:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroidx/b/b;->a(I)V

    .line 720
    const/4 v0, 0x0

    .line 721
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 722
    invoke-virtual {p0, v2}, Landroidx/b/b;->add(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 723
    goto :goto_0

    .line 724
    :cond_0
    return v0
.end method

.method public b(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v4, 0x0

    .line 447
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 448
    iget v2, p0, Landroidx/b/b;->b:I

    const/4 v3, 0x1

    if-gt v2, v3, :cond_1

    .line 451
    iget-object v0, p0, Landroidx/b/b;->i:[I

    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v3, p0, Landroidx/b/b;->b:I

    invoke-static {v0, v2, v3}, Landroidx/b/b;->a([I[Ljava/lang/Object;I)V

    .line 452
    sget-object v0, Landroidx/b/b;->c:[I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 453
    sget-object v0, Landroidx/b/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 454
    iput v4, p0, Landroidx/b/b;->b:I

    .line 494
    :cond_0
    :goto_0
    return-object v1

    .line 456
    :cond_1
    iget-object v2, p0, Landroidx/b/b;->i:[I

    array-length v2, v2

    if-le v2, v0, :cond_4

    iget v2, p0, Landroidx/b/b;->b:I

    iget-object v3, p0, Landroidx/b/b;->i:[I

    array-length v3, v3

    div-int/lit8 v3, v3, 0x3

    if-ge v2, v3, :cond_4

    .line 460
    iget v2, p0, Landroidx/b/b;->b:I

    if-le v2, v0, :cond_2

    iget v0, p0, Landroidx/b/b;->b:I

    iget v2, p0, Landroidx/b/b;->b:I

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    .line 464
    :cond_2
    iget-object v2, p0, Landroidx/b/b;->i:[I

    .line 465
    iget-object v3, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 466
    invoke-direct {p0, v0}, Landroidx/b/b;->d(I)V

    .line 468
    iget v0, p0, Landroidx/b/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/b/b;->b:I

    .line 469
    if-lez p1, :cond_3

    .line 471
    iget-object v0, p0, Landroidx/b/b;->i:[I

    invoke-static {v2, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 472
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    invoke-static {v3, v4, v0, v4, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 474
    :cond_3
    iget v0, p0, Landroidx/b/b;->b:I

    if-ge p1, v0, :cond_0

    .line 479
    add-int/lit8 v0, p1, 0x1

    iget-object v4, p0, Landroidx/b/b;->i:[I

    iget v5, p0, Landroidx/b/b;->b:I

    sub-int/2addr v5, p1

    invoke-static {v2, v0, v4, p1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 480
    add-int/lit8 v0, p1, 0x1

    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/b/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v3, v0, v2, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 483
    :cond_4
    iget v0, p0, Landroidx/b/b;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/b/b;->b:I

    .line 484
    iget v0, p0, Landroidx/b/b;->b:I

    if-ge p1, v0, :cond_5

    .line 488
    iget-object v0, p0, Landroidx/b/b;->i:[I

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroidx/b/b;->i:[I

    iget v4, p0, Landroidx/b/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 489
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v4, p0, Landroidx/b/b;->b:I

    sub-int/2addr v4, p1

    invoke-static {v0, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 491
    :cond_5
    iget-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroidx/b/b;->b:I

    const/4 v3, 0x0

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public clear()V
    .locals 3

    .prologue
    .line 282
    iget v0, p0, Landroidx/b/b;->b:I

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Landroidx/b/b;->i:[I

    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroidx/b/b;->b:I

    invoke-static {v0, v1, v2}, Landroidx/b/b;->a([I[Ljava/lang/Object;I)V

    .line 284
    sget-object v0, Landroidx/b/b;->c:[I

    iput-object v0, p0, Landroidx/b/b;->i:[I

    .line 285
    sget-object v0, Landroidx/b/b;->d:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Landroidx/b/b;->b:I

    .line 288
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 315
    invoke-virtual {p0, p1}, Landroidx/b/b;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 705
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 706
    invoke-virtual {p0, v1}, Landroidx/b/b;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 707
    const/4 v0, 0x0

    .line 710
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 559
    if-ne p0, p1, :cond_1

    .line 582
    :cond_0
    :goto_0
    return v0

    .line 562
    :cond_1
    instance-of v2, p1, Ljava/util/Set;

    if-eqz v2, :cond_4

    .line 563
    check-cast p1, Ljava/util/Set;

    .line 564
    invoke-virtual {p0}, Landroidx/b/b;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 565
    goto :goto_0

    :cond_2
    move v2, v1

    .line 569
    :goto_1
    :try_start_0
    iget v3, p0, Landroidx/b/b;->b:I

    if-ge v2, v3, :cond_0

    .line 570
    invoke-virtual {p0, v2}, Landroidx/b/b;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 571
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_3

    move v0, v1

    .line 572
    goto :goto_0

    .line 569
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 575
    :catch_0
    move-exception v0

    move v0, v1

    .line 576
    goto :goto_0

    .line 577
    :catch_1
    move-exception v0

    move v0, v1

    .line 578
    goto :goto_0

    :cond_4
    move v0, v1

    .line 582
    goto :goto_0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 590
    iget-object v3, p0, Landroidx/b/b;->i:[I

    .line 592
    iget v4, p0, Landroidx/b/b;->b:I

    move v0, v1

    move v2, v1

    :goto_0
    if-ge v0, v4, :cond_0

    .line 593
    aget v1, v3, v0

    add-int/2addr v1, v2

    .line 592
    add-int/lit8 v0, v0, 0x1

    move v2, v1

    goto :goto_0

    .line 595
    :cond_0
    return v2
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 343
    iget v0, p0, Landroidx/b/b;->b:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 694
    invoke-direct {p0}, Landroidx/b/b;->b()Landroidx/b/f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/b/f;->e()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 433
    invoke-virtual {p0, p1}, Landroidx/b/b;->a(Ljava/lang/Object;)I

    move-result v0

    .line 434
    if-ltz v0, :cond_0

    .line 435
    invoke-virtual {p0, v0}, Landroidx/b/b;->c(I)Ljava/lang/Object;

    .line 436
    const/4 v0, 0x1

    .line 438
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 734
    const/4 v0, 0x0

    .line 735
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 736
    invoke-virtual {p0, v2}, Landroidx/b/b;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    .line 737
    goto :goto_0

    .line 738
    :cond_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 749
    const/4 v0, 0x0

    .line 750
    iget v1, p0, Landroidx/b/b;->b:I

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 751
    iget-object v2, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 752
    invoke-virtual {p0, v1}, Landroidx/b/b;->c(I)Ljava/lang/Object;

    .line 753
    const/4 v0, 0x1

    .line 750
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 756
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 522
    iget v0, p0, Landroidx/b/b;->b:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 528
    iget v0, p0, Landroidx/b/b;->b:I

    new-array v0, v0, [Ljava/lang/Object;

    .line 529
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroidx/b/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 530
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 536
    array-length v0, p1

    iget v1, p0, Landroidx/b/b;->b:I

    if-ge v0, v1, :cond_1

    .line 538
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    iget v1, p0, Landroidx/b/b;->b:I

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 541
    :goto_0
    iget-object v1, p0, Landroidx/b/b;->a:[Ljava/lang/Object;

    iget v2, p0, Landroidx/b/b;->b:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 542
    array-length v1, v0

    iget v2, p0, Landroidx/b/b;->b:I

    if-le v1, v2, :cond_0

    .line 543
    iget v1, p0, Landroidx/b/b;->b:I

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 545
    :cond_0
    return-object v0

    :cond_1
    move-object v0, p1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 607
    invoke-virtual {p0}, Landroidx/b/b;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 608
    const-string/jumbo v0, "{}"

    .line 625
    :goto_0
    return-object v0

    .line 611
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/b/b;->b:I

    mul-int/lit8 v0, v0, 0xe

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 612
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 613
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/b/b;->b:I

    if-ge v0, v2, :cond_3

    .line 614
    if-lez v0, :cond_1

    .line 615
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 617
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/b/b;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 618
    if-eq v2, p0, :cond_2

    .line 619
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 621
    :cond_2
    const-string/jumbo v2, "(this Set)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 624
    :cond_3
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 625
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
