.class public Lcom/google/android/gms/internal/ads/zzacx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final zzclv:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final zzcm:Ljava/lang/String;

.field private final zzdch:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcm:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzclv:Ljava/lang/Object;

    .line 8
    iput p3, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzdch:I

    return-void
.end method

.method public static zzb(Ljava/lang/String;D)Lcom/google/android/gms/internal/ads/zzacx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "D)",
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzacz;->zzdck:I

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzb(Ljava/lang/String;J)Lcom/google/android/gms/internal/ads/zzacx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J)",
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    sget p2, Lcom/google/android/gms/internal/ads/zzacz;->zzdcj:I

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzg(Ljava/lang/String;Z)Lcom/google/android/gms/internal/ads/zzacx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    sget v1, Lcom/google/android/gms/internal/ads/zzacz;->zzdci:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static zzh(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzacx;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzacx<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/zzacx;

    sget v1, Lcom/google/android/gms/internal/ads/zzacz;->zzdcl:I

    invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzacx;-><init>(Ljava/lang/String;Ljava/lang/Object;I)V

    return-object v0
.end method


# virtual methods
.method public get()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 10
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzadw;->zztc()Lcom/google/android/gms/internal/ads/zzadx;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 13
    sget-object v1, Lcom/google/android/gms/internal/ads/zzacw;->zzdcg:[I

    iget v2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzdch:I

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget v1, v1, v2

    if-eq v1, v3, :cond_3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 17
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzclv:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 18
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzclv:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Double;

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->zza(Ljava/lang/String;D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    .line 15
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzclv:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzadx;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    return-object v0

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcm:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzclv:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadx;->zzf(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 12
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Flag is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
