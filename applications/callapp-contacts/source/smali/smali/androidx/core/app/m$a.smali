.class final Landroidx/core/app/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/app/JobIntentService$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/app/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final a:Landroid/app/job/JobWorkItem;

.field final synthetic b:Landroidx/core/app/m;


# direct methods
.method constructor <init>(Landroidx/core/app/m;Landroid/app/job/JobWorkItem;)V
    .locals 0

    .line 28
    iput-object p1, p0, Landroidx/core/app/m$a;->b:Landroidx/core/app/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p2, p0, Landroidx/core/app/m$a;->a:Landroid/app/job/JobWorkItem;

    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Intent;
    .locals 1

    .line 34
    iget-object v0, p0, Landroidx/core/app/m$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v0}, Landroid/app/job/JobWorkItem;->getIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public final b()V
    .locals 3

    .line 39
    iget-object v0, p0, Landroidx/core/app/m$a;->b:Landroidx/core/app/m;

    iget-object v0, v0, Landroidx/core/app/m;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 40
    :try_start_0
    iget-object v1, p0, Landroidx/core/app/m$a;->b:Landroidx/core/app/m;

    iget-object v1, v1, Landroidx/core/app/m;->c:Landroid/app/job/JobParameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 42
    :try_start_1
    iget-object v1, p0, Landroidx/core/app/m$a;->b:Landroidx/core/app/m;

    iget-object v1, v1, Landroidx/core/app/m;->c:Landroid/app/job/JobParameters;

    iget-object v2, p0, Landroidx/core/app/m$a;->a:Landroid/app/job/JobWorkItem;

    invoke-virtual {v1, v2}, Landroid/app/job/JobParameters;->completeWork(Landroid/app/job/JobWorkItem;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 48
    :catch_0
    :cond_0
    :try_start_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
