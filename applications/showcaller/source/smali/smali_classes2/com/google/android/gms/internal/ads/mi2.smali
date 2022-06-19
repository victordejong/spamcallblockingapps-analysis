.class final synthetic Lcom/google/android/gms/internal/ads/mi2;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@20.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final d:Lcom/google/android/gms/internal/ads/hi2;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hi2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/mi2;->d:Lcom/google/android/gms/internal/ads/hi2;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/hi2;)Ljava/lang/Runnable;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/mi2;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/mi2;-><init>(Lcom/google/android/gms/internal/ads/hi2;)V

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/mi2;->d:Lcom/google/android/gms/internal/ads/hi2;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hi2;->d()V

    return-void
.end method
