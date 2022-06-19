.class final synthetic Lcom/google/android/gms/internal/ads/zzcvq;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzgtf:Lcom/google/android/gms/internal/ads/zzcig;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzcig;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzcvq;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzcig;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcvq;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzcvq;-><init>(Lcom/google/android/gms/internal/ads/zzcig;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzcvq;->zzgtf:Lcom/google/android/gms/internal/ads/zzcig;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcig;->zzapr()V

    return-void
.end method
