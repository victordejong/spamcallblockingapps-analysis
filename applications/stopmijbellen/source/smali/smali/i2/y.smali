.class public synthetic Li2/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lba/j;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lba/b;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, Li2/y;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Li2/y;->c:Ljava/lang/Object;

    .line 5
    new-instance p1, Lba/i;

    invoke-direct {p1}, Lba/i;-><init>()V

    iput-object p1, p0, Li2/y;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Li2/y;->a:I

    iput-object p1, p0, Li2/y;->b:Ljava/lang/Object;

    iput-object p2, p0, Li2/y;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lr4/e;Lr4/o;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Li2/y;->a:I

    .line 2
    iput-object p1, p0, Li2/y;->c:Ljava/lang/Object;

    iput-object p2, p0, Li2/y;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lba/o;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lba/h;->a(Lba/o;Ljava/lang/Object;)Lba/h;

    move-result-object p1

    .line 2
    iget-object p2, p0, Li2/y;->b:Ljava/lang/Object;

    check-cast p2, Lba/i;

    invoke-virtual {p2, p1}, Lba/i;->a(Lba/h;)V

    .line 3
    iget-object p1, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast p1, Lba/b;

    .line 4
    iget-object p1, p1, Lba/b;->j:Ljava/util/concurrent/ExecutorService;

    .line 5
    invoke-interface {p1, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 4

    iget v0, p0, Li2/y;->a:I

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 1
    :pswitch_0
    iget-object v0, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast v0, Lr4/e;

    .line 2
    iget-object v0, v0, Lr4/e;->b:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast v1, Lr4/e;

    .line 4
    iget-object v1, v1, Lr4/e;->c:Lba/g;

    if-eqz v1, :cond_0

    .line 5
    iget-object v2, v1, Lba/g;->b:Ljava/lang/Object;

    check-cast v2, Lo4/j;

    iget-object v1, v1, Lba/g;->c:Ljava/lang/Object;

    check-cast v1, Lr4/l;

    .line 6
    iget-object v3, v2, Lo4/j;->f:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v2, v2, Lo4/j;->e:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 7
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 8
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 9
    :pswitch_1
    iget-object v0, p0, Li2/y;->b:Ljava/lang/Object;

    check-cast v0, Lj4/t;

    iget-object v1, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/play/core/assetpacks/AssetPackState;

    invoke-virtual {v0, v1}, Lp4/c;->c(Ljava/lang/Object;)V

    return-void

    .line 10
    :pswitch_2
    iget-object v0, p0, Li2/y;->b:Ljava/lang/Object;

    check-cast v0, Li2/e;

    iget-object v1, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast v1, Li2/d;

    sget-object v2, Li2/n;->m:Li2/c;

    .line 11
    iget-object v1, v1, Li2/d;->a:Ljava/lang/String;

    .line 12
    invoke-interface {v0, v2, v1}, Li2/e;->a(Li2/c;Ljava/lang/String;)V

    return-void

    .line 13
    :goto_1
    iget-object v0, p0, Li2/y;->b:Ljava/lang/Object;

    check-cast v0, Lba/i;

    invoke-virtual {v0}, Lba/i;->b()Lba/h;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    iget-object v1, p0, Li2/y;->c:Ljava/lang/Object;

    check-cast v1, Lba/b;

    invoke-virtual {v1, v0}, Lba/b;->c(Lba/h;)V

    return-void

    .line 15
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No pending post available"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
