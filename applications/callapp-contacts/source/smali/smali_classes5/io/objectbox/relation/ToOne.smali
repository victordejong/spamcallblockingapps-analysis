.class public Lio/objectbox/relation/ToOne;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TARGET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Lio/objectbox/relation/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/relation/b<",
            "Ljava/lang/Object;",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field private final c:Z

.field private transient d:Lio/objectbox/BoxStore;

.field private transient e:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private volatile transient f:Lio/objectbox/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/objectbox/a<",
            "TTARGET;>;"
        }
    .end annotation
.end field

.field private transient g:Ljava/lang/reflect/Field;

.field private h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTARGET;"
        }
    .end annotation
.end field

.field private i:J

.field private volatile j:J

.field private k:Z

.field private l:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lio/objectbox/relation/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lio/objectbox/relation/b<",
            "*TTARGET;>;)V"
        }
    .end annotation

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    .line 82
    iput-object p1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    .line 83
    iput-object p2, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    .line 84
    iget-object p1, p2, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    iget-boolean p1, p1, Lio/objectbox/g;->g:Z

    iput-boolean p1, p0, Lio/objectbox/relation/ToOne;->c:Z

    return-void

    .line 80
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No relation info given (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 77
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "No source entity given (null)"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private a(J)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)TTARGET;"
        }
    .end annotation

    .line 97
    monitor-enter p0

    .line 98
    :try_start_0
    iget-wide v0, p0, Lio/objectbox/relation/ToOne;->j:J

    cmp-long v2, v0, p1

    if-nez v2, :cond_0

    .line 99
    iget-object p1, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;

    monitor-exit p0

    return-object p1

    .line 101
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2113
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->f:Lio/objectbox/a;

    if-nez v0, :cond_3

    .line 2114
    invoke-static {}, Lio/objectbox/b/f;->a()Lio/objectbox/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "__boxStore"

    invoke-virtual {v0, v1, v2}, Lio/objectbox/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 2116
    :try_start_1
    iget-object v1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/objectbox/BoxStore;

    iput-object v0, p0, Lio/objectbox/relation/ToOne;->d:Lio/objectbox/BoxStore;

    if-nez v0, :cond_2

    if-eqz v0, :cond_1

    goto :goto_0

    .line 2123
    :cond_1
    new-instance p1, Lio/objectbox/exception/DbDetachedException;

    const-string p2, "Cannot resolve relation for detached entities, call box.attach(entity) beforehand."

    invoke-direct {p1, p2}, Lio/objectbox/exception/DbDetachedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2168
    :cond_2
    :goto_0
    iget-boolean v0, v0, Lio/objectbox/BoxStore;->k:Z

    .line 2127
    iput-boolean v0, p0, Lio/objectbox/relation/ToOne;->l:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2131
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->d:Lio/objectbox/BoxStore;

    iget-object v1, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->a:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToOne;->e:Lio/objectbox/a;

    .line 2132
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->d:Lio/objectbox/BoxStore;

    iget-object v1, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    iget-object v1, v1, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v1}, Lio/objectbox/c;->getEntityClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/objectbox/BoxStore;->d(Ljava/lang/Class;)Lio/objectbox/a;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToOne;->f:Lio/objectbox/a;

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2129
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 105
    :cond_3
    :goto_1
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->f:Lio/objectbox/a;

    invoke-virtual {v0, p1, p2}, Lio/objectbox/a;->a(J)Ljava/lang/Object;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0, p1, p2}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;J)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 101
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method private declared-synchronized a(Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;J)V"
        }
    .end annotation

    monitor-enter p0

    .line 252
    :try_start_0
    iget-boolean v0, p0, Lio/objectbox/relation/ToOne;->l:Z

    if-eqz v0, :cond_1

    .line 253
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Setting resolved ToOne target to "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string v2, "null"

    goto :goto_0

    :cond_0
    const-string v2, "non-null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_1
    iput-wide p2, p0, Lio/objectbox/relation/ToOne;->j:J

    .line 257
    iput-object p1, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 258
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const-wide/16 v0, 0x0

    .line 264
    :try_start_0
    iput-wide v0, p0, Lio/objectbox/relation/ToOne;->j:J

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private e()Ljava/lang/reflect/Field;
    .locals 3

    .line 284
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->g:Ljava/lang/reflect/Field;

    if-nez v0, :cond_0

    .line 285
    invoke-static {}, Lio/objectbox/b/f;->a()Lio/objectbox/b/f;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    iget-object v2, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    iget-object v2, v2, Lio/objectbox/relation/b;->c:Lio/objectbox/g;

    iget-object v2, v2, Lio/objectbox/g;->e:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lio/objectbox/b/f;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    iput-object v0, p0, Lio/objectbox/relation/ToOne;->g:Ljava/lang/reflect/Field;

    .line 287
    :cond_0
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->g:Ljava/lang/reflect/Field;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTARGET;"
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lio/objectbox/relation/ToOne;->a(J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final a(Lio/objectbox/Cursor;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/objectbox/Cursor<",
            "TTARGET;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    iput-boolean v0, p0, Lio/objectbox/relation/ToOne;->k:Z

    .line 299
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lio/objectbox/Cursor;->put(Ljava/lang/Object;)J

    move-result-wide v0

    .line 300
    invoke-virtual {p0, v0, v1}, Lio/objectbox/relation/ToOne;->setTargetId(J)V

    .line 301
    iget-object p1, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;

    invoke-direct {p0, p1, v0, v1}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;J)V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTARGET;)V"
        }
    .end annotation

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_1

    .line 193
    iget-object v2, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    iget-object v2, v2, Lio/objectbox/relation/b;->b:Lio/objectbox/c;

    invoke-interface {v2}, Lio/objectbox/c;->getIdGetter()Lio/objectbox/b/c;

    move-result-object v2

    invoke-interface {v2, p1}, Lio/objectbox/b/c;->getId(Ljava/lang/Object;)J

    move-result-wide v2

    cmp-long v4, v2, v0

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 194
    :goto_0
    iput-boolean v0, p0, Lio/objectbox/relation/ToOne;->k:Z

    .line 195
    invoke-virtual {p0, v2, v3}, Lio/objectbox/relation/ToOne;->setTargetId(J)V

    .line 196
    invoke-direct {p0, p1, v2, v3}, Lio/objectbox/relation/ToOne;->a(Ljava/lang/Object;J)V

    return-void

    .line 198
    :cond_1
    invoke-virtual {p0, v0, v1}, Lio/objectbox/relation/ToOne;->setTargetId(J)V

    .line 199
    invoke-direct {p0}, Lio/objectbox/relation/ToOne;->d()V

    return-void
