.class public final Lcom/google/android/gms/internal/ads/zzacp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzeqp;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

.field private zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

.field private zzdbr:Landroidx/browser/customtabs/CustomTabsServiceConnection;

.field private zzdbs:Lcom/google/android/gms/internal/ads/zzaco;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static zzj(Landroid/content/Context;)Z
    .locals 6

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "http://www.example.com"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v2, v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 6
    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v3

    const/high16 v4, 0x10000

    .line 8
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 10
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 12
    iget-object v5, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 13
    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 14
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzeqn;->zzcl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method


# virtual methods
.method public final zza(Landroidx/browser/customtabs/CustomTabsClient;)V
    .locals 2

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

    const-wide/16 v0, 0x0

    .line 41
    invoke-virtual {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->warmup(J)Z

    .line 42
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbs:Lcom/google/android/gms/internal/ads/zzaco;

    if-eqz p1, :cond_0

    .line 43
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzaco;->zzst()V

    :cond_0
    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzaco;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbs:Lcom/google/android/gms/internal/ads/zzaco;

    return-void
.end method

.method public final zzc(Landroid/app/Activity;)V
    .locals 1

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbr:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    if-nez v0, :cond_0

    return-void

    .line 20
    :cond_0
    invoke-virtual {p1, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

    .line 22
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    .line 23
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbr:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    return-void
.end method

.method public final zzd(Landroid/app/Activity;)V
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

    if-eqz v0, :cond_0

    return-void

    .line 34
    :cond_0
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzeqn;->zzcl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 37
    :cond_1
    new-instance v1, Lcom/google/android/gms/internal/ads/zzeqq;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/zzeqq;-><init>(Lcom/google/android/gms/internal/ads/zzeqp;)V

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbr:Landroidx/browser/customtabs/CustomTabsServiceConnection;

    .line 38
    invoke-static {p1, v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->bindCustomTabsService(Landroid/content/Context;Ljava/lang/String;Landroidx/browser/customtabs/CustomTabsServiceConnection;)Z

    return-void
.end method

.method public final zzsv()Landroidx/browser/customtabs/CustomTabsSession;
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 26
    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    goto :goto_0

    .line 27
    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    if-nez v2, :cond_1

    .line 28
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsClient;->newSession(Landroidx/browser/customtabs/CustomTabsCallback;)Landroidx/browser/customtabs/CustomTabsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    .line 29
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    return-object v0
.end method

.method public final zzsw()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbq:Landroidx/browser/customtabs/CustomTabsClient;

    .line 46
    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbp:Landroidx/browser/customtabs/CustomTabsSession;

    .line 47
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacp;->zzdbs:Lcom/google/android/gms/internal/ads/zzaco;

    if-eqz v0, :cond_0

    .line 48
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzaco;->zzsu()V

    :cond_0
    return-void
.end method
