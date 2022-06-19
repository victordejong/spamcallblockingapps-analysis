.class public Lcom/google/api/client/http/c0;
.super Ljava/lang/Object;
.source "OpenCensusUtils.java"


# static fields
.field private static final a:Ljava/util/logging/Logger;

.field public static final b:Ljava/lang/String;

.field private static final c:Lio/opencensus/trace/r;

.field private static final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private static volatile e:Z

.field static volatile f:Lio/opencensus/trace/propagation/a;

.field static volatile g:Lio/opencensus/trace/propagation/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-class v0, Lcom/google/api/client/http/c0;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/c0;->a:Ljava/util/logging/Logger;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sent."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/google/api/client/http/q;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".execute"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/c0;->b:Ljava/lang/String;

    .line 4
    invoke-static {}, Lio/opencensus/trace/t;->b()Lio/opencensus/trace/r;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/c0;->c:Lio/opencensus/trace/r;

    .line 5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lcom/google/api/client/http/c0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    const/4 v0, 0x1

    .line 6
    sput-boolean v0, Lcom/google/api/client/http/c0;->e:Z

    const/4 v0, 0x0

    .line 7
    sput-object v0, Lcom/google/api/client/http/c0;->f:Lio/opencensus/trace/propagation/a;

    .line 8
    sput-object v0, Lcom/google/api/client/http/c0;->g:Lio/opencensus/trace/propagation/a$c;

    .line 9
    :try_start_0
    invoke-static {}, Ld/b/a/a/a/b;->a()Lio/opencensus/trace/propagation/a;

    move-result-object v0

    sput-object v0, Lcom/google/api/client/http/c0;->f:Lio/opencensus/trace/propagation/a;

    .line 10
    new-instance v0, Lcom/google/api/client/http/c0$a;

    invoke-direct {v0}, Lcom/google/api/client/http/c0$a;-><init>()V

    sput-object v0, Lcom/google/api/client/http/c0;->g:Lio/opencensus/trace/propagation/a$c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 11
    sget-object v1, Lcom/google/api/client/http/c0;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot initialize default OpenCensus HTTP propagation text format."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    :goto_0
    :try_start_1
    invoke-static {}, Lio/opencensus/trace/t;->a()Lio/opencensus/trace/u/b;

    move-result-object v0

    .line 13
    invoke-virtual {v0}, Lio/opencensus/trace/u/b;->a()Lio/opencensus/trace/u/c;

    move-result-object v0

    sget-object v1, Lcom/google/api/client/http/c0;->b:Ljava/lang/String;

    .line 14
    invoke-static {v1}, Lcom/google/common/collect/ImmutableList;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/opencensus/trace/u/c;->b(Ljava/util/Collection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 15
    sget-object v1, Lcom/google/api/client/http/c0;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "Cannot register default OpenCensus span names for collection."

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Integer;)Lio/opencensus/trace/k;
    .locals 2

    .line 1
    invoke-static {}, Lio/opencensus/trace/k;->a()Lio/opencensus/trace/k$a;

    move-result-object v0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lio/opencensus/trace/Status;->d:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Lcom/google/api/client/http/v;->b(I)Z

    move-result v1

    if-nez v1, :cond_7

    .line 4
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/16 v1, 0x190

    if-eq p0, v1, :cond_6

    const/16 v1, 0x191

    if-eq p0, v1, :cond_5

    const/16 v1, 0x193

    if-eq p0, v1, :cond_4

    const/16 v1, 0x194

    if-eq p0, v1, :cond_3

    const/16 v1, 0x19c

    if-eq p0, v1, :cond_2

    const/16 v1, 0x1f4

    if-eq p0, v1, :cond_1

    .line 5
    sget-object p0, Lio/opencensus/trace/Status;->d:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 6
    :cond_1
    sget-object p0, Lio/opencensus/trace/Status;->q:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 7
    :cond_2
    sget-object p0, Lio/opencensus/trace/Status;->l:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 8
    :cond_3
    sget-object p0, Lio/opencensus/trace/Status;->g:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 9
    :cond_4
    sget-object p0, Lio/opencensus/trace/Status;->i:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 10
    :cond_5
    sget-object p0, Lio/opencensus/trace/Status;->j:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 11
    :cond_6
    sget-object p0, Lio/opencensus/trace/Status;->e:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    goto :goto_0

    .line 12
    :cond_7
    sget-object p0, Lio/opencensus/trace/Status;->b:Lio/opencensus/trace/Status;

    invoke-virtual {v0, p0}, Lio/opencensus/trace/k$a;->b(Lio/opencensus/trace/Status;)Lio/opencensus/trace/k$a;

    .line 13
    :goto_0
    invoke-virtual {v0}, Lio/opencensus/trace/k$a;->a()Lio/opencensus/trace/k;

    move-result-object p0

    return-object p0
