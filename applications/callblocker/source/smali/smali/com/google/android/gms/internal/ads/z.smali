.class public final Lcom/google/android/gms/internal/ads/z;
.super Lcom/google/android/gms/internal/ads/x;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/a/c;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/a/c;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/x;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/z;->a:Lcom/google/android/gms/ads/a/c;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/t;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/z;->a:Lcom/google/android/gms/ads/a/c;

    new-instance v1, Lcom/google/android/gms/internal/ads/q;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/q;-><init>(Lcom/google/android/gms/internal/ads/t;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/a/c;->a(Lcom/google/android/gms/ads/a/b;)V

    .line 5
    return-void
.end method
