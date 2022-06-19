.class final Lcom/allinone/callerid/util/t9/b;
.super Ljava/lang/Object;
.source "Pool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:[Ljava/lang/Object;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/allinone/callerid/util/t9/b;->a:Ljava/lang/Object;

    if-lez p1, :cond_0

    .line 3
    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/allinone/callerid/util/t9/b;->b:[Ljava/lang/Object;

    return-void

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The max pool size must be > 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private b(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/allinone/callerid/util/t9/b;->c:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/allinone/callerid/util/t9/b;->b:[Ljava/lang/Object;

    aget-object v2, v2, v1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/t9/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget v1, p0, Lcom/allinone/callerid/util/t9/b;->c:I

    const/4 v2, 0x0

    if-lez v1, :cond_0

    add-int/lit8 v3, v1, -0x1

    .line 3
    iget-object v4, p0, Lcom/allinone/callerid/util/t9/b;->b:[Ljava/lang/Object;

    aget-object v5, v4, v3

    .line 4
    aput-object v2, v4, v3

    add-int/lit8 v1, v1, -0x1

    .line 5
    iput v1, p0, Lcom/allinone/callerid/util/t9/b;->c:I

    .line 6
    monitor-exit v0

    return-object v5

    .line 7
    :cond_0
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    .line 8
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public c(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/allinone/callerid/util/t9/b;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-direct {p0, p1}, Lcom/allinone/callerid/util/t9/b;->b(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 3
    iget v1, p0, Lcom/allinone/callerid/util/t9/b;->c:I

    iget-object v2, p0, Lcom/allinone/callerid/util/t9/b;->b:[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 4
    aput-object p1, v2, v1

    const/4 p1, 0x1

    add-int/2addr v1, p1

    .line 5
    iput v1, p0, Lcom/allinone/callerid/util/t9/b;->c:I

    .line 6
    monitor-exit v0

    return p1

    :cond_0
    const/4 p1, 0x0

    .line 7
    monitor-exit v0

    return p1

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v1, "Already in the pool!"

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
