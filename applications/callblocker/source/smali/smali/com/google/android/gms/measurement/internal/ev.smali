.class public final Lcom/google/android/gms/measurement/internal/ev;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field private final a:Lcom/google/android/gms/measurement/internal/ey;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/measurement/internal/ey;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/ey;

    .line 4
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 5
    invoke-static {p0}, Lcom/google/android/gms/common/internal/s;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 7
    if-nez v1, :cond_1

    .line 15
    :cond_0
    :goto_0
    return v0

    .line 9
    :cond_1
    new-instance v2, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.google.android.gms.measurement.AppMeasurementReceiver"

    invoke-direct {v2, p0, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getReceiverInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    .line 11
    if-eqz v1, :cond_0

    iget-boolean v1, v1, Landroid/content/pm/ActivityInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 12
    const/4 v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 16
    .line 17
    invoke-static {p1, v0, v0}, Lcom/google/android/gms/measurement/internal/fd;->a(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/b;Ljava/lang/Long;)Lcom/google/android/gms/measurement/internal/fd;

    move-result-object v0

    .line 19
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 20
    if-nez p2, :cond_1

    .line 21
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Receiver called with null intent"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 41
    :cond_0
    :goto_0
    return-void

    .line 23
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->y()Lcom/google/android/gms/measurement/internal/kk;

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Local receiver got"

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 30
    const-string/jumbo v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 31
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 34
    const-string/jumbo v0, "com.google.android.gms.measurement.AppMeasurementService"

    .line 35
    invoke-virtual {v2, p1, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 36
    const-string/jumbo v2, "com.google.android.gms.measurement.UPLOAD"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 37
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Starting wakeful intent."

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/ev;->a:Lcom/google/android/gms/measurement/internal/ey;

    invoke-interface {v1, p1, v0}, Lcom/google/android/gms/measurement/internal/ey;->b(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 39
    :cond_2
    const-string/jumbo v2, "com.android.vending.INSTALL_REFERRER"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Install Referrer Broadcasts are deprecated"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0
.end method
