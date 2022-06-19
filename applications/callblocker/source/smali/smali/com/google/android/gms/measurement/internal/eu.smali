.class public final Lcom/google/android/gms/measurement/internal/eu;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-measurement-impl@@17.4.2"


# instance fields
.field final a:Lcom/google/android/gms/measurement/internal/fd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/measurement/internal/fd;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 3
    return-void
.end method

.method private final a()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 62
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/common/c/c;->a(Landroid/content/Context;)Lcom/google/android/gms/common/c/b;

    move-result-object v1

    .line 63
    if-nez v1, :cond_1

    .line 64
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 65
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 66
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Failed to get PackageManager for Install Referrer Play Store compatibility check"

    .line 67
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 78
    :cond_0
    :goto_0
    return v0

    .line 69
    :cond_1
    const-string/jumbo v2, "com.android.vending"

    const/16 v3, 0x80

    .line 70
    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/common/c/b;->b(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 71
    iget v1, v1, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    const v2, 0x4d17ab4

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 75
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 76
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Failed to retrieve Play Store version for Install Referrer"

    .line 77
    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method final a(Ljava/lang/String;Lcom/google/android/gms/internal/measurement/bt;)Landroid/os/Bundle;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 79
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 80
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 81
    if-nez p2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 83
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 84
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Attempting to use Install Referrer Service while it is not initialized"

    .line 85
    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 100
    :goto_0
    return-object v0

    .line 87
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 88
    const-string/jumbo v2, "package_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    :try_start_0
    invoke-interface {p2, v1}, Lcom/google/android/gms/internal/measurement/bt;->a(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    .line 90
    if-nez v1, :cond_1

    .line 91
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Install Referrer Service returned a null response"

    invoke-virtual {v1, v2}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 94
    :catch_0
    move-exception v1

    .line 95
    iget-object v2, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 96
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v2

    .line 97
    invoke-virtual {v2}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v2

    const-string/jumbo v3, "Exception occurred while retrieving the Install Referrer"

    .line 98
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 100
    goto :goto_0
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->f()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Install Referrer Reporter was called with invalid app package name"

    .line 8
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 10
    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 11
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eu;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Install Referrer Reporter is not available"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_3
    new-instance v1, Lcom/google/android/gms/measurement/internal/et;

    invoke-direct {v1, p0, p1}, Lcom/google/android/gms/measurement/internal/et;-><init>(Lcom/google/android/gms/measurement/internal/eu;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 17
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->u()Lcom/google/android/gms/measurement/internal/fa;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fz;->o()V

    .line 18
    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v0, "com.google.android.finsky.BIND_GET_INSTALL_REFERRER_SERVICE"

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 19
    new-instance v0, Landroid/content/ComponentName;

    const-string/jumbo v3, "com.android.vending"

    const-string/jumbo v4, "com.google.android.finsky.externalreferrer.GetInstallReferrerService"

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 21
    if-nez v0, :cond_4

    .line 22
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 23
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->f()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Failed to obtain Package Manager to verify binding conditions for Install Referrer"

    .line 25
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 27
    :cond_4
    invoke-virtual {v0, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 28
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 29
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 30
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v3, :cond_1

    .line 31
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 32
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 33
    if-eqz v0, :cond_6

    const-string/jumbo v0, "com.android.vending"

    .line 34
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 35
    invoke-direct {p0}, Lcom/google/android/gms/measurement/internal/eu;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 36
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 37
    :try_start_0
    invoke-static {}, Lcom/google/android/gms/common/stats/a;->a()Lcom/google/android/gms/common/stats/a;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 38
    invoke-virtual {v3}, Lcom/google/android/gms/measurement/internal/fd;->r()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x1

    .line 39
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/gms/common/stats/a;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 40
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 41
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 42
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->j()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Install Referrer Service is"

    .line 43
    if-eqz v0, :cond_5

    const-string/jumbo v0, "available"

    :goto_1
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    iget-object v1, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 47
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Lcom/google/android/gms/measurement/internal/dy;->x_()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v1

    const-string/jumbo v2, "Exception occurred while binding to Install Referrer Service"

    .line 49
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 50
    invoke-virtual {v1, v2, v0}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 43
    :cond_5
    :try_start_1
    const-string/jumbo v0, "not available"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 52
    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 53
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 54
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->e()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Play Store version 8.3.73 or higher required for Install Referrer"

    .line 55
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 57
    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/measurement/internal/eu;->a:Lcom/google/android/gms/measurement/internal/fd;

    .line 58
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/fd;->v()Lcom/google/android/gms/measurement/internal/dy;

    move-result-object v0

    .line 59
    invoke-virtual {v0}, Lcom/google/android/gms/measurement/internal/dy;->h()Lcom/google/android/gms/measurement/internal/ea;

    move-result-object v0

    const-string/jumbo v1, "Play Service for fetching Install Referrer is unavailable on device"

    .line 60
    invoke-virtual {v0, v1}, Lcom/google/android/gms/measurement/internal/ea;->a(Ljava/lang/String;)V

    goto/16 :goto_0
.end method
