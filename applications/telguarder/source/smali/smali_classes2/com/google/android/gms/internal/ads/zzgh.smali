.class public final Lcom/google/android/gms/internal/ads/zzgh;
.super Lcom/google/android/gms/internal/ads/zzgn;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private zzaam:J

.field private final zzxj:Lcom/google/android/gms/internal/ads/zzfj;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;IILcom/google/android/gms/internal/ads/zzfj;)V
    .locals 7

    const/16 v6, 0x35

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzxj:Lcom/google/android/gms/internal/ads/zzfj;

    if-eqz p7, :cond_0

    .line 4
    invoke-virtual {p7}, Lcom/google/android/gms/internal/ads/zzfj;->zzcu()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaam:J

    :cond_0
    return-void
.end method


# virtual methods
.method protected final zzcw()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzxj:Lcom/google/android/gms/internal/ads/zzfj;

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzabl:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/google/android/gms/internal/ads/zzgh;->zzaam:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzbl(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    :cond_0
    return-void
.end method
