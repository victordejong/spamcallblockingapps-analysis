.class public final Lcom/google/android/gms/internal/ads/zzbkv;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final zzdib:Lcom/google/android/gms/internal/ads/zzckn;

.field private final zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

.field private final zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzckn;Lcom/google/android/gms/internal/ads/zzdnl;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    return-void
.end method

.method private static zzdw(I)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbky;->zzftz:[I

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    aget p0, v0, p0

    if-eq p0, v1, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "u"

    return-object p0

    :cond_0
    const-string p0, "cb"

    return-object p0

    :cond_1
    const-string p0, "ac"

    return-object p0

    :cond_2
    const-string p0, "cc"

    return-object p0

    :cond_3
    const-string p0, "h"

    return-object p0

    :cond_4
    const-string p0, "bb"

    return-object p0
.end method


# virtual methods
.method public final zzb(JI)V
    .locals 7

    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzdal:Lcom/google/android/gms/internal/ads/zzaba;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "acr"

    const-string v2, "app_open_ad"

    const-string v3, "ad_format"

    const-string v4, "show_time"

    const-string v5, "ad_closed"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzdic:Lcom/google/android/gms/internal/ads/zzdrz;

    invoke-static {v5}, Lcom/google/android/gms/internal/ads/zzdsa;->zzgx(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {v5, v6}, Lcom/google/android/gms/internal/ads/zzdsa;->zzb(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object v5

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, v4, p1}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbkv;->zzdw(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzdsa;->zzu(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzdsa;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzdrz;->zzb(Lcom/google/android/gms/internal/ads/zzdsa;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzdib:Lcom/google/android/gms/internal/ads/zzckn;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzckn;->zzaqr()Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzbkv;->zzeyz:Lcom/google/android/gms/internal/ads/zzdnl;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzdnl;->zzhks:Lcom/google/android/gms/internal/ads/zzdnj;

    iget-object v6, v6, Lcom/google/android/gms/internal/ads/zzdnj;->zzess:Lcom/google/android/gms/internal/ads/zzdnb;

    invoke-virtual {v0, v6}, Lcom/google/android/gms/internal/ads/zzckq;->zza(Lcom/google/android/gms/internal/ads/zzdnb;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    const-string v6, "action"

    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object v0

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v4, p1}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p1

    invoke-static {p3}, Lcom/google/android/gms/internal/ads/zzbkv;->zzdw(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/gms/internal/ads/zzckq;->zzr(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzckq;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzckq;->zzaqt()V

    return-void
.end method
