.class public final Lkotlinx/coroutines/internal/x;
.super Ljava/lang/Object;
.source "ThreadSafeHeap.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lkotlinx/coroutines/internal/y;",
        ":",
        "Ljava/lang/Comparable<",
        "-TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private a:[Lkotlinx/coroutines/internal/y;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TT;"
        }
    .end annotation
.end field

.field public volatile size:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(II)V
    .locals 3

    .line 144
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 145
    :cond_0
    aget-object v1, v0, p2

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 146
    :cond_1
    aget-object v2, v0, p1

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 147
    :cond_2
    aput-object v1, v0, p1

    .line 148
    aput-object v2, v0, p2

    .line 149
    invoke-interface {v1, p1}, Lkotlinx/coroutines/internal/y;->a(I)V

    .line 150
    invoke-interface {v2, p2}, Lkotlinx/coroutines/internal/y;->a(I)V

    return-void
.end method

.method private final b(I)V
    .locals 3

    :goto_0
    if-gtz p1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    add-int/lit8 v1, p1, -0x1

    .line 117
    div-int/lit8 v1, v1, 0x2

    .line 118
    aget-object v2, v0, v1

    if-nez v2, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    check-cast v2, Ljava/lang/Comparable;

    aget-object v0, v0, p1

    if-nez v0, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_4

    return-void

    .line 119
    :cond_4
    invoke-direct {p0, p1, v1}, Lkotlinx/coroutines/internal/x;->a(II)V

    move p1, v1

    goto :goto_0
.end method

