.class public final Lcom/google/android/gms/internal/ads/akg;
.super Lcom/google/android/gms/internal/ads/dvc;
.source "com.google.android.gms:play-services-ads@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ake;

.field private final b:Lcom/google/android/gms/internal/ads/dzn;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ake;Lcom/google/android/gms/internal/ads/dzn;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dvc;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/akg;->a:Lcom/google/android/gms/internal/ads/ake;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/akg;->b:Lcom/google/android/gms/internal/ads/dzn;

    .line 4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/dzn;
    .locals 1

    .prologue
    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akg;->b:Lcom/google/android/gms/internal/ads/dzn;

    return-object v0
.end method

.method public final a(Lcom/google/android/gms/internal/ads/dvi;)V
    .locals 1

    .prologue
    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/akg;->a:Lcom/google/android/gms/internal/ads/ake;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/ake;->a(Lcom/google/android/gms/internal/ads/dvi;)V

    .line 7
    return-void
.end method
