.class public final Lcom/google/android/gms/internal/ads/zzcza;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

.field private final zzgza:Lcom/google/android/gms/internal/ads/zzcco;

.field private final zzgzb:Lcom/google/android/gms/internal/ads/zzbrr;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzdrz;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzgza:Lcom/google/android/gms/internal/ads/zzcco;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-direct {v0, p2}, Lcom/google/android/gms/internal/ads/zzcxy;-><init>(Lcom/google/android/gms/internal/ads/zzdrz;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcco;->zzaon()Lcom/google/android/gms/internal/ads/zzakb;

    move-result-object p1

    .line 7
    new-instance p2, Lcom/google/android/gms/internal/ads/zzcyz;

    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/ads/zzcyz;-><init>(Lcom/google/android/gms/internal/ads/zzcxy;Lcom/google/android/gms/internal/ads/zzakb;)V

    .line 8
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzgzb:Lcom/google/android/gms/internal/ads/zzbrr;

    return-void
.end method


# virtual methods
.method public final zzaso()Lcom/google/android/gms/internal/ads/zzcaq;
    .locals 3

    .line 12
    new-instance v0, Lcom/google/android/gms/internal/ads/zzcaq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzgza:Lcom/google/android/gms/internal/ads/zzcco;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

    .line 13
    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/zzcxy;->zzasj()Lcom/google/android/gms/internal/ads/zzwx;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcaq;-><init>(Lcom/google/android/gms/internal/ads/zzcco;Lcom/google/android/gms/internal/ads/zzwx;)V

    return-object v0
.end method

.method public final zzasp()Lcom/google/android/gms/internal/ads/zzcxy;
    .locals 1

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

    return-object v0
.end method

.method public final zzasq()Lcom/google/android/gms/internal/ads/zzbtb;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

    return-object v0
.end method

.method public final zzasr()Lcom/google/android/gms/internal/ads/zzbrr;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzgzb:Lcom/google/android/gms/internal/ads/zzbrr;

    return-object v0
.end method

.method public final zzd(Lcom/google/android/gms/internal/ads/zzwx;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcza;->zzfzw:Lcom/google/android/gms/internal/ads/zzcxy;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zzcxy;->zzc(Lcom/google/android/gms/internal/ads/zzwx;)V

    return-void
.end method
