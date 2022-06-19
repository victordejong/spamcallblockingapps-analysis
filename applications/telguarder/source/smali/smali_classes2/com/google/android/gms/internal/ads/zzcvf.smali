.class public final Lcom/google/android/gms/internal/ads/zzcvf;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Lcom/google/android/gms/internal/ads/zzchb;",
        "Lcom/google/android/gms/internal/ads/zzapk;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzgvn:Lcom/google/android/gms/internal/ads/zzchi;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzchi;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgvn:Lcom/google/android/gms/internal/ads/zzchi;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzdnl;",
            "Lcom/google/android/gms/internal/ads/zzdmw;",
            "Lcom/google/android/gms/internal/ads/zzcrl<",
            "Lcom/google/android/gms/internal/ads/zzapk;",
            "Lcom/google/android/gms/internal/ads/zzctd;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnt;
        }
    .end annotation

    .line 5
    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdoq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapk;->zzdm(Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    .line 7
    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhle:Lcom/google/android/gms/internal/ads/zzdnc;

    iget v0, v0, Lcom/google/android/gms/internal/ads/zzdnc;->zzhki:I

    sget v1, Lcom/google/android/gms/internal/ads/zzdnh;->zzhkm:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 8
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzeuo:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    .line 9
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->context:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcvh;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzcvh;-><init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcvi;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzank;

    .line 11
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzapk;->zzb(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzank;)V

    return-void

    .line 12
    :cond_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzeuo:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    .line 13
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v6, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->context:Landroid/content/Context;

    .line 14
    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v7

    new-instance v8, Lcom/google/android/gms/internal/ads/zzcvh;

    invoke-direct {v8, p0, p3, v2}, Lcom/google/android/gms/internal/ads/zzcvh;-><init>(Lcom/google/android/gms/internal/ads/zzcvf;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcvi;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    move-object v9, p1

    check-cast v9, Lcom/google/android/gms/internal/ads/zzank;

    .line 15
    invoke-interface/range {v3 .. v9}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzapj;Lcom/google/android/gms/internal/ads/zzank;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Remote exception loading a rewarded RTB ad"

    .line 18
    invoke-static {p2, p1}, Lcom/google/android/gms/ads/internal/util/zzd;->zza(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnt;,
            Lcom/google/android/gms/internal/ads/zzcva;
        }
    .end annotation

    .line 21
    new-instance v0, Lcom/google/android/gms/internal/ads/zzctn;

    iget-object v1, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapk;

    const/4 v2, 0x1

    invoke-direct {v0, p2, v1, v2}, Lcom/google/android/gms/internal/ads/zzctn;-><init>(Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzapk;Z)V

    .line 22
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcvf;->zzgvn:Lcom/google/android/gms/internal/ads/zzchi;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzboj;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzchg;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzchg;-><init>(Lcom/google/android/gms/internal/ads/zzcag;)V

    .line 23
    invoke-virtual {v1, v2, p1}, Lcom/google/android/gms/internal/ads/zzchi;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzchg;)Lcom/google/android/gms/internal/ads/zzchd;

    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagq()Lcom/google/android/gms/internal/ads/zzbsd;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/ads/zzctn;->zza(Lcom/google/android/gms/internal/ads/zzbsd;)V

    .line 25
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchd;->zzaij()Lcom/google/android/gms/internal/ads/zzcwg;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzctd;->zzb(Lcom/google/android/gms/internal/ads/zzank;)V

    .line 26
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzchd;->zzaig()Lcom/google/android/gms/internal/ads/zzchb;

    move-result-object p1

    return-object p1
.end method
