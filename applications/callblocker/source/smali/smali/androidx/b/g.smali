.class public Landroidx/b/g;
.super Ljava/lang/Object;
.source "SimpleArrayMap.java"


# annotations
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
.field static b:[Ljava/lang/Object;

.field static c:I

.field static d:[Ljava/lang/Object;

.field static e:I


# instance fields
.field f:[I

.field g:[Ljava/lang/Object;

.field h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    sget-object v0, Landroidx/b/c;->a:[I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 238
    sget-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 239
    const/4 v0, 0x0

    iput v0, p0, Landroidx/b/g;->h:I

    .line 240
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 247
    if-nez p1, :cond_0

    .line 248
    sget-object v0, Landroidx/b/c;->a:[I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 249
    sget-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 253
    :goto_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/b/g;->h:I

    .line 254
    return-void

    .line 251
    :cond_0
    invoke-direct {p0, p1}, Landroidx/b/g;->e(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroidx/b/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/g",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 260
    invoke-direct {p0}, Landroidx/b/g;-><init>()V

    .line 261
    if-eqz p1, :cond_0

    .line 262
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Landroidx/b/g;)V

    .line 264
    :cond_0
    return-void
.end method

.method private static a([III)I
    .locals 1

    .prologue
    .line 77
    :try_start_0
    invoke-static {p0, p1, p2}, Landroidx/b/c;->a([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    return v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private static a([I[Ljava/lang/Object;I)V
    .locals 4

    .prologue
    const/16 v2, 0xa

    const/4 v3, 0x2

    .line 201
    array-length v0, p0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_3

    .line 202
    const-class v1, Landroidx/b/g;

    monitor-enter v1

    .line 203
    :try_start_0
    sget v0, Landroidx/b/g;->e:I

    if-ge v0, v2, :cond_1

    .line 204
    const/4 v0, 0x0

    sget-object v2, Landroidx/b/g;->d:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 205
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 206
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-lt v0, v3, :cond_0

    .line 207
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 206
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 209
    :cond_0
    sput-object p1, Landroidx/b/g;->d:[Ljava/lang/Object;

    .line 210
    sget v0, Landroidx/b/g;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/b/g;->e:I

    .line 214
    :cond_1
    monitor-exit v1

    .line 230
    :cond_2
    :goto_1
    return-void

    .line 214
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 215
    :cond_3
    array-length v0, p0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 216
    const-class v1, Landroidx/b/g;

    monitor-enter v1

    .line 217
    :try_start_1
    sget v0, Landroidx/b/g;->c:I

    if-ge v0, v2, :cond_5

    .line 218
    const/4 v0, 0x0

    sget-object v2, Landroidx/b/g;->b:[Ljava/lang/Object;

    aput-object v2, p1, v0

    .line 219
    const/4 v0, 0x1

    aput-object p0, p1, v0

    .line 220
    shl-int/lit8 v0, p2, 0x1

    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-lt v0, v3, :cond_4

    .line 221
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 220
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 223
    :cond_4
    sput-object p1, Landroidx/b/g;->b:[Ljava/lang/Object;

    .line 224
    sget v0, Landroidx/b/g;->c:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Landroidx/b/g;->c:I

    .line 228
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

.method private e(I)V
    .locals 5

    .prologue
    .line 165
    const/16 v0, 0x8

    if-ne p1, v0, :cond_2

    .line 166
    const-class v1, Landroidx/b/g;

    monitor-enter v1

    .line 167
    :try_start_0
    sget-object v0, Landroidx/b/g;->d:[Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 168
    sget-object v2, Landroidx/b/g;->d:[Ljava/lang/Object;

    .line 169
    iput-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 170
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/g;->d:[Ljava/lang/Object;

    .line 171
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 172
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 173
    sget v0, Landroidx/b/g;->e:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/b/g;->e:I

    .line 176
    monitor-exit v1

    .line 197
    :goto_0
    return-void

    .line 178
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_1
    :goto_1
    new-array v0, p1, [I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 196
    shl-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    goto :goto_0

    .line 178
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 179
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 180
    const-class v1, Landroidx/b/g;

    monitor-enter v1

    .line 181
    :try_start_2
    sget-object v0, Landroidx/b/g;->b:[Ljava/lang/Object;

    if-eqz v0, :cond_3

    .line 182
    sget-object v2, Landroidx/b/g;->b:[Ljava/lang/Object;

    .line 183
    iput-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 184
    const/4 v0, 0x0

    aget-object v0, v2, v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    sput-object v0, Landroidx/b/g;->b:[Ljava/lang/Object;

    .line 185
    const/4 v0, 0x1

    aget-object v0, v2, v0

    check-cast v0, [I

    check-cast v0, [I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 186
    const/4 v0, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    aput-object v4, v2, v3

    aput-object v4, v2, v0

    .line 187
    sget v0, Landroidx/b/g;->c:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Landroidx/b/g;->c:I

    .line 190
    monitor-exit v1

    goto :goto_0

    .line 192
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
.method a()I
    .locals 5

    .prologue
    .line 126
    iget v2, p0, Landroidx/b/g;->h:I

    .line 129
    if-nez v2, :cond_1

    .line 130
    const/4 v0, -0x1

    .line 160
    :cond_0
    :goto_0
    return v0

    .line 133
    :cond_1
    iget-object v0, p0, Landroidx/b/g;->f:[I

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Landroidx/b/g;->a([III)I

    move-result v0

    .line 136
    if-ltz v0, :cond_0

    .line 141
    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_0

    .line 147
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/b/g;->f:[I

    aget v3, v3, v1

    if-nez v3, :cond_3

    .line 148
    iget-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    if-nez v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 147
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 152
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/b/g;->f:[I

    aget v2, v2, v0

    if-nez v2, :cond_4

    .line 153
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    if-eqz v2, :cond_0

    .line 152
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 160
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 322
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroidx/b/g;->a()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->a(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0
.end method

.method a(Ljava/lang/Object;I)I
    .locals 5

    .prologue
    .line 88
    iget v2, p0, Landroidx/b/g;->h:I

    .line 91
    if-nez v2, :cond_1

    .line 92
    const/4 v0, -0x1

    .line 122
    :cond_0
    :goto_0
    return v0

    .line 95
    :cond_1
    iget-object v0, p0, Landroidx/b/g;->f:[I

    invoke-static {v0, v2, p2}, Landroidx/b/g;->a([III)I

    move-result v0

    .line 98
    if-ltz v0, :cond_0

    .line 103
    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v1, v1, v3

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    add-int/lit8 v1, v0, 0x1

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v3, p0, Landroidx/b/g;->f:[I

    aget v3, v3, v1

    if-ne v3, p2, :cond_3

    .line 110
    iget-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v0, v1

    goto :goto_0

    .line 109
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 114
    :cond_3
    add-int/lit8 v0, v0, -0x1

    :goto_2
    if-ltz v0, :cond_4

    iget-object v2, p0, Landroidx/b/g;->f:[I

    aget v2, v2, v0

    if-ne v2, p2, :cond_4

    .line 115
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, v0, 0x1

    aget-object v2, v2, v3

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 114
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 122
    :cond_4
    xor-int/lit8 v0, v1, -0x1

    goto :goto_0
.end method

.method public a(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 409
    shl-int/lit8 v0, p1, 0x1

    add-int/lit8 v0, v0, 0x1

    .line 410
    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    aget-object v1, v1, v0

    .line 411
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    aput-object p2, v2, v0

    .line 412
    return-object v1
.end method

.method public a(I)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 289
    iget v0, p0, Landroidx/b/g;->h:I

    .line 290
    iget-object v1, p0, Landroidx/b/g;->f:[I

    array-length v1, v1

    if-ge v1, p1, :cond_1

    .line 291
    iget-object v1, p0, Landroidx/b/g;->f:[I

    .line 292
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 293
    invoke-direct {p0, p1}, Landroidx/b/g;->e(I)V

    .line 294
    iget v3, p0, Landroidx/b/g;->h:I

    if-lez v3, :cond_0

    .line 295
    iget-object v3, p0, Landroidx/b/g;->f:[I

    invoke-static {v1, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 296
    iget-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 298
    :cond_0
    invoke-static {v1, v2, v0}, Landroidx/b/g;->a([I[Ljava/lang/Object;I)V

    .line 300
    :cond_1
    iget v1, p0, Landroidx/b/g;->h:I

    if-eq v1, v0, :cond_2

    .line 301
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 303
    :cond_2
    return-void
.end method

.method public a(Landroidx/b/g;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/b/g",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 498
    iget v1, p1, Landroidx/b/g;->h:I

    .line 499
    iget v2, p0, Landroidx/b/g;->h:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Landroidx/b/g;->a(I)V

    .line 500
    iget v2, p0, Landroidx/b/g;->h:I

    if-nez v2, :cond_1

    .line 501
    if-lez v1, :cond_0

    .line 502
    iget-object v2, p1, Landroidx/b/g;->f:[I

    iget-object v3, p0, Landroidx/b/g;->f:[I

    invoke-static {v2, v0, v3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 503
    iget-object v2, p1, Landroidx/b/g;->g:[Ljava/lang/Object;

    iget-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v4, v1, 0x1

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 504
    iput v1, p0, Landroidx/b/g;->h:I

    .line 511
    :cond_0
    return-void

    .line 507
    :cond_1
    :goto_0
    if-ge v0, v1, :cond_0

    .line 508
    invoke-virtual {p1, v0}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 507
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method b(Ljava/lang/Object;)I
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 326
    iget v1, p0, Landroidx/b/g;->h:I

    mul-int/lit8 v1, v1, 0x2

    .line 327
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 328
    if-nez p1, :cond_2

    .line 329
    :goto_0
    if-ge v0, v1, :cond_3

    .line 330
    aget-object v3, v2, v0

    if-nez v3, :cond_0

    .line 331
    shr-int/lit8 v0, v0, 0x1

    .line 341
    :goto_1
    return v0

    .line 329
    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 335
    :cond_1
    add-int/lit8 v0, v0, 0x2

    :cond_2
    if-ge v0, v1, :cond_3

    .line 336
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 337
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 341
    :cond_3
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public b(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 390
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public c(I)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 399
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public clear()V
    .locals 4

    .prologue
    .line 270
    iget v0, p0, Landroidx/b/g;->h:I

    if-lez v0, :cond_0

    .line 271
    iget-object v0, p0, Landroidx/b/g;->f:[I

    .line 272
    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 273
    iget v2, p0, Landroidx/b/g;->h:I

    .line 274
    sget-object v3, Landroidx/b/c;->a:[I

    iput-object v3, p0, Landroidx/b/g;->f:[I

    .line 275
    sget-object v3, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v3, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 276
    const/4 v3, 0x0

    iput v3, p0, Landroidx/b/g;->h:I

    .line 277
    invoke-static {v0, v1, v2}, Landroidx/b/g;->a([I[Ljava/lang/Object;I)V

    .line 279
    :cond_0
    iget v0, p0, Landroidx/b/g;->h:I

    if-lez v0, :cond_1

    .line 280
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 282
    :cond_1
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 312
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 352
    invoke-virtual {p0, p1}, Landroidx/b/g;->b(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(I)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 570
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v3, p1, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v3, v2, v3

    .line 571
    iget v4, p0, Landroidx/b/g;->h:I

    .line 573
    const/4 v2, 0x1

    if-gt v4, v2, :cond_0

    .line 576
    iget-object v0, p0, Landroidx/b/g;->f:[I

    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    invoke-static {v0, v2, v4}, Landroidx/b/g;->a([I[Ljava/lang/Object;I)V

    .line 577
    sget-object v0, Landroidx/b/c;->a:[I

    iput-object v0, p0, Landroidx/b/g;->f:[I

    .line 578
    sget-object v0, Landroidx/b/c;->c:[Ljava/lang/Object;

    iput-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    move v0, v1

    .line 622
    :goto_0
    iget v1, p0, Landroidx/b/g;->h:I

    if-eq v4, v1, :cond_7

    .line 623
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 581
    :cond_0
    add-int/lit8 v2, v4, -0x1

    .line 582
    iget-object v5, p0, Landroidx/b/g;->f:[I

    array-length v5, v5

    if-le v5, v0, :cond_5

    iget v5, p0, Landroidx/b/g;->h:I

    iget-object v6, p0, Landroidx/b/g;->f:[I

    array-length v6, v6

    div-int/lit8 v6, v6, 0x3

    if-ge v5, v6, :cond_5

    .line 586
    if-le v4, v0, :cond_1

    shr-int/lit8 v0, v4, 0x1

    add-int/2addr v0, v4

    .line 590
    :cond_1
    iget-object v5, p0, Landroidx/b/g;->f:[I

    .line 591
    iget-object v6, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 592
    invoke-direct {p0, v0}, Landroidx/b/g;->e(I)V

    .line 594
    iget v0, p0, Landroidx/b/g;->h:I

    if-eq v4, v0, :cond_2

    .line 595
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 598
    :cond_2
    if-lez p1, :cond_3

    .line 600
    iget-object v0, p0, Landroidx/b/g;->f:[I

    invoke-static {v5, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 601
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v6, v1, v0, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    :cond_3
    if-ge p1, v2, :cond_4

    .line 606
    add-int/lit8 v0, p1, 0x1

    iget-object v1, p0, Landroidx/b/g;->f:[I

    sub-int v7, v2, p1

    invoke-static {v5, v0, v1, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 607
    add-int/lit8 v0, p1, 0x1

    shl-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v5, p1, 0x1

    sub-int v7, v2, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v6, v0, v1, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    move v0, v2

    .line 610
    goto :goto_0

    .line 611
    :cond_5
    if-ge p1, v2, :cond_6

    .line 614
    iget-object v0, p0, Landroidx/b/g;->f:[I

    add-int/lit8 v1, p1, 0x1

    iget-object v5, p0, Landroidx/b/g;->f:[I

    sub-int v6, v2, p1

    invoke-static {v0, v1, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 615
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    add-int/lit8 v1, p1, 0x1

    shl-int/lit8 v1, v1, 0x1

    iget-object v5, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v6, p1, 0x1

    sub-int v7, v2, p1

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 618
    :cond_6
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object v8, v0, v1

    .line 619
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object v8, v0, v1

    move v0, v2

    goto/16 :goto_0

    .line 625
    :cond_7
    iput v0, p0, Landroidx/b/g;->h:I

    .line 626
    return-object v3
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 681
    if-ne p0, p1, :cond_1

    .line 735
    :cond_0
    :goto_0
    return v0

    .line 684
    :cond_1
    instance-of v2, p1, Landroidx/b/g;

    if-eqz v2, :cond_6

    .line 685
    check-cast p1, Landroidx/b/g;

    .line 686
    invoke-virtual {p0}, Landroidx/b/g;->size()I

    move-result v2

    invoke-virtual {p1}, Landroidx/b/g;->size()I

    move-result v3

    if-eq v2, v3, :cond_2

    move v0, v1

    .line 687
    goto :goto_0

    :cond_2
    move v2, v1

    .line 691
    :goto_1
    :try_start_0
    iget v3, p0, Landroidx/b/g;->h:I

    if-ge v2, v3, :cond_0

    .line 692
    invoke-virtual {p0, v2}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 693
    invoke-virtual {p0, v2}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 694
    invoke-virtual {p1, v3}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 695
    if-nez v4, :cond_4

    .line 696
    if-nez v5, :cond_3

    invoke-virtual {p1, v3}, Landroidx/b/g;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    move v0, v1

    .line 697
    goto :goto_0

    .line 699
    :cond_4
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    if-nez v3, :cond_5

    move v0, v1

    .line 700
    goto :goto_0

    .line 691
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 703
    :catch_0
    move-exception v0

    move v0, v1

    .line 704
    goto :goto_0

    .line 705
    :catch_1
    move-exception v0

    move v0, v1

    .line 706
    goto :goto_0

    .line 709
    :cond_6
    instance-of v2, p1, Ljava/util/Map;

    if-eqz v2, :cond_b

    .line 710
    check-cast p1, Ljava/util/Map;

    .line 711
    invoke-virtual {p0}, Landroidx/b/g;->size()I

    move-result v2

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_7

    move v0, v1

    .line 712
    goto :goto_0

    :cond_7
    move v2, v1

    .line 716
    :goto_2
    :try_start_1
    iget v3, p0, Landroidx/b/g;->h:I

    if-ge v2, v3, :cond_0

    .line 717
    invoke-virtual {p0, v2}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v3

    .line 718
    invoke-virtual {p0, v2}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v4

    .line 719
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 720
    if-nez v4, :cond_9

    .line 721
    if-nez v5, :cond_8

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    :cond_8
    move v0, v1

    .line 722
    goto :goto_0

    .line 724
    :cond_9
    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_3

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    .line 725
    goto :goto_0

    .line 716
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 728
    :catch_2
    move-exception v0

    move v0, v1

    .line 729
    goto :goto_0

    .line 730
    :catch_3
    move-exception v0

    move v0, v1

    .line 731
    goto :goto_0

    :cond_b
    move v0, v1

    .line 735
    goto/16 :goto_0
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

    .prologue
    .line 369
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/b/g;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "TV;)TV;"
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 381
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object p2, v1, v0

    :cond_0
    return-object p2
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v5, p0, Landroidx/b/g;->f:[I

    .line 744
    iget-object v6, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 746
    const/4 v0, 0x1

    iget v7, p0, Landroidx/b/g;->h:I

    move v2, v0

    move v3, v1

    move v4, v1

    :goto_0
    if-ge v3, v7, :cond_1

    .line 747
    aget-object v0, v6, v2

    .line 748
    aget v8, v5, v3

    if-nez v0, :cond_0

    move v0, v1

    :goto_1
    xor-int/2addr v0, v8

    add-int/2addr v4, v0

    .line 746
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v2, 0x2

    move v2, v0

    goto :goto_0

    .line 748
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1

    .line 750
    :cond_1
    return v4
.end method

.method public isEmpty()Z
    .locals 1

    .prologue
    .line 419
    iget v0, p0, Landroidx/b/g;->h:I

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v4, 0x0

    .line 432
    iget v5, p0, Landroidx/b/g;->h:I

    .line 435
    if-nez p1, :cond_0

    .line 437
    invoke-virtual {p0}, Landroidx/b/g;->a()I

    move-result v2

    move v3, v4

    .line 442
    :goto_0
    if-ltz v2, :cond_1

    .line 443
    shl-int/lit8 v0, v2, 0x1

    add-int/lit8 v1, v0, 0x1

    .line 444
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    aget-object v0, v0, v1

    .line 445
    iget-object v2, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    aput-object p2, v2, v1

    .line 490
    :goto_1
    return-object v0

    .line 439
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    .line 440
    invoke-virtual {p0, p1, v3}, Landroidx/b/g;->a(Ljava/lang/Object;I)I

    move-result v2

    goto :goto_0

    .line 449
    :cond_1
    xor-int/lit8 v2, v2, -0x1

    .line 450
    iget-object v6, p0, Landroidx/b/g;->f:[I

    array-length v6, v6

    if-lt v5, v6, :cond_6

    .line 451
    if-lt v5, v0, :cond_3

    shr-int/lit8 v0, v5, 0x1

    add-int/2addr v0, v5

    .line 456
    :cond_2
    :goto_2
    iget-object v1, p0, Landroidx/b/g;->f:[I

    .line 457
    iget-object v6, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    .line 458
    invoke-direct {p0, v0}, Landroidx/b/g;->e(I)V

    .line 460
    iget v0, p0, Landroidx/b/g;->h:I

    if-eq v5, v0, :cond_4

    .line 461
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 451
    :cond_3
    if-ge v5, v1, :cond_2

    move v0, v1

    goto :goto_2

    .line 464
    :cond_4
    iget-object v0, p0, Landroidx/b/g;->f:[I

    array-length v0, v0

    if-lez v0, :cond_5

    .line 466
    iget-object v0, p0, Landroidx/b/g;->f:[I

    array-length v7, v1

    invoke-static {v1, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 467
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    array-length v7, v6

    invoke-static {v6, v4, v0, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 470
    :cond_5
    invoke-static {v1, v6, v5}, Landroidx/b/g;->a([I[Ljava/lang/Object;I)V

    .line 473
    :cond_6
    if-ge v2, v5, :cond_7

    .line 476
    iget-object v0, p0, Landroidx/b/g;->f:[I

    iget-object v1, p0, Landroidx/b/g;->f:[I

    add-int/lit8 v4, v2, 0x1

    sub-int v6, v5, v2

    invoke-static {v0, v2, v1, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 477
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    iget-object v4, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    add-int/lit8 v6, v2, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget v7, p0, Landroidx/b/g;->h:I

    sub-int/2addr v7, v2

    shl-int/lit8 v7, v7, 0x1

    invoke-static {v0, v1, v4, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 481
    :cond_7
    iget v0, p0, Landroidx/b/g;->h:I

    if-ne v5, v0, :cond_8

    iget-object v0, p0, Landroidx/b/g;->f:[I

    array-length v0, v0

    if-lt v2, v0, :cond_9

    .line 482
    :cond_8
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 486
    :cond_9
    iget-object v0, p0, Landroidx/b/g;->f:[I

    aput v3, v0, v2

    .line 487
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    aput-object p1, v0, v1

    .line 488
    iget-object v0, p0, Landroidx/b/g;->g:[Ljava/lang/Object;

    shl-int/lit8 v1, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    aput-object p2, v0, v1

    .line 489
    iget v0, p0, Landroidx/b/g;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/b/g;->h:I

    .line 490
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 523
    invoke-virtual {p0, p1}, Landroidx/b/g;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 524
    if-nez v0, :cond_0

    .line 525
    invoke-virtual {p0, p1, p2}, Landroidx/b/g;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 527
    :cond_0
    return-object v0
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

    .prologue
    .line 538
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 539
    if-ltz v0, :cond_0

    .line 540
    invoke-virtual {p0, v0}, Landroidx/b/g;->d(I)Ljava/lang/Object;

    move-result-object v0

    .line 543
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 553
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 554
    if-ltz v0, :cond_1

    .line 555
    invoke-virtual {p0, v0}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v1

    .line 556
    if-eq p2, v1, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 557
    :cond_0
    invoke-virtual {p0, v0}, Landroidx/b/g;->d(I)Ljava/lang/Object;

    .line 558
    const/4 v0, 0x1

    .line 561
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .line 637
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 638
    if-ltz v0, :cond_0

    .line 639
    invoke-virtual {p0, v0, p2}, Landroidx/b/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 641
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;TV;)Z"
        }
    .end annotation

    .prologue
    .line 653
    invoke-virtual {p0, p1}, Landroidx/b/g;->a(Ljava/lang/Object;)I

    move-result v0

    .line 654
    if-ltz v0, :cond_1

    .line 655
    invoke-virtual {p0, v0}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v1

    .line 656
    if-eq v1, p2, :cond_0

    if-eqz p2, :cond_1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 657
    :cond_0
    invoke-virtual {p0, v0, p3}, Landroidx/b/g;->a(ILjava/lang/Object;)Ljava/lang/Object;

    .line 658
    const/4 v0, 0x1

    .line 661
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 668
    iget v0, p0, Landroidx/b/g;->h:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 762
    invoke-virtual {p0}, Landroidx/b/g;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 763
    const-string/jumbo v0, "{}"

    .line 787
    :goto_0
    return-object v0

    .line 766
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    iget v0, p0, Landroidx/b/g;->h:I

    mul-int/lit8 v0, v0, 0x1c

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 767
    const/16 v0, 0x7b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 768
    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Landroidx/b/g;->h:I

    if-ge v0, v2, :cond_4

    .line 769
    if-lez v0, :cond_1

    .line 770
    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    :cond_1
    invoke-virtual {p0, v0}, Landroidx/b/g;->b(I)Ljava/lang/Object;

    move-result-object v2

    .line 773
    if-eq v2, p0, :cond_2

    .line 774
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 778
    :goto_2
    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {p0, v0}, Landroidx/b/g;->c(I)Ljava/lang/Object;

    move-result-object v2

    .line 780
    if-eq v2, p0, :cond_3

    .line 781
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 768
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 776
    :cond_2
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 783
    :cond_3
    const-string/jumbo v2, "(this Map)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 786
    :cond_4
    const/16 v0, 0x7d

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 787
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
