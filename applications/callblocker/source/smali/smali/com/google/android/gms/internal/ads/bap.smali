.class public final Lcom/google/android/gms/internal/ads/bap;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ld;

.field private final b:Lcom/google/android/gms/internal/ads/kx;

.field private final c:Lcom/google/android/gms/internal/ads/le;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ld;Lcom/google/android/gms/internal/ads/kx;Lcom/google/android/gms/internal/ads/le;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bap;->a:Lcom/google/android/gms/internal/ads/ld;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bap;->b:Lcom/google/android/gms/internal/ads/kx;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/bap;->c:Lcom/google/android/gms/internal/ads/le;

    .line 5
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/ld;
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bap;->a:Lcom/google/android/gms/internal/ads/ld;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/kx;
    .locals 1

    .prologue
    .line 7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bap;->b:Lcom/google/android/gms/internal/ads/kx;

    return-object v0
.end method

.method public final c()Lcom/google/android/gms/internal/ads/le;
    .locals 1

    .prologue
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bap;->c:Lcom/google/android/gms/internal/ads/le;

    return-object v0
.end method
