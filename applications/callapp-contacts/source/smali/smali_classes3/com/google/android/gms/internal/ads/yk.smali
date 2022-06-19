.class public final Lcom/google/android/gms/internal/ads/yk;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:I

.field d:I

.field e:J

.field final f:Ljava/lang/Object;

.field final g:Lcom/google/android/gms/ads/internal/util/zzf;

.field h:I

.field i:I

.field private final j:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/google/android/gms/ads/internal/util/zzf;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yk;->a:J

    .line 3
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yk;->b:J

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcom/google/android/gms/internal/ads/yk;->c:I

    .line 5
    iput v0, p0, Lcom/google/android/gms/internal/ads/yk;->d:I

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/yk;->e:J

    .line 7
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->f:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/google/android/gms/internal/ads/yk;->h:I

    .line 9
    iput v0, p0, Lcom/google/android/gms/internal/ads/yk;->i:I

    .line 10
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yk;->j:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 6

    .line 63
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/tm;->a(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    .line 65
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Translucent"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 67
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return v2

    .line 69
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    .line 70
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    .line 74
    :cond_1
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "Fail to fetch AdActivity theme"

    .line 77
    invoke-static {p0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzez(Ljava/lang/String;)V

    .line 78
    invoke-static {v1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzey(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yk;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 47
    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 48
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk;->g:Lcom/google/android/gms/ads/internal/util/zzf;

    invoke-interface {v2}, Lcom/google/android/gms/ads/internal/util/zzf;->zzzn()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yk;->j:Ljava/lang/String;

    :goto_0
    const-string v3, "session_id"

    .line 49
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    .line 50
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yk;->b:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    .line 51
    iget-wide v3, p0, Lcom/google/android/gms/internal/ads/yk;->a:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    .line 52
    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    .line 53
    iget v2, p0, Lcom/google/android/gms/internal/ads/yk;->c:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    .line 54
    iget v2, p0, Lcom/google/android/gms/internal/ads/yk;->d:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    .line 55
    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/yk;->e:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    .line 56
    iget v2, p0, Lcom/google/android/gms/internal/ads/yk;->h:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    .line 57
    iget v2, p0, Lcom/google/android/gms/internal/ads/yk;->i:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    .line 59
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/yk;->a(Landroid/content/Context;)Z

    move-result p1

    .line 60
    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    .line 62
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