.method private final c(I)V
    .locals 5

    :goto_0
    mul-int/lit8 v0, p1, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 125
    iget v1, p0, Lkotlinx/coroutines/internal/x;->size:I

    if-lt v0, v1, :cond_0

    return-void

    .line 126
    :cond_0
    iget-object v1, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-nez v1, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_1
    add-int/lit8 v2, v0, 0x1

    .line 127
    iget v3, p0, Lkotlinx/coroutines/internal/x;->size:I

    if-ge v2, v3, :cond_4

    aget-object v3, v1, v2

    if-nez v3, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    check-cast v3, Ljava/lang/Comparable;

    aget-object v4, v1, v0

    if-nez v4, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-interface {v3, v4}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v3

    if-gez v3, :cond_4

    move v0, v2

    .line 128
    :cond_4
    aget-object v2, v1, p1

    if-nez v2, :cond_5

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_5
    check-cast v2, Ljava/lang/Comparable;

    aget-object v1, v1, v0

    if-nez v1, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_6
    invoke-interface {v2, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v1

    if-gtz v1, :cond_7

    return-void

    .line 129
    :cond_7
    invoke-direct {p0, p1, v0}, Lkotlinx/coroutines/internal/x;->a(II)V

    move p1, v0

    goto :goto_0
.end method

.method private final e()[Lkotlinx/coroutines/internal/y;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-nez v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlinx/coroutines/internal/y;

    .line 137
    iput-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    goto :goto_0

    .line 138
    :cond_0
    iget v1, p0, Lkotlinx/coroutines/internal/x;->size:I

    array-length v2, v0

    if-lt v1, v2, :cond_1

    iget v1, p0, Lkotlinx/coroutines/internal/x;->size:I

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/e/b/h;->a(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, [Lkotlinx/coroutines/internal/y;

    iput-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    :cond_1
    :goto_0
    return-object v0
.end method


# virtual methods
.method public final a(I)Lkotlinx/coroutines/internal/y;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .line 82
    iget v0, p0, Lkotlinx/coroutines/internal/x;->size:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "Check failed."

    if-eqz v0, :cond_9

    .line 83
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-nez v0, :cond_1

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 84
    :cond_1
    iget v4, p0, Lkotlinx/coroutines/internal/x;->size:I

    const/4 v5, -0x1

    add-int/2addr v4, v5

    iput v4, p0, Lkotlinx/coroutines/internal/x;->size:I

    .line 85
    iget v4, p0, Lkotlinx/coroutines/internal/x;->size:I

    if-ge p1, v4, :cond_5

    .line 86
    iget v4, p0, Lkotlinx/coroutines/internal/x;->size:I

    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/internal/x;->a(II)V

    add-int/lit8 v4, p1, -0x1

    .line 87
    div-int/lit8 v4, v4, 0x2

    if-lez p1, :cond_4

    .line 88
    aget-object v6, v0, p1

    if-nez v6, :cond_2

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_2
    check-cast v6, Ljava/lang/Comparable;

    aget-object v7, v0, v4

    if-nez v7, :cond_3

    invoke-static {}, Lkotlin/e/b/h;->a()V

    :cond_3
    invoke-interface {v6, v7}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v6

    if-gez v6, :cond_4

    .line 89
    invoke-direct {p0, p1, v4}, Lkotlinx/coroutines/internal/x;->a(II)V

    .line 90
    invoke-direct {p0, v4}, Lkotlinx/coroutines/internal/x;->b(I)V

    goto :goto_1

    .line 92
    :cond_4
    invoke-direct {p0, p1}, Lkotlinx/coroutines/internal/x;->c(I)V

    .line 95
    :cond_5
    :goto_1
    iget p1, p0, Lkotlinx/coroutines/internal/x;->size:I

    aget-object p1, v0, p1

    if-nez p1, :cond_6

    invoke-static {}, Lkotlin/e/b/h;->a()V

    .line 96
    :cond_6
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->b()Lkotlinx/coroutines/internal/x;

    move-result-object v4

    move-object v6, p0

    check-cast v6, Lkotlinx/coroutines/internal/x;

    if-ne v4, v6, :cond_7

    move v1, v2

    :cond_7
    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 97
    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/internal/x;

    invoke-interface {p1, v2}, Lkotlinx/coroutines/internal/y;->a(Lkotlinx/coroutines/internal/x;)V

    .line 98
    invoke-interface {p1, v5}, Lkotlinx/coroutines/internal/y;->a(I)V

    .line 99
    iget v2, p0, Lkotlinx/coroutines/internal/x;->size:I

    check-cast v1, Lkotlinx/coroutines/internal/y;

    aput-object v1, v0, v2

    return-object p1

    .line 96
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    .line 82
    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final a()Z
    .locals 1

    .line 23
    iget v0, p0, Lkotlinx/coroutines/internal/x;->size:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final declared-synchronized a(Lkotlinx/coroutines/internal/y;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->b()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    .line 70
    :cond_0
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->c()I

    move-result p1

    if-ltz p1, :cond_1

    move v2, v1

    :cond_1
    if-eqz v2, :cond_2

    .line 72
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/internal/x;->a(I)Lkotlinx/coroutines/internal/y;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    :goto_0
    monitor-exit p0

    return v1

    :cond_2
    :try_start_1
    const-string p1, "Check failed."

    .line 71
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()Lkotlinx/coroutines/internal/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 32
    :try_start_0
    invoke-virtual {p0}, Lkotlinx/coroutines/internal/x;->d()Lkotlinx/coroutines/internal/y;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Lkotlinx/coroutines/internal/y;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/e/b/h;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    invoke-interface {p1}, Lkotlinx/coroutines/internal/y;->b()Lkotlinx/coroutines/internal/x;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 106
    move-object v0, p0

    check-cast v0, Lkotlinx/coroutines/internal/x;

    invoke-interface {p1, v0}, Lkotlinx/coroutines/internal/y;->a(Lkotlinx/coroutines/internal/x;)V

    .line 107
    invoke-direct {p0}, Lkotlinx/coroutines/internal/x;->e()[Lkotlinx/coroutines/internal/y;

    move-result-object v0

    .line 108
    iget v1, p0, Lkotlinx/coroutines/internal/x;->size:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lkotlinx/coroutines/internal/x;->size:I

    .line 109
    aput-object p1, v0, v1

    .line 110
    invoke-interface {p1, v1}, Lkotlinx/coroutines/internal/y;->a(I)V

    .line 111
    invoke-direct {p0, v1}, Lkotlinx/coroutines/internal/x;->b(I)V

    return-void

    .line 105
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Check failed."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public final declared-synchronized c()Lkotlinx/coroutines/internal/y;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    monitor-enter p0

    .line 36
    :try_start_0
    iget v0, p0, Lkotlinx/coroutines/internal/x;->size:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 37
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/internal/x;->a(I)Lkotlinx/coroutines/internal/y;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 40
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()Lkotlinx/coroutines/internal/y;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lkotlinx/coroutines/internal/x;->a:[Lkotlinx/coroutines/internal/y;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
