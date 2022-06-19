.class public final Lcom/google/android/gms/internal/ads/zzcec;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzccl;


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private final zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

.field private final zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

.field private final zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

.field private zzgcn:Z

.field private zzgcq:Z

.field private final zzghc:Lcom/google/android/gms/internal/ads/zzanr;

.field private final zzghd:Lcom/google/android/gms/internal/ads/zzans;

.field private final zzghe:Lcom/google/android/gms/internal/ads/zzanx;

.field private zzghf:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzanx;Lcom/google/android/gms/internal/ads/zzbsd;Lcom/google/android/gms/internal/ads/zzbrl;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzdnp;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcn:Z

    .line 3
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcq:Z

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghf:Z

    .line 5
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    .line 6
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    .line 7
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    .line 8
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    .line 9
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    .line 10
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzcec;->context:Landroid/content/Context;

    .line 11
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 12
    iput-object p8, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    .line 13
    iput-object p9, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    return-void
.end method

.method private final zzad(Landroid/view/View;)V
    .locals 1

    .line 69
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanx;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanx;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 71
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->onAdClicked()V

    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanr;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzanr;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 74
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->onAdClicked()V

    return-void

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzans;->getOverrideClickHandling()Z

    move-result v0

    if-nez v0, :cond_2

    .line 76
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzans;->zzu(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 77
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcj:Lcom/google/android/gms/internal/ads/zzbrl;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbrl;->onAdClicked()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "Failed to call handleClick"

    .line 80
    invoke-static {v0, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private final zzapg()Ljava/lang/Object;
    .locals 2

    .line 160
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 161
    :try_start_0
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanx;->zzvh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz v0, :cond_1

    .line 166
    :try_start_1
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzanr;->zzvh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-object v1

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    if-eqz v0, :cond_2

    .line 171
    :try_start_2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzans;->zzvh()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    :catch_2
    return-object v1

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 176
    :try_start_3
    invoke-static {v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_3

    return-object v0

    :catch_3
    :cond_3
    return-object v1
.end method

.method private static zzb(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 46
    :cond_0
    monitor-enter p0

    .line 47
    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 48
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    .line 50
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 52
    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private final zzb(Ljava/util/Map;Ljava/util/Map;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)Z"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhka:Lorg/json/JSONObject;

    .line 118
    sget-object v1, Lcom/google/android/gms/internal/ads/zzabp;->zzcrf:Lcom/google/android/gms/internal/ads/zzaba;

    .line 119
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v1

    .line 120
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lorg/json/JSONObject;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 123
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    :cond_1
    if-nez p2, :cond_2

    .line 125
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 126
    :cond_2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 127
    invoke-interface {v1, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 128
    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 129
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    .line 130
    :cond_3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 131
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 132
    invoke-virtual {v0, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 134
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    const/4 v5, 0x0

    if-nez v4, :cond_4

    return v5

    .line 137
    :cond_4
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    return v5

    .line 140
    :cond_5
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 141
    sget-object v6, Lcom/google/android/gms/internal/ads/zzabp;->zzcrg:Lcom/google/android/gms/internal/ads/zzaba;

    .line 142
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v6

    .line 143
    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v6, "3010"

    .line 144
    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 145
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzcec;->zzapg()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_6

    return v5

    .line 148
    :cond_6
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 149
    :cond_7
    :try_start_0
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-static {v3, p2}, Lcom/google/android/gms/ads/internal/util/zzbh;->zza(Lorg/json/JSONArray;Ljava/util/List;)Ljava/util/List;

    .line 151
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzcec;->context:Landroid/content/Context;

    .line 152
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 153
    invoke-static {v3, v4, p2}, Lcom/google/android/gms/ads/internal/util/zzj;->zza(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/util/List;)Z

    move-result p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_3

    return v5

    :catch_0
    nop

    goto :goto_0

    :cond_8
    :goto_1
    return v2
.end method


# virtual methods
.method public final cancelUnconfirmedClick()V
    .locals 0

    return-void
.end method

.method public final destroy()V
    .locals 0

    return-void
.end method

.method public final isCustomClickGestureEnabled()Z
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdne:Z

    return v0
.end method

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public final zza(Landroid/view/View;Landroid/view/MotionEvent;Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public final zza(Landroid/view/View;Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 65
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcq:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdne:Z

    if-eqz p2, :cond_0

    return-void

    .line 67
    :cond_0
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzad(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 54
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 55
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz p2, :cond_0

    .line 56
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanx;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 57
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz p2, :cond_1

    .line 58
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanr;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 59
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    if-eqz p2, :cond_2

    .line 60
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzans;->zzw(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call untrackView"

    .line 63
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 15
    :try_start_0
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    .line 17
    invoke-direct {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzcec;->zzb(Ljava/util/Map;Ljava/util/Map;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghf:Z

    .line 19
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzcec;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    .line 21
    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzcec;->zzb(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3

    .line 22
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz p4, :cond_0

    .line 24
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 25
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 26
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanx;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 27
    :cond_0
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz p4, :cond_1

    .line 29
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 30
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 31
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzanr;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 32
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzanr;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    return-void

    .line 33
    :cond_1
    iget-object p4, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    if-eqz p4, :cond_2

    .line 35
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    .line 36
    invoke-static {p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p3

    .line 37
    invoke-interface {p4, p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzans;->zzc(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 38
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/zzans;->zzv(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call trackView"

    .line 41
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zza(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;Z)V"
        }
    .end annotation

    .line 84
    iget-boolean p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcq:Z

    if-nez p2, :cond_0

    const-string p1, "Custom click reporting for 3p ads failed. enableCustomClickGesture is not set."

    .line 85
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdne:Z

    if-nez p2, :cond_1

    const-string p1, "Custom click reporting for 3p ads failed. Ad unit id not in allow list."

    .line 88
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void

    .line 90
    :cond_1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzcec;->zzad(Landroid/view/View;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagm;)V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyj;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 191
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzyn;)V
    .locals 0

    const-string p1, "Mute This Ad is not supported for 3rd party ads"

    .line 189
    invoke-static {p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final zzanj()V
    .locals 0

    return-void
.end method

.method public final zzank()V
    .locals 1

    const-string v0, "Mute This Ad is not supported for 3rd party ads"

    .line 193
    invoke-static {v0}, Lcom/google/android/gms/ads/internal/util/zzd;->zzex(Ljava/lang/String;)V

    return-void
.end method

.method public final zzanl()V
    .locals 0

    return-void
.end method

.method public final zzb(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    .line 95
    :try_start_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcn:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    if-eqz p1, :cond_0

    .line 96
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcn:Z

    .line 97
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlb()Lcom/google/android/gms/ads/internal/util/zzam;

    move-result-object p2

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/zzcec;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjl:Lorg/json/JSONObject;

    .line 98
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkx:Ljava/lang/String;

    .line 99
    invoke-virtual {p2, p3, v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzam;->zzb(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    or-int/2addr p1, p2

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcn:Z

    .line 100
    :cond_0
    iget-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghf:Z

    if-nez p1, :cond_1

    return-void

    .line 102
    :cond_1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanx;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_2

    .line 104
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghe:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanx;->recordImpression()V

    .line 105
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V

    return-void

    .line 106
    :cond_2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    if-eqz p1, :cond_3

    .line 107
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanr;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_3

    .line 108
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghc:Lcom/google/android/gms/internal/ads/zzanr;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzanr;->recordImpression()V

    .line 109
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V

    return-void

    .line 110
    :cond_3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzans;->getOverrideImpressionRecording()Z

    move-result p1

    if-nez p1, :cond_4

    .line 111
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzghd:Lcom/google/android/gms/internal/ads/zzans;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzans;->recordImpression()V

    .line 112
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgci:Lcom/google/android/gms/internal/ads/zzbsd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbsd;->onAdImpression()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-void

    :catch_0
    move-exception p1

    const-string p2, "Failed to call recordImpression"

    .line 115
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final zzf(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzfw(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final zzg(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final zzh(Landroid/os/Bundle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final zztx()V
    .locals 1

    const/4 v0, 0x1

    .line 92
    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzcec;->zzgcq:Z

    return-void
.end method
