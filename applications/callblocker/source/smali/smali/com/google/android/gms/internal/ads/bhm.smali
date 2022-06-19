.class final Lcom/google/android/gms/internal/ads/bhm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/google/android/gms/internal/ads/ckw;

.field private c:Lcom/google/android/gms/internal/ads/ckw;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/ckw;Lcom/google/android/gms/internal/ads/ckw;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bhm;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bhm;->b:Lcom/google/android/gms/internal/ads/ckw;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bhm;->c:Lcom/google/android/gms/internal/ads/ckw;

    .line 5
    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/ckw;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhm;->c:Lcom/google/android/gms/internal/ads/ckw;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/bhm;)Lcom/google/android/gms/internal/ads/ckw;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhm;->b:Lcom/google/android/gms/internal/ads/ckw;

    return-object v0
.end method

.method static synthetic c(Lcom/google/android/gms/internal/ads/bhm;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bhm;->a:Ljava/lang/String;

    return-object v0
.end method
