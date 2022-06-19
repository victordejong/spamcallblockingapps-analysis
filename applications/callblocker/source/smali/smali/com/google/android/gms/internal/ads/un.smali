.class public final Lcom/google/android/gms/internal/ads/un;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field a:I

.field private b:J

.field private c:J

.field private d:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private e:J

.field private final f:Ljava/lang/Object;

.field private final g:Ljava/lang/String;

.field private final h:Lcom/google/android/gms/internal/ads/uw;

.field private i:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field

.field private j:I
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/uw;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    const/4 v0, -0x1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/un;->b:J

    .line 3
    iput-wide v4, p0, Lcom/google/android/gms/internal/ads/un;->c:J

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->d:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    .line 6
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/un;->e:J

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/un;->f:Ljava/lang/Object;

    .line 8
    iput v2, p0, Lcom/google/android/gms/internal/ads/un;->i:I

    .line 9
    iput v2, p0, Lcom/google/android/gms/internal/ads/un;->j:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/un;->g:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/un;->h:Lcom/google/android/gms/internal/ads/uw;

    .line 12
    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 62
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/qs;->b(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string/jumbo v3, "Theme.Translucent"

    const-string/jumbo v4, "style"

    const-string/jumbo v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 65
    if-nez v2, :cond_0

    .line 66
    const-string/jumbo v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    .line 78
    :goto_0
    return v0

    .line 68
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .line 69
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ActivityInfo;->theme:I

    .line 71
    if-ne v2, v1, :cond_1

    .line 72
    const/4 v0, 0x1

    goto :goto_0

    .line 73
    :cond_1
    const-string/jumbo v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    const-string/jumbo v1, "Fail to fetch AdActivity theme"

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->e(Ljava/lang/String;)V

    .line 77
    const-string/jumbo v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/uu;->d(Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 6

    .prologue
    .line 46
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/un;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 47
    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string/jumbo v2, "session_id"

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/un;->g:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    const-string/jumbo v2, "basets"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/un;->c:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 50
    const-string/jumbo v2, "currts"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/un;->b:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 51
    const-string/jumbo v2, "seq_num"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string/jumbo v2, "preqs"

    iget v3, p0, Lcom/google/android/gms/internal/ads/un;->d:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    const-string/jumbo v2, "preqs_in_session"

    iget v3, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 54
    const-string/jumbo v2, "time_in_session"

    iget-wide v4, p0, Lcom/google/android/gms/internal/ads/un;->e:J

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    const-string/jumbo v2, "pclick"

    iget v3, p0, Lcom/google/android/gms/internal/ads/un;->i:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 56
    const-string/jumbo v2, "pimp"

    iget v3, p0, Lcom/google/android/gms/internal/ads/un;->j:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 57
    const-string/jumbo v2, "support_transparent_background"

    .line 58
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/un;->a(Landroid/content/Context;)Z

    move-result v3

    .line 59
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 60
    monitor-exit v1

    return-object v0

    .line 61
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a()V
    .locals 2

    .prologue
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/un;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/un;->i:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->i:I

    .line 15
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dya;J)V
    .locals 10

    .prologue
    .line 19
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/un;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 20
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->h:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->i()J

    move-result-wide v2

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/q;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->a()J

    move-result-wide v4

    .line 22
    iget-wide v6, p0, Lcom/google/android/gms/internal/ads/un;->c:J

    const-wide/16 v8, -0x1

    cmp-long v0, v6, v8

    if-nez v0, :cond_1

    .line 23
    sub-long v2, v4, v2

    sget-object v0, Lcom/google/android/gms/internal/ads/edi;->ap:Lcom/google/android/gms/internal/ads/ect;

    .line 24
    invoke-static {}, Lcom/google/android/gms/internal/ads/dyx;->e()Lcom/google/android/gms/internal/ads/ede;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/google/android/gms/internal/ads/ede;->a(Lcom/google/android/gms/internal/ads/ect;)Ljava/lang/Object;

    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v0, v2, v6

    if-lez v0, :cond_0

    .line 27
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    .line 31
    :goto_0
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/un;->c:J

    .line 32
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/un;->c:J

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/un;->b:J

    .line 34
    :goto_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->c:Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 35
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/dya;->c:Landroid/os/Bundle;

    const-string/jumbo v2, "gw"

    const/4 v3, 0x2

    .line 36
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 37
    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    .line 38
    monitor-exit v1

    .line 45
    :goto_2
    return-void

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->h:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->j()I

    move-result v0

    .line 30
    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    goto :goto_0

    .line 45
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 33
    :cond_1
    :try_start_1
    iput-wide p2, p0, Lcom/google/android/gms/internal/ads/un;->b:J

    goto :goto_1

    .line 39
    :cond_2
    iget v0, p0, Lcom/google/android/gms/internal/ads/un;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->d:I

    .line 40
    iget v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    .line 41
    iget v0, p0, Lcom/google/android/gms/internal/ads/un;->a:I

    if-nez v0, :cond_3

    .line 42
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/un;->e:J

    .line 43
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->h:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0, v4, v5}, Lcom/google/android/gms/internal/ads/uw;->b(J)V

    .line 45
    :goto_3
    monitor-exit v1

    goto :goto_2

    .line 44
    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/un;->h:Lcom/google/android/gms/internal/ads/uw;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/uw;->k()J

    move-result-wide v2

    sub-long v2, v4, v2

    iput-wide v2, p0, Lcom/google/android/gms/internal/ads/un;->e:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3
.end method

.method public final b()V
    .locals 2

    .prologue
    .line 16
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/un;->f:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    iget v0, p0, Lcom/google/android/gms/internal/ads/un;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/un;->j:I

    .line 18
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
