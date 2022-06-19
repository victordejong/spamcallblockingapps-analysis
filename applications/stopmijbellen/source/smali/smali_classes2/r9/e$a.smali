.class public Lr9/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lr9/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lr9/e;


# direct methods
.method public constructor <init>(Lr9/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lr9/e$a;->a:Lr9/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lr9/e$a;->a:Lr9/e;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    iget-boolean v2, v1, Lr9/e;->n:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-boolean v5, v1, Lr9/e;->o:Z

    or-int/2addr v2, v5

    if-eqz v2, :cond_1

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {v1}, Lr9/e;->L()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 5
    :catch_0
    :try_start_2
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    iput-boolean v4, v1, Lr9/e;->p:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6
    :goto_1
    :try_start_3
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    invoke-virtual {v1}, Lr9/e;->r()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 7
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    invoke-virtual {v1}, Lr9/e;->J()V

    .line 8
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    iput v3, v1, Lr9/e;->l:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 9
    :catch_1
    :try_start_4
    iget-object v1, p0, Lr9/e$a;->a:Lr9/e;

    iput-boolean v4, v1, Lr9/e;->q:Z

    .line 10
    sget-object v2, Laa/o;->a:Ljava/util/logging/Logger;

    .line 11
    new-instance v2, Laa/p;

    invoke-direct {v2}, Laa/p;-><init>()V

    .line 12
    new-instance v3, Laa/r;

    invoke-direct {v3, v2}, Laa/r;-><init>(Laa/x;)V

    .line 13
    iput-object v3, v1, Lr9/e;->j:Laa/g;

    .line 14
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
