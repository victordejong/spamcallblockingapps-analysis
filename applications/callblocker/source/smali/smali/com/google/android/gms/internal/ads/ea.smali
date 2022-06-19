.class public final Lcom/google/android/gms/internal/ads/ea;
.super Lcom/google/android/gms/internal/ads/cy;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/g$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/g$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/cy;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ea;->a:Lcom/google/android/gms/ads/b/g$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cj;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ea;->a:Lcom/google/android/gms/ads/b/g$a;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/co;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/co;-><init>(Lcom/google/android/gms/internal/ads/cj;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/g$a;->a(Lcom/google/android/gms/ads/b/g;)V

    .line 7
    return-void
.end method
