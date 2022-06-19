.class public Lcom/google/android/gms/internal/ads/emy;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/emy$a;
    }
.end annotation


# static fields
.field private static f:Lcom/google/android/gms/internal/ads/emy;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Lcom/google/android/gms/internal/ads/eln;

.field public c:Lcom/google/android/gms/ads/RequestConfiguration;

.field d:Lcom/google/android/gms/ads/initialization/InitializationStatus;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;",
            ">;"
        }
    .end annotation
.end field

.field private g:Z

.field private h:Z

.field private i:Lcom/google/android/gms/ads/reward/RewardedVideoAd;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/emy;->g:Z

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/emy;->h:Z

    .line 5
    new-instance v0, Lcom/google/android/gms/ads/RequestConfiguration$Builder;

    invoke-direct {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;-><init>()V

    .line 6
    invoke-virtual {v0}, Lcom/google/android/gms/ads/RequestConfiguration$Builder;->build()Lcom/google/android/gms/ads/RequestConfiguration;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->e:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic a(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 0

    .line 176
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/emy;->b(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p0

    return-object p0
.end method

.method public static a()Lcom/google/android/gms/internal/ads/emy;
    .locals 2

    .line 9
    const-class v0, Lcom/google/android/gms/internal/ads/emy;

    monitor-enter v0

    .line 10
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/emy;->f:Lcom/google/android/gms/internal/ads/emy;

    if-nez v1, :cond_0

    .line 11
    new-instance v1, Lcom/google/android/gms/internal/ads/emy;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/emy;-><init>()V

    sput-object v1, Lcom/google/android/gms/internal/ads/emy;->f:Lcom/google/android/gms/internal/ads/emy;

    .line 12
    :cond_0
    sget-object v1, Lcom/google/android/gms/internal/ads/emy;->f:Lcom/google/android/gms/internal/ads/emy;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/emy;)Z
    .locals 1

    const/4 v0, 0x0

    .line 174
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/emy;->g:Z

    return v0
.end method

.method private static b(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzajm;",
            ">;)",
            "Lcom/google/android/gms/ads/initialization/InitializationStatus;"
        }
    .end annotation

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 142
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzajm;

    .line 143
    iget-object v2, v1, Lcom/google/android/gms/internal/ads/zzajm;->zzdka:Ljava/lang/String;

    new-instance v3, Lcom/google/android/gms/internal/ads/iu;

    .line 144
    iget-boolean v4, v1, Lcom/google/android/gms/internal/ads/zzajm;->zzdkb:Z

    if-eqz v4, :cond_0

    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    goto :goto_1

    :cond_0
    sget-object v4, Lcom/google/android/gms/ads/initialization/AdapterStatus$State;->NOT_READY:Lcom/google/android/gms/ads/initialization/AdapterStatus$State;

    :goto_1
    iget-object v5, v1, Lcom/google/android/gms/internal/ads/zzajm;->description:Ljava/lang/String;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzajm;->zzdkc:I

    invoke-direct {v3, v4, v5, v1}, Lcom/google/android/gms/internal/ads/iu;-><init>(Lcom/google/android/gms/ads/initialization/AdapterStatus$State;Ljava/lang/String;I)V

    .line 145
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 147
    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/ads/iw;

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/iw;-><init>(Ljava/util/Map;)V

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/emy;)Z
    .locals 1

    const/4 v0, 0x1

    .line 175
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/emy;->h:Z

    return v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/emy;)Ljava/util/ArrayList;
    .locals 0

    .line 177
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/emy;->e:Ljava/util/ArrayList;

    return-object p0
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lcom/google/android/gms/ads/reward/RewardedVideoAd;
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 58
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->i:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    if-eqz v1, :cond_0

    .line 59
    monitor-exit v0

    return-object v1

    .line 60
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    .line 61
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v2

    .line 62
    new-instance v3, Lcom/google/android/gms/internal/ads/ejz;

    invoke-direct {v3, v2, p1, v1}, Lcom/google/android/gms/internal/ads/ejz;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;Lcom/google/android/gms/internal/ads/mm;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v3, p1, v1}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object v1

    .line 64
    check-cast v1, Lcom/google/android/gms/internal/ads/ts;

    .line 66
    new-instance v2, Lcom/google/android/gms/internal/ads/ug;

    invoke-direct {v2, p1, v1}, Lcom/google/android/gms/internal/ads/ug;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/ts;)V

    iput-object v2, p0, Lcom/google/android/gms/internal/ads/emy;->i:Lcom/google/android/gms/ads/reward/RewardedVideoAd;

    .line 67
    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final a(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V
    .locals 4

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 15
    :try_start_0
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/emy;->g:Z

    if-eqz v1, :cond_1

    if-eqz p3, :cond_0

    .line 17
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object p1

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/emy;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    monitor-exit v0

    return-void

    .line 19
    :cond_1
    iget-boolean v1, p0, Lcom/google/android/gms/internal/ads/emy;->h:Z

    if-eqz v1, :cond_3

    if-eqz p3, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/emy;->e()Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;->onInitializationComplete(Lcom/google/android/gms/ads/initialization/InitializationStatus;)V

    .line 22
    :cond_2
    monitor-exit v0

    return-void

    :cond_3
    const/4 v1, 0x1

    .line 23
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/emy;->g:Z

    if-eqz p3, :cond_4

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/emy;->a()Lcom/google/android/gms/internal/ads/emy;

    move-result-object v1

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/emy;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p1, :cond_9

    .line 28
    :try_start_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/md;->a()Lcom/google/android/gms/internal/ads/md;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/google/android/gms/internal/ads/md;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Thread;

    .line 29
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/emy;->b(Landroid/content/Context;)V

    if-eqz p3, :cond_5

    .line 31
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    new-instance v2, Lcom/google/android/gms/internal/ads/emy$a;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/google/android/gms/internal/ads/emy$a;-><init>(Lcom/google/android/gms/internal/ads/emy;Lcom/google/android/gms/internal/ads/enb;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/eln;->a(Lcom/google/android/gms/internal/ads/it;)V

    .line 32
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    new-instance v2, Lcom/google/android/gms/internal/ads/mj;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/mj;-><init>()V

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/eln;->a(Lcom/google/android/gms/internal/ads/mm;)V

    .line 33
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eln;->a()V

    .line 34
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    new-instance v2, Lcom/google/android/gms/internal/ads/emx;

    invoke-direct {v2, p0, p1}, Lcom/google/android/gms/internal/ads/emx;-><init>(Lcom/google/android/gms/internal/ads/emy;Landroid/content/Context;)V

    .line 35
    invoke-static {v2}, Lcom/google/android/gms/dynamic/d;->a(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/b;

    move-result-object v2

    .line 36
    invoke-interface {v1, p2, v2}, Lcom/google/android/gms/internal/ads/eln;->a(Ljava/lang/String;Lcom/google/android/gms/dynamic/b;)V

    .line 37
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForChildDirectedTreatment()I

    move-result p2

    const/4 v1, -0x1

    if-ne p2, v1, :cond_6

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    .line 38
    invoke-virtual {p2}, Lcom/google/android/gms/ads/RequestConfiguration;->getTagForUnderAgeOfConsent()I

    move-result p2

    if-eq p2, v1, :cond_7

    .line 39
    :cond_6
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/emy;->c:Lcom/google/android/gms/ads/RequestConfiguration;

    invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/ads/emy;->a(Lcom/google/android/gms/ads/RequestConfiguration;)V

    .line 40
    :cond_7
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aq;->a(Landroid/content/Context;)V

    .line 41
    sget-object p1, Lcom/google/android/gms/internal/ads/aq;->da:Lcom/google/android/gms/internal/ads/af;

    .line 42
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->e()Lcom/google/android/gms/internal/ads/am;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/am;->a(Lcom/google/android/gms/internal/ads/af;)Ljava/lang/Object;

    move-result-object p1

    .line 43
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_8

    .line 45
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/emy;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_8

    const-string p1, "Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time."

    .line 47
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    .line 49
    new-instance p1, Lcom/google/android/gms/internal/ads/emz;

    invoke-direct {p1, p0}, Lcom/google/android/gms/internal/ads/emz;-><init>(Lcom/google/android/gms/internal/ads/emy;)V

    .line 50
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emy;->d:Lcom/google/android/gms/ads/initialization/InitializationStatus;

    if-eqz p3, :cond_8

    .line 52
    sget-object p1, Lcom/google/android/gms/internal/ads/yq;->a:Landroid/os/Handler;

    new-instance p2, Lcom/google/android/gms/internal/ads/ena;

    invoke-direct {p2, p0, p3}, Lcom/google/android/gms/internal/ads/ena;-><init>(Lcom/google/android/gms/internal/ads/emy;Lcom/google/android/gms/ads/initialization/OnInitializationCompleteListener;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "MobileAdsSettingManager initialization failed"

    .line 55
    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/za;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 56
    :cond_8
    :goto_0
    monitor-exit v0

    return-void

    .line 27
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context cannot be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 56
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Lcom/google/android/gms/ads/RequestConfiguration;)V
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaat;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzaat;-><init>(Lcom/google/android/gms/ads/RequestConfiguration;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/eln;->a(Lcom/google/android/gms/internal/ads/zzaat;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to set request configuration parcel."

    .line 162
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final b()F
    .locals 4

    .line 78
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 79
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    const/high16 v2, 0x3f800000    # 1.0f

    if-nez v1, :cond_0

    .line 80
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 81
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eln;->b()F

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app volume."

    .line 84
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 86
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final b(Landroid/content/Context;)V
    .locals 2

    .line 164
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-nez v0, :cond_0

    .line 166
    invoke-static {}, Lcom/google/android/gms/internal/ads/ekb;->b()Lcom/google/android/gms/internal/ads/ejj;

    move-result-object v0

    .line 167
    new-instance v1, Lcom/google/android/gms/internal/ads/eju;

    invoke-direct {v1, v0, p1}, Lcom/google/android/gms/internal/ads/eju;-><init>(Lcom/google/android/gms/internal/ads/ejj;Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 168
    invoke-virtual {v1, p1, v0}, Lcom/google/android/gms/internal/ads/ejy;->a(Landroid/content/Context;Z)Ljava/lang/Object;

    move-result-object p1

    .line 169
    check-cast p1, Lcom/google/android/gms/internal/ads/eln;

    .line 170
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    :cond_0
    return-void
.end method

.method public final c()Z
    .locals 4

    .line 95
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 96
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 97
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v2

    .line 98
    :cond_0
    :try_start_1
    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eln;->c()Z

    move-result v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, "Unable to get app mute state."

    .line 101
    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 102
    :goto_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    .line 103
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()Ljava/lang/String;
    .locals 3

    .line 111
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting version string."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 113
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eln;->d()Ljava/lang/String;

    move-result-object v1

    .line 1001
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/cyc;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 114
    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "Unable to get version string."

    .line 116
    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/za;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v1, ""

    .line 117
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 118
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final e()Lcom/google/android/gms/ads/initialization/InitializationStatus;
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/emy;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "MobileAds.initialize() must be called prior to getting initialization status."

    invoke-static {v1, v2}, Lcom/google/android/gms/common/internal/o;->a(ZLjava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    :try_start_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->d:Lcom/google/android/gms/ads/initialization/InitializationStatus;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 128
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v1

    .line 129
    :cond_1
    :try_start_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/emy;->b:Lcom/google/android/gms/internal/ads/eln;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/eln;->e()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/emy;->b(Ljava/util/List;)Lcom/google/android/gms/ads/initialization/InitializationStatus;

    move-result-object v1
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v0

    return-object v1

    :catch_0
    const-string v1, "Unable to get Initialization status."

    .line 131
    invoke-static {v1}, Lcom/google/android/gms/internal/ads/za;->zzex(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 132
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 133
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method
