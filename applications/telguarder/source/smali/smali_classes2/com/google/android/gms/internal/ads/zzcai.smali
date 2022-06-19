.class public final Lcom/google/android/gms/internal/ads/zzcai;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/zzq;
.implements Lcom/google/android/gms/internal/ads/zzbtb;


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

.field private final zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

.field private zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

.field private final zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzazn;Lcom/google/android/gms/internal/ads/zzug$zza$zza;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcai;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    return-void
.end method


# virtual methods
.method public final onAdLoaded()V
    .locals 13

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyu:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyq:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzgbp:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzug$zza$zza;->zzbyx:Lcom/google/android/gms/internal/ads/zzug$zza$zza;

    if-ne v0, v1, :cond_4

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-boolean v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzdww:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_4

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcai;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzm(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzazn;->zzehy:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzbpn:Lcom/google/android/gms/internal/ads/zzazn;

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

    .line 11
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getVideoEventsOwner()Ljava/lang/String;

    move-result-object v9

    .line 12
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvp:Lcom/google/android/gms/internal/ads/zzaba;

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 14
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjr:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;

    invoke-virtual {v0}, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidSettings;->getMediaType()Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;->VIDEO:Lcom/google/android/gms/ads/nonagon/transaction/omid/OmidMediaType;

    if-ne v0, v1, :cond_1

    .line 16
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarn;->zzdri:Lcom/google/android/gms/internal/ads/zzarn;

    .line 17
    sget-object v1, Lcom/google/android/gms/internal/ads/zzarm;->zzdrb:Lcom/google/android/gms/internal/ads/zzarm;

    move-object v11, v0

    move-object v10, v1

    goto :goto_1

    .line 18
    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjs:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 19
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarm;->zzdrd:Lcom/google/android/gms/internal/ads/zzarm;

    goto :goto_0

    .line 20
    :cond_2
    sget-object v0, Lcom/google/android/gms/internal/ads/zzarm;->zzdra:Lcom/google/android/gms/internal/ads/zzarm;

    .line 21
    :goto_0
    sget-object v1, Lcom/google/android/gms/internal/ads/zzarn;->zzdrg:Lcom/google/android/gms/internal/ads/zzarn;

    move-object v10, v0

    move-object v11, v1

    .line 23
    :goto_1
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 24
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzesr:Lcom/google/android/gms/internal/ads/zzdmw;

    iget-object v12, v0, Lcom/google/android/gms/internal/ads/zzdmw;->zzcht:Ljava/lang/String;

    const-string v7, ""

    const-string v8, "javascript"

    .line 25
    invoke-virtual/range {v4 .. v12}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzarm;Lcom/google/android/gms/internal/ads/zzarn;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    goto :goto_2

    .line 28
    :cond_3
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    .line 29
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getWebView()Landroid/webkit/WebView;

    move-result-object v6

    const-string v7, ""

    const-string v8, "javascript"

    .line 30
    invoke-virtual/range {v4 .. v9}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    .line 31
    :goto_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 32
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    invoke-interface {v2}, Lcom/google/android/gms/internal/ads/zzbeb;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzarl;->zza(Lcom/google/android/gms/dynamic/IObjectWrapper;Landroid/view/View;)V

    .line 33
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zzaq(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 34
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzlg()Lcom/google/android/gms/internal/ads/zzarl;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzarl;->zzab(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    .line 35
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcvs:Lcom/google/android/gms/internal/ads/zzaba;

    .line 36
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 38
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkLoaded"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_4
    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method

.method public final onUserLeaveHint()V
    .locals 0

    return-void
.end method

.method public final zza(Lcom/google/android/gms/ads/internal/overlay/zzn;)V
    .locals 0

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    return-void
.end method

.method public final zzvo()V
    .locals 3

    .line 45
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzfvs:Lcom/google/android/gms/dynamic/IObjectWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcai;->zzdjd:Lcom/google/android/gms/internal/ads/zzbeb;

    if-eqz v0, :cond_0

    .line 46
    new-instance v1, Landroidx/collection/ArrayMap;

    invoke-direct {v1}, Landroidx/collection/ArrayMap;-><init>()V

    const-string v2, "onSdkImpression"

    invoke-interface {v0, v2, v1}, Lcom/google/android/gms/internal/ads/zzbeb;->zza(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
