.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# static fields
.field public static final synthetic a:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lu2/m;->b(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Lu2/i;->a()Lu2/i$a;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v0}, Lu2/i$a;->b(Ljava/lang/String;)Lu2/i$a;

    .line 8
    invoke-static {v2}, Lc3/a;->b(I)Lr2/d;

    move-result-object v0

    invoke-virtual {v4, v0}, Lu2/i$a;->c(Lr2/d;)Lu2/i$a;

    const/4 v0, 0x0

    if-eqz v1, :cond_0

    .line 9
    invoke-static {v1, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    move-object v2, v4

    check-cast v2, Lu2/b$b;

    .line 10
    iput-object v1, v2, Lu2/b$b;->b:[B

    .line 11
    :cond_0
    invoke-static {}, Lu2/m;->a()Lu2/m;

    move-result-object v1

    .line 12
    iget-object v1, v1, Lu2/m;->d:Ly2/n;

    .line 13
    invoke-virtual {v4}, Lu2/i$a;->a()Lu2/i;

    move-result-object v2

    new-instance v4, Ly2/d;

    invoke-direct {v4, p0, p1, v0}, Ly2/d;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 14
    iget-object p1, v1, Ly2/n;->e:Ljava/util/concurrent/Executor;

    new-instance v0, Ly2/g;

    invoke-direct {v0, v1, v2, v3, v4}, Ly2/g;-><init>(Ly2/n;Lu2/i;ILjava/lang/Runnable;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
