.class public Landroidx/databinding/b;
.super Ljava/lang/Object;
.source "CallbackRegistry.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/databinding/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TC;>;"
        }
    .end annotation
.end field

.field private b:J

.field private c:[J

.field private d:I

.field private final e:Landroidx/databinding/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/databinding/b$a<",
            "TC;TT;TA;>;"
        }
    .end annotation
.end field


# direct methods
.method private a(IJ)V
    .locals 8

    add-int/lit8 v0, p1, 0x40

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const-wide/high16 v2, -0x8000000000000000L

    :goto_0
    if-lt v0, p1, :cond_1

    and-long v4, p2, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 265
    iget-object v4, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    ushr-long/2addr v2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(Ljava/lang/Object;ILjava/lang/Object;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;I)V"
        }
    .end annotation

    if-gez p4, :cond_0

    .line 169
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/b;->b(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 171
    :cond_0
    iget-object v0, p0, Landroidx/databinding/b;->c:[J

    aget-wide v7, v0, p4

    add-int/lit8 v0, p4, 0x1

    mul-int/lit8 v5, v0, 0x40

    .line 173
    iget-object v0, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v5, 0x40

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    add-int/lit8 p4, p4, -0x1

    .line 174
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 175
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;IIJ)V"
        }
    .end annotation

    const-wide/16 v0, 0x1

    :goto_0
    if-ge p4, p5, :cond_1

    and-long v2, p6, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    .line 201
    iget-object v2, p0, Landroidx/databinding/b;->e:Landroidx/databinding/b$a;

    iget-object v3, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3, p1, p2, p3}, Landroidx/databinding/b$a;->a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V

    :cond_0
    const/4 v2, 0x1

    shl-long/2addr v0, v2

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private a(I)Z
    .locals 10

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x40

    const/4 v6, 0x0

    if-ge p1, v5, :cond_1

    shl-long/2addr v2, p1

    .line 232
    iget-wide v7, p0, Landroidx/databinding/b;->b:J

    and-long/2addr v2, v7

    cmp-long p1, v2, v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    return v4

    .line 233
    :cond_1
    iget-object v7, p0, Landroidx/databinding/b;->c:[J

    if-nez v7, :cond_2

    return v6

    .line 237
    :cond_2
    div-int/lit8 v8, p1, 0x40

    sub-int/2addr v8, v4

    .line 238
    array-length v9, v7

    if-lt v8, v9, :cond_3

    return v6

    .line 243
    :cond_3
    aget-wide v8, v7, v8

    .line 244
    rem-int/2addr p1, v5

    shl-long/2addr v2, p1

    and-long/2addr v2, v8

    cmp-long p1, v2, v0

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v4, v6

    :goto_1
    return v4
.end method

.method private b(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 122
    iget-wide v8, p0, Landroidx/databinding/b;->b:J

    const/4 v6, 0x0

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method

.method private c(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 141
    iget-object v0, p0, Landroidx/databinding/b;->c:[J

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    .line 145
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;I)V

    add-int/lit8 v0, v0, 0x2

    mul-int/lit8 v5, v0, 0x40

    const-wide/16 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    .line 152
    invoke-direct/range {v1 .. v8}, Landroidx/databinding/b;->a(Ljava/lang/Object;ILjava/lang/Object;IIJ)V

    return-void
.end method


# virtual methods
.method public declared-synchronized a()Landroidx/databinding/b;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/databinding/b<",
            "TC;TT;TA;>;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 380
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/databinding/b;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    .line 381
    :try_start_1
    iput-wide v2, v1, Landroidx/databinding/b;->b:J

    .line 382
    iput-object v0, v1, Landroidx/databinding/b;->c:[J

    const/4 v0, 0x0

    .line 383
    iput v0, v1, Landroidx/databinding/b;->d:I

    .line 384
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Landroidx/databinding/b;->a:Ljava/util/List;

    .line 385
    iget-object v2, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v0, v2, :cond_1

    .line 387
    invoke-direct {p0, v0}, Landroidx/databinding/b;->a(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 388
    iget-object v3, v1, Landroidx/databinding/b;->a:Ljava/util/List;

    iget-object v4, p0, Landroidx/databinding/b;->a:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    .line 392
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 394
    :cond_1
    monitor-exit p0

    return-object v1

    :goto_2
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized a(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;ITA;)V"
        }
    .end annotation

    monitor-enter p0

    .line 90
    :try_start_0
    iget v0, p0, Landroidx/databinding/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/databinding/b;->d:I

    .line 91
    invoke-direct {p0, p1, p2, p3}, Landroidx/databinding/b;->c(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 92
    iget p1, p0, Landroidx/databinding/b;->d:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Landroidx/databinding/b;->d:I

    .line 93
    iget p1, p0, Landroidx/databinding/b;->d:I

    if-nez p1, :cond_2

    .line 94
    iget-object p1, p0, Landroidx/databinding/b;->c:[J

    const-wide/16 p2, 0x0

    if-eqz p1, :cond_1

    .line 95
    iget-object p1, p0, Landroidx/databinding/b;->c:[J

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_1

    .line 96
    iget-object v0, p0, Landroidx/databinding/b;->c:[J

    aget-wide v1, v0, p1

    cmp-long v0, v1, p2

    if-eqz v0, :cond_0

    add-int/lit8 v0, p1, 0x1

    mul-int/lit8 v0, v0, 0x40

    .line 98
    invoke-direct {p0, v0, v1, v2}, Landroidx/databinding/b;->a(IJ)V

    .line 99
    iget-object v0, p0, Landroidx/databinding/b;->c:[J

    aput-wide p2, v0, p1

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    .line 103
    :cond_1
    iget-wide v0, p0, Landroidx/databinding/b;->b:J

    cmp-long p1, v0, p2

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    .line 104
    iget-wide v0, p0, Landroidx/databinding/b;->b:J

    invoke-direct {p0, p1, v0, v1}, Landroidx/databinding/b;->a(IJ)V

    .line 105
    iput-wide p2, p0, Landroidx/databinding/b;->b:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 44
    invoke-virtual {p0}, Landroidx/databinding/b;->a()Landroidx/databinding/b;

    move-result-object v0

    return-object v0
.end method
