.class public final Lcom/google/android/gms/internal/ads/zzgm;
.super Lcom/google/android/gms/internal/ads/zzgn;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# instance fields
.field private final zzaat:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;IILandroid/view/View;)V
    .locals 7

    const/16 v6, 0x39

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 1
    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzgn;-><init>(Lcom/google/android/gms/internal/ads/zzfc;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;II)V

    .line 2
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzaat:Landroid/view/View;

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

    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzaat:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/google/android/gms/internal/ads/zzabp;->zzcsn:Lcom/google/android/gms/internal/ads/zzaba;

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzwr;->zzqr()Lcom/google/android/gms/internal/ads/zzabl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzabl;->zzd(Lcom/google/android/gms/internal/ads/zzaba;)Ljava/lang/Object;

    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Boolean;

    .line 8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzwc:Lcom/google/android/gms/internal/ads/zzfc;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzfc;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzabl:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzaat:Landroid/view/View;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const/4 v1, 0x2

    aput-object v0, v4, v1

    .line 11
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 12
    new-instance v2, Lcom/google/android/gms/internal/ads/zzfk;

    invoke-direct {v2, v1}, Lcom/google/android/gms/internal/ads/zzfk;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf;->zzaw()Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;

    move-result-object v1

    .line 14
    iget-object v3, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzaan:Ljava/lang/Long;

    .line 15
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;->zzdc(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzaao:Ljava/lang/Long;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;->zzdd(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;

    move-result-object v3

    iget-object v4, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzaap:Ljava/lang/Long;

    .line 17
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;->zzde(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, v2, Lcom/google/android/gms/internal/ads/zzfk;->zzaaq:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;->zzdf(J)Lcom/google/android/gms/internal/ads/zzcf$zza$zzf$zza;

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgm;->zzabb:Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/zzelb$zzb;->zzbiw()Lcom/google/android/gms/internal/ads/zzemo;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzelb;

    check-cast v1, Lcom/google/android/gms/internal/ads/zzcf$zza$zzf;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;->zzb(Lcom/google/android/gms/internal/ads/zzcf$zza$zzf;)Lcom/google/android/gms/internal/ads/zzcf$zza$zzb;

    :cond_1
    return-void
.end method
