.class public Ld2/w0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ld2/f4;

.field public final synthetic c:Ld2/u0;


# direct methods
.method public constructor <init>(Ld2/u0;Ljava/lang/String;Ld2/f4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld2/w0;->c:Ld2/u0;

    iput-object p2, p0, Ld2/w0;->a:Ljava/lang/String;

    iput-object p3, p0, Ld2/w0;->b:Ld2/f4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Ld2/w0;->c:Ld2/u0;

    iget-object v1, p0, Ld2/w0;->a:Ljava/lang/String;

    iget-object v2, p0, Ld2/w0;->b:Ld2/f4;

    .line 2
    iget-object v3, v0, Ld2/u0;->d:Ljava/util/HashMap;

    monitor-enter v3

    .line 3
    :try_start_0
    iget-object v0, v0, Ld2/u0;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 4
    monitor-exit v3

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Ld2/t0;

    invoke-direct {v0, v2}, Ld2/t0;-><init>(Ld2/f4;)V

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ld2/y0;

    .line 9
    :try_start_1
    invoke-interface {v2, v0}, Ld2/y0;->a(Ld2/t0;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 13
    invoke-static {}, Ld2/t;->d()Ld2/f1;

    move-result-object v2

    invoke-virtual {v2}, Ld2/f1;->p()Ld2/h0;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 14
    invoke-virtual {v2, v4, v4, v1, v3}, Ld2/h0;->e(IILjava/lang/String;Z)V

    .line 15
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_1
    :goto_1
    return-void

    :catchall_0
    move-exception v0

    .line 16
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method
