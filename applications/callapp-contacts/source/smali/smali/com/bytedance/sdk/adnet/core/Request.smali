.class public abstract Lcom/bytedance/sdk/adnet/core/Request;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/adnet/core/Request$b;,
        Lcom/bytedance/sdk/adnet/core/Request$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/bytedance/sdk/adnet/core/Request<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field public static final METHOD_DELETE:I = 0x3

.field public static final METHOD_DEPRECATED_GET_OR_POST:I = -0x1

.field public static final METHOD_GET:I = 0x0

.field public static final METHOD_HEAD:I = 0x4

.field public static final METHOD_OPTIONS:I = 0x5

.field public static final METHOD_PATCH:I = 0x7

.field public static final METHOD_POST:I = 0x1

.field public static final METHOD_PUT:I = 0x2

.field public static final METHOD_TRACE:I = 0x6


# instance fields
.field protected a:Lcom/bytedance/sdk/adnet/core/m$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bytedance/sdk/adnet/core/m$a<",
            "TT;>;"
        }
    .end annotation
.end field

.field protected b:Landroid/os/Handler;

.field private final c:Lcom/bytedance/sdk/adnet/core/o$a;

.field private final d:I

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;

.field private final g:I

.field private final h:Ljava/lang/Object;

.field private i:Ljava/lang/Integer;

.field private j:Lcom/bytedance/sdk/adnet/core/l;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Lcom/bytedance/sdk/adnet/face/d;

.field private p:Lcom/bytedance/sdk/adnet/face/a$a;

.field private q:Ljava/lang/Object;

.field private r:J

.field private s:J

.field private t:Z

.field private u:Ljava/lang/String;

.field private v:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/bytedance/sdk/adnet/core/Request$a;


# direct methods
.method public constructor <init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o$a;->a:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/bytedance/sdk/adnet/core/o$a;

    invoke-direct {v0}, Lcom/bytedance/sdk/adnet/core/o$a;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/o$a;

    const-string v0, "VADNetAgent/0"

    .line 98
    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    const/4 v0, 0x1

    .line 131
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    const/4 v2, 0x0

    .line 136
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    .line 142
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    .line 148
    iput-boolean v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    .line 160
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    const-wide/16 v1, 0x0

    .line 167
    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    .line 168
    iput-wide v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    .line 170
    iput-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->b:Landroid/os/Handler;

    .line 203
    iput p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->d:I

    .line 204
    iput-object p2, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    .line 205
    iput-object p3, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 206
    new-instance p1, Lcom/bytedance/sdk/adnet/core/e;

    invoke-direct {p1}, Lcom/bytedance/sdk/adnet/core/e;-><init>()V

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/Request;->setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;

    .line 208
    invoke-static {p2}, Lcom/bytedance/sdk/adnet/core/Request;->b(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->g:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, -0x1

    .line 193
    invoke-direct {p0, v0, p1, p2}, Lcom/bytedance/sdk/adnet/core/Request;-><init>(ILjava/lang/String;Lcom/bytedance/sdk/adnet/core/m$a;)V

    return-void
.end method

.method static synthetic a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/o$a;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/o$a;

    return-object p0
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)[B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")[B"
        }
    .end annotation

    .line 622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 624
    :try_start_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 625
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 633
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3d

    .line 634
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 635
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x26

    .line 636
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 626
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Request#getParams() or Request#getPostParams() returned a map containing a null key or value: (%s, %s). All keys and values must be non-null."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 631
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v2, v3

    .line 627
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 638
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 640
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "Encoding not supported: "

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static b(Ljava/lang/String;)I
    .locals 1

    .line 304
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 305
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 307
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 309
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected abstract a(Lcom/bytedance/sdk/adnet/core/i;)Lcom/bytedance/sdk/adnet/core/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/i;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;"
        }
    .end annotation
.end method

.method protected a(Lcom/bytedance/sdk/adnet/err/VAdError;)Lcom/bytedance/sdk/adnet/err/VAdError;
    .locals 0

    return-object p1
.end method

.method protected a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 523
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->c()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method a(I)V
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/l;

    if-eqz v0, :cond_0

    .line 378
    invoke-virtual {v0, p0, p1}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;I)V

    :cond_0
    return-void
.end method

.method protected a(JJ)V
    .locals 0

    return-void
.end method

