.class public final Lcom/google/android/gms/internal/ads/ee;
.super Lcom/google/android/gms/internal/ads/df;
.source "com.google.android.gms:play-services-ads-lite@@19.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/ads/b/i$b;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/b/i$b;)V
    .locals 0

    .prologue
    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/df;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ee;->a:Lcom/google/android/gms/ads/b/i$b;

    .line 3
    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/cr;)V
    .locals 2

    .prologue
    .line 4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ee;->a:Lcom/google/android/gms/ads/b/i$b;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/cw;->a(Lcom/google/android/gms/internal/ads/cr;)Lcom/google/android/gms/internal/ads/cw;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/ads/b/i$b;->a(Lcom/google/android/gms/ads/b/i;)V

    .line 5
    return-void
.end method
