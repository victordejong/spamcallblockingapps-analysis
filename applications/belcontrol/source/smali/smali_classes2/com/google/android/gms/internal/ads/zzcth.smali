.class public final synthetic Lcom/google/android/gms/internal/ads/zzcth;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgtf:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcth;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    return-void
.end method

.method public static zza(Lcom/google/android/gms/internal/ads/zzcig;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcth;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcth;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcth;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzapr()V

    return-void
.end method
