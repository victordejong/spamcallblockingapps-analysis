.class public final Lcom/google/android/gms/measurement/internal/is;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/google/android/gms/measurement/internal/iw;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 4
    return-void
.end method

.method private final a(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/jo;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/jo;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/measurement/internal/ix;

    invoke-direct {v2, p0, v0, p1}, Lcom/google/android/gms/measurement/internal/ix;-><init>(Lcom/google/android/gms/measurement/internal/is;Lcom/google/android/gms/measurement/internal/jo;Ljava/lang/Runnable;)V

    .line 38
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/fa;->a(Ljava/lang/Runnable;)V

    .line 39
    return-void
.end method

.method private final c()Lcom/google/android/gms/measurement/internal/dy;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 72
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(Landroid/content/Intent;II)I
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x2

    .line 21
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 22
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 25
    if-nez p1, :cond_1

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementService started with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 34
    :cond_0
    :goto_0
    return v5

    .line 28
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 29
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 31
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Local AppMeasurementService called. startId, action"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 32
    const-string/jumbo v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    new-instance v0, Lcom/google/android/gms/measurement/internal/iv;

    invoke-direct {v0, p0, p3, v1, p1}, Lcom/google/android/gms/measurement/internal/iv;-><init>(Lcom/google/android/gms/measurement/internal/is;ILcom/google/android/gms/measurement/internal/dy;Landroid/content/Intent;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/is;->a(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public final a(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 40
    if-nez p1, :cond_0

    .line 41
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "onBind called with null intent"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 47
    :goto_0
    return-object v0

    .line 43
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 44
    const-string/jumbo v2, "com.google.android.gms.measurement.START"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 45
    new-instance v0, Lcom/google/android/gms/measurement/internal/fj;

    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/measurement/internal/jo;->a(Landroid/content/Context;)Lcom/google/android/gms/measurement/internal/jo;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/measurement/internal/fj;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    goto :goto_0

    .line 46
    :cond_1
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "onBind received unknown action"

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 6
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 9
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService is starting up"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method final synthetic a(ILcom/google/android/gms/measurement/internal/dy;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 77
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/iw;

    invoke-interface {v0, p1}, Lcom/google/android/gms/measurement/internal/iw;->a(I)Z

    move-result v0

    .line 78
    if-eqz v0, :cond_0

    .line 80
    invoke-virtual {p2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService processed last upload request. StartId"

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 83
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Completed wakeful intent."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/iw;

    invoke-interface {v0, p3}, Lcom/google/android/gms/measurement/internal/iw;->a(Landroid/content/Intent;)V

    .line 85
    :cond_0
    return-void
.end method

.method final synthetic a(Lcom/google/android/gms/measurement/internal/dy;Landroid/app/job/JobParameters;)V
    .locals 2

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "AppMeasurementJobService processed last upload request."

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    check-cast v0, Lcom/google/android/gms/measurement/internal/iw;

    const/4 v1, 0x0

    invoke-interface {v0, p2, v1}, Lcom/google/android/gms/measurement/internal/iw;->a(Landroid/app/job/JobParameters;Z)V

    .line 76
    return-void
.end method

.method public final a(Landroid/app/job/JobParameters;)Z
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 54
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 55
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 58
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string/jumbo v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 61
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v3, "Local AppMeasurementJobService called. action"

    invoke-virtual {v0, v3, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    const-string/jumbo v0, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    new-instance v0, Lcom/google/android/gms/measurement/internal/iu;

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/iu;-><init>(Lcom/google/android/gms/measurement/internal/is;Lcom/google/android/gms/measurement/internal/dy;Landroid/app/job/JobParameters;)V

    invoke-direct {p0, v0}, Lcom/google/android/gms/measurement/internal/is;->a(Ljava/lang/Runnable;)V

    .line 64
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/is;->a:Landroid/content/Context;

    .line 14
    invoke-static {v0, v1, v1}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Local AppMeasurementService is shutting down"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public final b(Landroid/content/Intent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 48
    if-nez p1, :cond_0

    .line 49
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "onUnbind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 53
    :goto_0
    return v3

    .line 51
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 52
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "onUnbind called for intent. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public final c(Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "onRebind called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/is;->c()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "onRebind called. action"

    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method
