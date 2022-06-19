.class public Lk7/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x9
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk7/l$a;
    }
.end annotation


# static fields
.field public static d:Ljava/util/PriorityQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public static e:I

.field public static f:I

.field public static g:I

.field public static h:I

.field public static final i:Ljava/lang/Object;

.field public static final j:Ljava/nio/ByteBuffer;


# instance fields
.field public a:Lu7/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu7/b<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/nio/ByteOrder;

.field public c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/PriorityQueue;

    new-instance v1, Lk7/l$a;

    invoke-direct {v1}, Lk7/l$a;-><init>()V

    const/16 v2, 0x8

    invoke-direct {v0, v2, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    sput-object v0, Lk7/l;->d:Ljava/util/PriorityQueue;

    const/high16 v0, 0x100000

    .line 2
    sput v0, Lk7/l;->e:I

    const/high16 v0, 0x40000

    .line 3
    sput v0, Lk7/l;->f:I

    const/4 v0, 0x0

    .line 4
    sput v0, Lk7/l;->g:I

    .line 5
    sput v0, Lk7/l;->h:I

    .line 6
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lk7/l;->i:Ljava/lang/Object;

    .line 7
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lk7/l;->j:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lu7/b;

    invoke-direct {v0}, Lu7/b;-><init>()V

    iput-object v0, p0, Lk7/l;->a:Lu7/b;

    .line 3
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lk7/l;->b:Ljava/nio/ByteOrder;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lk7/l;->c:I

    return-void
.end method

.method public static h()Ljava/util/PriorityQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/PriorityQueue<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 3
    :cond_0
    sget-object v0, Lk7/l;->d:Ljava/util/PriorityQueue;

    return-object v0
.end method

.method public static k(I)Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    sget v0, Lk7/l;->h:I

    if-gt p0, v0, :cond_3

    .line 2
    invoke-static {}, Lk7/l;->h()Ljava/util/PriorityQueue;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3
    sget-object v1, Lk7/l;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 5
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 6
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    .line 7
    sput v3, Lk7/l;->h:I

    .line 8
    :cond_1
    sget v3, Lk7/l;->g:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v4

    sub-int/2addr v3, v4

    sput v3, Lk7/l;->g:I

    .line 9
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-lt v3, p0, :cond_0

    .line 10
    monitor-exit v1

    return-object v2

    .line 11
    :cond_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    const/16 v0, 0x2000

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {p0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    return-object p0
.end method

.method public static m(Ljava/nio/ByteBuffer;)V
    .locals 4

    if-eqz p0, :cond_7

    .line 1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    array-length v0, v0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_2

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    sget v1, Lk7/l;->f:I

    if-le v0, v1, :cond_3

    return-void

    .line 5
    :cond_3
    invoke-static {}, Lk7/l;->h()Ljava/util/PriorityQueue;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    sget-object v1, Lk7/l;->i:Ljava/lang/Object;

    monitor-enter v1

    .line 7
    :goto_0
    :try_start_0
    sget v2, Lk7/l;->g:I

    sget v3, Lk7/l;->e:I

    if-le v2, v3, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/PriorityQueue;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 8
    invoke-virtual {v0}, Ljava/util/PriorityQueue;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 9
    sget v3, Lk7/l;->g:I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    sub-int/2addr v3, v2

    sput v3, Lk7/l;->g:I

    goto :goto_0

    .line 10
    :cond_5
    sget v2, Lk7/l;->g:I

    sget v3, Lk7/l;->e:I

    if-le v2, v3, :cond_6

    .line 11
    monitor-exit v1

    return-void

    :cond_6
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    sget v2, Lk7/l;->g:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v3

    add-int/2addr v2, v3

    sput v2, Lk7/l;->g:I

    .line 15
    invoke-virtual {v0, p0}, Ljava/util/PriorityQueue;->add(Ljava/lang/Object;)Z

    .line 16
    sget v0, Lk7/l;->h:I

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    sput p0, Lk7/l;->h:I

    .line 17
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/ByteBuffer;)Lk7/l;
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {p1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 4
    iget v1, p0, Lk7/l;->c:I

    if-ltz v1, :cond_1

    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lk7/l;->c:I

    .line 6
    :cond_1
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    .line 8
    iget-object v2, v0, Lu7/b;->a:[Ljava/lang/Object;

    iget v0, v0, Lu7/b;->c:I

    add-int/lit8 v0, v0, -0x1

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    and-int/2addr v0, v3

    aget-object v0, v2, v0

    if-eqz v0, :cond_2

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-lt v2, v3, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 14
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 15
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 16
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 17
    invoke-static {p1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    .line 18
    invoke-virtual {p0, v1}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    return-object p0

    .line 19
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 20
    :cond_3
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    .line 21
    invoke-virtual {v0, p1}, Lu7/b;->addLast(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {p0, v1}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public b(Ljava/nio/ByteBuffer;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    if-gtz v0, :cond_0

    .line 2
    invoke-static {p1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 4
    iget v1, p0, Lk7/l;->c:I

    if-ltz v1, :cond_1

    add-int/2addr v1, v0

    .line 5
    iput v1, p0, Lk7/l;->c:I

    .line 6
    :cond_1
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 7
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    .line 8
    iget-object v1, v0, Lu7/b;->a:[Ljava/lang/Object;

    iget v0, v0, Lu7/b;->b:I

    aget-object v0, v1, v0

    if-eqz v0, :cond_2

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lt v1, v2, :cond_3

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 12
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->mark()Ljava/nio/Buffer;

    .line 13
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 14
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->reset()Ljava/nio/Buffer;

    .line 15
    invoke-static {p1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    return-void

    .line 16
    :cond_2
    new-instance p1, Ljava/util/NoSuchElementException;

    invoke-direct {p1}, Ljava/util/NoSuchElementException;-><init>()V

    throw p1

    .line 17
    :cond_3
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0, p1}, Lu7/b;->addFirst(Ljava/lang/Object;)V

    return-void
.end method

.method public c()B
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    .line 2
    iget v2, p0, Lk7/l;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lk7/l;->c:I

    return v1
.end method

.method public d(Lk7/l;I)V
    .locals 5

    .line 1
    iget v0, p0, Lk7/l;->c:I

    if-lt v0, p2, :cond_3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 2
    iget-object v2, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v2}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    if-nez v3, :cond_0

    .line 4
    invoke-static {v2}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    add-int/2addr v3, v1

    if-le v3, p2, :cond_1

    sub-int v1, p2, v1

    .line 5
    invoke-static {v1}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 6
    invoke-virtual {v3, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2, v4, v0, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 8
    invoke-virtual {p1, v3}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    .line 9
    iget-object p1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {p1, v2}, Lu7/b;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1, v2}, Lk7/l;->a(Ljava/nio/ByteBuffer;)Lk7/l;

    move v1, v3

    goto :goto_0

    .line 11
    :cond_2
    :goto_1
    iget p1, p0, Lk7/l;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lk7/l;->c:I

    return-void

    .line 12
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e([BII)V
    .locals 4

    .line 1
    iget v0, p0, Lk7/l;->c:I

    if-lt v0, p3, :cond_3

    move v0, p3

    :cond_0
    :goto_0
    if-lez v0, :cond_2

    .line 2
    iget-object v1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 3
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v2

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {v1, p1, p2, v2}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :goto_1
    sub-int/2addr v0, v2

    add-int/2addr p2, v2

    .line 6
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-nez v2, :cond_0

    .line 7
    iget-object v2, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v2}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 8
    invoke-static {v1}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    .line 9
    :cond_2
    iget p1, p0, Lk7/l;->c:I

    sub-int/2addr p1, p3

    iput p1, p0, Lk7/l;->c:I

    return-void

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "length"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public f()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 1
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->size()I

    move-result v0

    new-array v0, v0, [Ljava/nio/ByteBuffer;

    .line 2
    iget-object v1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v1, v0}, Lu7/b;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;

    .line 3
    iget-object v1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v1}, Lu7/b;->clear()V

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lk7/l;->c:I

    return-object v0
.end method

.method public g()C
    .locals 3

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lk7/l;->l(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v1

    int-to-char v1, v1

    .line 2
    iget v2, p0, Lk7/l;->c:I

    sub-int/2addr v2, v0

    iput v2, p0, Lk7/l;->c:I

    return v1
.end method

.method public i()Z
    .locals 1

    .line 1
    iget v0, p0, Lk7/l;->c:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public j()Z
    .locals 1

    .line 1
    iget v0, p0, Lk7/l;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final l(I)Ljava/nio/ByteBuffer;
    .locals 7

    .line 1
    iget v0, p0, Lk7/l;->c:I

    if-lt v0, p1, :cond_6

    .line 2
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    :goto_0
    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    .line 5
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 6
    sget-object p1, Lk7/l;->j:Ljava/nio/ByteBuffer;

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    if-lt v1, p1, :cond_2

    .line 8
    iget-object p1, p0, Lk7/l;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    invoke-static {p1}, Lk7/l;->k(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 10
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_1
    move-object v4, v3

    :cond_3
    if-ge v2, p1, :cond_4

    .line 12
    iget-object v4, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v4}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    sub-int v5, p1, v2

    .line 13
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 14
    invoke-virtual {v4, v1, v2, v5}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    add-int/2addr v2, v5

    .line 15
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    if-nez v5, :cond_3

    .line 16
    invoke-static {v4}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_1

    :cond_4
    if-eqz v4, :cond_5

    .line 17
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-lez p1, :cond_5

    .line 18
    iget-object p1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {p1, v4}, Lu7/b;->addFirst(Ljava/lang/Object;)V

    .line 19
    :cond_5
    iget-object p1, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {p1, v0}, Lu7/b;->addFirst(Ljava/lang/Object;)V

    .line 20
    iget-object p1, p0, Lk7/l;->b:Ljava/nio/ByteOrder;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    return-object p1

    .line 21
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "count : "

    invoke-static {v1}, Landroid/support/v4/media/b;->j(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 22
    iget v2, p0, Lk7/l;->c:I

    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public n()V
    .locals 1

    .line 1
    :goto_0
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lk7/l;->m(Ljava/nio/ByteBuffer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lk7/l;->c:I

    return-void
.end method

.method public o()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    .line 2
    iget v1, p0, Lk7/l;->c:I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    sub-int/2addr v1, v2

    iput v1, p0, Lk7/l;->c:I

    return-object v0
.end method

.method public p()I
    .locals 1

    .line 1
    iget-object v0, p0, Lk7/l;->a:Lu7/b;

    invoke-virtual {v0}, Lu7/b;->size()I

    move-result v0

    return v0
.end method
