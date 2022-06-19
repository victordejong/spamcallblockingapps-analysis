.class public Lcom/google/android/gms/internal/ads/zzbgb;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ads/zzbgb$zza;
    }
.end annotation


# instance fields
.field private final zzaad:Landroid/content/Context;

.field private final zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzewa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbgb$zza;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zza(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzb(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzaad:Landroid/content/Context;

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzc(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Ljava/lang/ref/WeakReference;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzewa:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbgb$zza;Lcom/google/android/gms/internal/ads/zzbgd;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/zzbgb;-><init>(Lcom/google/android/gms/internal/ads/zzbgb$zza;)V

    return-void
.end method


# virtual methods
.method final zzaeu()Landroid/content/Context;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzaad:Landroid/content/Context;

    return-object v0
.end method

.method final zzaev()Ljava/lang/ref/WeakReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzewa:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method final zzaew()Lcom/google/android/gms/internal/ads/zzazn;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-object v0
.end method

.method final zzaex()Ljava/lang/String;
    .locals 3

    .line 9
    invoke-static {}, Lcom/google/android/gms/ads/internal/zzr;->zzkr()Lcom/google/android/gms/ads/internal/util/zzj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzaad:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzazn;->zzbrp:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/ads/internal/util/zzj;->zzq(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final zzaey()Lcom/google/android/gms/internal/ads/zzei;
    .locals 4

    .line 10
    new-instance v0, Lcom/google/android/gms/internal/ads/zzei;

    new-instance v1, Lcom/google/android/gms/ads/internal/zzf;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzaad:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbgb;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-direct {v1, v2, v3}, Lcom/google/android/gms/ads/internal/zzf;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzazn;)V

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzdy;)V

    return-object v0
.end method
