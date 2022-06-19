.class public final Lcom/google/android/gms/measurement/internal/jk;
.super Lcom/google/android/gms/measurement/internal/jl;
.source "com.google.android.gms:play-services-measurement@@17.4.2"


# instance fields
.field private final b:Landroid/app/AlarmManager;

.field private final c:Lcom/google/android/gms/measurement/internal/j;

.field private d:Ljava/lang/Integer;


# direct methods
.method protected constructor <init>(Lcom/google/android/gms/measurement/internal/jo;)V
    .locals 2

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/measurement/internal/jl;-><init>(Lcom/google/android/gms/measurement/internal/jo;)V

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->b:Landroid/app/AlarmManager;

    .line 3
    new-instance v0, Lcom/google/android/gms/measurement/internal/jj;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/measurement/internal/jo;->o()Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/android/gms/measurement/internal/jj;-><init>(Lcom/google/android/gms/measurement/internal/jk;Lcom/google/android/gms/measurement/internal/gb;Lcom/google/android/gms/measurement/internal/jo;)V

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->c:Lcom/google/android/gms/measurement/internal/j;

    .line 5
    return-void
.end method

.method private final g()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x18
    .end annotation

    .prologue
    .line 10
    .line 11
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "jobscheduler"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->h()I

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->cancel(I)V

    .line 14
    return-void
.end method

.method private final h()I
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->d:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 57
    const-string/jumbo v1, "measurement"

    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->d:Ljava/lang/Integer;

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->d:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 57
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private final i()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 66
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 67
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v2, "com.google.android.gms.measurement.AppMeasurementReceiver"

    .line 68
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "com.google.android.gms.measurement.UPLOAD"

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 70
    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a(J)V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 15
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 16
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 17
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/google/android/gms/measurement/internal/ev;->a(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 19
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Receiver not registered/enabled"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 20
    :cond_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/gms/measurement/internal/jw;->a(Landroid/content/Context;Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->i()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Service not registered/enabled"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 22
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jk;->b()V

    .line 23
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Scheduling upload, millis"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->b()J

    move-result-wide v0

    add-long v2, v0, p1

    .line 26
    const-wide/16 v4, 0x0

    sget-object v0, Lcom/google/android/gms/measurement/internal/t;->w:Lcom/google/android/gms/measurement/internal/dr;

    .line 27
    invoke-virtual {v0, v6}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 28
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 29
    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 30
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->b()Z

    move-result v0

    if-nez v0, :cond_2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/measurement/internal/j;->a(J)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 34
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_3

    .line 36
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->r()Landroid/content/Context;

    move-result-object v0

    .line 37
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.google.android.gms.measurement.AppMeasurementJobService"

    invoke-direct {v1, v0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->h()I

    move-result v2

    .line 39
    new-instance v3, Landroid/os/PersistableBundle;

    invoke-direct {v3}, Landroid/os/PersistableBundle;-><init>()V

    .line 40
    const-string/jumbo v4, "action"

    const-string/jumbo v5, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v3, v4, v5}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    new-instance v4, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v4, v2, v1}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    .line 42
    invoke-virtual {v4, p1, p2}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    const/4 v2, 0x1

    shl-long v4, p1, v2

    .line 43
    invoke-virtual {v1, v4, v5}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 44
    invoke-virtual {v1, v3}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 45
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 46
    const-string/jumbo v2, "com.google.android.gms"

    const-string/jumbo v3, "UploadAlarm"

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/gms/internal/measurement/fu;->a(Landroid/content/Context;Landroid/app/job/JobInfo;Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :goto_0
    return-void

    .line 48
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->b:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    .line 49
    sget-object v4, Lcom/google/android/gms/measurement/internal/t;->r:Lcom/google/android/gms/measurement/internal/dr;

    .line 50
    invoke-virtual {v4, v6}, Lcom/google/android/gms/measurement/internal/dr;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 51
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 52
    invoke-static {v4, v5, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 53
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->i()Landroid/app/PendingIntent;

    move-result-object v6

    .line 54
    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method protected final a()Z
    .locals 2

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->i()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 8
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->g()V

    .line 9
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 59
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/jl;->K()V

    .line 60
    invoke-virtual {p0}, Lcom/google/android/gms/measurement/internal/fz;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Unscheduling upload"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->b:Landroid/app/AlarmManager;

    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->i()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 62
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/jk;->c:Lcom/google/android/gms/measurement/internal/j;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/j;->c()V

    .line 63
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/jk;->g()V

    .line 65
    :cond_0
    return-void
.end method

.method public final bridge synthetic d()Lcom/google/android/gms/measurement/internal/kf;
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->d()Lcom/google/android/gms/measurement/internal/kf;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic l()V
    .locals 0

    .prologue
    .line 75
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->l()V

    return-void
.end method

.method public final bridge synthetic m()V
    .locals 0

    .prologue
    .line 76
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->m()V

    return-void
.end method

.method public final bridge synthetic n()V
    .locals 0

    .prologue
    .line 77
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->n()V

    return-void
.end method

.method public final bridge synthetic o()V
    .locals 0

    .prologue
    .line 78
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->o()V

    return-void
.end method

.method public final bridge synthetic p()Lcom/google/android/gms/measurement/internal/l;
    .locals 1

    .prologue
    .line 79
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->p()Lcom/google/android/gms/measurement/internal/l;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic q()Lcom/google/android/gms/common/util/e;
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->q()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic r()Landroid/content/Context;
    .locals 1

    .prologue
    .line 81
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->r()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic s()Lcom/google/android/gms/measurement/internal/dw;
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->s()Lcom/google/android/gms/measurement/internal/dw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t()Lcom/google/android/gms/measurement/internal/jw;
    .locals 1

    .prologue
    .line 83
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->t()Lcom/google/android/gms/measurement/internal/jw;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic t_()Lcom/google/android/gms/measurement/internal/ex;
    .locals 1

    .prologue
    .line 74
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->t_()Lcom/google/android/gms/measurement/internal/ex;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u()Lcom/google/android/gms/measurement/internal/fa;
    .locals 1

    .prologue
    .line 84
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic u_()Lcom/google/android/gms/measurement/internal/c;
    .locals 1

    .prologue
    .line 73
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->u_()Lcom/google/android/gms/measurement/internal/c;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v()Lcom/google/android/gms/measurement/internal/dy;
    .locals 1

    .prologue
    .line 85
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic v_()Lcom/google/android/gms/measurement/internal/js;
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->v_()Lcom/google/android/gms/measurement/internal/js;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic w()Lcom/google/android/gms/measurement/internal/el;
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->w()Lcom/google/android/gms/measurement/internal/el;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic x()Lcom/google/android/gms/measurement/internal/b;
    .locals 1

    .prologue
    .line 87
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->x()Lcom/google/android/gms/measurement/internal/b;

    move-result-object v0

    return-object v0
.end method

.method public final bridge synthetic y()Lcom/google/android/gms/measurement/internal/kk;
    .locals 1

    .prologue
    .line 88
    invoke-super {p0}, Lcom/google/android/gms/measurement/internal/jl;->y()Lcom/google/android/gms/measurement/internal/kk;

    move-result-object v0

    return-object v0
.end method
