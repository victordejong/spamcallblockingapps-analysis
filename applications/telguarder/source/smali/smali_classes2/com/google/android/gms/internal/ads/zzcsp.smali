.class public final Lcom/google/android/gms/internal/ads/zzcsp;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Lcom/google/android/gms/internal/ads/zzblv;",
        "Lcom/google/android/gms/internal/ads/zzapk;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private view:Landroid/view/View;

.field private final zzgto:Lcom/google/android/gms/internal/ads/zzbmr;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzbmr;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsp;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgto:Lcom/google/android/gms/internal/ads/zzbmr;

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/ads/zzcsp;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 24
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcsp;->view:Landroid/view/View;

    return-object p1
.end method

.method static final synthetic zza(Lcom/google/android/gms/internal/ads/zzcrl;)Lcom/google/android/gms/internal/ads/zzzc;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnt;
        }
    .end annotation

    .line 21
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzapk;

    invoke-interface {p0}, Lcom/google/android/gms/internal/ads/zzapk;->getVideoController()Lcom/google/android/gms/internal/ads/zzzc;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 23
    new-instance v0, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 9
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
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzeuo:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    .line 7
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p2, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v4, p2, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->context:Landroid/content/Context;

    .line 8
    invoke-static {p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcsu;

    const/4 p2, 0x0

    invoke-direct {v6, p0, p3, p2}, Lcom/google/android/gms/internal/ads/zzcsu;-><init>(Lcom/google/android/gms/internal/ads/zzcsp;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcsr;)V

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    move-object v7, p2

    check-cast v7, Lcom/google/android/gms/internal/ads/zzank;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v8, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzbpo:Lcom/google/android/gms/internal/ads/zzvs;

    .line 9
    invoke-interface/range {v1 .. v8}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzaoy;Lcom/google/android/gms/internal/ads/zzank;Lcom/google/android/gms/internal/ads/zzvs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12
    new-instance p2, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzdnt;,
            Lcom/google/android/gms/internal/ads/zzcva;
        }
    .end annotation

    .line 14
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsp;->zzgto:Lcom/google/android/gms/internal/ads/zzbmr;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzboj;

    iget-object v2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbmc;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcsp;->view:Landroid/view/View;

    new-instance v3, Lcom/google/android/gms/internal/ads/zzcss;

    invoke-direct {v3, p3}, Lcom/google/android/gms/internal/ads/zzcss;-><init>(Lcom/google/android/gms/internal/ads/zzcrl;)V

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhji:Ljava/util/List;

    const/4 v4, 0x0

    .line 15
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/gms/internal/ads/zzdmz;

    const/4 v4, 0x0

    invoke-direct {p1, v2, v4, v3, p2}, Lcom/google/android/gms/internal/ads/zzbmc;-><init>(Landroid/view/View;Lcom/google/android/gms/internal/ads/zzbeb;Lcom/google/android/gms/internal/ads/zzbnu;Lcom/google/android/gms/internal/ads/zzdmz;)V

    .line 16
    invoke-virtual {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzbmr;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzbmc;)Lcom/google/android/gms/internal/ads/zzbly;

    move-result-object p1

    .line 17
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbly;->zzahp()Lcom/google/android/gms/internal/ads/zzbxz;

    move-result-object p2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcsp;->view:Landroid/view/View;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzbxz;->zzv(Landroid/view/View;)V

    .line 18
    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagt()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzctd;->zzb(Lcom/google/android/gms/internal/ads/zzank;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbly;->zzaho()Lcom/google/android/gms/internal/ads/zzblv;

    move-result-object p1

    return-object p1
.end method
