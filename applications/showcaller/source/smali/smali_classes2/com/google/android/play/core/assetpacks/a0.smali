.class final Lcom/google/android/play/core/assetpacks/a0;
.super Lcom/google/android/play/core/internal/e1;


# instance fields
.field private final d:Lcom/google/android/play/core/internal/a;

.field private final e:Landroid/content/Context;

.field private final f:Lcom/google/android/play/core/assetpacks/v;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/android/play/core/assetpacks/v;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/play/core/internal/e1;-><init>()V

    new-instance v0, Lcom/google/android/play/core/internal/a;

    const-string v1, "AssetPackExtractionService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/a;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->d:Lcom/google/android/play/core/internal/a;

    iput-object p1, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/play/core/assetpacks/a0;->f:Lcom/google/android/play/core/assetpacks/v;

    return-void
.end method

.method private final declared-synchronized Q4(Landroid/os/Bundle;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    const-class v2, Lcom/google/android/play/core/assetpacks/ExtractionForegroundService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "action_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "action_type"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v1, "notification_channel_name"

    const-string v2, "notification_channel_name"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_title"

    const-string v2, "notification_title"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_subtext"

    const-string v2, "notification_subtext"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "notification_timeout"

    const-string v2, "notification_timeout"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v1, "notification_on_click_intent"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    instance-of v2, v1, Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    const-string v2, "notification_on_click_intent"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    :cond_0
    const-string v1, "notification_color"

    const-string v2, "notification_color"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    const/4 p1, 0x0

    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/google/android/play/core/assetpacks/a0;->d:Lcom/google/android/play/core/internal/a;

    const-string v2, "Failed starting installation service."

    new-array v3, p1, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/play/core/internal/a;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->d:Lcom/google/android/play/core/internal/a;

    const-string v1, "Failed starting installation service."

    new-array p1, p1, [Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lcom/google/android/play/core/internal/a;->b(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final Q2(Landroid/os/Bundle;Lcom/google/android/play/core/internal/h1;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->d:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "updateServiceState AIDL call"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/internal/e0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/internal/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/play/core/assetpacks/a0;->Q4(Landroid/os/Bundle;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1, v0}, Lcom/google/android/play/core/internal/h1;->S3(Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, p1}, Lcom/google/android/play/core/internal/h1;->Q4(Landroid/os/Bundle;)V

    return-void
.end method

.method public final Y0(Lcom/google/android/play/core/internal/h1;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->d:Lcom/google/android/play/core/internal/a;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "clearAssetPackStorage AIDL call"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/a;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/internal/e0;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->e:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/play/core/internal/e0;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/play/core/assetpacks/a0;->f:Lcom/google/android/play/core/assetpacks/v;

    invoke-virtual {v0}, Lcom/google/android/play/core/assetpacks/v;->K()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/play/core/internal/h1;->Y3(Landroid/os/Bundle;)V

    return-void

    :cond_1
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v0}, Lcom/google/android/play/core/internal/h1;->Q4(Landroid/os/Bundle;)V

    return-void
.end method