.end method

.method public final b()J
    .locals 3

    .line 269
    iget-boolean v0, p0, Lio/objectbox/relation/ToOne;->c:Z

    if-eqz v0, :cond_0

    .line 270
    iget-wide v0, p0, Lio/objectbox/relation/ToOne;->i:J

    return-wide v0

    .line 273
    :cond_0
    invoke-direct {p0}, Lio/objectbox/relation/ToOne;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 276
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :cond_1
    const-wide/16 v0, 0x0

    return-wide v0

    .line 278
    :catch_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Could not access field "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Z
    .locals 5

    .line 293
    iget-boolean v0, p0, Lio/objectbox/relation/ToOne;->k:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/objectbox/relation/ToOne;->h:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 311
    instance-of v0, p1, Lio/objectbox/relation/ToOne;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    check-cast p1, Lio/objectbox/relation/ToOne;

    .line 313
    iget-object v0, p0, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    iget-object v2, p1, Lio/objectbox/relation/ToOne;->b:Lio/objectbox/relation/b;

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v2

    invoke-virtual {p1}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 318
    invoke-virtual {p0}, Lio/objectbox/relation/ToOne;->b()J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public setTargetId(J)V
    .locals 3

    .line 161
    iget-boolean v0, p0, Lio/objectbox/relation/ToOne;->c:Z

    if-eqz v0, :cond_0

    .line 162
    iput-wide p1, p0, Lio/objectbox/relation/ToOne;->i:J

    goto :goto_0

    .line 165
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lio/objectbox/relation/ToOne;->e()Ljava/lang/reflect/Field;

    move-result-object v0

    iget-object v1, p0, Lio/objectbox/relation/ToOne;->a:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    .line 171
    iput-boolean p1, p0, Lio/objectbox/relation/ToOne;->k:Z

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 167
    new-instance p2, Ljava/lang/RuntimeException;

    const-string v0, "Could not update to-one ID in entity"

    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method
