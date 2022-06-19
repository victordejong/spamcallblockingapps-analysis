.class public final Lcom/google/android/gms/internal/ads/ef;
.super Lcom/google/android/gms/internal/ads/dn;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/k$a;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/k$a;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/dn;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ef;->a:Lcom/google/android/gms/ads/b/k$a;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/du;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ef;->a:Lcom/google/android/gms/ads/b/k$a;

    .line 5
    new-instance v1, Lcom/google/android/gms/internal/ads/dz;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/dz;-><init>(Lcom/google/android/gms/internal/ads/du;)V

    .line 6
    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/k$a;->a(Lcom/google/android/gms/ads/b/k;)V

    .line 7
    return-void
.end method