.method a(Lcom/bytedance/sdk/adnet/core/Request$a;)V
    .locals 1

    .line 794
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 795
    :try_start_0
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 796
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected abstract a(Lcom/bytedance/sdk/adnet/core/m;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .line 352
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/l;

    if-eqz v0, :cond_0

    .line 353
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/adnet/core/l;->c(Lcom/bytedance/sdk/adnet/core/Request;)V

    .line 355
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o$a;->a:Z

    if-eqz v0, :cond_2

    .line 356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v0

    .line 357
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-eq v2, v3, :cond_1

    .line 360
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->b:Landroid/os/Handler;

    new-instance v3, Lcom/bytedance/sdk/adnet/core/Request$1;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request$1;-><init>(Lcom/bytedance/sdk/adnet/core/Request;Ljava/lang/String;J)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 371
    :cond_1
    iget-object v2, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/o$a;

    invoke-virtual {v2, p1, v0, v1}, Lcom/bytedance/sdk/adnet/core/o$a;->a(Ljava/lang/String;J)V

    .line 372
    iget-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/o$a;

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/adnet/core/o$a;->a(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 1

    .line 215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    if-nez v0, :cond_1

    .line 219
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    .line 221
    :cond_1
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-object p0
.end method

.method public addMarker(Ljava/lang/String;)V
    .locals 3

    .line 332
    sget-boolean v0, Lcom/bytedance/sdk/adnet/core/o$a;->a:Z

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->c:Lcom/bytedance/sdk/adnet/core/o$a;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/bytedance/sdk/adnet/core/o$a;->a(Ljava/lang/String;J)V

    :cond_0
    return-void
.end method

.method protected b()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 543
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method b(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "*>;)V"
        }
    .end annotation

    .line 815
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 816
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 817
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 819
    invoke-interface {v1, p0, p1}, Lcom/bytedance/sdk/adnet/core/Request$a;->a(Lcom/bytedance/sdk/adnet/core/Request;Lcom/bytedance/sdk/adnet/core/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 817
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public build(Lcom/bytedance/sdk/adnet/core/l;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 733
    invoke-virtual {p1, p0}, Lcom/bytedance/sdk/adnet/core/l;->a(Lcom/bytedance/sdk/adnet/core/Request;)Lcom/bytedance/sdk/adnet/core/Request;

    :cond_0
    return-void
.end method

.method protected c()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public cancel()V
    .locals 2

    .line 486
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 487
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    const/4 v1, 0x0

    .line 488
    iput-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 489
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public compareTo(Lcom/bytedance/sdk/adnet/core/Request;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "TT;>;)I"
        }
    .end annotation

    .line 843
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v0

    .line 844
    invoke-virtual {p1}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 848
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object p1, p1, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sub-int/2addr v0, p1

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/bytedance/sdk/adnet/core/Request$b;->ordinal()I

    move-result p1

    invoke-virtual {v0}, Lcom/bytedance/sdk/adnet/core/Request$b;->ordinal()I

    move-result v0

    sub-int/2addr p1, v0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/bytedance/sdk/adnet/core/Request;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/adnet/core/Request;->compareTo(Lcom/bytedance/sdk/adnet/core/Request;)I

    move-result p1

    return p1
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "UTF-8"

    return-object v0
.end method

.method public deliverError(Lcom/bytedance/sdk/adnet/core/m;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/m<",
            "TT;>;)V"
        }
    .end annotation

    .line 780
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 781
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/m$a;

    .line 782
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 784
    invoke-interface {v1, p1}, Lcom/bytedance/sdk/adnet/core/m$a;->b(Lcom/bytedance/sdk/adnet/core/m;)V

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    .line 782
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method e()V
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 830
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->w:Lcom/bytedance/sdk/adnet/core/Request$a;

    .line 831
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 833
    invoke-interface {v1, p0}, Lcom/bytedance/sdk/adnet/core/Request$a;->a(Lcom/bytedance/sdk/adnet/core/Request;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    .line 831
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBaseListener()Lcom/bytedance/sdk/adnet/core/m$a;
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->a:Lcom/bytedance/sdk/adnet/core/m$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 611
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->c()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 612
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 613
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBodyContentType()Ljava/lang/String;
    .locals 2

    .line 598
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "application/x-www-form-urlencoded; charset="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCacheEntry()Lcom/bytedance/sdk/adnet/face/a$a;
    .locals 1

    .line 466
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    return-object v0
.end method

.method public getCacheKey()Ljava/lang/String;
    .locals 3

    .line 437
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 444
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getMethod()I

    move-result v1

    if-eqz v1, :cond_1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 448
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public getExtra()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->v:Ljava/util/Map;

    return-object v0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .line 508
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public getIpAddrStr()Ljava/lang/String;
    .locals 1

    .line 800
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->u:Ljava/lang/String;

    return-object v0
.end method

.method public getMethod()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->d:I

    return v0
.end method

.method public getNetDuration()J
    .locals 2

    .line 238
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    return-wide v0
.end method

.method public getPostBody()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/bytedance/sdk/adnet/err/a;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 558
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->a()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 559
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 560
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/bytedance/sdk/adnet/core/Request;->a(Ljava/util/Map;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;
    .locals 1

    .line 693
    sget-object v0, Lcom/bytedance/sdk/adnet/core/Request$b;->b:Lcom/bytedance/sdk/adnet/core/Request$b;

    return-object v0
.end method

.method public final getRequestQueue()Lcom/bytedance/sdk/adnet/core/l;
    .locals 1

    .line 404
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/l;

    return-object v0
.end method

.method public getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;
    .locals 1

    .line 709
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->o:Lcom/bytedance/sdk/adnet/face/d;

    return-object v0
.end method

.method public final getSequence()I
    .locals 2

    .line 411
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 412
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getSequence called before setSequence"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStartTime()J
    .locals 2

    .line 230
    iget-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->q:Ljava/lang/Object;

    return-object v0
.end method

.method public final getTimeoutMs()I
    .locals 1

    .line 702
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getRetryPolicy()Lcom/bytedance/sdk/adnet/face/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/adnet/face/d;->a()I

    move-result v0

    return v0
.end method

.method public getTrafficStatsTag()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->g:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 421
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 1

    .line 338
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    return-object v0
.end method

.method public hasHadResponseDelivered()Z
    .locals 2

    .line 726
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 727
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 728
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isCanceled()Z
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-boolean v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->l:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 498
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isResponseOnMain()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    return v0
.end method

.method public markDelivered()V
    .locals 2

    .line 717
    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->h:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 718
    :try_start_0
    iput-boolean v1, p0, Lcom/bytedance/sdk/adnet/core/Request;->m:Z

    .line 719
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCacheEntry(Lcom/bytedance/sdk/adnet/face/a$a;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/a$a;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 458
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->p:Lcom/bytedance/sdk/adnet/face/a$a;

    return-object p0
.end method

.method public setIpAddrStr(Ljava/lang/String;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->u:Ljava/lang/String;

    return-void
.end method

.method public setNetDuration(J)V
    .locals 0

    .line 242
    iput-wide p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->s:J

    return-void
.end method

.method public setRequestQueue(Lcom/bytedance/sdk/adnet/core/l;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/core/l;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 389
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->j:Lcom/bytedance/sdk/adnet/core/l;

    return-object p0
.end method

.method public setResponseOnMain(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 250
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->t:Z

    return-object p0
.end method

.method public setRetryPolicy(Lcom/bytedance/sdk/adnet/face/d;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bytedance/sdk/adnet/face/d;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 324
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->o:Lcom/bytedance/sdk/adnet/face/d;

    return-object p0
.end method

.method public final setSequence(I)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 399
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setShouldCache(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 650
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    return-object p0
.end method

.method public final setShouldRetryServerErrors(Z)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 667
    iput-boolean p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    return-object p0
.end method

.method public setStartTime()V
    .locals 2

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->r:J

    return-void
.end method

.method public setTag(Ljava/lang/Object;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 268
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->q:Ljava/lang/Object;

    return-object p0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 430
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->e:Ljava/lang/String;

    return-void
.end method

.method public setUserAgent(Ljava/lang/String;)Lcom/bytedance/sdk/adnet/core/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/bytedance/sdk/adnet/core/Request<",
            "*>;"
        }
    .end annotation

    .line 342
    iput-object p1, p0, Lcom/bytedance/sdk/adnet/core/Request;->f:Ljava/lang/String;

    return-object p0
.end method

.method public final shouldCache()Z
    .locals 1

    .line 658
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->k:Z

    return v0
.end method

.method public final shouldRetryServerErrors()Z
    .locals 1

    .line 675
    iget-boolean v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->n:Z

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "0x"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getTrafficStatsTag()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->isCanceled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "[X] "

    goto :goto_0

    :cond_0
    const-string v2, "[ ] "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 855
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 859
    invoke-virtual {p0}, Lcom/bytedance/sdk/adnet/core/Request;->getPriority()Lcom/bytedance/sdk/adnet/core/Request$b;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/bytedance/sdk/adnet/core/Request;->i:Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
