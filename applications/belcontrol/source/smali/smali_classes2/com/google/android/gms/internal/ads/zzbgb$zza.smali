.class public final Lcom/google/android/gms/internal/ads/zzbgb$zza;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ads/zzbgb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "zza"
.end annotation


# instance fields
.field private zzaad:Landroid/content/Context;

.field private zzboz:Lcom/google/android/gms/internal/ads/zzazn;

.field private zzewa:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic zza(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Lcom/google/android/gms/internal/ads/zzazn;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method

.method public static synthetic zzb(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzaad:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic zzc(Lcom/google/android/gms/internal/ads/zzbgb$zza;)Ljava/lang/ref/WeakReference;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzewa:Ljava/lang/ref/WeakReference;

    return-object p0
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzazn;)Lcom/google/android/gms/internal/ads/zzbgb$zza;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzboz:Lcom/google/android/gms/internal/ads/zzazn;

    return-object p0
.end method

.method public final zzbw(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzbgb$zza;
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzewa:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbgb$zza;->zzaad:Landroid/content/Context;

    return-object p0
.end method
