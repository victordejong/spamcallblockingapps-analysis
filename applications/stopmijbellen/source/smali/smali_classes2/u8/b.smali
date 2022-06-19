.class public Lu8/b;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field public a:J

.field public final b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/raizlabs/android/dbflow/config/c;

.field public final d:Ld9/e$b;

.field public final e:Ld9/h$c;

.field public final f:Ld9/h$b;


# direct methods
.method public constructor <init>(Lcom/raizlabs/android/dbflow/config/c;)V
    .locals 2

    const-string v0, "DBBatchSaveQueue"

    .line 1
    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x7530

    .line 2
    iput-wide v0, p0, Lu8/b;->a:J

    .line 3
    new-instance v0, Lu8/b$a;

    invoke-direct {v0, p0}, Lu8/b$a;-><init>(Lu8/b;)V

    iput-object v0, p0, Lu8/b;->d:Ld9/e$b;

    .line 4
    new-instance v0, Lu8/b$b;

    invoke-direct {v0, p0}, Lu8/b$b;-><init>(Lu8/b;)V

    iput-object v0, p0, Lu8/b;->e:Ld9/h$c;

    .line 5
    new-instance v0, Lu8/b$c;

    invoke-direct {v0, p0}, Lu8/b$c;-><init>(Lu8/b;)V

    iput-object v0, p0, Lu8/b;->f:Ld9/h$b;

    .line 6
    iput-object p1, p0, Lu8/b;->c:Lcom/raizlabs/android/dbflow/config/c;

    .line 7
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lu8/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    invoke-static {}, Landroid/os/Looper;->prepare()V

    const/16 v0, 0xa

    .line 3
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lu8/b;->b:Ljava/util/ArrayList;

    monitor-enter v0

    .line 5
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lu8/b;->b:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 6
    iget-object v2, p0, Lu8/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 7
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 9
    iget-object v0, p0, Lu8/b;->c:Lcom/raizlabs/android/dbflow/config/c;

    new-instance v2, Ld9/e$a;

    iget-object v3, p0, Lu8/b;->d:Ld9/e$b;

    invoke-direct {v2, v3}, Ld9/e$a;-><init>(Ld9/e$b;)V

    .line 10
    iget-object v3, v2, Ld9/e$a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    new-instance v1, Ld9/e;

    invoke-direct {v1, v2}, Ld9/e;-><init>(Ld9/e$a;)V

    .line 12
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v2, Ld9/h$a;

    invoke-direct {v2, v1, v0}, Ld9/h$a;-><init>(Ld9/c;Lcom/raizlabs/android/dbflow/config/c;)V

    .line 14
    iget-object v0, p0, Lu8/b;->e:Ld9/h$c;

    .line 15
    iput-object v0, v2, Ld9/h$a;->d:Ld9/h$c;

    .line 16
    iget-object v0, p0, Lu8/b;->f:Ld9/h$b;

    .line 17
    iput-object v0, v2, Ld9/h$a;->c:Ld9/h$b;

    .line 18
    new-instance v0, Ld9/h;

    invoke-direct {v0, v2}, Ld9/h;-><init>(Ld9/h$a;)V

    .line 19
    invoke-virtual {v0}, Ld9/h;->a()V

    .line 20
    :cond_0
    :try_start_1
    iget-wide v0, p0, Lu8/b;->a:J

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 21
    :catch_0
    sget-object v0, Lcom/raizlabs/android/dbflow/config/f$b;->b:Lcom/raizlabs/android/dbflow/config/f$b;

    const-string v1, "DBRequestQueue Batch interrupted to start saving"

    const/4 v2, 0x0

    .line 22
    invoke-static {v0, v1, v2}, Lcom/raizlabs/android/dbflow/config/f;->a(Lcom/raizlabs/android/dbflow/config/f$b;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 23
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