.end method

.method public static b()Lio/opencensus/trace/r;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/api/client/http/c0;->c:Lio/opencensus/trace/r;

    return-object v0
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/google/api/client/http/c0;->e:Z

    return v0
.end method

.method public static d(Lio/opencensus/trace/Span;Lcom/google/api/client/http/n;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v3, "span should not be null."

    .line 1
    invoke-static {v2, v3}, Lcom/google/api/client/util/w;->b(ZLjava/lang/Object;)V

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v1, "headers should not be null."

    .line 2
    invoke-static {v0, v1}, Lcom/google/api/client/util/w;->b(ZLjava/lang/Object;)V

    .line 3
    sget-object v0, Lcom/google/api/client/http/c0;->f:Lio/opencensus/trace/propagation/a;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/google/api/client/http/c0;->g:Lio/opencensus/trace/propagation/a$c;

    if-eqz v0, :cond_2

    .line 4
    sget-object v0, Lio/opencensus/trace/i;->e:Lio/opencensus/trace/i;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    sget-object v0, Lcom/google/api/client/http/c0;->f:Lio/opencensus/trace/propagation/a;

    invoke-virtual {p0}, Lio/opencensus/trace/Span;->h()Lio/opencensus/trace/m;

    move-result-object p0

    sget-object v1, Lcom/google/api/client/http/c0;->g:Lio/opencensus/trace/propagation/a$c;

    invoke-virtual {v0, p0, p1, v1}, Lio/opencensus/trace/propagation/a;->a(Lio/opencensus/trace/m;Ljava/lang/Object;Lio/opencensus/trace/propagation/a$c;)V

    :cond_2
    return-void
.end method

.method static e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V
    .locals 3

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "span should not be null."

    .line 1
    invoke-static {v0, v1}, Lcom/google/api/client/util/w;->b(ZLjava/lang/Object;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    move-wide p1, v0

    .line 2
    :cond_1
    sget-object v0, Lcom/google/api/client/http/c0;->d:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    invoke-static {p3, v0, v1}, Lio/opencensus/trace/MessageEvent;->a(Lio/opencensus/trace/MessageEvent$Type;J)Lio/opencensus/trace/MessageEvent$a;

    move-result-object p3

    .line 4
    invoke-virtual {p3, p1, p2}, Lio/opencensus/trace/MessageEvent$a;->d(J)Lio/opencensus/trace/MessageEvent$a;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lio/opencensus/trace/MessageEvent$a;->a()Lio/opencensus/trace/MessageEvent;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1}, Lio/opencensus/trace/Span;->d(Lio/opencensus/trace/MessageEvent;)V

    return-void
.end method

.method public static f(Lio/opencensus/trace/Span;J)V
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->e:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/c0;->e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    return-void
.end method

.method public static g(Lio/opencensus/trace/Span;J)V
    .locals 1

    .line 1
    sget-object v0, Lio/opencensus/trace/MessageEvent$Type;->d:Lio/opencensus/trace/MessageEvent$Type;

    invoke-static {p0, p1, p2, v0}, Lcom/google/api/client/http/c0;->e(Lio/opencensus/trace/Span;JLio/opencensus/trace/MessageEvent$Type;)V

    return-void
.end method
