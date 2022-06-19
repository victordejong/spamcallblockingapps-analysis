.class public final Lcom/google/android/gms/internal/ads/zzcui;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzcrr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzcrr<",
        "Lcom/google/android/gms/internal/ads/zzcbu;",
        "Lcom/google/android/gms/internal/ads/zzapk;",
        "Lcom/google/android/gms/internal/ads/zzctd;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final zzgun:Lcom/google/android/gms/internal/ads/zzcau;

.field private zzguw:Lcom/google/android/gms/internal/ads/zzanx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcau;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzgun:Lcom/google/android/gms/internal/ads/zzcau;

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzanx;)Lcom/google/android/gms/internal/ads/zzanx;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzguw:Lcom/google/android/gms/internal/ads/zzanx;

    return-object p1
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)V
    .locals 8
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

    :try_start_0
    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v1, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzdoq:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzapk;->zzdm(Ljava/lang/String;)V

    iget-object v0, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzdnl:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/google/android/gms/internal/ads/zzapk;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzeuo:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzdmw;->zzhjj:Lorg/json/JSONObject;

    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v4, p1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhkw:Lcom/google/android/gms/internal/ads/zzvl;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzcui;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v5

    new-instance v6, Lcom/google/android/gms/internal/ads/zzcuk;

    const/4 p1, 0x0

    invoke-direct {v6, p0, p3, p1}, Lcom/google/android/gms/internal/ads/zzcuk;-><init>(Lcom/google/android/gms/internal/ads/zzcui;Lcom/google/android/gms/internal/ads/zzcrl;Lcom/google/android/gms/internal/ads/zzcuh;)V

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    move-object v7, p1

    check-cast v7, Lcom/google/android/gms/internal/ads/zzank;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzapk;->zza(Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzvl;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzape;Lcom/google/android/gms/internal/ads/zzank;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lcom/google/android/gms/internal/ads/zzdnt;

    invoke-direct {p2, p1}, Lcom/google/android/gms/internal/ads/zzdnt;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final synthetic zzb(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Lcom/google/android/gms/internal/ads/zzcrl;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzguw:Lcom/google/android/gms/internal/ads/zzanx;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzb(Lcom/google/android/gms/internal/ads/zzanx;)Lcom/google/android/gms/internal/ads/zzccd;

    move-result-object v0

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzdnl;->zzhkr:Lcom/google/android/gms/internal/ads/zzdng;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdng;->zzfwy:Lcom/google/android/gms/internal/ads/zzdnp;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzdnp;->zzhky:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzccd;->zzanu()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzgun:Lcom/google/android/gms/internal/ads/zzcau;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzboj;

    iget-object v3, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzcio:Ljava/lang/String;

    invoke-direct {v2, p1, p2, v3}, Lcom/google/android/gms/internal/ads/zzboj;-><init>(Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdmw;Ljava/lang/String;)V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzccp;

    invoke-direct {p1, v0}, Lcom/google/android/gms/internal/ads/zzccp;-><init>(Lcom/google/android/gms/internal/ads/zzccd;)V

    new-instance p2, Lcom/google/android/gms/internal/ads/zzcee;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcui;->zzguw:Lcom/google/android/gms/internal/ads/zzanx;

    const/4 v3, 0x0

    invoke-direct {p2, v3, v3, v0}, Lcom/google/android/gms/internal/ads/zzcee;-><init>(Lcom/google/android/gms/internal/ads/zzans;Lcom/google/android/gms/internal/ads/zzanr;Lcom/google/android/gms/internal/ads/zzanx;)V

    invoke-virtual {v1, v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzcau;->zza(Lcom/google/android/gms/internal/ads/zzboj;Lcom/google/android/gms/internal/ads/zzccp;Lcom/google/android/gms/internal/ads/zzcee;)Lcom/google/android/gms/internal/ads/zzcci;

    move-result-object p1

    iget-object p2, p3, Lcom/google/android/gms/internal/ads/zzcrl;->zzgsu:Lcom/google/android/gms/internal/ads/zzbsu;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzctd;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzbnv;->zzagt()Lcom/google/android/gms/internal/ads/zzcwf;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/zzctd;->zzb(Lcom/google/android/gms/internal/ads/zzank;)V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzccg;->zzagu()Lcom/google/android/gms/internal/ads/zzcbu;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlu:Lcom/google/android/gms/internal/ads/zzdom;

    const-string p3, "No corresponding native ad listener"

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lcom/google/android/gms/internal/ads/zzcva;

    sget-object p2, Lcom/google/android/gms/internal/ads/zzdom;->zzhlv:Lcom/google/android/gms/internal/ads/zzdom;

    const-string p3, "Unified must be used for RTB."

    invoke-direct {p1, p2, p3}, Lcom/google/android/gms/internal/ads/zzcva;-><init>(Lcom/google/android/gms/internal/ads/zzdom;Ljava/lang/String;)V

    throw p1
.end method
