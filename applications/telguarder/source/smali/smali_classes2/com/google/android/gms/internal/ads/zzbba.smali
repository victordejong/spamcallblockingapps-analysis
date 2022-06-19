.class final synthetic Lcom/google/android/gms/internal/ads/zzbba;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.7.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzeko:Lcom/google/android/gms/internal/ads/zzbav;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbav;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzeko:Lcom/google/android/gms/internal/ads/zzbav;

    return-void
.end method

.method static zza(Lcom/google/android/gms/internal/ads/zzbav;)Ljava/lang/Runnable;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbba;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbba;-><init>(Lcom/google/android/gms/internal/ads/zzbav;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbba;->zzeko:Lcom/google/android/gms/internal/ads/zzbav;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzbav;->stop()V

    return-void
.end method
