.class public final Lcom/flurry/sdk/iz;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/flurry/sdk/iz$a;
    }
.end annotation


# static fields
.field private static final e:Ljava/lang/String;


# instance fields
.field public a:J

.field public b:I

.field public c:Ljava/lang/String;

.field public d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Lcom/flurry/sdk/jd;

.field private i:Z

.field private j:I

.field private k:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/flurry/sdk/ja;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/flurry/sdk/iz;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZJJLcom/flurry/sdk/jd;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZJJ",
            "Lcom/flurry/sdk/jd;",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/flurry/sdk/iv;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/flurry/sdk/iz;->i:Z

    iput-wide p3, p0, Lcom/flurry/sdk/iz;->a:J

    iput-wide p5, p0, Lcom/flurry/sdk/iz;->g:J

    iput-object p7, p0, Lcom/flurry/sdk/iz;->h:Lcom/flurry/sdk/jd;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/flurry/sdk/iz;->f:J

    iput-object p8, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    const/4 p1, 0x0

    if-eqz p8, :cond_1

    invoke-interface {p8}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-interface {p8, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/flurry/sdk/iv;

    iput-object p0, p3, Lcom/flurry/sdk/iv;->g:Lcom/flurry/sdk/iz;

    goto :goto_0

    :cond_0
    invoke-interface {p8}, Ljava/util/Map;->size()I

    move-result p2

    iput p2, p0, Lcom/flurry/sdk/iz;->j:I

    goto :goto_1

    :cond_1
    iput p1, p0, Lcom/flurry/sdk/iz;->j:I

    :goto_1
    new-instance p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p2, p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p2, p0, Lcom/flurry/sdk/iz;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method public static synthetic a(Lcom/flurry/sdk/iz;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/iz;->b:I

    return p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/iz;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/iz;->a:J

    return-wide v0
.end method

.method public static synthetic a(Lcom/flurry/sdk/iz;J)J
    .locals 0

    iput-wide p1, p0, Lcom/flurry/sdk/iz;->f:J

    return-wide p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/iz;Ljava/util/Map;)Ljava/util/Map;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    return-object p1
.end method

.method public static synthetic a(Lcom/flurry/sdk/iz;Ljava/util/concurrent/atomic/AtomicInteger;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iput-object p1, p0, Lcom/flurry/sdk/iz;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p1
.end method

.method public static synthetic b(Lcom/flurry/sdk/iz;I)I
    .locals 0

    iput p1, p0, Lcom/flurry/sdk/iz;->j:I

    return p1
.end method

.method public static synthetic b(Lcom/flurry/sdk/iz;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/iz;->f:J

    return-wide v0
.end method

.method public static synthetic c(Lcom/flurry/sdk/iz;)J
    .locals 2

    iget-wide v0, p0, Lcom/flurry/sdk/iz;->g:J

    return-wide v0
.end method

.method public static synthetic d(Lcom/flurry/sdk/iz;)Lcom/flurry/sdk/jd;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iz;->h:Lcom/flurry/sdk/jd;

    return-object p0
.end method

.method public static synthetic e(Lcom/flurry/sdk/iz;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/flurry/sdk/iz;->i:Z

    return p0
.end method

.method public static synthetic f(Lcom/flurry/sdk/iz;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iz;->b:I

    return p0
.end method

.method public static synthetic g(Lcom/flurry/sdk/iz;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic h(Lcom/flurry/sdk/iz;)I
    .locals 0

    iget p0, p0, Lcom/flurry/sdk/iz;->j:I

    return p0
.end method

.method public static synthetic i(Lcom/flurry/sdk/iz;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iz;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object p0
.end method

.method public static synthetic j(Lcom/flurry/sdk/iz;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/flurry/sdk/iv;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized b()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iz;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->intValue()I

    move-result v0

    iget v1, p0, Lcom/flurry/sdk/iz;->j:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/flurry/sdk/iz;->k:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d()[B
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lcom/flurry/sdk/iz;->h:Lcom/flurry/sdk/jd;

    iget v0, v0, Lcom/flurry/sdk/jd;->e:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v3, p0, Lcom/flurry/sdk/iz;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v3, p0, Lcom/flurry/sdk/iz;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v0, p0, Lcom/flurry/sdk/iz;->i:Z

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/flurry/sdk/iz;->i:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/flurry/sdk/iz;->b:I

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/sdk/iz;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/flurry/sdk/iz;->d:Ljava/util/Map;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iv;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-object v3, v4, Lcom/flurry/sdk/le;->r:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    iget-object v3, v4, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v3, v4, Lcom/flurry/sdk/iv;->f:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/flurry/sdk/iw;

    iget v5, v4, Lcom/flurry/sdk/iw;->a:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v5, v4, Lcom/flurry/sdk/iw;->b:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-wide v5, v4, Lcom/flurry/sdk/iw;->c:J

    invoke-virtual {v2, v5, v6}, Ljava/io/DataOutputStream;->writeLong(J)V

    iget-boolean v5, v4, Lcom/flurry/sdk/iw;->d:Z

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    iget v5, v4, Lcom/flurry/sdk/iw;->e:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-object v5, v4, Lcom/flurry/sdk/iw;->f:Lcom/flurry/sdk/ix;

    iget v5, v5, Lcom/flurry/sdk/ix;->e:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget v5, v4, Lcom/flurry/sdk/iw;->e:I

    const/16 v6, 0xc8

    if-lt v5, v6, :cond_2

    const/16 v6, 0x190

    if-lt v5, v6, :cond_3

    :cond_2
    iget-object v5, v4, Lcom/flurry/sdk/iw;->g:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    array-length v6, v5

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->write([B)V

    :cond_3
    iget v5, v4, Lcom/flurry/sdk/iw;->h:I

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    iget-wide v4, v4, Lcom/flurry/sdk/iw;->k:J

    long-to-int v5, v4

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeInt(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    const/4 v1, 0x6

    :try_start_2
    sget-object v3, Lcom/flurry/sdk/iz;->e:Ljava/lang/String;

    const-string v4, "Error when generating report"

    invoke-static {v1, v3, v4, v0}, Lcom/flurry/sdk/ku;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    :goto_2
    invoke-static {v2}, Lcom/flurry/sdk/md;->a(Ljava/io/Closeable;)V

    throw v0
.end method
