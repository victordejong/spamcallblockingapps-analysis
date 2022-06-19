.class public final Lcom/google/api/client/googleapis/notifications/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final a:Ljava/lang/String; = "b"


# instance fields
.field private final b:Ljava/util/concurrent/locks/Lock;

.field private final c:Lcom/google/api/client/googleapis/notifications/f;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/Long;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/notifications/f;)V
    .locals 1

    .line 1029
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-direct {p0, p1, v0}, Lcom/google/api/client/googleapis/notifications/b;-><init>(Lcom/google/api/client/googleapis/notifications/f;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/api/client/googleapis/notifications/f;Ljava/lang/String;)V
    .locals 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    .line 93
    invoke-static {p1}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/googleapis/notifications/f;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/b;->c:Lcom/google/api/client/googleapis/notifications/f;

    .line 94
    invoke-static {p2}, Lcom/google/api/client/a/aa;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/google/api/client/googleapis/notifications/b;->f:Ljava/lang/String;

    return-void
.end method

.method private a()Lcom/google/api/client/googleapis/notifications/f;
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->c:Lcom/google/api/client/googleapis/notifications/f;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private b()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 151
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->d:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private c()Ljava/lang/Long;
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 178
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->e:Ljava/lang/Long;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private d()Ljava/lang/String;
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 202
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->f:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method

.method private e()Ljava/lang/String;
    .locals 2

    .line 213
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 215
    :try_start_0
    iget-object v0, p0, Lcom/google/api/client/googleapis/notifications/b;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/api/client/googleapis/notifications/b;->b:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 248
    :cond_0
    instance-of v0, p1, Lcom/google/api/client/googleapis/notifications/b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 251
    :cond_1
    check-cast p1, Lcom/google/api/client/googleapis/notifications/b;

    .line 252
    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1}, Lcom/google/api/client/googleapis/notifications/b;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 257
    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 237
    const-class v0, Lcom/google/api/client/googleapis/notifications/b;

    invoke-static {v0}, Lcom/google/api/client/a/y;->a(Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    .line 238
    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->a()Lcom/google/api/client/googleapis/notifications/f;

    move-result-object v1

    const-string v2, "notificationCallback"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->b()Ljava/lang/String;

    move-result-object v1

    const-string v2, "clientToken"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    .line 239
    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->c()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "expiration"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    invoke-direct {p0}, Lcom/google/api/client/googleapis/notifications/b;->e()Ljava/lang/String;

    move-result-object v1

    const-string v2, "topicId"

    invoke-virtual {v0, v2, v1}, Lcom/google/api/client/a/y$a;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/a/y$a;

    move-result-object v0

    .line 240
    invoke-virtual {v0}, Lcom/google/api/client/a/y$a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
