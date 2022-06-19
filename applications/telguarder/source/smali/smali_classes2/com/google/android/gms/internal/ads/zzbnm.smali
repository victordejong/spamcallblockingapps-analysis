.class public final Lcom/google/android/gms/internal/ads/zzbnm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbse;
.implements Lcom/google/android/gms/internal/ads/zzbtb;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private zzfvt:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzazn;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method

.method private final declared-synchronized zzakn()V
    .locals 13

    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdww:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 17
    monitor-exit p0

    return-void

    .line 18
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_1

    .line 19
    monitor-exit p0

    return-void

    .line 20
    :cond_1
    :try_start_2
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzm(Landroid/content/Context;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    .line 21
    monitor-exit p0

    return-void

    .line 22
    :cond_2
    :try_start_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzehy:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget v1, v1, Lcom/google/android/gms/internal/ads/zzazn;->zzehz:I

    const/16 v2, 0x17

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 23
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 24
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 25
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 27
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v2, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v2, :cond_3

    .line 28
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarn;->zzdri:Lcom/google/android/gms/internal/ads/zzarn;

    .line 29
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdrb:Lcom/google/android/gms/internal/ads/zzarm;

    :goto_0
    move-object v11, v0

    move-object v10, v2

    goto :goto_1

    .line 30
    :cond_3
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarn;->zzdrg:Lcom/google/android/gms/internal/ads/zzarn;

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v2, v2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhiz:I

    if-ne v2, v1, :cond_4

    .line 32
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdrc:Lcom/google/android/gms/internal/ads/zzarm;

    goto :goto_0

    .line 33
    :cond_4
    sget-object v2, Lcom/google/android/gms/internal/ads/zzarm;->zzdra:Lcom/google/android/gms/internal/ads/zzarm;

    goto :goto_0

    .line 35
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 36
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzcht:Ljava/lang/String;

    .line 37
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarm;Lcom/google/android/gms/internal/ads/zzarn;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    goto :goto_2

    .line 40
    :cond_5
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 41
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 42
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 43
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    .line 44
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v2, :cond_6

    if-eqz v0, :cond_6

    .line 45
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 47
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzarl;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 48
    iput-boolean v1, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z

    .line 49
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 50
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 51
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 52
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    const-string v1, "onSdkLoaded"

    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 53
    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final declared-synchronized onAdImpression()V
    .locals 3

    monitor-enter p0

    .line 11
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z

    if-nez v0, :cond_0

    .line 12
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzakn()V

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdww:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_1

    const-string v1, "onSdkImpression"

    .line 14
    new-instance v2, Landroidx/collection/ArrayMap;

    invoke-direct {v2}, Landroidx/collection/ArrayMap;-><init>()V

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized onAdLoaded()V
    .locals 1

    monitor-enter p0

    .line 7
    :try_start_0
    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbnm;->zzfvt:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 8
    monitor-exit p0

    return-void

    .line 9
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbnm;->zzakn()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
